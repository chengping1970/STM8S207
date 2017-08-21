/*SW_I2C.C file
 */
#include "stdio.h"
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
#define SECRET_DETECT_TIME		(500 + 1)
#define SINGNAL_TETECT_TIME		(150 + 1) 
#define BACKLIGHT_DELAY_TIME	(5000 + 1)

#define SIGNAL_STABLE_COUNT		5
#define NO_SIGNAL_COUNT			2
#define IIC_ACK_TIMEOUT			50

#define SET_VPANEL_ON()			GPIO_WriteHigh(VPANEL_ONOFF_PORT, VPANEL_ONOFF_PIN)
#define SET_VPANEL_OFF()		GPIO_WriteLow(VPANEL_ONOFF_PORT, VPANEL_ONOFF_PIN)
#define SET_BACKLIGHT_ON()		GPIO_WriteLow(BACKLIGHT_ONOFF_PORT, BACKLIGHT_ONOFF_PIN)
#define SET_BACKLIGHT_OFF()		GPIO_WriteHigh(BACKLIGHT_ONOFF_PORT, BACKLIGHT_ONOFF_PIN)


static u32 frc_update_timer = TIMER_EXPIRED;
static u32 Backlight_on_timer = TIMER_STOPPED;
#if FPGA_KEY_VERIFY_AUTO
static u32 secret_detect_timer = TIMER_EXPIRED;
#endif
static u32 signal_detect_timer	= TIMER_EXPIRED;
static u8 LVDS_mode = 0;
static u8 Power_status = FALSE;
static u8 signal_status, singal_change_count;
static u8 I2C_stop = FALSE;
static u8 Have_FRC;
static u8 onoff_count = 0;
#if MHL_IIC_ERROR_RESET
static u8 I2C_error_count = 0;
#endif
#if FPGA_KEY_VERIFY
static const u8 secret_key_table1[] =
{
	0x02, 0xa1, 0x7e, 0x7d, 0x1e, 0x1a, 0x2b, 0x24, 0xa4, 0x3c, 0xa0, 0x6e, 0x23, 0xa9, 0xbf, 0x5d,
	0x4d, 0x4f, 0xac, 0xa5, 0xf7, 0x04, 0x2a, 0xe4, 0x64, 0xa2, 0xec, 0xfd, 0x53, 0x4a, 0x5c, 0xc5,
	0xbb, 0x6a, 0xdc, 0x03, 0xe5, 0xca, 0xbd, 0x2d, 0x0b, 0xd5, 0x29, 0xbc, 0xb0, 0x34, 0x9a, 0xc3,
	0xa7, 0xf3, 0x61, 0x70, 0x95, 0xda, 0x33, 0x21, 0x45, 0xba, 0x2e, 0x9d, 0x67, 0x5a, 0x9c, 0x48,
	0x8f, 0x0f, 0x6c, 0xe9, 0xde, 0x1c, 0xc8, 0xe8, 0x1b, 0xdb, 0x5e, 0x54, 0x58, 0x68, 0xe2, 0x81,
	0x8b, 0x79, 0x22, 0x32, 0xf0, 0xc2, 0x7f, 0xdf, 0x25, 0x75, 0x97, 0x1d, 0x18, 0x38, 0x44, 0x8e,
	0x94, 0x57, 0x63, 0x56, 0x90, 0xe0, 0xfa, 0xb7, 0x12, 0x41, 0x84, 0xe1, 0x26, 0xe3, 0x1f, 0x8a,
	0x92, 0x30, 0xfb, 0x9e, 0xd9, 0x8c, 0x99, 0x7c, 0x96, 0x5f, 0x77, 0xa3, 0x46, 0x06, 0x6d, 0xd2,
	0xb8, 0x4c, 0x83, 0x72, 0x3d, 0x59, 0xd1, 0x6b, 0xab, 0xb3, 0xd8, 0x40, 0x6f, 0x3f, 0x3b, 0xc6,
	0xff, 0xc0, 0x98, 0xcb, 0x28, 0x31, 0x05, 0x88, 0xbe, 0xf4, 0xc4, 0xb5, 0x89, 0x55, 0x0e, 0x14,
	0x15, 0x17, 0xad, 0x71, 0x7b, 0xcc, 0xc1, 0xc9, 0x00, 0xd3, 0xea, 0x51, 0xb4, 0x35, 0xb2, 0x3e,
	0x47, 0x08, 0x73, 0x20, 0xb1, 0x4e, 0x60, 0xb9, 0x0d, 0xfe, 0x76, 0x37, 0x0c, 0xd7, 0xf9, 0x50,
	0x5b, 0x01, 0x8d, 0x78, 0xce, 0xae, 0xe6, 0x4b, 0xf5, 0xcd, 0x09, 0xc7, 0xf6, 0x52, 0x9b, 0xfc,
	0x62, 0x85, 0x11, 0x74, 0x49, 0x93, 0x66, 0x16, 0xa8, 0x43, 0x19, 0x9f, 0x27, 0xeb, 0x13, 0x3a,
	0xe7, 0x65, 0x82, 0x36, 0x39, 0xdd, 0x87, 0x86, 0x0a, 0xb6, 0xd6, 0xaf, 0x69, 0x2f, 0x42, 0x10,
	0x91, 0xf2, 0x2c, 0xd0, 0x7a, 0xd4, 0xee, 0x80, 0x07, 0xa6, 0xf8, 0xf1, 0xef, 0xcf, 0xaa, 0xed
};

