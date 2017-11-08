/*IR.C file
 */
#include <stdio.h>
#include "stm8s.h"
#include "stm8s_gpio.h"
#include "stm8s_clk.h"
#include "stm8s_exti.h"
#include "stm8s_tim1.h"
#include "stm8s_tim2.h"
#include "stm8s_tim4.h"
#include "stm8s_flash.h"
#include "stm8s_adc2.h"

#include "ir.h"
#include "uart.h"
#include "sw_i2c.h"
#include "it680x.h"
#include "Mhlrx.h"
#include "Mhlrx_reg.h"

#define IR_IN_PORT			GPIOA
#define IR_IN_PIN			GPIO_PIN_6

#define KEY_IN_PORT			GPIOE
#define KEY_IN_PIN			GPIO_PIN_6

#define HDMI5V_IN_PORT		GPIOB
#define HDMI5V_0_IN_PIN		GPIO_PIN_7
#define HDMI5V_1_IN_PIN		GPIO_PIN_6


#define IRKEY_DUMY 			0xFF

typedef enum
{
IR_RECEIVE_HEAD,
IR_RECEIVE_CODE
}IR_DECODE_ENUM;

typedef enum
{
NEC_HEAD,
NEC_CODE,
NEC_SPACE_0,
NEC_REPEAT,
NEC_SPACE_1,
NEC_IDLE
}IR_SNED_ENUM;

typedef enum
{
KEY_DEEP_0,
KEY_DEEP_1,
KEY_DEEP_2,
KEY_DEEP_3,
KEY_DEEP_4,
KEY_DEEP_5,
KEY_POWER,
KEY_ONOFF_3D,
KEY_INSERT_OFF,
KEY_SOURCE,
KEY_PC,
KEY_HDMI,
KEY_VOLUME_PLUS,
KEY_VOLUME_MINUS,
KEY_LEFT,
KEY_RIGHT,
KEY_VERIFY_SECRET,
KEY_TOGGLE_3D_MODE,
KEY_DEBUG,

KEY_TEST0,
KEY_TEST1,
KEY_TEST2,
KEY_TEST3,

KEY_2DZ,
KEY_9VIEW,
KEY_2D,

KEY_DUMMY = 0xFF
}IR_KEY_ENUM;

#define NEC_HEAD_LOW			(9000)
#define NEC_HEAD_HIGH			(4500)
#define NEC_REPEAT_LOW			(9000)
#define NEC_REPEAT_HIGH			(2250)
#define NEC_LOGIC_LOW			(560)
#define NEC_LOGIC_1_HIGH		(1690)
#define NEC_LOGIC_0_HIGH		(560)

#define LEADER_UPPER_LIMIT 		(13500+2000)
#define LEADER_LOWER_LIMIT 		(13500-1000)
#define REPEAT_UPPER_LIMIT 		(11250+1000)
#define REPEAT_LOWER_LIMIT 		(11250-1000)
#define HIGH_UPPER_LIMIT 		(2250+550)
#define HIGH_LOWER_LIMIT 		(2250-550)
#define LOW_UPPER_LIMIT 		(1125+325)
#define LOW_LOWER_LIMIT 		(1125-325)

#define KEY_DETECT_TIME			(100 + 1)
#define IR_RELEASE_TIME			(128 + TIMER_EXPIRED)

static u8 ir_state, ir_bit_number, ir_code[4], head_type, receive_code, ir_pressed, ir_fisrt_process;
static u8 ir_release_timer; 
static volatile u32 delay_timer;
static u32 ir_process_timer, Key_detect_timer;
static u8 HDMI_port = 1;
static u16 HDMI0_5V, HDMI1_5V, key_value;

