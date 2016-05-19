/* MAIN.C file
 * 
 * Copyright (c) 2002-2005 STMicroelectronics
 */
#include"stdio.h"
#include "stm8s.h"
#include "sw_i2c.h"
#include "ir.h"
#include "uart.h"
#include "stm8s_gpio.h"
#include "stm8s_exti.h"
#include "stm8s_flash.h"
#include "stm8s_adc2.h"
#include "it680x.h"
#include "Mhlrx.h"
#include "Mhlrx_reg.h"

#define INIT_FLAG 0xAA
const u8 register_default_value[] =
{
INIT_FLAG,	// flag
0x80,	// 57
0x05,	// C8
0x05,	// C9
0x19,	// CA
0x00,	// CB
0x03,	// 18
0x10,	// 47
0x01,	// 48
0x85,	// 49
0x17,	// 58
0x40,	// 59
0x80,	// 5A
0x80,	// 5C
0x2D,	// 0D
};

void flash_init(void)
{
	/* Define flash programming Time*/
	FLASH_SetProgrammingTime(FLASH_PROGRAMTIME_STANDARD);

	/* Unlock flash data eeprom memory */
	FLASH_Unlock(FLASH_MEMTYPE_DATA);
	/* Wait until Data EEPROM area unlocked flag is set*/
	while (FLASH_GetFlagStatus(FLASH_FLAG_DUL) == RESET)
	{};

	if (FLASH_ReadByte(0x4000) != INIT_FLAG)
	{
		u8 i;
		for (i = 0; i < sizeof(register_default_value); i++)
		{
			FLASH_ProgramByte(0x4000 + i,register_default_value[i]);
		}
	}
}

main()
{	
#if (USE_EXTERAL_OSC)
	CLK_HSECmd(ENABLE);
	while(SET != CLK_GetFlagStatus(CLK_FLAG_HSERDY)); 
	CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
	CLK_ClockSwitchCmd(ENABLE);
	CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSE, DISABLE, CLK_CURRENTCLOCKSTATE_ENABLE);
#else
	/* system_clock / 1 */
  	CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
#endif
	SWI2C_Init();
	flash_init();	
	IR_IN_Init();
	Timer_Init();
	UART_Init();
		
	/* Enable general interrupts */
	enableInterrupts();	
	
	SWI2C_SystemPowerUp();
	
	while (1)
	{		
		IR_Update();
		SWI2C_Update();
		UART_Update();		
	}
}

