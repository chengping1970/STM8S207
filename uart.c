/*IR.C file
 */
#include <string.h>
#include <stdio.h>
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
	DATA_COMMAND_WRITE_CONFIG,
	DATA_COMMAND_WRITE_ID,
	DATA_COMMAND_CONTROL_ALL = 0x80,
	DATA_COMMAND_COMMUNICATION_ERROR = 0xFE,
	DATA_COMMAND_IIC_ERROR = 0xFF
}EXTERN_COMMAND_ENUM;

#define MULTI_BYTE_RW		1

#define LED_G_PORT				GPIOD
#define LED_G_PIN				GPIO_PIN_4
#define LED_R_PORT				GPIOD
#define LED_R_PIN				GPIO_PIN_3

static u8 uart_rx_buffer[UART_BUFFER_MAX_LENGTH + 2];
static u16 uart_rx_index;
static u8 uart_received = FALSE;
static u8 uart_rxtx_data[UART_BUFFER_MAX_LENGTH + 2];
static u16 uart_data_length = 8;
static u8 machine_No = 0;

extern u8 Power_status;
extern u8 I2C_stop;
extern u8 Set3DOn;
/*==========================================================================*/
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
/*==========================================================================*/
void UART1_PutChar(char c)
{
  UART1_SendData8(c);
  while (UART1_GetFlagStatus(UART1_FLAG_TXE) == RESET);
}
/*==========================================================================*/
void UART3_PutChar(char c)
{
  UART3_SendData8(c);
  while (UART3_GetFlagStatus(UART3_FLAG_TXE) == RESET);
}
/*==========================================================================*/
void UART_Send(u8 * reply, u16 count)
{
	u16 i;
#if UART_FOR_WALL
	UART1_Init((uint32_t)9600, UART1_WORDLENGTH_8D, UART1_STOPBITS_1, UART1_PARITY_NO, UART1_SYNCMODE_CLOCK_DISABLE, UART1_MODE_TX_ENABLE);
#endif
	for (i = 0; i < count;i++)
	{
		UART1_PutChar(* reply++);
	}
#if UART_FOR_WALL
	IR_DelayNMiliseconds(20);
	UART1_Init((uint32_t)9600, UART1_WORDLENGTH_8D, UART1_STOPBITS_1, UART1_PARITY_NO, UART1_SYNCMODE_CLOCK_DISABLE, UART1_MODE_RX_ENABLE);
#endif
}
/*==========================================================================*/
#if IR_SEND_UART
void UART_IRSend(u8 * reply)
{
	u16 i;
	UART3_Init((uint32_t)9600, UART3_WORDLENGTH_8D, UART3_STOPBITS_1, UART3_PARITY_NO, UART3_MODE_TXRX_ENABLE);
	IR_DelayNMiliseconds(10);
	for (i = 0; i < 8;i++)
	{
		UART3_PutChar(* reply++);
	}
	IR_DelayNMiliseconds(20);
	UART3_Init((uint32_t)115200, UART3_WORDLENGTH_8D, UART3_STOPBITS_1, UART3_PARITY_NO, UART3_MODE_TXRX_ENABLE);
}
#endif
/*==========================================================================*/
void UART_Init(void)
{
#if UART_FOR_WALL	
	UART1_Init((uint32_t)9600, UART1_WORDLENGTH_8D, UART1_STOPBITS_1, UART1_PARITY_NO, UART1_SYNCMODE_CLOCK_DISABLE, UART1_MODE_RX_ENABLE);
#else
	UART1_Init((uint32_t)115200, UART1_WORDLENGTH_8D, UART1_STOPBITS_1, UART1_PARITY_NO, UART1_SYNCMODE_CLOCK_DISABLE, UART1_MODE_TXRX_ENABLE);
#endif
	UART1_ITConfig(UART1_IT_RXNE, ENABLE);
	UART1_Cmd(ENABLE);

	UART3_Init((uint32_t)115200, UART3_WORDLENGTH_8D, UART3_STOPBITS_1, UART3_PARITY_NO, UART3_MODE_TXRX_ENABLE);
	UART3_Cmd(ENABLE);
	
	uart_rx_index = 0;
}
/*==========================================================================*/
void UART_InitMachineNo(void)
{
	#if DATA_STORAGE_FLASH
	machine_No = FLASH_ReadByte(EEPROM_START_ADDRESS + 20);
	#else
	SWI2C_ReadEEPROM(0xA0, MACHINE_ID_POSITION, 1, &machine_No);
	#endif
}
/*==========================================================================*/
void UART_Update(void)
{
	if (uart_received)
	{
		u8 checksum, ret;
		uart_received = FALSE;		
		
		memcpy(uart_rxtx_data, uart_rx_buffer, UART_BUFFER_MAX_LENGTH + 2);
		if (uart_rxtx_data[DP_COMMAND] == DATA_COMMAND_WRITE_ID)
		{
				checksum = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
				if (checksum == uart_rxtx_data[DP_CHECK_SUM])
				{
					#if DATA_STORAGE_FLASH
					FLASH_ProgramByte(EEPROM_START_ADDRESS + MACHINE_ID_POSITION, uart_rxtx_data[DP_DATA]);
					#else
					SWI2C_WriteEEPROM(0xA0, MACHINE_ID_POSITION, 1, &uart_rxtx_data[DP_DATA]);
					#endif
					machine_No = uart_rxtx_data[DP_DATA];
				}
				else
				{
					uart_rxtx_data[DP_COMMAND] = DATA_COMMAND_COMMUNICATION_ERROR;
				}
				UART_Send(uart_rxtx_data, 8);
		}
		else if (uart_rxtx_data[DP_COMMAND] == DATA_COMMAND_CONTROL_ALL)
		{
			if (Power_status)
			{
				switch (uart_rxtx_data[DP_DEVICE_ADDR])
				{
					case 0x80:
						#if SUPPORT_4K_PANEL
						Set3DOn = TRUE;
						SWI2C_Set3DOnOff(TRUE);
						#elif (!SUPPORT_1080P_2DZ)
						#else
						Set3DOn = TRUE;
						SWI2C_Set3D_2DZ();
						#endif
						break;
					case 0x88:
						#if SUPPORT_4K_PANEL
						Set3DOn = TRUE;
						SWI2C_Set3DOnOff(TRUE);
						#elif (!SUPPORT_1080P_2DZ)
						Set3DOn = TRUE;
						SWI2C_Set3DOnOff(TRUE);
						#else
						Set3DOn = TRUE;
						SWI2C_Set3D_9View();
						#endif
						break;
					case 0x81:
						Set3DOn = FALSE;
						SWI2C_Set3DOnOff(FALSE);
						break;
					case 0x82:
						I2C_stop = TRUE;
						GPIO_WriteHigh(LED_R_PORT, LED_R_PIN);			
						GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
						break;
					case 0x83:
						I2C_stop = FALSE;
						GPIO_WriteLow(LED_R_PORT, LED_R_PIN);			
						GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
						break;
					case 0x84:
						SWI2C_WriteWeavingTable(0);
						break;
					case 0x85:
						SWI2C_WriteWeavingTable(1);
						break;
					case 0x86:
						SWI2C_WriteWeavingTable(2);
						break;
					case 0x87:
						SWI2C_WriteWeavingTable(3);
						break;
					default:
						break;
				}
			}
		}
		else if (machine_No == uart_rxtx_data[DP_SUB_ADDR_2])
		{
			switch (uart_rxtx_data[DP_COMMAND])
			{
				case DATA_COMMAND_WRITE_BYTE:
					checksum = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
					if (checksum == uart_rxtx_data[DP_CHECK_SUM])
					{
						if (uart_rxtx_data[DP_DEVICE_ADDR] >= 0xA0 && uart_rxtx_data[DP_DEVICE_ADDR] < 0xB0)
						{
							ret = SWI2C_WriteEEPROM(uart_rxtx_data[DP_DEVICE_ADDR], uart_rxtx_data[DP_SUB_ADDR], 1, &uart_rxtx_data[DP_DATA]);
						}
						else
						{
							ret = SWI2C_WriteBytes(uart_rxtx_data[DP_DEVICE_ADDR], uart_rxtx_data[DP_SUB_ADDR], 1, &uart_rxtx_data[DP_DATA]);
						}
						if (ret == IIC_FAIL)
						{
							uart_rxtx_data[DP_COMMAND] = DATA_COMMAND_IIC_ERROR;
						}
					}
					else
					{
						uart_rxtx_data[DP_COMMAND] = DATA_COMMAND_COMMUNICATION_ERROR;
					}
					UART_Send(uart_rxtx_data, 8);
					break;
				case DATA_COMMAND_READ_BYTE:
					checksum = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
					if (checksum == uart_rxtx_data[DP_CHECK_SUM])
					{
						if (uart_rxtx_data[DP_DEVICE_ADDR] >= 0xA0 && uart_rxtx_data[DP_DEVICE_ADDR] < 0xB0)
						{
							ret = SWI2C_ReadEEPROM(uart_rxtx_data[DP_DEVICE_ADDR], uart_rxtx_data[DP_SUB_ADDR], 1, &uart_rxtx_data[DP_DATA]);
						}
						else
						{
							ret = SWI2C_ReadBytes(uart_rxtx_data[DP_DEVICE_ADDR], uart_rxtx_data[DP_SUB_ADDR], 1, &uart_rxtx_data[DP_DATA]);
						}
						uart_rxtx_data[DP_CHECK_SUM] = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
						if (ret == IIC_FAIL)
						{
							uart_rxtx_data[DP_COMMAND] = DATA_COMMAND_IIC_ERROR;
						}
					}
					else
					{
						uart_rxtx_data[DP_COMMAND] = DATA_COMMAND_COMMUNICATION_ERROR;
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
								if (uart_rxtx_data[DP_DEVICE_ADDR] >= 0xA0 && uart_rxtx_data[DP_DEVICE_ADDR] < 0xB0)
								{
									ret = SWI2C_WriteEEPROM(uart_rxtx_data[DP_DEVICE_ADDR], i*8, 8, &uart_rxtx_data[DP_DATA + i*8]);
								}
								else
								{
									ret = SWI2C_WriteBytes(uart_rxtx_data[DP_DEVICE_ADDR], i*8, 8, &uart_rxtx_data[DP_DATA + i*8]);
								}
								if (ret == IIC_FAIL)
								{
									break;
								}
							}
							#else
							if (uart_rxtx_data[DP_DEVICE_ADDR] >= 0xA0 && uart_rxtx_data[DP_DEVICE_ADDR] < 0xB0)
							{
								for (i = 0; i < 32;i++)
								{
									ret = SWI2C_WriteEEPROM(uart_rxtx_data[DP_DEVICE_ADDR], i*8, 8, &uart_rxtx_data[DP_DATA + i*8]);
									if (ret == IIC_FAIL)
									{
										break;
									}
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
								uart_rxtx_data[DP_COMMAND] = DATA_COMMAND_IIC_ERROR;
							}
						}
						else
						{
							uart_rxtx_data[DP_COMMAND] = DATA_COMMAND_COMMUNICATION_ERROR;
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
								if (uart_rxtx_data[DP_DEVICE_ADDR] >= 0xA0 && uart_rxtx_data[DP_DEVICE_ADDR] < 0xB0)
								{
									ret = SWI2C_ReadEEPROM(uart_rxtx_data[DP_DEVICE_ADDR], i*32, 32, &uart_rxtx_data[DP_DATA + i*32]);
								}
								else
								{
									ret = SWI2C_ReadBytes(uart_rxtx_data[DP_DEVICE_ADDR], i*32, 32, &uart_rxtx_data[DP_DATA + i*32]);
								}
								if (ret == IIC_FAIL)
								{
									break;
								}
							}
							#else
							for (i = 0; i < 256;i++)
							{
								if (uart_rxtx_data[DP_DEVICE_ADDR] >= 0xA0 && uart_rxtx_data[DP_DEVICE_ADDR] < 0xB0)
								{
									ret = SWI2C_ReadEEPROM(uart_rxtx_data[DP_DEVICE_ADDR], i, 1, &uart_rxtx_data[DP_DATA + i]);
								}
								else
								{
									ret = SWI2C_ReadBytes(uart_rxtx_data[DP_DEVICE_ADDR], i, 1, &uart_rxtx_data[DP_DATA + i]);
								}
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
								uart_rxtx_data[DP_COMMAND] = DATA_COMMAND_IIC_ERROR;
							}
						}
						else
						{
							uart_rxtx_data[DP_COMMAND] = DATA_COMMAND_COMMUNICATION_ERROR;
						}
						UART_Send(uart_rxtx_data, 256 + 7);
					}
					break;
				case DATA_COMMAND_COMMAND:
						checksum = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
						if (checksum == uart_rxtx_data[DP_CHECK_SUM])
						{
							switch (uart_rxtx_data[DP_DEVICE_ADDR])
							{
								case 0:
									uart_rxtx_data[DP_SUB_ADDR] = !Power_status;
									uart_rxtx_data[DP_CHECK_SUM] = uart_rxtx_data[DP_CHECK_SUM] - uart_rxtx_data[DP_SUB_ADDR];
									UART_Send(uart_rxtx_data, 8);
									SWI2C_ProcessPower();
									break;
								case 1:
									SWI2C_Toggle3DOnOff();
									uart_rxtx_data[DP_SUB_ADDR] = !Set3DOn;
									uart_rxtx_data[DP_CHECK_SUM] = uart_rxtx_data[DP_CHECK_SUM] - uart_rxtx_data[DP_SUB_ADDR];
									UART_Send(uart_rxtx_data, 8);
									break;
								case 2:
									SWI2C_ToggleI2CMode();
									uart_rxtx_data[DP_SUB_ADDR] = !I2C_stop;
									uart_rxtx_data[DP_CHECK_SUM] = uart_rxtx_data[DP_CHECK_SUM] - uart_rxtx_data[DP_SUB_ADDR];
									UART_Send(uart_rxtx_data, 8);
									break;
								case 3:
									SWI2C_WriteEEPROM(0xA0, BACKLIGHT_POSITION, 1, &uart_rxtx_data[DP_SUB_ADDR]);
									SWI2C_SetBacklight(uart_rxtx_data[DP_SUB_ADDR]);
									UART_Send(uart_rxtx_data, 8);
									break;
								
								case 0x80:
									uart_rxtx_data[DP_SUB_ADDR] = Power_status;
									uart_rxtx_data[DP_SUB_ADDR_2] = I2C_stop;
									uart_rxtx_data[DP_DATA] = Set3DOn;
									uart_rxtx_data[DP_CHECK_SUM] = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
									UART_Send(uart_rxtx_data, 8);
									break;
								case 0x81:
									{
										WWDG->CR |= 0x80;
										WWDG->CR &= ~0x40;
									}
									break;
								default:
									break;
							}
						}
						else
						{
							uart_rxtx_data[DP_COMMAND] = DATA_COMMAND_COMMUNICATION_ERROR;
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
							#if DATA_STORAGE_FLASH
								for (i = 0; i < 20; i++)
								{
									FLASH_ProgramByte(EEPROM_START_ADDRESS + i + 1, uart_rxtx_data[DP_DATA + i]);
								}
							#else
								for (i = 0; i < 20; i++)
								{
									SWI2C_WriteEEPROM(0xA0, i + 1, 1, &uart_rxtx_data[DP_DATA + i]);
								}
							#endif
							}
							else
							{
								uart_rxtx_data[DP_COMMAND] = DATA_COMMAND_COMMUNICATION_ERROR;
							}
						}
						UART_Send(uart_rxtx_data, 27);
						break;
				default:
					break;
			}
		}
	}
}
/*==========================================================================*/
char putchar(char c)
{
	/* Write a character to the UART1 */
	UART3_SendData8(c);
	/* Loop until the end of transmission */
	while (UART3_GetFlagStatus(UART3_FLAG_TXE) == RESET);

	return (c);
}
/*==========================================================================*/