#if 0
static u8 value_c8;
static u8 value_c9;
static u8 value_ca;
static u8 value_cb;
#endif
u32 System_Clock = 0;
/*==========================================================================*/
static u8 _Compare_Count(u16 a, u16 max, u16 min)
{
	return (a < max && a > min);
}
/*==========================================================================*/
static u8 _convert_IR(void)
{
	if (head_type)
	{
		switch (receive_code)
		{
			case 0x0: 		return KEY_DEEP_0;
			case 0x1: 		return KEY_DEEP_1;
			case 0x2: 		return KEY_DEEP_2;
			case 0x3: 		return KEY_DEEP_3;
			case 0x4: 		return KEY_DEEP_4;
			case 0x5: 		return KEY_DEEP_5;
			case 0xC7:		return KEY_POWER;
			case 0xC0: 		return KEY_PC;
			case 0xC3: 		return KEY_HDMI;
			case 0x75: 		return KEY_ONOFF_3D;
			case 0x0A:		return KEY_INSERT_OFF;
			case 0xC1: 		return KEY_DEBUG;
			case 0xC4:		return KEY_VERIFY_SECRET;
			case 0x58:		return KEY_TOGGLE_3D_MODE;
			#if TEST_WEAVING_TABLE
			case 0x50:		return KEY_TEST0;
			case 0x51:		return KEY_TEST1;
			case 0x52:		return KEY_TEST2;
			case 0x53:		return KEY_TEST3;
			#endif
			#if IR_SEND_UART
			case 0x7:		return KEY_2DZ;
			case 0x8:		return KEY_9VIEW;
			case 0x9:		return KEY_2D;
			#endif
			default:
				return KEY_DUMMY;
		}
	}
	else
	{
		switch (receive_code)
		{
			case 0x10: 		return KEY_DEEP_0;
			case 0x54: 		return KEY_DEEP_1;
			case 0x16: 		return KEY_DEEP_2;
			case 0x15: 		return KEY_DEEP_3;
			case 0x50: 		return KEY_DEEP_4;
			case 0x12: 		return KEY_DEEP_5;
			case 0x1C: 		return KEY_POWER;
			case 0x56: 		return KEY_PC;
			case 0x57: 		return KEY_HDMI;
			case 0x5B: 		return KEY_ONOFF_3D;
			case 0x58:		return KEY_INSERT_OFF;
			case 0x01: 		return KEY_DEBUG;		
			case 0x08:		return KEY_VERIFY_SECRET;
			case 0x1F:		return KEY_TOGGLE_3D_MODE;
			#if TEST_WEAVING_TABLE
			case 0x5A:		return KEY_TEST0;
			case 0x52:		return KEY_TEST1;
			case 0x5D:		return KEY_TEST2;
			case 0x5C:		return KEY_TEST3;
			#endif
			#if IR_SEND_UART
			case 0x4C:		return KEY_2DZ;
			case 0x0E:		return KEY_9VIEW;
			case 0x0D:		return KEY_2D;
			#endif
			default:
				return KEY_DUMMY;
		}
	}
}
/*==========================================================================*/
void IR_IN_Init(void)
{	
	GPIO_Init(IR_IN_PORT, IR_IN_PIN, GPIO_MODE_IN_FL_IT);
	EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOA, EXTI_SENSITIVITY_FALL_ONLY);

	TIM2_TimeBaseInit(TIM2_PRESCALER_16, 0xffff);
	TIM2_Cmd(ENABLE); 

	GPIO_Init(KEY_IN_PORT, KEY_IN_PIN, GPIO_MODE_IN_FL_NO_IT);
	GPIO_Init(HDMI5V_IN_PORT, HDMI5V_0_IN_PIN, GPIO_MODE_IN_FL_NO_IT);
	GPIO_Init(HDMI5V_IN_PORT, HDMI5V_0_IN_PIN, GPIO_MODE_IN_FL_NO_IT);

	ir_state = IR_RECEIVE_HEAD;
	ir_pressed = FALSE;	
	ir_fisrt_process = FALSE;
	receive_code = IRKEY_DUMY;	
	#if 0
	value_c8 = FLASH_ReadByte(0x4001 + REG_0xC8);
	value_c9 = FLASH_ReadByte(0x4001 + REG_0xC9);
	value_ca = FLASH_ReadByte(0x4001 + REG_0xCA);
	value_cb = FLASH_ReadByte(0x4001 + REG_0xCB);
	#endif
}
/*==========================================================================*/
void Timer_Init(void)
{
	TIM4_TimeBaseInit(TIM4_PRESCALER_128, 125);
	TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
	TIM4_Cmd(ENABLE); 

	ir_release_timer = TIMER_STOPPED;
	delay_timer = TIMER_STOPPED;
	ir_process_timer = TIMER_STOPPED;
	Key_detect_timer = TIMER_EXPIRED;
}
/*==========================================================================*/
void IR_Update(void)
{
	if (ir_pressed)
	{
		if (ir_process_timer == TIMER_EXPIRED)
		{
			u8 ir_key = _convert_IR();
			switch (ir_key)
			{
				case KEY_PC:
					IR_SetHDMIPort(0);
					break;
				case KEY_HDMI:
					IR_SetHDMIPort(1);
					break;
				case KEY_DEBUG:
					SWI2C_ToggleI2CMode();
					break;
				case KEY_ONOFF_3D:
					SWI2C_Toggle3DOnOff();
					break;
				case KEY_DEEP_0:
					SWI2C_Set_deep(0);
					break;
				case KEY_DEEP_1:
					SWI2C_Set_deep(1);
					break;
				case KEY_DEEP_2:
					SWI2C_Set_deep(2);
					break;
				case KEY_DEEP_3:
					SWI2C_Set_deep(3);
					break;
				case KEY_DEEP_4:
					SWI2C_Set_deep(4);
					break;
				case KEY_DEEP_5:
					SWI2C_Set_deep(5);
					break;
				case KEY_POWER:
					SWI2C_ProcessPower();
					break;
				#if SUPPORT_1080P_2DZ
                case KEY_TOGGLE_3D_MODE:
					SWI2C_Toggle3DMode();
					break;
				#endif
				case KEY_VERIFY_SECRET:
					SWI2C_VerifyKey();
					break;
				case KEY_INSERT_OFF:	
					SWI2C_ToggleInsert();
					break;
				#if TEST_WEAVING_TABLE
				case KEY_TEST0:
					SWI2C_WriteWeavingTable(0);
					break;
				case KEY_TEST1:
					SWI2C_WriteWeavingTable(1);
					break;
				case KEY_TEST2:
					SWI2C_WriteWeavingTable(2);
					break;
				case KEY_TEST3:
					SWI2C_WriteWeavingTable(3);
					break;
				#endif
				#if IR_SEND_UART
				case KEY_2DZ:
					{
						u8 uart_command[8];
						uart_command[0] = 0xFF;
						uart_command[1] = 0x55;
						uart_command[2] = 0x80;
						uart_command[3] = 0x80;
						uart_command[4] = 0x0;
						uart_command[5] = 0x0;
						uart_command[6] = 0x0;
						uart_command[7] = 0x80;
						UART_IRSend(uart_command);
					}
					break;
				case KEY_9VIEW:
					{
						u8 uart_command[8];
						uart_command[0] = 0xFF;
						uart_command[1] = 0x55;
						uart_command[2] = 0x80;
						uart_command[3] = 0x88;
						uart_command[4] = 0x0;
						uart_command[5] = 0x0;
						uart_command[6] = 0x0;
						uart_command[7] = 0x78;
						UART_IRSend(uart_command);
					}
					break;
				case KEY_2D:
					{
						u8 uart_command[8];
						uart_command[0] = 0xFF;
						uart_command[1] = 0x55;
						uart_command[2] = 0x80;
						uart_command[3] = 0x81;
						uart_command[4] = 0x0;
						uart_command[5] = 0x0;
						uart_command[6] = 0x0;
						uart_command[7] = 0x7F;
						UART_IRSend(uart_command);
					}
					break;
				#endif
				default:
					break;
			}
			if (ir_key != KEY_VOLUME_PLUS && ir_key != KEY_VOLUME_MINUS && ir_key != KEY_LEFT &&ir_key != KEY_RIGHT)
			{
				receive_code = IRKEY_DUMY;
			}
			if (ir_fisrt_process)
			{
				ir_fisrt_process = FALSE;
				ir_process_timer = 500 + 1;
			}
			else
			{
				ir_process_timer = 50 + 1;
			}
		}
	}
	
	if (ir_release_timer == TIMER_EXPIRED)
	{
		ir_release_timer = TIMER_STOPPED;
		ir_process_timer = TIMER_STOPPED;
		ir_pressed = FALSE;	
	}

	if (Key_detect_timer == TIMER_EXPIRED)
	{
		ADC2_Init(ADC2_CONVERSIONMODE_CONTINUOUS, ADC2_CHANNEL_7, ADC2_PRESSEL_FCPU_D2,\
					ADC2_EXTTRIG_TIM, DISABLE, ADC2_ALIGN_RIGHT, ADC2_SCHMITTTRIG_CHANNEL7, DISABLE);
		ADC2_StartConversion();
		HDMI0_5V = ADC2_GetConversionValue();

		ADC2_Init(ADC2_CONVERSIONMODE_CONTINUOUS, ADC2_CHANNEL_6, ADC2_PRESSEL_FCPU_D2,\
					ADC2_EXTTRIG_TIM, DISABLE, ADC2_ALIGN_RIGHT, ADC2_SCHMITTTRIG_CHANNEL6, DISABLE);
		ADC2_StartConversion();
		HDMI1_5V = ADC2_GetConversionValue();
		
		ADC2_Init(ADC2_CONVERSIONMODE_CONTINUOUS, ADC2_CHANNEL_9, ADC2_PRESSEL_FCPU_D2,\
						ADC2_EXTTRIG_TIM, DISABLE, ADC2_ALIGN_RIGHT, ADC2_SCHMITTTRIG_CHANNEL9, DISABLE);
		ADC2_StartConversion();
		key_value = ADC2_GetConversionValue();
				
		Key_detect_timer = KEY_DETECT_TIME;
	}
}
/*==========================================================================*/
u8 IR_GetHDMIPort5V(u8 port)
{
	if (port)
	{
		return (HDMI1_5V > 400);
	}
	else
	{
		return (HDMI0_5V > 400);
	}
}
/*==========================================================================*/
u8 IR_GetHDMIPort(void)
{
	return HDMI_port;
}
/**************************************************************************/
void IR_SetHDMIPort(u8 port)
{
	if (HDMI_port != port)
	{
		if (IR_GetHDMIPort5V(port))
		{
			HDMI_port = port;
			DEBUG_PRINTF(printf("==== HDMI switch to port %d ====\r\n", port&0x01));
			it6802PortSelect(port);
			HDMI_HotPlug(0);
			IR_DelayNMiliseconds(2000);
			HDMI_HotPlug(1);
		}
	}				
}
/*==========================================================================*/
INTERRUPT_HANDLER(IR_IN_ISR, 3)
{
	u16 count;
	u8 fault = FALSE;
	
	TIM2_Cmd(DISABLE);
	TIM2_ClearFlag(TIM2_FLAG_UPDATE);
	count = TIM2_GetCounter();
	TIM2_SetCounter(0);			
	TIM2_Cmd(ENABLE);

	if (count > LEADER_UPPER_LIMIT)
	{
		fault = TRUE;
	}
	else
	{
		switch (ir_state)
		{
			case IR_RECEIVE_HEAD:
				if (_Compare_Count(count, LEADER_UPPER_LIMIT, LEADER_LOWER_LIMIT))
				{
					ir_release_timer = IR_RELEASE_TIME;
					ir_state = IR_RECEIVE_CODE;
				}
				else if (_Compare_Count(count, REPEAT_UPPER_LIMIT, REPEAT_LOWER_LIMIT))
				{
					ir_release_timer = IR_RELEASE_TIME;
				}
				ir_bit_number = 0;
				break;
			case IR_RECEIVE_CODE:
				if (_Compare_Count(count, HIGH_UPPER_LIMIT, HIGH_LOWER_LIMIT))
				{
					ir_code[ir_bit_number/8] = (ir_code[ir_bit_number/8]>>1)|0x80;
				}
				else if (_Compare_Count(count, LOW_UPPER_LIMIT, LOW_LOWER_LIMIT))
				{
					ir_code[ir_bit_number/8] = ir_code[ir_bit_number/8]>>1;
				}
				else
				{
					fault = TRUE;
				}
				ir_bit_number++;
				if (ir_bit_number == 32 && !fault)
				{
					ir_state = IR_RECEIVE_HEAD;
					if (((ir_code[0] == 0x0 && ir_code[1] == 0xDF) || (ir_code[0] == 0x4F && ir_code[1] == 0x50)) 
					&& ((ir_code[2]^ir_code[3]) == 0xFF))
					{
						if (!ir_pressed)
						{
							receive_code = ir_code[2];						
							ir_pressed = TRUE;
							ir_fisrt_process = TRUE;
							ir_process_timer = TIMER_EXPIRED;
							if (ir_code[0] == 0x4F && ir_code[1] == 0x50)
							{
								head_type = 1;
							}
							else
							{
								head_type = 0;
							}
						}				
					}
					else
					{
						fault = TRUE;
					}
				}
				break;
			default:
				break;
		}
	}
	if (fault)
	{
		ir_state = IR_RECEIVE_HEAD;
	}
}
/*==========================================================================*/
INTERRUPT_HANDLER(TIMER4_ISR, 23)
{		
	TIM4_Cmd(DISABLE);
	TIM4_ClearFlag(TIM4_IT_UPDATE);
	nop();
	nop();
	nop();
	nop();
	nop();
	nop();
	nop();
	nop();
	nop();
	nop();
	nop();
	TIM4_Cmd(ENABLE);

	if (ir_release_timer > TIMER_EXPIRED)
	{
		ir_release_timer--;
	}
	if (delay_timer > TIMER_EXPIRED)
	{
		delay_timer--;
	}
	if (ir_process_timer > TIMER_EXPIRED)
	{
		ir_process_timer--;
	}
	if (Key_detect_timer > TIMER_EXPIRED)
	{
		Key_detect_timer--;
	}
	SWI2C_UpdateTimer();
	System_Clock++;
}
/*==========================================================================*/
void IR_DelayNMiliseconds(u16 delay)
{
	delay_timer = delay;
	while (delay_timer > TIMER_EXPIRED);
	delay_timer = TIMER_STOPPED;
}
/*==========================================================================*/	
