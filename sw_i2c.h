#ifndef __SW_I2C_H__
#define __SW_I2C_H__

#include "stm8s.h"

#define IIC_FAIL				0
#define IIC_OK					1

enum EEPROM_ADDRESS
{
REG_0x57,
REG_0xC8,
REG_0xC9,
REG_0xCA,
REG_0xCB,
REG_0x18,
REG_0x47,
REG_0x48,
REG_0x49,
REG_0x58,
REG_0x59,
REG_0x5A,
REG_0x5C,
REG_0x0D
};

#define INIT_VERTICAL_PANEL		1
#define WRITE_WEAVING_TABLE		1
#define TEST_WEAVING_TABLE		1
#define FPGA_KEY_VERIFY			1
#define EEPROM_START_ADDRESS 	0x4000

extern void SWI2C_Init(void);
extern void SWI2C_Update(void);
extern void SWI2C_SystemPowerUp(void);
extern void SWI2C_SystemPowerDown(void);
extern void SWI2C_ProcessPower(void);
extern void SWI2C_ToggleI2CMode(void);
extern void SWI2C_ResetFPGA(void);
extern void SWI2C_ResetHDMI(void);

extern u8 SWI2C_ReadByte(u8 addr, u8 subaddr, u8 * pValue);
extern u8 SWI2C_ReadBytes(u8 addr, u8 subaddr, u8 number, u8 * p_data);
extern u8 SWI2C_WriteByte(u8 addr, u8 subaddr, u8 value);
extern u8 SWI2C_WriteBytes(u8 addr, u8 subaddr, u8 number, u8 * p_data);
extern u8 SWI2C_Write2Byte(u8 addr, u8 subaddr, u16 data);
extern u8 SWI2C_TestDevice(u8 addr);

extern void SWI2C_WriteWeavingTable(u8 index);

extern void FPGA_Init(void);
extern void HDMI_HotPlug(u8 value);
extern void SWI2C_Toggle3DOnOff(void);
extern void SWI2C_Set_deep(u8 deep);
extern void SWI2C_UpdateTimer(void);
#endif //__SW_I2C_H__
