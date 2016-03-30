#ifndef __SW_I2C_H__
#define __SW_I2C_H__

#include "stm8s.h"

extern void SWI2C_Init(void);
extern void SWI2C_Update(void);
extern void SWI2C_SystemPowerUp(void);
extern void SWI2C_SystemPowerDown(void);
extern void SWI2C_ProcessPower(void);
extern void SWI2C_ToggleI2CMode(void);

extern u8 SWI2C_ReadByte(u8 addr, u8 subaddr);
extern u8 SWI2C_ReadBytes(u8 addr, u8 subaddr, u8 number, u8 * p_data);
extern void SWI2C_WriteByte(u8 addr, u8 subaddr, u8 value);
extern u8 SWI2C_WriteBytes(u8 addr, u8 subaddr, u8 number, u8 * p_data);
extern void SWI2C_Write2Byte(u8 addr, u8 subaddr, u16 data);

extern void FPGA_Init(void);
extern void HDMI_HotPlug(u8 value);
extern void SWI2C_Set3D(void);
extern void SWI2C_Set_deep(u8 deep);
extern void SWI2C_UpdateTimer(void);
#endif //__SW_I2C_H__