static const u8 secret_key_table2[] =
{
	0xec, 0x7c, 0x5a, 0xda, 0x42, 0xbd, 0xa1, 0x23, 0xc8, 0xd9, 0x26, 0xee, 0x8e, 0x80, 0xe1, 0x0f,
	0x4f, 0x4b, 0x5c, 0x49, 0xbc, 0xdc, 0x06, 0x0d, 0xd2, 0xbe, 0x50, 0x7a, 0x94, 0xed, 0x08, 0x2b,
	0x17, 0x2e, 0xe9, 0xe6, 0x6f, 0x43, 0xc2, 0x74, 0x83, 0xa2, 0x97, 0xa4, 0xf0, 0x36, 0xb5, 0x44,
	0x58, 0x90, 0x5e, 0xbf, 0x84, 0xc6, 0x27, 0x3d, 0x20, 0x12, 0x60, 0x55, 0xd8, 0x62, 0xf6, 0x21,
	0x16, 0x73, 0x79, 0x5b, 0x93, 0x92, 0x69, 0x37, 0x09, 0x04, 0xb8, 0x57, 0x33, 0x39, 0x99, 0x88,
	0x7f, 0xf5, 0x7e, 0x6a, 0x4a, 0x22, 0x91, 0x40, 0xa8, 0xad, 0xb6, 0xd4, 0x24, 0x7b, 0x0c, 0xb1,
	0x45, 0x9d, 0x13, 0xc0, 0x51, 0x5d, 0xba, 0x9e, 0x41, 0x2f, 0x01, 0xae, 0x9b, 0xb0, 0x8f, 0xd7,
	0x1e, 0xb4, 0x8a, 0xd5, 0xdf, 0x8d, 0x63, 0xa0, 0x18, 0xe3, 0x56, 0x1d, 0x86, 0x25, 0x48, 0xf9,
	0x87, 0xa6, 0x1c, 0x67, 0x65, 0x70, 0xab, 0x35, 0xeb, 0xe2, 0x2a, 0x9a, 0xca, 0xcf, 0xd6, 0xa7,
	0x5f, 0x31, 0x53, 0x59, 0xd1, 0x3e, 0xcb, 0xcc, 0x8b, 0xe7, 0xb3, 0x1f, 0x81, 0xe0, 0x77, 0x0b,
	0xde, 0xf1, 0xa9, 0x52, 0xc1, 0xc4, 0x3f, 0x10, 0x3a, 0x4e, 0xc5, 0x6b, 0xb2, 0xa3, 0xcd, 0x98,
	0xe8, 0x96, 0x71, 0x15, 0x6e, 0x00, 0xf7, 0x29, 0x61, 0x3c, 0xd0, 0x3b, 0xdb, 0xfa, 0x0a, 0xb9,
	0x9c, 0x32, 0xfe, 0x6d, 0x68, 0xc9, 0xe5, 0x1b, 0x66, 0x30, 0xd3, 0xac, 0x82, 0xbb, 0xfb, 0x19,
	0x03, 0xef, 0xce, 0xfc, 0x46, 0x4d, 0x0e, 0x76, 0x14, 0x1a, 0x2d, 0x89, 0x05, 0x72, 0x07, 0x11,
	0xe4, 0x02, 0x54, 0xf4, 0xfd, 0x75, 0xaa, 0x47, 0xea, 0xf8, 0x7d, 0xc7, 0x6c, 0x28, 0x8c, 0x38,
	0x95, 0xf3, 0xf2, 0x9f, 0xb7, 0x4c, 0x34, 0xc3, 0xff, 0x64, 0xdd, 0x78, 0xaf, 0xa5, 0x2c, 0x85
};

