/*SW_I2C.C file
 */

#include "stm8s.h"
#include "stm8s_gpio.h"
#include "stm8s_exti.h"
#include "stm8s_tim1.h"
#include "stm8s_flash.h"
#include "ir.h" 
#include "sw_i2c.h"
#include "it680x.h"
#include "Mhlrx.h"
#include "Mhlrx_reg.h"

#define IIC_SCL_PORT			GPIOB
#define IIC_SCL_PIN				GPIO_PIN_4
#define IIC_SDA_PORT			GPIOB
#define IIC_SDA_PIN				GPIO_PIN_5


#define FPGA_RESET_PORT			GPIOC
#define FPGA_RESET_PIN			GPIO_PIN_4
#define IT680X_RESET_PORT		GPIOB
#define IT680X_RESET_PIN		GPIO_PIN_0

#define POWER_ONOFF_PORT		GPIOC
#define POWER_ONOFF_PIN			GPIO_PIN_5

#define BACKLIGHT_ONOFF_PORT	GPIOC
#define BACKLIGHT_ONOFF_PIN		GPIO_PIN_7
#define BACKLIGHT_PWM_PORT		GPIOC
#define BACKLIGHT_PWM_PIN		GPIO_PIN_6
#define VPANEL_ONOFF_PORT		GPIOG
#define VPANEL_ONOFF_PIN		GPIO_PIN_0

#define LED_G_PORT				GPIOD
#define LED_G_PIN				GPIO_PIN_3
#define LED_R_PORT				GPIOE
#define LED_R_PIN				GPIO_PIN_0

#define HDMI_HOTPLUG_PORT		GPIOB
#define HDMI_HOTPLUG_PIN		GPIO_PIN_6

#define FPGA_ADDRESS			0xBA
#define FRC_BOARD_ADDRESS		0x22

#define FRC_UPDATE_TIME			(500 + 1)
#define BACKLIGHT_DELAY_TIME	(5000 + 1)

#define IIC_ACK_TIMEOUT			50

static u32 frc_update_timer = TIMER_EXPIRED;
static u32 Backlight_on_timer = TIMER_STOPPED;
static u8 LVDS_mode = 0;
static u8 Power_status = FALSE;
static u8 I2C_stop = FALSE;
static u8 Have_FRC;
/*==========================================================================*/
static void _Delay_5us(void)
{
	u8 i;
   	for (i = 0;i < 10;i++);
}
/*==========================================================================*/
static void _SWI2C_Start(void)
{
	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
	GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
	_Delay_5us();
	GPIO_WriteLow(IIC_SDA_PORT,IIC_SDA_PIN);
	_Delay_5us();
	GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
}
/*==========================================================================*/
static void _SWI2C_Stop(void)
{
	GPIO_WriteLow(IIC_SDA_PORT,IIC_SDA_PIN);
	_Delay_5us();
	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
	_Delay_5us();
	GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
}
/*==========================================================================*/
static u8 _SWI2C_SendByte(u8 value)
{
	u8 count;
	
	for (count = 0;count < 8;count++)
	{
		if (value&0x80)
		{
			GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
		}
		else
		{
			GPIO_WriteLow(IIC_SDA_PORT,IIC_SDA_PIN);
		}
		_Delay_5us();
		GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
		_Delay_5us();
		GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
		value = value<<1;
	}
	GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_IN_FL_NO_IT);
	_Delay_5us();
	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
	for (count = 0;count < IIC_ACK_TIMEOUT;count++)
	{
		if (GPIO_ReadInputPin(IIC_SDA_PORT, IIC_SDA_PIN) == 0)
		{
			GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
			GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_OUT_OD_LOW_FAST);
			return IIC_OK;
		}
	}
	GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
	
	return IIC_FAIL;
}

