/*IR.C file
 */
#include <string.h>

#include "stm8s.h"
#include "stm8s_uart1.h"
#include "stm8s_uart3.h"
#include "stm8s_flash.h"

#include "sw_i2c.h"
#include "ir.h"

#define UART_BUFFER_MAX_LENGTH	(256 + 5)

#define DP_COMMAND			2
#define DP_DEVICE_ADDR		3
#define DP_SUB_ADDR			4
#define DP_SUB_ADDR_2		5
#define DP_DATA				6
#define DP_CHECK_SUM		7

typedef enum
  {
	DATA_COMMAND_WRITE_BYTE,
	DATA_COMMAND_READ_BYTE,
	DATA_COMMAND_WRITE_BANK,
	DATA_COMMAND_READ_BANK,
	DATA_COMMAND_COMMAND,
	DATA_COMMAND_WRITE_TWO_BYTE,
	DATA_COMMAND_WRITE_CONFIG
}EXTERN_COMMAND_ENUM;

#define MULTI_BYTE_RW		1


static u8 uart_rx_buffer[UART_BUFFER_MAX_LENGTH + 2];
static u16 uart_rx_index;
static u8 uart_received = FALSE;
static u8 uart_rxtx_data[UART_BUFFER_MAX_LENGTH + 2];
static u16 uart_data_length = 8;

