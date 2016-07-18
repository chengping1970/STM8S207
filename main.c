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

const u8 address_table[] = {0x57, 0xC8, 0xC9, 0xCA, 0xCB, 0x18, 0x47, 0x48, 0x49, 0x4A, 0x58, 0x59, 0x5A, 0x5B, 0x5C, 0x7D, 0xDF, 0xE7, 0x0D}; 		
const u8 table_size = sizeof(address_table);
#define INIT_FLAG 0xA5
#if (!INIT_VERTICAL_PANEL)
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
0x04,   // 4A
0x17,	// 58
0x40,	// 59
0x80,	// 5A
0x17,	// 5B
0x80,	// 5C
0x2C,	// 7D
0x9D,	// DF
0xBB,	// E7
0x2D,	// 0D
};
#else
const u8 register_default_value[] =
{
INIT_FLAG,	// flag
0x80,	// 57
0xCC,	// C8
0x8F,	// C9
0xDE,	// CA
0x60,	// CB
0x00,	// 18
0x30,	// 47
0x01,	// 48
0xFF,	// 49
0x25,	// 4A
0x23,   // 58
0x40,   // 59
0x80,   // 5A
0x17,	// 5B
0x80,   // 5C
0x2C,	// 7D
0x9D,	// DF
0xBD,	// E7
0x24,	// 0D
};
#endif
void flash_init(void)
{
	/* Define flash programming Time*/
	FLASH_SetProgrammingTime(FLASH_PROGRAMTIME_STANDARD);

	/* Unlock flash data eeprom memory */
	FLASH_Unlock(FLASH_MEMTYPE_DATA);
	/* Wait until Data EEPROM area unlocked flag is set*/
	while (FLASH_GetFlagStatus(FLASH_FLAG_DUL) == RESET)
	{};

	if (FLASH_ReadByte(EEPROM_START_ADDRESS) != INIT_FLAG)
	{
		u8 i;
		for (i = 1; i < sizeof(register_default_value); i++)
		{
			FLASH_ProgramByte(EEPROM_START_ADDRESS + i,register_default_value[i]);
		}
		FLASH_ProgramByte(EEPROM_START_ADDRESS, INIT_FLAG);
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

