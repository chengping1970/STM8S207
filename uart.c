/*IR.C file
 */

#include "stm8s.h"
#include "stm8s_uart1.h"
#include "stm8s_uart3.h"

#include "sw_i2c.h"

#define UART_BUFFER_MAX_LENGTH	(256 + 5)

static u8 uart_rx_buffer[UART_BUFFER_MAX_LENGTH + 2];
static u8 uart_rx_index;
static u8 uart_received = FALSE;
static u8 uart_data[UART_BUFFER_MAX_LENGTH];
static u8 uart_send_data[UART_BUFFER_MAX_LENGTH + 2];
static u16 uart_data_length = 8;

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
	if (uart_rx_buffer[2] == 2)
	{
		uart_data_length = UART_BUFFER_MAX_LENGTH + 2;
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
void UART_PutChar(char c)
{
  UART1_SendData8(c);
  while (UART1_GetFlagStatus(UART1_FLAG_TXE) == RESET);
}
/*==========================================================================*/
void UART_Send(u8 * reply, u8 count)
{
	u8 i;
	
	for (i = 0; i < count;i++)
	{
		UART_PutChar(* reply++);
	}
}
/*==========================================================================*/
void UART_Init(void)
{
	UART1_Init((uint32_t)115200, UART1_WORDLENGTH_8D, UART1_STOPBITS_1, UART1_PARITY_NO, UART1_SYNCMODE_CLOCK_DISABLE, UART1_MODE_TXRX_ENABLE);
	UART1_ITConfig(UART1_IT_RXNE, ENABLE);
	UART1_Cmd(ENABLE);

	UART3_Init((uint32_t)115200, UART3_WORDLENGTH_8D, UART3_STOPBITS_1, UART3_PARITY_NO, UART3_MODE_TXRX_ENABLE);
	UART3_Cmd(ENABLE);
	
	uart_rx_index = 0;
}
/*==========================================================================*/
void UART_Update(void)
{
	if (uart_received)
	{
		uart_received = FALSE;		
	}
}
/*==========================================================================*/
#if 1
char putchar(char c)
{
	/* Write a character to the UART1 */
	UART3_SendData8(c);
	/* Loop until the end of transmission */
	while (UART3_GetFlagStatus(UART3_FLAG_TXE) == RESET);

	return (c);
}
#else
char putchar(char c)
{
	 /* Write a character to the UART1 */
	UART1_SendData8(c);
	/* Loop until the end of transmission */
	while (UART1_GetFlagStatus(UART1_FLAG_TXE) == RESET);

	return (c);
}

#endif
/*==========================================================================*/