static const u8 secret_key_table3[] =
{
	0x98, 0xe8, 0xb8, 0x63, 0x48, 0x60, 0x70, 0x95, 0xea, 0x23, 0x69, 0x64, 0x74, 0xf0, 0x9c, 0x5f,
	0x6c, 0x08, 0x01, 0xc3, 0x3f, 0x2c, 0x05, 0x1f, 0x0a, 0xd1, 0x66, 0xcf, 0x1a, 0x4a, 0x85, 0x5b,
	0x94, 0x92, 0x67, 0x7c, 0xe5, 0x99, 0x87, 0xec, 0x28, 0xf5, 0x6f, 0x41, 0xd6, 0xeb, 0x86, 0x75,
	0x50, 0xb5, 0x45, 0x21, 0x93, 0x71, 0xac, 0xe3, 0xf9, 0x7d, 0x80, 0x3c, 0x3a, 0xe6, 0x24, 0x5a,
	0x55, 0x5e, 0x0d, 0x68, 0x7f, 0xae, 0x82, 0x0c, 0x18, 0xf3, 0x32, 0xe0, 0x89, 0xd8, 0x34, 0x79,
	0x25, 0xc4, 0x6e, 0x8a, 0x46, 0xba, 0x4f, 0x88, 0xe7, 0x6a, 0x17, 0xf6, 0x20, 0xaf, 0xbc, 0x42,
	0x78, 0xfd, 0x44, 0xb4, 0x40, 0xc9, 0x11, 0x14, 0x5c, 0x0f, 0xbb, 0x06, 0xc0, 0xf2, 0x12, 0x29,
	0x13, 0xc6, 0xf4, 0x09, 0xbd, 0xe1, 0x4e, 0xda, 0x22, 0xe4, 0xb3, 0xdb, 0xa3, 0x5d, 0x84, 0x0b,
	0x9b, 0xb2, 0xc7, 0x8b, 0x2a, 0x76, 0x9a, 0xf8, 0x73, 0xbe, 0x7e, 0x8f, 0xa1, 0xcb, 0xcc, 0x15,
	0x4c, 0xef, 0x90, 0x33, 0x2d, 0xa4, 0x9d, 0x35, 0xdc, 0x8e, 0xa5, 0x04, 0x4b, 0x7b, 0x07, 0xbf,
	0x65, 0xaa, 0xd3, 0xd2, 0xc2, 0x97, 0xb0, 0xd7, 0x56, 0xff, 0xcd, 0xad, 0xb7, 0xce, 0x83, 0xa9,
	0x39, 0xfe, 0xfc, 0x30, 0x2b, 0xc8, 0x96, 0xb9, 0x38, 0xfa, 0xb6, 0x77, 0x72, 0xe9, 0x4d, 0x26,
	0x53, 0x1d, 0x6d, 0xc5, 0x00, 0xdd, 0xf1, 0x52, 0x9e, 0xed, 0x43, 0x0e, 0x03, 0x47, 0x37, 0xd9,
	0xca, 0x61, 0x36, 0x49, 0x7a, 0x10, 0xa7, 0xa2, 0x1b, 0x31, 0xa0, 0x8c, 0xf7, 0x51, 0x16, 0x2f,
	0x1c, 0x2e, 0x6b, 0x54, 0x1e, 0xdf, 0x3b, 0x9f, 0xc1, 0x19, 0xb1, 0xfb, 0x59, 0x57, 0xe2, 0x8d,
	0xa6, 0xd4, 0x02, 0x58, 0xee, 0x91, 0xab, 0x27, 0xa8, 0xde, 0x81, 0x3d, 0x3e, 0xd5, 0xd0, 0x62
};

