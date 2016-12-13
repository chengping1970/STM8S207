#ifndef __IR_H__
#define __IR_H__

#include "stm8s.h"

#define TIMER_START				2
#define TIMER_EXPIRED			1
#define TIMER_STOPPED			0

extern void IR_IN_Init(void);
extern void Timer_Init(void);
extern void IR_Update(void);
extern u8 IR_GetHDMIPort(void);
extern u8 IR_GetHDMIPort5V(u8 port);
extern void IR_SetHDMIPort(u8 port);

extern void IR_DelayNMiliseconds(u16 delay);

@far @interrupt void IR_IN_ISR(void);
@far @interrupt void TIMER4_ISR(void);

extern u32 System_Clock;
#endif //__IR_H__