/*==========================================================================*/
static u8 _SWI2C_ReceiveByte(u8 send_ack)
{
	u8 count, read, value = 0;

	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_IN_FL_NO_IT);
	for (count = 0;count < 8;count++)
	{
		_Delay_5us();
		GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
		if (GPIO_ReadInputPin(IIC_SDA_PORT, IIC_SDA_PIN))
		{
			read = 1;
		}
		else
		{
			read = 0;
		}
		value = (value<<1)|read;
		_Delay_5us();
		GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
	}
	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
	if (send_ack)
	{
		GPIO_WriteLow(IIC_SDA_PORT,IIC_SDA_PIN);
	}
	else
	{
		GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
	}
	_Delay_5us();
	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
	_Delay_5us();
	GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
	_Delay_5us();

	return	value;		
}
/*==========================================================================*/
u8 SWI2C_TestDevice(u8 addr)
{
	u8 result;
	_SWI2C_Start();
	result = _SWI2C_SendByte(addr);
	_SWI2C_Stop();

	return result;
}
/*==========================================================================*/
u8 SWI2C_ReadByte(u8 addr, u8 subaddr, u8 * pValue)
{
	return SWI2C_ReadBytes(addr, subaddr, 1, pValue);
}
/*==========================================================================*/
u8 SWI2C_ReadBytes(u8 addr, u8 subaddr, u8 number, u8 * p_data)
{	
	u8 result;
	_SWI2C_Start();
	result = _SWI2C_SendByte(addr);
	if (result == IIC_FAIL)
	{
		_SWI2C_Stop();
		return result;
	}
	result = _SWI2C_SendByte(subaddr);
	if (result == IIC_FAIL)
	{
		_SWI2C_Stop();
		return result;
	}
	_SWI2C_Start();
	result = _SWI2C_SendByte(addr|0x01);
	if (result == IIC_FAIL)
	{
		_SWI2C_Stop();
		return result;
	}
	while (number--)
	{
		*p_data = _SWI2C_ReceiveByte(number);
		p_data++;
	}
	_SWI2C_Stop();

	return IIC_OK;
}
/*==========================================================================*/
u8 SWI2C_WriteByte(u8 addr, u8 subaddr, u8 value)
{	
	return SWI2C_WriteBytes(addr, subaddr, 1, &value);
}
/*==========================================================================*/
u8 SWI2C_Write2Byte(u8 addr, u8 subaddr, u16 data) 
{
	u8 result;
	_SWI2C_Start();                              
	result = _SWI2C_SendByte(addr);  
	if (result == IIC_FAIL)
	{
		_SWI2C_Stop();
		return result;
	}
	result = _SWI2C_SendByte(subaddr);     
	if (result == IIC_FAIL)
	{
		_SWI2C_Stop();
		return result;
	}
	result = _SWI2C_SendByte(data>>8);     
	if (result == IIC_FAIL)
	{
		_SWI2C_Stop();
		return result;
	}
	result = _SWI2C_SendByte(data);   
	if (result == IIC_FAIL)
	{
		_SWI2C_Stop();
		return result;
	}
	_SWI2C_Stop();    
	return IIC_OK;
}      
/*==========================================================================*/
u8 SWI2C_WriteBytes(u8 addr, u8 subaddr, u8 number, u8 * p_data)
{
	u8 result;
	_SWI2C_Start();
	result = _SWI2C_SendByte(addr);
	if (result == IIC_FAIL)
	{
		_SWI2C_Stop();
		return result;
	}
	result = _SWI2C_SendByte(subaddr);
	if (result == IIC_FAIL)
	{
		_SWI2C_Stop();
		return result;
	}
	while (number--)
	{
		result = _SWI2C_SendByte(*p_data);
		if (result == IIC_FAIL)
	{
		_SWI2C_Stop();
		return result;
	}
		p_data++;
	}
	_SWI2C_Stop();
	return IIC_OK;
}
/*==========================================================================*/
void SWI2C_Init(void)
{
	GPIO_Init(IIC_SCL_PORT, IIC_SCL_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
	GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);

	GPIO_Init(POWER_ONOFF_PORT, POWER_ONOFF_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
	
	GPIO_Init(FPGA_RESET_PORT, FPGA_RESET_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
	GPIO_Init(IT680X_RESET_PORT, IT680X_RESET_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
	
	GPIO_Init(LED_R_PORT, LED_R_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);	
	GPIO_Init(LED_G_PORT, LED_G_PIN, GPIO_MODE_OUT_PP_LOW_FAST);

	GPIO_Init(HDMI_HOTPLUG_PORT, HDMI_HOTPLUG_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);

	GPIO_Init(BACKLIGHT_ONOFF_PORT, BACKLIGHT_ONOFF_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
	GPIO_Init(BACKLIGHT_PWM_PORT, BACKLIGHT_PWM_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
	GPIO_Init(VPANEL_ONOFF_PORT, VPANEL_ONOFF_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
	
	TIM1_TimeBaseInit(0, TIM1_COUNTERMODE_UP, 4095, 0);
	TIM1_OC1Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE, TIM1_OUTPUTNSTATE_DISABLE,
	           0, TIM1_OCPOLARITY_LOW, TIM1_OCNPOLARITY_HIGH, TIM1_OCIDLESTATE_SET,
	           TIM1_OCNIDLESTATE_RESET);
	TIM1_Cmd(ENABLE);
	TIM1_CtrlPWMOutputs(ENABLE);
}
/*==========================================================================*/
void SWI2C_Update(void)
{	
	if (Backlight_on_timer == TIMER_EXPIRED)
	{
		//GPIO_WriteHigh(VPANEL_ONOFF_PORT, VPANEL_ONOFF_PIN);
		//IR_DelayNMiliseconds(500);
		GPIO_WriteLow(BACKLIGHT_ONOFF_PORT, BACKLIGHT_ONOFF_PIN);	
		Backlight_on_timer = TIMER_STOPPED;
	}

	if (Power_status && !I2C_stop)
	{
		IT6802_fsm();

		if (frc_update_timer == TIMER_EXPIRED && Have_FRC)
		{
			u8 read_LVDS_mode, read_MFC;
			SWI2C_ReadByte(FRC_BOARD_ADDRESS, 0x18, &read_LVDS_mode);
			if (read_LVDS_mode != LVDS_mode)
			{
				SWI2C_WriteByte(FRC_BOARD_ADDRESS, 0x18, LVDS_mode);
			}
			SWI2C_ReadByte(FRC_BOARD_ADDRESS, 0x0A, &read_MFC);
			if (read_MFC != 0)
			{
				IR_DelayNMiliseconds(50);
				SWI2C_WriteByte(FRC_BOARD_ADDRESS, 0x0A, 0);
			}
		}	
	}
}
/*==========================================================================*/
void SWI2C_SystemPowerUp(void)
{
	GPIO_WriteLow(POWER_ONOFF_PORT, POWER_ONOFF_PIN);
	GPIO_WriteLow(LED_R_PORT, LED_R_PIN);			
	GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
	IR_DelayNMiliseconds(50);
	Power_status = TRUE;
	GPIO_WriteLow(IT680X_RESET_PORT, IT680X_RESET_PIN);
	GPIO_WriteLow(FPGA_RESET_PORT, FPGA_RESET_PIN);
	IR_DelayNMiliseconds(200);
	GPIO_WriteHigh(IT680X_RESET_PORT, IT680X_RESET_PIN);
	GPIO_WriteHigh(FPGA_RESET_PORT, FPGA_RESET_PIN);
	IR_DelayNMiliseconds(1000);
	FPGA_Init();	
	IT6802_fsm_init();
	Have_FRC = SWI2C_TestDevice(FRC_BOARD_ADDRESS);
	GPIO_WriteHigh(VPANEL_ONOFF_PORT, VPANEL_ONOFF_PIN);
	Backlight_on_timer = BACKLIGHT_DELAY_TIME;
}
/*==========================================================================*/
void SWI2C_SystemPowerDown(void)
{
	GPIO_WriteHigh(BACKLIGHT_ONOFF_PORT, BACKLIGHT_ONOFF_PIN);
	IR_DelayNMiliseconds(200);
	GPIO_WriteLow(VPANEL_ONOFF_PORT, VPANEL_ONOFF_PIN);
	GPIO_WriteHigh(POWER_ONOFF_PORT, POWER_ONOFF_PIN);
	GPIO_WriteHigh(LED_R_PORT, LED_R_PIN);			
	GPIO_WriteLow(LED_G_PORT, LED_G_PIN);
	Power_status = FALSE;
	I2C_stop = FALSE;
}
/*==========================================================================*/
void SWI2C_ToggleI2CMode(void)
{
	if (Power_status)
	{
		I2C_stop = !I2C_stop;
		if (I2C_stop)
		{
			GPIO_WriteHigh(LED_R_PORT, LED_R_PIN);			
			GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
		}
		else
		{
			GPIO_WriteLow(LED_R_PORT, LED_R_PIN);			
			GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
		}
	}
}
/*==========================================================================*/
void SWI2C_ProcessPower(void)
{
	if (Power_status)
	{
		SWI2C_SystemPowerDown();
	}
	else
	{
		SWI2C_SystemPowerUp();
	}
}
/*==========================================================================*/
static u8 Set3DOn = FALSE;

static void SWI2C_Set3DOnOff(u8 OnOff)
{
	u8 reg_value, retry;
	if (OnOff)
	{
		reg_value = 0x80;
	}
	else
	{
		reg_value = 0x0;
	}
	for (retry = 0; retry < 3; retry++)
	{
		u8 value;
		SWI2C_WriteByte(FPGA_ADDRESS, 0x57, reg_value);
		SWI2C_ReadByte(FPGA_ADDRESS, 0x57, &value);
		if (value == reg_value)
		{
			break;
		}
	}
}
/*==========================================================================*/
void SWI2C_Toggle3DOnOff(void)
{	
	Set3DOn = !Set3DOn;
	SWI2C_Set3DOnOff(Set3DOn);
}
/*==========================================================================*/
extern const u8 address_table[];
extern const u8 table_size;
void FPGA_Init(void)
 {	
 	u8 i;
	for (i = 0; i < table_size; i++)
	{
		SWI2C_WriteByte(FPGA_ADDRESS, address_table[i], FLASH_ReadByte(0x4001 + i));
	}
	if (FLASH_ReadByte(0x4001))
	{
		Set3DOn = TRUE;
	}
	SWI2C_Set3DOnOff(Set3DOn);	
}
/*==========================================================================*/
void HDMI_HotPlug(u8 value)
{
	if (value)
	{
		GPIO_WriteHigh(HDMI_HOTPLUG_PORT,HDMI_HOTPLUG_PIN);
	}
	else
	{
		GPIO_WriteLow(HDMI_HOTPLUG_PORT,HDMI_HOTPLUG_PIN);
	}
}
/*==========================================================================*/
static const u8 deep_value[6][3] =
{
	//* 0x59 0x5C 0x5A 
	{0x30, 0x80, 0x60},
	{0x50, 0x70, 0x70},
	{0x70, 0x60, 0x80},
	{0x90, 0x50, 0x90},
	{0xA0, 0x40, 0xA0},
	{0xA8, 0x30, 0xA0},
	};
void SWI2C_Set_deep(u8 deep)
{
	if (deep == 0)
	{
		SWI2C_WriteByte(FPGA_ADDRESS, 0x59, FLASH_ReadByte(0x4000 + REG_0x59 + 1));
		SWI2C_WriteByte(FPGA_ADDRESS, 0x5C, FLASH_ReadByte(0x4000 + REG_0x5C + 1));
		SWI2C_WriteByte(FPGA_ADDRESS, 0x5A, FLASH_ReadByte(0x4000 + REG_0x5A + 1));
	}
	else
	{
		SWI2C_WriteByte(FPGA_ADDRESS, 0x59, deep_value[deep][0]);
		SWI2C_WriteByte(FPGA_ADDRESS, 0x5C, deep_value[deep][1]);
		SWI2C_WriteByte(FPGA_ADDRESS, 0x5A, deep_value[deep][2]);
	}
}
/*==========================================================================*/
void SWI2C_UpdateTimer(void)
{
	if (frc_update_timer > TIMER_EXPIRED)
	{
		frc_update_timer--;
	}
	if (Backlight_on_timer > TIMER_EXPIRED)
	{
		Backlight_on_timer--;
	}
}
/*==========================================================================*/

