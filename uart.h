#ifndef __UART_H__
#define __UART_H__

#include "stm8s.h"

extern void UART_Init(void);
extern void UART_Update(void);
extern void UART_PutChar (char c);
extern void UART_TimeTicks(void);
extern void UART_Send(u8 * reply, u16 count);

@far @interrupt void UART_ISR(void);

#endif //__UART_H__