static const u8 secret_key_table4[] =
{
	0xfb, 0x4e, 0xbd, 0x01, 0x03, 0x37, 0x1c, 0xd9, 0xc3, 0x57, 0xb2, 0x2a, 0xd1, 0xf0, 0x86, 0x30,
	0x3c, 0x5c, 0x85, 0x1a, 0x3a, 0xf5, 0x53, 0x21, 0x8d, 0x38, 0x58, 0xaf, 0x41, 0x2b, 0x94, 0x29,
	0xd2, 0x25, 0xdb, 0x47, 0x78, 0x98, 0xe8, 0xbe, 0xac, 0x8b, 0xc2, 0x67, 0x64, 0x2d, 0xb9, 0x5f,
	0xbf, 0xe0, 0xe5, 0x8e, 0xaa, 0x91, 0x8f, 0x46, 0x6b, 0x8c, 0x13, 0x71, 0x02, 0x84, 0x5d, 0x50,
	0xf3, 0x61, 0xf7, 0x89, 0xae, 0x90, 0xed, 0xa4, 0x7a, 0xb5, 0xf6, 0xdf, 0x96, 0x18, 0xa5, 0x7c,
	0xb1, 0x34, 0xb0, 0x7f, 0x2c, 0x87, 0x77, 0x7e, 0x39, 0x07, 0x43, 0x6a, 0xc8, 0xd8, 0x9b, 0x75,
	0x31, 0xfc, 0x6f, 0x12, 0x0c, 0x10, 0xd7, 0x5a, 0x88, 0x69, 0x3d, 0xd4, 0x1e, 0xd6, 0x9d, 0xa3,
	0xfe, 0x0a, 0xd0, 0xb7, 0x80, 0x49, 0x16, 0xca, 0x68, 0xea, 0x24, 0xe9, 0xce, 0x9f, 0x11, 0xbb,
	0x92, 0x83, 0x52, 0x45, 0x27, 0x33, 0xe1, 0xa8, 0x6d, 0x97, 0x5e, 0xcd, 0xc7, 0xab, 0xe2, 0xcc,
	0x4d, 0x28, 0x04, 0x35, 0x55, 0xa2, 0xff, 0x05, 0xec, 0xb6, 0xeb, 0x6c, 0xa0, 0x44, 0xb8, 0x60,
	0x26, 0x95, 0x76, 0xc1, 0xdc, 0x56, 0xfa, 0x23, 0x66, 0x4f, 0x19, 0x1f, 0xda, 0x65, 0x54, 0xdd,
	0xb4, 0xf9, 0x93, 0x4c, 0xee, 0x51, 0x63, 0x72, 0xf2, 0x0f, 0xc6, 0xcf, 0xe4, 0xa6, 0x3b, 0x81,
	0x08, 0xa7, 0xe6, 0x1d, 0xd5, 0x6e, 0x9a, 0x4b, 0xcb, 0xf4, 0x9e, 0xe7, 0xf8, 0xf1, 0xbc, 0xc0,
	0x15, 0x09, 0x22, 0x82, 0x79, 0xa1, 0x74, 0x0e, 0xc9, 0x17, 0x5b, 0x8a, 0x7b, 0x06, 0xc5, 0x3f,
	0x00, 0xa9, 0x14, 0x62, 0x4a, 0xc4, 0xde, 0x48, 0xd3, 0xb3, 0x2e, 0x0b, 0x0d, 0x40, 0x3e, 0xe3,
	0x2f, 0x73, 0x70, 0xef, 0x9c, 0x36, 0x42, 0x32, 0xad, 0x20, 0x99, 0x59, 0x7d, 0xfd, 0xba, 0x1b
};
#endif
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
static u8 SWI2C_GetSignalStatus(void)
{
#if SIGNAL_INPUT_LVDS
		u8 val;
		u16 HActive, VActive;
		
		SWI2C_ReadByte(FPGA_ADDRESS, 0x83, &val);
		HActive = val;
		HActive = HActive<<8;
		SWI2C_ReadByte(FPGA_ADDRESS, 0x82, &val);
		HActive += val;
		SWI2C_ReadByte(FPGA_ADDRESS, 0x87, &val);
		VActive = val;
		VActive = VActive<<8;
		SWI2C_ReadByte(FPGA_ADDRESS, 0x86, &val);
		VActive += val;
		if (HActive == 1920 && VActive == 1080)
			return 1;
		else
			return 0;
#else
	u8 p0_status;
	#if CHECK_SIGNAL_RESOLUTION
	u8 val;
	u16 HActive, VActive;
	#endif
	SWI2C_ReadByte(0x90, 0x0A, &p0_status);
	#if CHECK_SIGNAL_RESOLUTION
	SWI2C_ReadByte(0x90, 0x9F, &val);
	HActive = val&0x3F;
	HActive = HActive<<8;
	SWI2C_ReadByte(0x90, 0x9E, &val);
	HActive += val;
	SWI2C_ReadByte(0x90, 0xA4, &val);
	VActive = val&0xF0;
	VActive = VActive<<4;
	SWI2C_ReadByte(0x90, 0xA5, &val);
	VActive += val;
	#endif
	if ((p0_status&0x0C) == 0x0C)
	{
		#if CHECK_SIGNAL_RESOLUTION
		if (HActive == 1920 && VActive == 1080)
		#endif
		{
			return 1;
		}
	}
	
	return 0;
#endif
}
/*==========================================================================*/
#if WRITE_WEAVING_TABLE
#if WRITE_SHORT_TABLE
static const u16 weaving_table[] =
{
0x8018
,0x9017
,0x9017
,0x9016
,0x9015
,0x9014
,0x912C
,0x912B
,0x912B
,0x912A
,0x9129
,0x9128
,0x9240
,0x923F
,0x923F
,0x923E
,0x923D
,0x923C
,0x9354
,0x9353
,0x9353
,0x9352
,0x9351
,0x9350
,0x9468
,0x9467
,0x9467
,0x9466
,0x9465
,0x9464
,0x957C
,0x957B
,0x957B
,0x957A
,0x9579
,0x9578
,0x9690
,0x968F
,0x968F
,0x968E
,0x968D
,0x968C
,0x97A4
,0x97A3
,0x97A3
,0x97A2
,0x97A1
,0xA7A0
,0x102E
,0x200C
,0x3004
,0x4008
,0x502C
};
static void FPGA_WriteWeavingTable(void)
{
	u16 i;
	
	for (i = 0; i < sizeof(weaving_table)/2; i++)
	{
		SWI2C_Write2Byte(FPGA_ADDRESS, 0xC6, weaving_table[i]);
	}
}
#else
static const u8 weaving_table[] =
{
#include "weaving_default.txt"
};
static void FPGA_WriteWeavingTable(void)
{
	u16 i;
	
	SWI2C_WriteByte(FPGA_ADDRESS, 0x4A, FLASH_ReadByte(EEPROM_START_ADDRESS + 0x0A));
	SWI2C_WriteByte(FPGA_ADDRESS, 0xC6, 0x01);
	for (i = 0; i < sizeof(weaving_table); i++)
	{
		SWI2C_WriteByte(FPGA_ADDRESS, 0xC7, weaving_table[i]);
	}
	SWI2C_WriteByte(FPGA_ADDRESS, 0xC6, 0x02);
}
#endif
#endif
/*==========================================================================*/
#if TEST_WEAVING_TABLE
static const u8 test_weaving_table[4][] =
{
	{
		#include "weaving_pc.txt"
	},
	{
		#include "weaving_select.txt"
	},
	{
		#include "weaving_old.txt"
	},
	{
		#include "weaving_default.txt"
	}
};