/*==========================================================================*/
#if DEBUG_USE_UART1
INTERRUPT_HANDLER(UART_ISR, 21)
{
	uart_rx_buffer[uart_rx_index] = UART3_ReceiveData8();
	UART3_ClearITPendingBit(UART3_IT_RXNE);

	if (uart_rx_index == 0)
	{
		if (uart_rx_buffer[0] != 0xFF)
		{
			uart_rx_index = 0;
			return;
		}
	}
	else if (uart_rx_index == 1)
	{
		if (uart_rx_buffer[1] != 0x55)
		{
			uart_rx_index = 0;
			return;
		}
	}
	if (uart_rx_buffer[2] == DATA_COMMAND_WRITE_BANK)
	{
		uart_data_length = UART_BUFFER_MAX_LENGTH + 2;
	}
	else if (uart_rx_buffer[2] == DATA_COMMAND_WRITE_CONFIG)
	{
		uart_data_length = 27;
	}
	else
	{
		uart_data_length = 8;
	}
	uart_rx_index++;
	
	if (uart_rx_index == uart_data_length)
	{
		uart_rx_index = 0;
		uart_received = TRUE;
	}
}
#else
INTERRUPT_HANDLER(UART_ISR, 18)
{
	uart_rx_buffer[uart_rx_index] = UART1_ReceiveData8();
	UART1_ClearITPendingBit(UART1_IT_RXNE);

	if (uart_rx_index == 0)
	{
		if (uart_rx_buffer[0] != 0xFF)
		{
			uart_rx_index = 0;
			return;
		}
	}
	else if (uart_rx_index == 1)
	{
		if (uart_rx_buffer[1] != 0x55)
		{
			uart_rx_index = 0;
			return;
		}
	}
	if (uart_rx_buffer[2] == DATA_COMMAND_WRITE_BANK)
	{
		uart_data_length = UART_BUFFER_MAX_LENGTH + 2;
	}
	else if (uart_rx_buffer[2] == DATA_COMMAND_WRITE_CONFIG)
	{
		uart_data_length = 27;
	}
	else
	{
		uart_data_length = 8;
	}
	uart_rx_index++;
	
	if (uart_rx_index == uart_data_length)
	{
		uart_rx_index = 0;
		uart_received = TRUE;
	}
}
#endif
/*==========================================================================*/
#if DEBUG_USE_UART1
void UART_PutChar(char c)
{
  UART3_SendData8(c);
  while (UART3_GetFlagStatus(UART1_FLAG_TXE) == RESET);
}
#else
void UART_PutChar(char c)
{
  UART1_SendData8(c);
  while (UART1_GetFlagStatus(UART1_FLAG_TXE) == RESET);
}
#endif
/*==========================================================================*/
void UART_Send(u8 * reply, u16 count)
{
	u16 i;
	
	for (i = 0; i < count;i++)
	{
		UART_PutChar(* reply++);
	}
}
/*==========================================================================*/
void UART_Init(void)
{
	UART1_Init((uint32_t)115200, UART1_WORDLENGTH_8D, UART1_STOPBITS_1, UART1_PARITY_NO, UART1_SYNCMODE_CLOCK_DISABLE, UART1_MODE_TXRX_ENABLE);
	#if (!DEBUG_USE_UART1)
	UART1_ITConfig(UART1_IT_RXNE, ENABLE);
	#endif
	UART1_Cmd(ENABLE);

	UART3_Init((uint32_t)115200, UART3_WORDLENGTH_8D, UART3_STOPBITS_1, UART3_PARITY_NO, UART3_MODE_TXRX_ENABLE);
	#if DEBUG_USE_UART1
	UART3_ITConfig(UART3_IT_RXNE, ENABLE);
	#endif
	UART3_Cmd(ENABLE);
	
	uart_rx_index = 0;
}
/*==========================================================================*/
void UART_Update(void)
{
	if (uart_received)
	{
		u8 checksum, ret;
		uart_received = FALSE;		
		
		
		memcpy(uart_rxtx_data, uart_rx_buffer, UART_BUFFER_MAX_LENGTH + 2);
		
		switch (uart_rxtx_data[DP_COMMAND])
		{
			case DATA_COMMAND_WRITE_BYTE:
				checksum = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
				if (checksum == uart_rxtx_data[DP_CHECK_SUM])
				{
					ret = SWI2C_WriteBytes(uart_rxtx_data[DP_DEVICE_ADDR], uart_rxtx_data[DP_SUB_ADDR], 1, &uart_rxtx_data[DP_DATA]);
					if (ret == IIC_FAIL)
					{
						uart_rxtx_data[DP_COMMAND] = 0xFF;
					}
				}
				else
				{
					uart_rxtx_data[DP_COMMAND] = 0xFE;
				}
				UART_Send(uart_rxtx_data, 8);
				break;
			case DATA_COMMAND_READ_BYTE:
				checksum = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
				if (checksum == uart_rxtx_data[DP_CHECK_SUM])
				{
					ret = SWI2C_ReadBytes(uart_rxtx_data[DP_DEVICE_ADDR], uart_rxtx_data[DP_SUB_ADDR], 1, &uart_rxtx_data[DP_DATA]);
					uart_rxtx_data[DP_CHECK_SUM] = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
					if (ret == IIC_FAIL)
					{
						uart_rxtx_data[DP_COMMAND] = 0xFF;
					}
				}
				else
				{
					uart_rxtx_data[DP_COMMAND] = 0xFE;
				}
				UART_Send(uart_rxtx_data, 8);
				break;
			case DATA_COMMAND_WRITE_BANK:
				{
					uint32_t i;
					checksum = uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2];
					for (i = 0; i < 256; i++)
					{
						checksum += uart_rxtx_data[DP_DATA + i];
					}
					checksum = 0x100 - checksum;
					if (checksum == uart_rxtx_data[6 + 256])
					{
						#if MULTI_BYTE_RW
						for (i = 0; i < 32;i++)
						{
							ret = SWI2C_WriteBytes(uart_rxtx_data[DP_DEVICE_ADDR], i*8, 8, &uart_rxtx_data[DP_DATA + i*8]);
							if (ret == IIC_FAIL)
							{
								break;
							}
							if (uart_rxtx_data[DP_DEVICE_ADDR] >= 0xA0 && uart_rxtx_data[DP_DEVICE_ADDR] < 0xB0)
							{
								IR_DelayNMiliseconds(20);
							}
						}
						#else
						if (uart_rxtx_data[DP_DEVICE_ADDR] >= 0xA0 && uart_rxtx_data[DP_DEVICE_ADDR] < 0xB0)
						{
							for (i = 0; i < 32;i++)
							{
								ret = SWI2C_WriteBytes(uart_rxtx_data[DP_DEVICE_ADDR], i*8, 8, &uart_rxtx_data[DP_DATA + i*8]);
								if (ret == IIC_FAIL)
								{
									break;
								}
								IR_DelayNMiliseconds(20);
							}
						}
						else
						{
							for (i = 0; i < 256;i++)
							{
								ret = SWI2C_WriteBytes(uart_rxtx_data[DP_DEVICE_ADDR], i, 1, &uart_rxtx_data[DP_DATA + i]);
								if (ret == IIC_FAIL)
								{
									break;
								}
							}
						}
						#endif
						uart_rxtx_data[DP_CHECK_SUM] = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
						if (ret == IIC_FAIL)
						{
							uart_rxtx_data[DP_COMMAND] = 0xFF;
						}
					}
					else
					{
						uart_rxtx_data[DP_COMMAND] = 0xFE;
					}
					UART_Send(uart_rxtx_data, 8);
				}
				break;
			case DATA_COMMAND_READ_BANK:
				{
					uint32_t i;
					checksum = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
					if (checksum == uart_rxtx_data[DP_CHECK_SUM])
					{
						memset(&uart_rxtx_data[6], 0, 256);
						#if MULTI_BYTE_RW
						for (i = 0; i < 8;i++)
						{
							ret = SWI2C_ReadBytes(uart_rxtx_data[DP_DEVICE_ADDR], i*32, 32, &uart_rxtx_data[DP_DATA + i*32]);
							if (ret == IIC_FAIL)
							{
								break;
							}
						}
						#else
						for (i = 0; i < 256;i++)
						{
							ret = SWI2C_ReadBytes(uart_rxtx_data[DP_DEVICE_ADDR], i, 1, &uart_rxtx_data[DP_DATA + i]);
							if (ret == IIC_FAIL)
							{
								break;
							}
						}
						#endif
						checksum = uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2];
						for (i = 0; i < 256;i++)
						{
							checksum += uart_rxtx_data[DP_DATA + i];
						}
						uart_rxtx_data[6 + 256] = 0x100 - checksum;
						if (ret == IIC_FAIL)
						{
							uart_rxtx_data[DP_COMMAND] = 0xFF;
						}
					}
					else
					{
						uart_rxtx_data[DP_COMMAND] = 0xFE;
					}
					UART_Send(uart_rxtx_data, 256 + 7);
				}
				break;
			case DATA_COMMAND_COMMAND:
					checksum = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
					if (checksum == uart_rxtx_data[DP_CHECK_SUM])
					{
						UART_Send(uart_rxtx_data, 8);
						switch (uart_rxtx_data[DP_DEVICE_ADDR])
						{
							case 0:
								SWI2C_ProcessPower();
								break;
							case 1:
								SWI2C_Toggle3DOnOff();
								break;
							case 2:
								SWI2C_ToggleI2CMode();
								break;
							default:
								break;
						}
					}
					else
					{
						uart_rxtx_data[DP_COMMAND] = 0xFE;						
						UART_Send(uart_rxtx_data, 8);
					}
					break;
				case DATA_COMMAND_WRITE_TWO_BYTE:
					break;
				case DATA_COMMAND_WRITE_CONFIG:
					{
						uint8_t i;
						checksum = uart_rxtx_data[5];
						for (i = 0; i < 20; i++)
						{
							checksum += uart_rxtx_data[6+i];
						}
						checksum = 0x100 - checksum;
						if (checksum == uart_rxtx_data[26])
						{
							for (i = 0; i < 20; i++)
							{
								FLASH_ProgramByte(EEPROM_START_ADDRESS + i + 1, uart_rxtx_data[6 + i]);
							}
						}
						else
						{
							uart_rxtx_data[DP_COMMAND] = 0xFE;
						}
					}
					UART_Send(uart_rxtx_data, 27);
					break;
			default:
				break;
		}
	}
}
/*==========================================================================*/
#if DEBUG_USE_UART1
char putchar(char c)
{
	 /* Write a character to the UART1 */
	UART1_SendData8(c);
	/* Loop until the end of transmission */
	while (UART1_GetFlagStatus(UART1_FLAG_TXE) == RESET);

	return (c);
}
#else
char putchar(char c)
{
	/* Write a character to the UART1 */
	UART3_SendData8(c);
	/* Loop until the end of transmission */
	while (UART3_GetFlagStatus(UART3_FLAG_TXE) == RESET);

	return (c);
}
#endif
/*==========================================================================*/