void SWI2C_WriteWeavingTable(u8 index)
{
	u16 i;

	GPIO_WriteLow(LED_R_PORT, LED_R_PIN);			
	GPIO_WriteLow(LED_G_PORT, LED_G_PIN);
	SWI2C_WriteByte(FPGA_ADDRESS, 0x4A, FLASH_ReadByte(EEPROM_START_ADDRESS + 0x0A));
	SWI2C_WriteByte(FPGA_ADDRESS, 0xC6, 0x01);
	for (i = 0; i < 1028; i++)
	{
		SWI2C_WriteByte(FPGA_ADDRESS, 0xC7, test_weaving_table[index][i]);
	}
	SWI2C_WriteByte(FPGA_ADDRESS, 0xC6, 0x02);
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
#endif
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
void SWI2C_VerifyKey(void)
{
#if	FPGA_KEY_VERIFY
	u8 secret_key[4], convert_key[4], secret_status;
	SWI2C_ReadByte(FPGA_ADDRESS, 0x19, &secret_status);
	if ((secret_status&0x03) == 1)
	{
		SWI2C_ReadBytes(FPGA_ADDRESS, 0x10, 4, secret_key);
		convert_key[0] = secret_key_table1[secret_key[0]];
		convert_key[1] = secret_key_table2[secret_key[1]];
		convert_key[2] = secret_key_table3[secret_key[2]];
		convert_key[3] = secret_key_table4[secret_key[3]];
		SWI2C_WriteBytes(FPGA_ADDRESS, 0x14, 4, convert_key);
		secret_status = secret_status|0x07;
		SWI2C_WriteByte(FPGA_ADDRESS, 0x19, secret_status);
	}
#endif
}
/*==========================================================================*/
void SWI2C_Init(void)
{
	GPIO_Init(IIC_SCL_PORT, IIC_SCL_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
	GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);

	GPIO_Init(POWER_ONOFF_PORT, POWER_ONOFF_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
	
	GPIO_Init(FPGA_RESET_PORT, FPGA_RESET_PIN, GPIO_MODE_OUT_PP_LOW_FAST);	
	GPIO_WriteLow(FPGA_RESET_PORT, FPGA_RESET_PIN);
	
	GPIO_Init(IT680X_RESET_PORT, IT680X_RESET_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
	
	GPIO_Init(LED_R_PORT, LED_R_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);	
	GPIO_Init(LED_G_PORT, LED_G_PIN, GPIO_MODE_OUT_PP_LOW_FAST);

	GPIO_Init(HDMI_HOTPLUG_PORT, HDMI_HOTPLUG_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
	GPIO_WriteHigh(HDMI_HOTPLUG_PORT,HDMI_HOTPLUG_PIN);

	GPIO_Init(BACKLIGHT_ONOFF_PORT, BACKLIGHT_ONOFF_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
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
		SET_BACKLIGHT_ON();
		Backlight_on_timer = TIMER_STOPPED;
		//SWI2C_ToggleI2CMode();
	}

	if (Power_status && !I2C_stop)
	{
		IT6802_fsm();

		/*if (frc_update_timer == TIMER_EXPIRED && Have_FRC)
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
			frc_update_timer = FRC_UPDATE_TIME;
		}*/	

#if FPGA_KEY_VERIFY_AUTO
		if (secret_detect_timer == TIMER_EXPIRED)
		{
			SWI2C_VerifyKey();
			secret_detect_timer = SECRET_DETECT_TIME;
		}
#endif
		if (signal_detect_timer == TIMER_EXPIRED)
		{
			
			u8 current_signal_status;
			
			signal_detect_timer = SINGNAL_TETECT_TIME;
			current_signal_status = SWI2C_GetSignalStatus();
			if (current_signal_status != signal_status)
			{
				singal_change_count++;
				if (current_signal_status && singal_change_count > SIGNAL_STABLE_COUNT)
				{
					signal_status = TRUE;
					GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
#if !SIGNAL_INPUT_LVDS
					SWI2C_FirstResetFPGA();					
#endif
					SWI2C_ResetFPGA();
					SET_VPANEL_ON();
					Backlight_on_timer = BACKLIGHT_DELAY_TIME;
				}
				else if (!current_signal_status && singal_change_count > NO_SIGNAL_COUNT)
				{
					signal_status = FALSE;
					Backlight_on_timer = TIMER_STOPPED;
					SET_BACKLIGHT_OFF();
					IR_DelayNMiliseconds(200);
					SET_VPANEL_OFF();
					#if NO_SIGNAL_RESET_FPGA
					GPIO_WriteLow(FPGA_RESET_PORT, FPGA_RESET_PIN);
					#endif
				}
			}
			else
			{
				singal_change_count = 0;
			}			

			if (signal_status)
			{
				GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
			}
			else
			{
				GPIO_WriteReverse(LED_G_PORT, LED_G_PIN);
			}
		}	
	}
}
/*==========================================================================*/
static void SWI2C_ResetIT680x(void)
{
#if MHL_IIC_ERROR_RESET
	I2C_error_count = 0;
#endif
	GPIO_WriteLow(IT680X_RESET_PORT, IT680X_RESET_PIN);
	IR_DelayNMiliseconds(200);
	GPIO_WriteHigh(IT680X_RESET_PORT, IT680X_RESET_PIN);
	IR_DelayNMiliseconds(200);
	IT6802_fsm_init();
#if ENABLE_HDMI_HPD
	GPIO_WriteLow(HDMI_HOTPLUG_PORT,HDMI_HOTPLUG_PIN);
	IR_DelayNMiliseconds(2000);
	GPIO_WriteHigh(HDMI_HOTPLUG_PORT,HDMI_HOTPLUG_PIN);
#endif
}
/*==========================================================================*/
void SWI2C_SystemPowerUp(void)
{
	GPIO_WriteLow(POWER_ONOFF_PORT, POWER_ONOFF_PIN);
	GPIO_WriteLow(LED_R_PORT, LED_R_PIN);			
	GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
	DEBUG_PRINTF(printf("\r\n***** START UP, POWER ON *****\r\n"));
	onoff_count++;
	DEBUG_PRINTF(printf("***** COUNT %d *****\r\n", (onoff_count&0xFF)));
	IR_DelayNMiliseconds(50);
	Power_status = TRUE;	
	SWI2C_ResetIT680x();
#if SIGNAL_INPUT_LVDS
	GPIO_WriteLow(FPGA_RESET_PORT, FPGA_RESET_PIN);
	IR_DelayNMiliseconds(200);
	GPIO_WriteHigh(FPGA_RESET_PORT, FPGA_RESET_PIN);
#endif
	Have_FRC = SWI2C_TestDevice(FRC_BOARD_ADDRESS);
	singal_change_count = 0;
	signal_status = FALSE;
}
/*==========================================================================*/
void SWI2C_ResetFPGA(void)
{
	if (Power_status && (GPIO_ReadOutputData(FPGA_RESET_PORT) & FPGA_RESET_PIN))
	{		
		GPIO_WriteLow(FPGA_RESET_PORT, FPGA_RESET_PIN);
		IR_DelayNMiliseconds(200);
		GPIO_WriteHigh(FPGA_RESET_PORT, FPGA_RESET_PIN);
		IR_DelayNMiliseconds(1500);
		FPGA_Init();
#if WRITE_WEAVING_TABLE
		FPGA_WriteWeavingTable();
#endif
	}
}
/*==========================================================================*/
void SWI2C_FirstResetFPGA(void)
{
	if (Power_status)
	{		
#if START_RESET_HDMI
		GPIO_WriteLow(FPGA_RESET_PORT, FPGA_RESET_PIN);
		IR_DelayNMiliseconds(200);
		GPIO_WriteHigh(FPGA_RESET_PORT, FPGA_RESET_PIN);
		IR_DelayNMiliseconds(500);
		SWI2C_WriteByte(0x90, 0x14, 0xFF);
		IR_DelayNMiliseconds(1000);
		SWI2C_WriteByte(0x90, 0x14, 0x0);
#else
		GPIO_WriteHigh(FPGA_RESET_PORT, FPGA_RESET_PIN);
		IR_DelayNMiliseconds(200);
#endif
	}
}
/*==========================================================================*/
void SWI2C_SystemPowerDown(void)
{
	GPIO_WriteHigh(LED_R_PORT, LED_R_PIN);			
	GPIO_WriteLow(LED_G_PORT, LED_G_PIN);
	SET_BACKLIGHT_OFF();
	IR_DelayNMiliseconds(200);
	GPIO_WriteLow(FPGA_RESET_PORT, FPGA_RESET_PIN);
	SET_VPANEL_OFF();
	GPIO_WriteHigh(POWER_ONOFF_PORT, POWER_ONOFF_PIN);
#if ENABLE_HDMI_HPD
	GPIO_WriteLow(HDMI_HOTPLUG_PORT,HDMI_HOTPLUG_PIN);
#endif
	DEBUG_PRINTF(printf("***** STANBY MODE, POWER OFF *****\r\n\r\n"));
	Backlight_on_timer = TIMER_STOPPED;
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
			{
				u8 value;
				SWI2C_ReadByte(FPGA_ADDRESS, 0xE2, &value);
				if (value == 0xFF)
				{
					SWI2C_ReadByte(FPGA_ADDRESS, 0x0D, &value);
					FLASH_ProgramByte(EEPROM_START_ADDRESS + 19, value);
					SWI2C_ReadByte(FPGA_ADDRESS, 0xC8, &value);
					FLASH_ProgramByte(EEPROM_START_ADDRESS + 2, value);
					SWI2C_ReadByte(FPGA_ADDRESS, 0xC9, &value);
					FLASH_ProgramByte(EEPROM_START_ADDRESS + 3, value);
					SWI2C_ReadByte(FPGA_ADDRESS, 0xCA, &value);
					FLASH_ProgramByte(EEPROM_START_ADDRESS + 4, value);
					SWI2C_ReadByte(FPGA_ADDRESS, 0xCB, &value);
					FLASH_ProgramByte(EEPROM_START_ADDRESS + 5, value);
					SWI2C_ReadByte(FPGA_ADDRESS, 0x47, &value);
					FLASH_ProgramByte(EEPROM_START_ADDRESS + 7, value);
					IR_DelayNMiliseconds(200);
					WWDG->CR |= 0x80;
					WWDG->CR &= ~0x40;
				}
				GPIO_WriteLow(LED_R_PORT, LED_R_PIN);			
				GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
			}
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
	u8 switch3D, insert, retry;
	
	#if SUPPORT_1080P_2DZ
	insert = FLASH_ReadByte(EEPROM_START_ADDRESS + 19);
	if (OnOff)
	{
		switch3D = 0x40;
		if (insert&0x10)
		{
			insert = insert&0xDF;
			insert = insert|0x10;
		}
		else
		{
			insert = insert&0xEF;
			insert = insert|0x20;
		}
	}
	else
	{
		switch3D = 0x0;
		insert = insert&0xEF;
		insert = insert|0x20;
	}
	#else
	SWI2C_ReadByte(FPGA_ADDRESS, 0x0D, &insert);
	if (OnOff)
	{
		switch3D = 0x40;
		insert = insert&0xDF;
	}
	else
	{
		switch3D = 0x0;
		insert = insert|0x20;
	}
	#endif
	for (retry = 0; retry < 3; retry++)
	{
		u8 sw_val, ins_val;
		SWI2C_WriteByte(FPGA_ADDRESS, 0x57, switch3D);
		SWI2C_WriteByte(FPGA_ADDRESS, 0x0D, insert);
		SWI2C_ReadByte(FPGA_ADDRESS, 0x57, &sw_val);
		SWI2C_ReadByte(FPGA_ADDRESS, 0x0D, &ins_val);
		if ((sw_val == switch3D) && (ins_val == insert))
		{
			break;
		}
	}
}
/*==========================================================================*/
#if SUPPORT_1080P_2DZ
void SWI2C_Toggle3DMode(void)
{	
	if (Set3DOn)
	{
		u8 val;
		SWI2C_ReadByte(FPGA_ADDRESS, 0x0D, &val);
		if (val&0x10)
		{
			val = val&0xEF;
			val = val|0x20;
		}
		else
		{
			val = val&0xDF;
			val = val|0x10;
		}
		SWI2C_WriteByte(FPGA_ADDRESS, 0x0D, val);
	}
}
#endif
/*==========================================================================*/
void SWI2C_Toggle3DOnOff(void)
{	
	Set3DOn = !Set3DOn;
	SWI2C_Set3DOnOff(Set3DOn);
}
/*==========================================================================*/
void SWI2C_ToggleInsert(void)
{	
	u8 insert;
	SWI2C_ReadByte(FPGA_ADDRESS, 0x0D, &insert);
	if (insert&0x20)
	{
		insert &= 0xDF;
	}
	else
	{
		insert |= 0x20;
	}
	SWI2C_WriteByte(FPGA_ADDRESS, 0x0D, insert);
}
/*==========================================================================*/
extern const u8 address_table[];
extern const u8 table_size;

void FPGA_Init(void)
 {	
 	u8 i;
	for (i = 0; i < table_size; i++)
	{
		SWI2C_WriteByte(FPGA_ADDRESS, address_table[i], FLASH_ReadByte(EEPROM_START_ADDRESS + 1 + i));
	}
	if (FLASH_ReadByte(EEPROM_START_ADDRESS + 1))
	{
		Set3DOn = TRUE;
	}
	SWI2C_WriteByte(FPGA_ADDRESS, 0x19, 0x04);
	
#if SUPPORT_1080P_2DZ_ORI
	SWI2C_WriteByte(FPGA_ADDRESS, 0xE0, 0x11);
	SWI2C_WriteByte(FPGA_ADDRESS, 0xE1, 0x32);
	SWI2C_WriteByte(FPGA_ADDRESS, 0xE2, 0x54);
	SWI2C_WriteByte(FPGA_ADDRESS, 0xE3, 0x7E);
	SWI2C_WriteByte(FPGA_ADDRESS, 0xE4, 0x00);
#else
	SWI2C_WriteByte(FPGA_ADDRESS, 0xE0, 0x11);
	SWI2C_WriteByte(FPGA_ADDRESS, 0xE1, 0x32);
	SWI2C_WriteByte(FPGA_ADDRESS, 0xE2, 0x54);
	SWI2C_WriteByte(FPGA_ADDRESS, 0xE3, 0x76);
	SWI2C_WriteByte(FPGA_ADDRESS, 0xE4, 0x07);
#endif
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
#if MHL_IIC_ERROR_RESET
void SWI2C_ErrorProcess(void)
{
	I2C_error_count++;
	if (I2C_error_count > 50)
	{
		DEBUG_PRINTF(printf("I2C Error, RESET IT680x!!!"));
		signal_status = FALSE;
		singal_change_count = 0;
		Backlight_on_timer = TIMER_STOPPED;
		GPIO_WriteLow(FPGA_RESET_PORT, FPGA_RESET_PIN);
		SET_BACKLIGHT_OFF();
		IR_DelayNMiliseconds(200);
		SET_VPANEL_OFF();
		SWI2C_ResetIT680x();
	}
}
#endif
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
#if FPGA_KEY_VERIFY_AUTO
	if (secret_detect_timer > TIMER_EXPIRED)
	{
		secret_detect_timer--;
	}	
#endif
	if (signal_detect_timer > TIMER_EXPIRED)
	{
		signal_detect_timer--;
	}		
}
/*==========================================================================*/

