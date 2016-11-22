///*****************************************
//  Copyright (C) 2009-2014
//  ITE Tech. Inc. All Rights Reserved
//  Proprietary and Confidential
///*****************************************
//   @file   <it680x.c>
//   @author Max.Kao@ite.com.tw
//   @date   2013/06/04
//   @fileversion: ITE_IT6802_SAMPLE_V0.95
//******************************************/
/*****************************************************************************
**
**             TEXAS INSTRUMENTS PROPRIETARY INFORMATION
**
**  (c) Copyright, Texas Instruments Incorporated, 2011.
**      All Rights Reserved.
**
**  Property of Texas Instruments Incorporated. Restricted Rights -
**  Use, duplication, or disclosure is subject to restrictions set
**  forth in TI's program license agreement and associated documentation.
******************************************************************************/
/**
 *
 * @file     IT680x.c
 *
 * @brief    Drivers for IT680x MHL/HDMI Receiver.
 *
 * HOST:     ARM946S 32-bit processor
 *
 */


/*****************************************************************************/
/* Header Files Included *****************************************************/
/*****************************************************************************/
#ifndef _IT680x_
#define _IT680x_
#endif
#include "stdio.h"
#include "stm8s.h"
#include "IT680x.h"
#include "Mhlrx.h"
#include "Mhlrx_reg.h"
#include "sw_i2c.h"
#include "ir.h"
/*****************************************************************************/
/* Local Defines    **********************************************************/
/*****************************************************************************/
#define _CODE const
#define xdata

#define HDMI_DEV 0

#define i2c_write_byte(a, b, c, d, e) 	SWI2C_WriteBytes(a, b, c, d)
#define i2c_read_byte(a, b, c, d, e) 	SWI2C_ReadBytes(a, b, c, d)
#define delay1ms(x)						IR_DelayNMiliseconds(x)
#define MHLRX_DEBUG_PRINTF(x)			x
#define HDMIRX_VIDEO_PRINTF(x)			x
#define MHL_MSC_DEBUG_PRINTF(x)			x
#define HDMIRX_AUDIO_PRINTF(x)			x
#define HDMIRX_DEBUG_PRINTF(x)			x
#define IT6802_MHL_DEBUG_PRINTF(x)		x
#define IT6802_DEBUG_INT_PRINTF(x)		x

#define _EN_DUAL_PIXEL_CTRL_
#define EN_DUAL_PIXEL_MODE
#define _EN_BLOCK_PWRDN_

#define SUPPORT_OUTPUTRGB

#define SUPPORT_INPUTYUV

#define HDMIRX_OUTPUT_VID_MODE (F_MODE_EN_UDFILT | F_MODE_RGB444)

#define MS_TimeOut(x) (x+1)
#define VSATE_CONFIRM_SCDT_COUNT        MS_TimeOut(100)
#define AUDIO_READY_TIMEOUT             MS_TimeOut(20)
#define AUDIO_MONITOR_TIMEOUT           MS_TimeOut(150)
#define SCDT_OFF_TIMEOUT              	MS_TimeOut(100)		//100 x MS_LOOP = 5000 ms = 5 sec
#define ECC_TIMEOUT              		MS_TimeOut(40)
#define DESKEW_TIMEOUT            		MS_TimeOut(40)



// Debug Mode
#define EnCBusDbgMode  		FALSE
#define MSCCBusDbgCtrl 		TRUE
#define DDCCBusDbgCtrl 	FALSE
#define RCLKFreqSel 		1	//; //0: RING/2 ; 1: RING/4 ; 2: RING/8 ; 3: RING/16
#define GenPktRecType		0x81
#define PPHDCPOpt			TRUE	//2013-0509 MHL 1080p packet pixel mode HDCP
#define PPHDCPOpt2			TRUE	//2013-0509 MHL 1080p packet pixel mode HDCP
//#define PPHDCPOpt2			FALSE 	//only for it6811b0

#define EnMSCBurstWr		TRUE
#define MSCBurstWrID		TRUE   // TRUE: from MHL5E/MHL5F
#define MSCBurstWrOpt		FALSE  // TRUE: Not write Adopter ID unsigned char o ScratchPad
#define EnPktFIFOBurst		TRUE
// DDC Option	
#define EnDDCSendAbort		FALSE  // Send ABORT after segment write with EOF
//CBUS Capability
#define MHLVersion			0x20
#define PLIM				1
#define POW					1
#define DEV_TYPE_SINK		1
#define DEV_TYPE			1
#define ADOPTER_ID_H		0x78
#define ADOPTER_ID_L		0x56
#define DEVICE_ID_H			0x68
#define DEVICE_ID_L			0x02
#define AckHigh				0xB
#define AckLow				1
// CBUS INput Option
#define EnCBusDeGlitch		TRUE
//---------------------//
//----- WatchDog -----//
//--------------------//
#define DeltaNum 			1
#define RegBurstWrTOSel		1
#define Reg100msTOAdj		1
#define EnMSCHwRty			FALSE
#define EnHWPathEn			FALSE
#define MSCRxUCP2Nack		TRUE

/////////////////////////////////////////
//Cbus command fire wait time
//Maxmun time for determin CBUS fail
//	CBUSWAITTIME(ms) x CBUSWAITNUM
/////////////////////////////////////////
#define CBUSWAITTIME    	10
#define CBUSWAITNUM     	10

#define IT6802_CHIP 		1
#define IT6801_CHIP 		0
#if (IT6802_CHIP)
#define _IT6802_
#endif
#define  HDCPIntKey   		TRUE   //TRUE: Internal HDCP Key, FALSE: SIPROM

#define  VCLK_INV			0
#define  VCLK_DLY			0
#define  EnMultiSeg     	FALSE
#define  EnIntEDID     	 	TRUE

//Discovery
#define  CBUSFloatAdj		FALSE

#define HDMI_ADDR 			0x90	//Hardware Fixed I2C address of IT6802 HDMI
#define MHL_ADDR 			0xE0	//Software programmable I2C address of IT6802 MHL
#define EDID_ADDR 			0xA0	//Software programmable I2C address of IT6802 EDID RAM
#define CEC_ADDR 			0xC8	//Software programmable I2C address of IT6802 CEC


/*****************************************************************************/
/* Private and Local Variables    ********************************************/
/*****************************************************************************/
#if 1

struct it6802_dev_data it6802DEV;

unsigned char  V3D_EntryCnt = 0;
unsigned char  wrburstoff, wrburstnum;
unsigned char  TxWrBstSeq = 0;
unsigned char  EnMSCWrBurst3D  = FALSE;
unsigned char  EnMHL3DSupport  = FALSE;


unsigned char  wakeupfailcnt = 0;

#ifdef _IT6802_
unsigned char   DeviceID = IT6802_CHIP;
#else
unsigned char   DeviceID = IT6801_CHIP;
#endif



//for debug only
int CurTMDSCLK;
VTiming CurVTiming;
//int GCP_CD       = CD8BIT; //24 bits per pixel
int InColorMode  = RGB444; //RGB444, YCbCr422, YCbCr444
int OutColorMode = RGB444; //RGB444, YCbCr422, YCbCr444
int OutCD        = OUT8B;
int VIC;
//for debug only


BYTE OldRegB4=0xAA;
BYTE OldRegB5=0xAA;
BYTE OldRegB9=0xAA;
BYTE OldRegBA=0xAA;




/****************************************************************************/
/*							EDID Argument									*/
/****************************************************************************/
unsigned char  VSDB_Addr;// for EDID RAM function
unsigned char  txphyadr[2], txphyA, txphyB, txphyC, txphyD, txphylevel;	// for CEC function
unsigned char  rxphyadr[2][2];// for EDID RAM function
unsigned char  rxphyA, rxphyB, rxphyC, rxphyD, rxcurport;	// for CEC function


#endif

/*****************************************************************************/
/* Init, Power, and IO Structures ********************************************/
/*****************************************************************************/
////////////////////////////////////////////////////////////////////
//It6802 chip inital table
//
//
//
////////////////////////////////////////////////////////////////////
static	struct IT6802_REG_INI _CODE IT6802_HDMI_INIT_TABLE[] = {
//port 0
	{REG_RX_00F,	0x03,	0x00},	//change bank 0
	{REG_RX_010,	0xFF,	0x08},	//[3]1: Register reset
	{REG_RX_010,	0xFF,	0x17},	//[4]Auto Video Reset [2]Int Reset [1]Audio Reset [0]Video Reset

	{REG_RX_011,	0xFF,	0x1F},	//Port 0¡G[4]EQ Reset [3]CLKD5 Reset [2]CDR Reset [1]HDCP Reset [0]All logic Reset
	{REG_RX_018,	0xFF,	0x1F},	//Port 1¡G[4]EQ Reset [3]CLKD5 Reset [2]CDR Reset [1]HDCP Reset [0]All logic Reset

	{REG_RX_012,	0xFF,	0xF8},	//Port 0¡G[7:3] MHL Logic reset

	{REG_RX_010,	0xFF,	0x10},	//[4]Auto Video Reset [2]Int Reset [1]Audio Reset [0]Video Reset

	{REG_RX_011,	0xFF,	0xA0},	//Port 0¡G[7] Enable Auto Reset when Clock is not stable [5]Enable Auto Reset
	{REG_RX_018,	0xFF,	0xA0},	//Port 1¡G[7] Enable Auto Reset when Clock is not stable [5]Enable Auto Reset

	{REG_RX_012,	0xFF,	0x00},	//Port 0¡G[7:3] MHL Logic reset

	{REG_RX_00F,	0x03,	0x01},	//change bank 1	//2013-0430 Andrew suggestion
	{REG_RX_1C0,	0x80,	0x00},	//[7] PWSB_LV = 0	//2013-0430 Andrew suggestion

	{REG_RX_00F,	0x03,	0x00},	//change bank 0	//2013-0430 Andrew suggestion
	{REG_RX_017,	0xC0,	0x80},	//Port 0¡G[7:6] = 10 invert Port 0 input HCLK , CLKD5I	//2013-0430 Andrew suggestion
	{REG_RX_01E,	0xC0,	0x00},	//Port 1¡G[7:6] = 00 invert Port 1 input TMDS , CLKD5I	//2013-0430 Andrew suggestion

	{REG_RX_00E,	0xFF,	0xFF},	//Port 0¡G[7:3] MHL Logic reset
	{REG_RX_086,	0xFF,	(CEC_ADDR|0x01)},	//CEC chip Slave Adr

//	{0xFE,	0x80,	0x80},	//BUS10B for FPGA

	{REG_RX_016,	0x08,	0x08},	//Port 0¡G[3]1: Enable CLKD5 auto power down
	{REG_RX_01D,	0x08,	0x08},	//Port 1¡G[3]1: Enable CLKD5 auto power down

//	{0x20,	0x01,	0x30},	//Port 0¡GAFE control

	{REG_RX_02B,	0x07,	0x07},	//FixTek3D
	{REG_RX_031,	0xFF,	0x2C},	//[7:4]Enable repeater function [3:0] SCL hold time count & Update Ri sel
	{REG_RX_034,	0xFF,	MHL_ADDR+0x01},	//I2C Slave Addresss for MHL block
	{REG_RX_035,	0x0C,	DeltaNum},				//[3:2] RCLKDeltaSel
	{REG_RX_054,	0x0C,	(1<<4)+RCLKFreqSel},	//[1:0]RCLK frequency select
	{REG_RX_06A,	0xFF,	GenPktRecType},			//Decide which kind of packet to be fully recorded on General PKT register
	{REG_RX_074,	0xFF,	0xA0},	//[7]Enable i2s and SPDIFoutput [5]Disable false DE output
	{REG_RX_050,	0x1F,	0x12},	//[4]1: Invert output DCLK and DCLK DELAY 2 Step

//	{REG_RX_065,	0x0C,	0x00},	//[3:2]0=8bits Output color depth
//	{REG_RX_065,	0x0C,	0x04},	//[3:2]1=10bits Output color depth
	{REG_RX_065,	0x0C,	0x08},	//[3:2]2=12bits Output color depth

	{REG_RX_07A,	0x80,	0x80},	//[7]1: enable audio B Frame Swap Interupt
//	{REG_RX_02D,	0x03,	0x03},	//[1:0] 11: Enable HDMI/DVI mode over-write
	{REG_RX_085,	0x02,	0x02},	//[1]1: gating avmute in video detect module

//	{REG_RX_051,	0x80,	0x80},	//[7]1: power down color space conversion logic

#ifdef  _SUPPORT_EDID_RAM_
	{REG_RX_0C0,	0x03,	0x00},	//[0]1:Reg_P0DisableShadow
	{REG_RX_087,	0xFF,	(EDID_ADDR|0x01)},	//[7:1] EDID RAM Slave Adr ,[0]1: Enable access EDID block
#else
	{REG_RX_0C0,	0x03,	0x03},	//[0]1:Reg_P0DisableShadow
	{REG_RX_087,	0xFF,	(0x00)},	//[7:1] EDID RAM Slave Adr ,[0]1: Enable access EDID block
#endif

	{REG_RX_071,	0x08,	0x00},	//Reg71[3] RegEnPPColMode must clear to 0 for andrew suggestion 2013-0502
	{REG_RX_037,	0xFF,	0x88},	//Reg37 Reg_P0_WCLKValidNum must set to 0x88 for andrew suggestion 2013-0502
	{REG_RX_04D,	0xFF,	0x88},	//Reg4D Reg_P1_WCLKValidNum must set to 0x88 for andrew suggestion 2013-0502
	{REG_RX_067,	0x80,	0x00},	//Reg67[7] disable HW CSCSel


	{REG_RX_07A,B_CTS_RES,B_CTS_RES},

#ifdef _IT6802_
	{REG_RX_077, 0x80, 0x00},
	{REG_RX_00F, 0x03, 0x01},	//change bank 1
	{REG_RX_1C0, 0x80, 0x00},
	{REG_RX_00F, 0x03, 0x00},	//change bank 0

#else
	{REG_RX_077, 0x80, 0x80},
	{REG_RX_00F, 0x03, 0x01},	//change bank 1
	{REG_RX_1C0, 0x80, 0x80},
	{REG_RX_00F, 0x03, 0x00},	//change bank 0

#endif


#ifdef _HBR_I2S_
	{REG_RX_07E,B_HBRSel,0x00},
#else
	{REG_RX_07E,B_HBRSel,B_HBRSel},
#endif

	{REG_RX_052,(B_DisVAutoMute),(B_DisVAutoMute)},				//Reg52[5] = 1 for disable Auto video MUTE
	{REG_RX_053,(B_VDGatting|B_VIOSel),(B_VIOSel)},				//Reg53[7][5] = 01    // for disable B_VDIO_GATTING

	{REG_RX_058,0xFF,0x33},			// Reg58 for Video output Driving Strength
//	{REG_RX_059,0xFF,0xAA},			// Reg59 for Audio output Driving Strength


// 	for Auto EQ
#if 1
	{REG_RX_00F,	0x03,	0x01},	//change bank 1	//2013-0515 Andrew suggestion	for Auto EQ
	{REG_RX_1BC,	0xFF,	0x06},	//Reg1BC=0x06		//2013-0515 Andrew suggestion	for Auto EQ
//	{REG_RX_1B5,	0x03,	0x03},	//Reg1B5[1:0]='11'	for fix Korea K706 MHL pattern Generator	//2013-0515 Andrew suggestion
	{REG_RX_00F,	0x03,	0x00},	//change bank 0	//2013-0515 Andrew suggestion	for Auto EQ
	{REG_RX_022,	0xFF,	0x38},	//Reg22=0x38		//2013-0515 Andrew suggestion	for Auto EQ
	{REG_RX_026,	0xFF,	0x80},	//Reg26=0x80		//2013-0515 Andrew suggestion	for Auto EQ
	{REG_RX_03A,	0xFF,	0x38},	//Reg3A=0x38		//2013-0515 Andrew suggestion	for Auto EQ
	{REG_RX_03E,	0xFF,	0x80},	//Reg3E=0x80		//2013-0515 Andrew suggestion	for Auto EQ
	{REG_RX_020,	0x40,	0x40},	//Reg20=0x40		//2013-0515 Andrew suggestion	for Auto EQ
	{REG_RX_038,	0x40,	0x40},	//Reg20=0x40		//2013-0515 Andrew suggestion	for Auto EQ
#endif


	{0xFF, 0xFF, 0xFF},

};




////////////////////////////////////////////////////////////////////
//It6802 MHL inital table
//
//
//
////////////////////////////////////////////////////////////////////
static struct IT6802_REG_INI _CODE IT6802_MHL_INIT_TABLE[] = {

	{MHL_RX_0A,	0xFF,	0x00},	//INT MASK 1: disable corresponding interrupt
	{MHL_RX_08,	0xFF,	0x00},	//INT MASK 1: disable corresponding interrupt
	{MHL_RX_09,	0xFF,	0x00},	//INT MASK 1: disable corresponding interrupt
	{MHL_RX_52,	0xFF,	0x00},	//0: handle by HW
	{MHL_RX_53,	0xFF,	0x80},	//[7]=1 disable FW mode

	{MHL_RX_32,	0xFF,	0x0C},					//CBUS arbitration Low time
	{MHL_RX_81,	0xFF,	MHLVersion},  			//DCAP00¡GMHL_VER_MAJOR and MINOR
	{MHL_RX_82,	0xFF,	(PLIM<<5)+(POW<<4)+DEV_TYPE_SINK},  	//DCAP02¡GDEVICE TYPE
	{MHL_RX_83,	0xFF,	ADOPTER_ID_H},  		//DCAP03¡GADOPTER_ID
	{MHL_RX_84,	0xFF,	ADOPTER_ID_L},
	{MHL_RX_8B,	0xFF,	DEVICE_ID_H},  			//DCAP0B¡GDEVICE_ID
	{MHL_RX_8C,	0xFF,	DEVICE_ID_L},

	{MHL_RX_28,	0x01,	0x00},	//Port 0¡G[0] = 0 RS value of CH1 if req_setEQ=1		//2013-0430 Andrew suggestion

	{MHL_RX_0F,	0x20,	0x20},	//[5]Guard band swap when Pack Mode
	{MHL_RX_29,	0x80,	0x80},	//[7] 1: frome 27M crystall
	{MHL_RX_39,	0x80,	0x80},	//[7] 1: enable I2C deglitch
	{MHL_RX_00,	0x8F,	(EnCBusDbgMode<<7)+(MSCCBusDbgCtrl<<2)+DDCCBusDbgCtrl},	//Enable Cbus Debug Mode
	{MHL_RX_01,	0x8C,	(EnCBusDeGlitch<<7)+(Reg100msTOAdj<<2)},  	//Cbus configure
	{MHL_RX_0C,	0x89,	(PPHDCPOpt<<7)+EnHWPathEn+(PPHDCPOpt2<<3)},   //PATH_EN configure
	{MHL_RX_36,	0xFC,	(AckHigh<<4)+(AckLow<<2)},  //ACK configure
	{MHL_RX_38,	0x20,	EnDDCSendAbort<<5},  //DDC bus configure
	{MHL_RX_5C,	0xFC,	(EnPktFIFOBurst<<7)+(MSCBurstWrID<<6)+(MSCBurstWrOpt<<5)+(EnMSCBurstWr<<4)+(EnMSCHwRty<<3)+(MSCRxUCP2Nack<<2)},  //MSC configure
	{MHL_RX_66,	0x03,	RegBurstWrTOSel},  //Brst WrTOSel

	{MHL_RX_2A, 0x01, 0x01},		//enable HW rstddfsm
	{MHL_RX_0F, 0x10, 0x00},

// #ifdef SUPPORT_INVALID_WAKEUP
// 	{MHL_RX_28, 0x08, 0x08},		//2013-0515 for fix HTC one-S discovery pulse issue
// #endif

	{0xFF, 0xFF, 0xFF},

};


#ifdef _SUPPORT_RAP_
//                      0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F
_CODE unsigned char  SuppRAPCode[32] = { 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // 0
                        1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};// 1
#endif

#ifdef _SUPPORT_RCP_
_CODE unsigned char  SuppRCPCode[128]= { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, // 0
                        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // 1
                        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, // 2
                        1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, // 3
                        0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, // 4
                        1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // 5
                        1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, // 6
                        0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0};// 7
#endif

_CODE unsigned char bCSCMtx_RGB2YUV_ITU601_16_235[]=
{
	0x00,		0x80,		0x10,
	0xB2,0x04,	0x65,0x02,	0xE9,0x00,
	0x93,0x3C,	0x18,0x04,	0x55,0x3F,
	0x49,0x3D,	0x9F,0x3E,	0x18,0x04
};

_CODE unsigned char bCSCMtx_RGB2YUV_ITU601_0_255[]=
{
	0x10,		0x80,		0x10,
	0x09,0x04,	0x0E,0x02,	0xC9,0x00,
	0x0F,0x3D,	0x84,0x03,	0x6D,0x3F,
	0xAB,0x3D,	0xD1,0x3E,	0x84,0x03
};

_CODE unsigned char bCSCMtx_RGB2YUV_ITU709_16_235[]=
{
	0x00,		0x80,		0x10,
	0xB8,0x05,	0xB4,0x01,	0x94,0x00,
	0x4A,0x3C,	0x17,0x04,	0x9F,0x3F,
	0xD9,0x3C,	0x10,0x3F,	0x17,0x04
};

_CODE unsigned char bCSCMtx_RGB2YUV_ITU709_0_255[]=
{
	0x10,		0x80,		0x10,
	0xEA,0x04,	0x77,0x01,	0x7F,0x00,
	0xD0,0x3C,	0x83,0x03,	0xAD,0x3F,
	0x4B,0x3D,	0x32,0x3F,	0x83,0x03
};


_CODE unsigned char bCSCMtx_YUV2RGB_ITU601_16_235[] =
{
	0x00,		0x00,		0x00,
	0x00,0x08,	0x6B,0x3A,	0x50,0x3D,
	0x00,0x08,	0xF5,0x0A,	0x02,0x00,
	0x00,0x08,	0xFD,0x3F,	0xDA,0x0D
} ;

_CODE unsigned char bCSCMtx_YUV2RGB_ITU601_0_255[] =
{
	0x04,		0x00,		0xA7,
	0x4F,0x09,	0x81,0x39,	0xDD,0x3C,
	0x4F,0x09,	0xC4,0x0C,	0x01,0x00,
	0x4F,0x09,	0xFD,0x3F,	0x1F,0x10
} ;

_CODE unsigned char bCSCMtx_YUV2RGB_ITU709_16_235[] =
{
	0x00,		0x00,		0x00,
	0x00,0x08,	0x55,0x3C,	0x88,0x3E,
	0x00,0x08,	0x51,0x0C,	0x00,0x00,
	0x00,0x08,	0x00,0x00,	0x84,0x0E
} ;

_CODE unsigned char bCSCMtx_YUV2RGB_ITU709_0_255[] =
{
	0x04,		0x00,		0xA7,
	0x4F,0x09,	0xBA,0x3B,	0x4B,0x3E,
	0x4F,0x09,	0x57,0x0E,	0x02,0x00,
	0x4F,0x09,	0xFE,0x3F,	0xE8,0x10
} ;

#ifdef  _SUPPORT_EDID_RAM_
_CODE unsigned char Default_Edid_Block[256] = {
#if 1 //4Kx2K support

// 0 for IT6802 4K2k  EDID
// 0       1       2       3       4        5       6       7       8       9       A        B       C      D       E       F
0x00,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x00,0x26,0x85,0x02,0x68,0x01,0x01,0x01,0x01,// 00h: 8 ~B  Vendor ID
0x21,0x17,0x01,0x03,0x80,0x55,0x30,0x78,0x2A,0x63,0xBD,0xA1,0x54,0x52,0x9E,0x26,// 10h:
0x0C,0x47,0x4A,0x20,0x08,0x00,0x81,0x80,0xD1,0xC0,0x01,0x01,0x01,0x01,0x01,0x01,// 20h:
0x01,0x01,0x01,0x01,0x01,0x01,0x04,0x74,0x00,0x30,0xF2,0x70,0x5A,0x80,0xB0,0x58,// 30h: 36 ~ 47 (4Kx2K)
0x8A,0x00,0xA2,0x0B,0x32,0x00,0x00,0x1E,0x01,0x1D,0x00,0x72,0x51,0xD0,0x1E,0x20,// 40h: 48 ~ 59 (720p60Hz)
0x6E,0x28,0x55,0x00,0xC4,0x8E,0x21,0x00,0x00,0x1E,0x00,0x00,0x00,0xFD,0x00,0x18,
0x4C,0x1E,0x53,0x1E,0x00,0x0A,0x20,0x20,0x20,0x20,0x20,0x20,0x00,0x00,0x00,0xFC,
0x00,0x49,0x54,0x45,0x36,0x38,0x30,0x32,0x0A,0x20,0x20,0x20,0x20,0x20,0x01,0x8B,
0x02,0x03,0x25,0xF1,0x43,0x84,0x10,0x03,0x23,0x09,0x07,0x07,0x83,0x01,0x00,0x00,
0xE2,0x00,0x0F,0xE3,0x05,0x03,0x01,0x6D,0x03,0x0C,0x00,0x10,0x00,0x38,0x3C,0x20,// 0x38 for support 36bit ,0x3C for support 300MHz TMDS
0x00,0x60,0x03,0x02,0x01,0x01,0x1D,0x00,0x72,0x51,0xD0,0x1E,0x20,0x6E,0x28,0x55,
0x00,0xA0,0x5A,0x00,0x00,0x00,0x1E,0x8C,0x0A,0xD0,0x8A,0x20,0xE0,0x2D,0x10,0x10,
0x3E,0x96,0x00,0xA0,0x5A,0x00,0x00,0x00,0x18,0xF3,0x39,0x80,0x18,0x71,0x38,0x2D,
0x40,0x58,0x2C,0x45,0x00,0xE0,0x0E,0x11,0x00,0x00,0x1E,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x15

/* old EDID
0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00, 0x19, 0x04, 0x30, 0x31, 0x01, 0x00, 0x00, 0x00,
0x14, 0x14, 0x01, 0x03, 0x80, 0x46, 0x27, 0x78, 0xea, 0x67, 0x55, 0xa5, 0x5b, 0x47, 0x9c, 0x25,
0x1e, 0x4f, 0x54, 0xb1, 0x2c, 0x00, 0x31, 0x40, 0x45, 0x40, 0x61, 0x40, 0x81, 0x00, 0x81, 0x80,
0x95, 0x00, 0xb3, 0x00, 0xa9, 0x40, 0x1a, 0x36, 0x80, 0xa0, 0x70, 0x38, 0x1f, 0x40, 0x30, 0x20,
0x35, 0x00, 0xc4, 0x8e, 0x21, 0x00, 0x00, 0x1e, 0x30, 0x2a, 0x00, 0x98, 0x51, 0x00, 0x2a, 0x40,
0x30, 0x70, 0x13, 0x00, 0x13, 0x8e, 0x21, 0x00, 0x00, 0x1e, 0x00, 0x00, 0x00, 0xfc, 0x00, 0x48,
0x44, 0x4d, 0x49, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x6a,
0x02, 0x03, 0x20, 0x71, 0x4c, 0x01, 0x02, 0x03, 0x04, 0x05, 0x0f, 0x90, 0x11, 0x12, 0x13, 0x14,
0x1f, 0x23, 0x09, 0x17, 0x07, 0x83, 0x01, 0x00, 0x00, 0x66, 0x03, 0x0c, 0x00, 0x10, 0x00, 0x80,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x34,
*/

/*
0x00,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x00,0x11,0x2D,0x67,0x77,0x00,0x00,0x00,0x00,
0xFF,0x17,0x01,0x03,0x80,0x85,0x4B,0x78,0x2A,0x1B,0xBE,0xA2,0x55,0x34,0xB3,0x26,
0x14,0x4A,0x52,0x00,0x40,0x00,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,
0x01,0x01,0x01,0x01,0x01,0x01,0x04,0x74,0x00,0x30,0xF2,0x70,0x5A,0x80,0xB0,0x58,
0x8A,0x00,0x00,0xEC,0x02,0x00,0x00,0x1E,0x00,0x00,0x00,0x10,0x00,0x70,0x5A,0x80,
0x58,0x2C,0xA8,0x00,0x00,0x00,0x00,0x00,0x00,0x1E,0x00,0x00,0x00,0xFC,0x00,0x48,
0x59,0x33,0x44,0x20,0x48,0x44,0x4D,0x49,0x0A,0x20,0x20,0x20,0x00,0x00,0x00,0xFD,
0x00,0x17,0x4C,0x0F,0x44,0x1E,0x00,0x0A,0x20,0x20,0x20,0x20,0x20,0x20,0x01,0x7F,
0x02,0x03,0x3A,0xF1,0x56,0x90,0x1F,0x05,0x14,0x04,0x13,0x20,0x22,0x07,0x16,0x03,
0x12,0x21,0x01,0x02,0x06,0x0E,0x11,0x15,0x1D,0x1E,0x0F,0x23,0x09,0x7F,0x01,0x83,
0x4F,0x00,0x00,0x26,0x15,0x07,0x50,0x3F,0x07,0x50,0x6F,0x03,0x0C,0x00,0x40,0x00,
0xB8,0x44,0xAF,0x00,0x00,0xA0,0x22,0x03,0x01,0x41,0x01,0x1D,0x80,0x18,0x71,0x1C,
0x16,0x20,0x58,0x2C,0x25,0x00,0xC4,0x8E,0x21,0x00,0x00,0x9E,0x01,0x1D,0x80,0xD0,
0x72,0x1C,0x16,0x20,0x10,0x2C,0x25,0x80,0xC4,0x8E,0x21,0x00,0x00,0x9E,0x01,0x1D,
0x00,0x72,0x51,0xD0,0x1A,0x20,0x6E,0x28,0x55,0x00,0xC4,0x8E,0x21,0x00,0x00,0x18,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xB1,



0x00,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x00,0x21,0x2B,0x30,0x00,0x01,0x00,0x00,0x00,
0x0A,0x16,0x01,0x03,0x80,0x73,0x41,0x78,0x0A,0xF0,0xD0,0xA3,0x57,0x4C,0xB0,0x23,
0x09,0x48,0x4C,0x21,0x08,0x00,0x81,0x80,0x45,0x40,0x61,0x40,0x95,0x00,0x01,0x01,
0x01,0x01,0x01,0x01,0x01,0x01,0x02,0x3A,0x80,0x18,0x71,0x38,0x2D,0x40,0x58,0x2C,
0x45,0x00,0xC4,0x8E,0x21,0x00,0x00,0x1E,0x66,0x21,0x50,0xB0,0x51,0x00,0x1B,0x30,
0x40,0x70,0x36,0x00,0xC4,0x8E,0x21,0x00,0x00,0x1E,0x00,0x00,0x00,0xFC,0x00,0x48,
0x49,0x4B,0x20,0x4C,0x43,0x44,0x0A,0x20,0x20,0x20,0x20,0x20,0x00,0x00,0x00,0xFD,
0x00,0x32,0x4B,0x1E,0x50,0x17,0x00,0x0A,0x20,0x20,0x20,0x20,0x20,0x20,0x01,0x2F,
0x02,0x03,0x2E,0xF2,0x4D,0x01,0x03,0x04,0x05,0x07,0x90,0x12,0x13,0x14,0x16,0x9F,
0x20,0x22,0x26,0x09,0x07,0x07,0x11,0x17,0x50,0x83,0x01,0x00,0x00,0x70,0x03,0x0C,
0x00,0x10,0x00,0xB8,0x44,0x20,0xA0,0x82,0x01,0x02,0x03,0x04,0x01,0x41,0x8C,0x0A,
0xD0,0x8A,0x20,0xE0,0x2D,0x10,0x10,0x3E,0x96,0x00,0xC4,0x8E,0x21,0x00,0x00,0x18,
0x8C,0x0A,0xD0,0x90,0x20,0x40,0x31,0x20,0x0C,0x40,0x55,0x00,0xC4,0x8E,0x21,0x00,
0x00,0x18,0x01,0x1D,0x00,0xBC,0x52,0xD0,0x1E,0x20,0xB8,0x28,0x55,0x40,0xC4,0x8E,
0x21,0x00,0x00,0x1E,0x01,0x1D,0x80,0xD0,0x72,0x1C,0x16,0x20,0x10,0x2C,0x25,0x80,
0xC4,0x8E,0x21,0x00,0x00,0x9E,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x95,
*/


#else                                                                           
0x00,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x00,0x44,0x89,0xD4,0x03,0x15,0xCD,0x5B,0x07,
0x15,0x15,0x01,0x03,0x80,0x50,0x2D,0x78,0x1A,0x0D,0xC9,0xA0,0x57,0x47,0x98,0x27,
0x12,0x48,0x4C,0x20,0x00,0x00,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,
0x01,0x01,0x01,0x01,0x01,0x01,0x02,0x3A,0x80,0x18,0x71,0x38,0x2D,0x40,0x58,0x2C,
0x45,0x00,0x20,0xC2,0x31,0x00,0x00,0x1E,0x01,0x1D,0x80,0x18,0x71,0x1C,0x16,0x20,
0x58,0x2C,0x25,0x00,0xC4,0x8E,0x21,0x00,0x00,0x9E,0x00,0x00,0x00,0xFC,0x00,0x48,
0x44,0x4D,0x49,0x20,0x41,0x6E,0x61,0x6C,0x79,0x7A,0x65,0x72,0x00,0x00,0x00,0xFD,
0x00,0x17,0xF1,0x08,0x8C,0x1E,0x00,0x0A,0x20,0x20,0x20,0x20,0x20,0x20,0x01,0x27,
0x02,0x03,0x76,0x71,0x5F,0x90,0x1F,0x22,0x20,0x05,0x14,0x04,0x13,0x3E,0x3C,0x11,
0x02,0x03,0x15,0x06,0x01,0x07,0x08,0x09,0x0A,0x0B,0x0C,0x0D,0x0E,0x0F,0x12,0x16,
0x17,0x18,0x19,0x1A,0x5F,0x1B,0x1C,0x1D,0x1E,0x21,0x23,0x24,0x25,0x26,0x27,0x28,
0x29,0x2A,0x2B,0x2C,0x2D,0x2E,0x2F,0x30,0x31,0x32,0x33,0x34,0x35,0x36,0x37,0x38,
0x39,0x3A,0x3B,0x3D,0x42,0x3F,0x40,0x32,0x0F,0x7F,0x07,0x17,0x7F,0x50,0x3F,0x7F,
0xC0,0x57,0x7F,0x00,0x5F,0x7F,0x01,0x67,0x7F,0x00,0x83,0x4F,0x00,0x00,0x70,0x03,
0x0C,0x00,0x10,0x00,0xF8,0x3C,0x2F,0xA0,0x82,0x01,0x02,0x03,0x04,0x81,0x7F,0xE2,
0x00,0xFF,0xE3,0x05,0x1F,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xD5,
#endif
};
#endif

_CODE char *VStateStr[] = {
	"VSTATE_Off",
	"VSTATE_TerminationOff",
	"VSTATE_TerminationOn",
	"VSTATE_5VOff",
	"VSTATE_SyncWait",
	"VSTATE_SWReset",
	"VSTATE_SyncChecking",
	"VSTATE_HDCPSet",
	"VSTATE_HDCP_Reset",
	"VSTATE_ModeDetecting",
	"VSTATE_VideoOn",
	"VSTATE_ColorDetectReset",
	"VSTATE_HDMI_OFF",
	"VSTATE_Reserved",
    };

_CODE char  *AStateStr[] = {
	"ASTATE_AudioOff",
	"ASTATE_RequestAudio",
	"ASTATE_ResetAudio",
	"ASTATE_WaitForReady",
	"ASTATE_AudioOn",
	"ASTATE_Reserved"
};

/*****************************************************************************/
/*  Function Definitions    **************************************************/
/*****************************************************************************/
//#define VideoTimeOutCheck(x) TimeOutCheck(it6802->m_VideoCountingTimer, (x))
//#define AudioTimeOutCheck(x) TimeOutCheck(it6802->m_AudioCountingTimer, (x))
//#define AssignSWResetVirtualTime() { it6802->m_SWResetTimeOut     = GetCurrentVirtualTime(); }
//#define AssignVideoVirtualTime()   { it6802->m_VideoCountingTimer = GetCurrentVirtualTime(); }
//#define AssignAudioVirtualTime()   { it6802->m_AudioCountingTimer = GetCurrentVirtualTime();}
//#define AssignVideoTimerTimeout(TimeOut) {it6802->m_VideoCountingTimer = (TimeOut);}
//#define AssignAudioTimerTimeout(TimeOut) {it6802->m_AudioCountingTimer = (TimeOut);}



/*****************************************************************************/
/*  Function Prototypes    **************************************************/
/*****************************************************************************/

/* IT680x IO Functions   ***********************************************************/
static SYS_STATUS EDID_RAM_Write(unsigned char offset,unsigned char byteno,unsigned char *p_data );
static unsigned char EDID_RAM_Read(unsigned char offset);
static unsigned char hdmirxrd( unsigned char RegAddr);
static unsigned char hdmirxwr( unsigned char RegAddr,unsigned char DataIn);
static unsigned char  hdmirxset( unsigned char  offset, unsigned char  mask, unsigned char  ucdata );
static void hdmirxbwr( unsigned char offset, unsigned char byteno, unsigned char *rddata );
static unsigned char mhlrxrd( unsigned char offset );
static unsigned char mhlrxwr( unsigned char offset, unsigned char ucdata );
static unsigned char mhlrxset( unsigned char offset, unsigned char mask, unsigned char ucdata );
static void mhlrxbrd( unsigned char offset, unsigned char byteno, unsigned char *rddata );
static void mhlrxbwr( unsigned char offset, unsigned char byteno, unsigned char *rddata );

/* IT680x Configuration and Initialization ***********************************/
static struct it6802_dev_data* get_it6802_dev_data(void);
static void hdimrx_write_init(struct IT6802_REG_INI _CODE *tdata);
static void mhlrx_write_init(struct IT6802_REG_INI _CODE *tdata);
static void hdmirx_Var_init(struct it6802_dev_data *it6802);
static void IT6802_Rst( struct it6802_dev_data *it6802 );
//void IT6802_fsm_init(void);

/* HDMI RX functions   *********************************************************/
static void chgbank(int bank);
static unsigned char CheckSCDT(struct it6802_dev_data *it6802);
static void WaitingForSCDT(struct it6802_dev_data *it6802);
static unsigned char CheckAVMute(void);
static unsigned char CheckPlg5VPwr(unsigned char ucPortSel);
static unsigned char IsHDMIMode(void);
static void SetVideoInputFormatWithInfoFrame(struct it6802_dev_data *it6802);
static void SetColorimetryByInfoFrame(struct it6802_dev_data *it6802);
static void SetCSCBYPASS(struct it6802_dev_data *it6802);
static void SetColorSpaceConvert(struct it6802_dev_data *it6802);
static void SetNewInfoVideoOutput(struct it6802_dev_data *it6802);
static void SetVideoInputFormatWithoutInfoFrame(struct it6802_dev_data *it6802,unsigned char bInMode);
static void SetColorimetryByMode(struct it6802_dev_data *it6802);
static void SetDVIVideoOutput(struct it6802_dev_data *it6802);
static void IT6802VideoOutputConfigure(struct it6802_dev_data *it6802);
static void SetVideoOutputColorFormat(struct it6802_dev_data *it6802);
//void it6802PortSelect(unsigned char ucPortSel);

/* HDMI Audio function    *********************************************************/
static void aud_fiforst( void );
static void IT6802AudioOutputEnable(unsigned char bEnable);
static void hdmirx_ResetAudio(void);
static void hdmirx_SetHWMuteClrMode(void);
static void hdmirx_SetHWMuteClr(void);
static void hdmirx_ClearHWMuteClr(void);
static void getHDMIRXInputAudio(AUDIO_CAPS *pAudioCaps);
static void IT6802SwitchAudioState(struct it6802_dev_data *it6802,Audio_State_Type state);
static void IT6802AudioHandler(struct it6802_dev_data *it6802);


/* HDMI Video function    *********************************************************/
static void IT6802_AFE_Rst( void );
static void IT6802_SetVideoMute(struct it6802_dev_data *it6802,unsigned char bMute);
//static void IT6802VideoOutputCDSet(void);
static void IT6802VideoOutputEnable(unsigned char bEnableOutput);
static void IT6802SwitchVideoState(struct it6802_dev_data *it6802,Video_State_Type  eNewVState);
static void IT6802VideoHandler(struct it6802_dev_data *it6802);


/* HDMI Interrupt function    *********************************************************/
static void hdmirx_INT_5V_Pwr_Chg(struct it6802_dev_data *it6802,unsigned char ucport);
static void hdmirx_INT_P0_ECC(struct it6802_dev_data *it6802);
static void hdmirx_INT_P1_ECC(struct it6802_dev_data *it6802);
static void hdmirx_INT_P0_Deskew(struct it6802_dev_data *it6802);
static void hdmirx_INT_P1_Deskew(struct it6802_dev_data *it6802);
static void hdmirx_INT_HDMIMode_Chg(struct it6802_dev_data *it6802);
static void hdmirx_INT_SCDT_Chg(struct it6802_dev_data *it6802);


/* MHL HDCP functions    *********************************************************/
static void hdcpsts( void );

/* MHLRX functions    *********************************************************/
#ifdef _SUPPORT_RCP_
static void parse_rcpkey( unsigned char rcpkey );
static void mhl_parse_RCPkey(struct it6802_dev_data *it6802);
#endif

#ifdef _SUPPORT_RAP_
static void mhl_parse_RAPkey(struct it6802_dev_data *it6802);
#endif

#ifdef _SUPPORT_RAP_
static void ucp_report_event( unsigned char key);
static void mhl_parse_UCPkey(struct it6802_dev_data *it6802);
#endif

static void mhl_read_mscmsg( struct it6802_dev_data *it6802 );
static int mscwait( void );
static int mscfire( int offset, int wdata );
static void cbus_send_mscmsg( struct it6802_dev_data *it6802 );

/*  MHL interrupt    *******************************************************/
static void parse_devcap(unsigned char *devcap );
static int read_devcap_hw( struct it6802_dev_data *it6802 );
static void set_mhlint( unsigned char offset, unsigned char field );
static void set_mhlsts( unsigned char offset, unsigned char status );
static void write_burst(struct it6802_dev_data *it6802, int offset, int byteno );
static void set_wrburst_data(struct it6802_dev_data *it6802, int offset, int byteno );

/* MHL 3D functions    *******************************************************/
static void v3d_burst1st(struct it6802_dev_data *it6802);
static void v3d_burst2nd(struct it6802_dev_data *it6802);
static void v3d_burst3rd(struct it6802_dev_data *it6802);
static void v3d_burst4th(struct it6802_dev_data *it6802);
static void v3d_unsupport1st(struct it6802_dev_data *it6802);
static void v3d_unsupport2nd(struct it6802_dev_data *it6802);



/* EDID RAM  functions    *******************************************************/
#ifdef _SUPPORT_EDID_RAM_
static unsigned char UpdateEDIDRAM(unsigned char *pEDID,unsigned char BlockNUM);
static void EnableEDIDupdata(void);
static void DisableEDIDupdata(void);
static void EDIDRAMInitial(unsigned char *pIT6802EDID);
static unsigned char Find_Phyaddress_Location(unsigned char *pEDID,unsigned char Block_Number);
static void UpdateEDIDReg(unsigned char u8_VSDB_Addr, unsigned char CEC_AB, unsigned char CEC_CD, unsigned char Block1_CheckSum);
static void PhyAdrSet(void);
#endif

/* RCP functions    *******************************************************/
#ifdef _SUPPORT_RCP_
static void RCPinitQ(struct it6802_dev_data *it6802);
static int RCPKeyPop(struct it6802_dev_data *it6802);
static void SwitchRCPResult(struct it6802_dev_data *it6802,RCPResult_Type RCPResult);
static void SwitchRCPStatus(struct it6802_dev_data *it6802,RCPState_Type RCPState);
static void RCPManager(struct it6802_dev_data *it6802);
//void RCPKeyPush(unsigned char ucKey);
#endif


/* Driver State Machine Process **********************************************/
static void IT6802MHLInterruptHandler(struct it6802_dev_data *it6802);
static void IT6802HDMIInterruptHandler(struct it6802_dev_data *it6802);
//void IT6802_fsm(void);


#ifndef Enable_IR
//static void it6802AutoPortSelect(struct it6802_dev_data *it6802);
#endif
static void it6802ShowErrorCount(void);
void show_vid_info( void );
void get_vid_info( void );

static unsigned char IT6802_DE3DFrame(unsigned char ena_de3d);

//
//#ifdef MEGAWIN82516
//static void it6802AutoPortSelect(void);
//#endif

/*****************************************************************************/
/*  IO Functions   ***********************************************************/
/*****************************************************************************/
static SYS_STATUS EDID_RAM_Write(unsigned char offset,unsigned char byteno,unsigned char *p_data )
{
	unsigned char flag;
	flag = i2c_write_byte(EDID_ADDR, offset, byteno, p_data, HDMI_DEV);
	return !flag;
}

static unsigned char EDID_RAM_Read(unsigned char offset)
{
	unsigned char p_data;
	i2c_read_byte(EDID_ADDR, offset,1, &p_data, HDMI_DEV);
	return p_data;
}

//===============================================================================//
static unsigned char hdmirxrd( unsigned char RegAddr)
{
	unsigned char	FLAG;
	unsigned char mDataIn;

	FLAG= i2c_read_byte(HDMI_ADDR, RegAddr, 1, &mDataIn, HDMI_DEV);
	if(FLAG==0)
	{
	MHLRX_DEBUG_PRINTF(printf("HDMI Read ERROR !!!"));
	MHLRX_DEBUG_PRINTF(printf("=====  Read Reg0x%x =  \r\n",RegAddr));
#if MHL_IIC_ERROR_RESET
	//SWI2C_ErrorProcess();
#endif
	}
	return mDataIn;
}

static unsigned char hdmirxwr( unsigned char RegAddr,unsigned char DataIn)
{

	unsigned char flag;
	
	//MHLRX_DEBUG_PRINTF(printf("HDMI_IIC_Write(%#BX,%#BX) \r\n", RegAddr, DataIn));
	flag= i2c_write_byte(HDMI_ADDR, RegAddr, 1, &DataIn, HDMI_DEV);
	if(flag==0)
	{
	//MHLRX_DEBUG_PRINTF(printf("====================================\r\n"));
	MHLRX_DEBUG_PRINTF(printf("HDMI I2C ERROR !!!"));
	MHLRX_DEBUG_PRINTF(printf("=====  Write Reg0x%x=%x =====  \r\n",RegAddr,DataIn));
#if MHL_IIC_ERROR_RESET
	//SWI2C_ErrorProcess();
#endif
	//MHLRX_DEBUG_PRINTF(printf("====================================\r\n"));
	}
	return !flag;
}

static unsigned char  hdmirxset( unsigned char  offset, unsigned char  mask, unsigned char  ucdata )
{
	unsigned char  temp;
	temp = hdmirxrd(offset);
	temp = (temp&((~mask)&0xFF))+(mask&ucdata);
	return hdmirxwr(offset, temp);
}

static void hdmirxbwr( unsigned char offset, unsigned char byteno, unsigned char *rddata )
{
	unsigned char flag;
	if( byteno>0 )
	flag= i2c_write_byte(HDMI_ADDR, offset, byteno, rddata, HDMI_DEV);
	if(flag==0)
	{
	//MHLRX_DEBUG_PRINTF(printf("====================================\r\n"));
	MHLRX_DEBUG_PRINTF(printf("IT6802 I2C ERROR !!!"));
	MHLRX_DEBUG_PRINTF(printf("=====  Write Reg0x%x=%x =====  \r\n",offset,rddata));
#if MHL_IIC_ERROR_RESET
	//SWI2C_ErrorProcess();
#endif
	//MHLRX_DEBUG_PRINTF(printf("====================================\r\n"));
	}
}

//===============================================================================//
static unsigned char mhlrxrd( unsigned char offset )
{
	unsigned char	mDataIn;
	unsigned char	FLAG;
	FLAG=i2c_read_byte(MHL_ADDR, offset, 1, &mDataIn, HDMI_DEV);
	if(FLAG==0)
	{
	//MHLRX_DEBUG_PRINTF(printf("====================================\r\n"));
	MHLRX_DEBUG_PRINTF(printf("MHL I2C ERROR !!!"));
	MHLRX_DEBUG_PRINTF(printf("=====  read Reg0x%x=%x =====  \r\n",offset,mDataIn));
#if MHL_IIC_ERROR_RESET
	SWI2C_ErrorProcess();
#endif
	//MHLRX_DEBUG_PRINTF(printf("====================================\r\n"));
	}
	return mDataIn;
}

static unsigned char mhlrxwr( unsigned char offset, unsigned char ucdata )
{
	unsigned char  flag;
	flag= i2c_write_byte(MHL_ADDR, offset, 1, &ucdata, HDMI_DEV);
	if(flag==0)
	{
	//MHLRX_DEBUG_PRINTF(printf("====================================\r\n"));
	MHLRX_DEBUG_PRINTF(printf("MHL I2C ERROR !!!"));
	MHLRX_DEBUG_PRINTF(printf("=====  Write Reg0x%x=%x =====  \r\n",offset,ucdata));
#if MHL_IIC_ERROR_RESET
	SWI2C_ErrorProcess();
#endif
	//MHLRX_DEBUG_PRINTF(printf("====================================\r\n"));
	}
	return !flag;
}

static unsigned char mhlrxset( unsigned char offset, unsigned char mask, unsigned char ucdata )
{
	unsigned char temp;
	temp = mhlrxrd(offset);
	temp = (temp&((~mask)&0xFF))+(mask&ucdata);
	return mhlrxwr(offset, temp);
}

static void mhlrxbrd( unsigned char offset, unsigned char byteno, unsigned char *rddata )
{
	if( byteno>0 )
	i2c_read_byte(MHL_ADDR, offset, byteno, rddata, HDMI_DEV);
}

static void mhlrxbwr( unsigned char offset, unsigned char byteno, unsigned char *rddata )
{
	if( byteno>0 )
	i2c_write_byte(MHL_ADDR, offset, byteno, rddata, HDMI_DEV);
}

/*****************************************************************************/
/* IT680x Configuration and Initialization ***********************************/
/*****************************************************************************/
#ifdef _IT680x_
static struct it6802_dev_data* get_it6802_dev_data(void)
{
	return &it6802DEV;
}


static void hdimrx_write_init(struct IT6802_REG_INI _CODE *tdata)
{
	int cnt = 0;
	while(tdata[cnt].ucAddr != 0xFF)
	{
		//pr_err(" Cnt = %d, addr = %X,andmask = %X,ucValue=%X\r\n", cnt,(int)tdata[cnt].ucAddr,(int)tdata[cnt].andmask,(int)tdata[cnt].ucValue);
		hdmirxset(tdata[cnt].ucAddr,tdata[cnt].andmask,tdata[cnt].ucValue);
		cnt++;

	}
}

static void mhlrx_write_init(struct IT6802_REG_INI _CODE *tdata)
{
	int cnt = 0;
	while(tdata[cnt].ucAddr != 0xFF)
	{
		//pr_err(" Cnt = %d, addr = %X,andmask = %X,ucValue=%X\r\n", cnt,(int)tdata[cnt].ucAddr,(int)tdata[cnt].andmask,(int)tdata[cnt].ucValue);
		mhlrxset(tdata[cnt].ucAddr,tdata[cnt].andmask,tdata[cnt].ucValue);
		cnt++;
	}
}

////////////////////////////////////////////////////////////////////
//int hdmirx_Var_init( void )
//
//
//
////////////////////////////////////////////////////////////////////
static void hdmirx_Var_init(struct it6802_dev_data *it6802)
{

    // it6802->m_ucCurrentHDMIPort=0xFF;
    //it6802->m_ucDVISCDToffCNT=0;
    it6802->m_ucSCDTOffCount=0;
    it6802->m_ucEccCount_P0=0;
    it6802->m_ucEccCount_P1=0;
    it6802->m_ucDeskew_P0=0;
    it6802->m_ucDeskew_P1=0;

    it6802->m_VState=VSTATE_Off;
    it6802->m_AState=ASTATE_AudioOff;
    it6802->m_RxHDCPState=RxHDCP_PwrOff;

    it6802->m_SWResetTimeOut=0;
    it6802->m_VideoCountingTimer=0;
    it6802->m_AudioCountingTimer=0;

    it6802->m_bVideoOnCountFlag=FALSE;

    it6802->m_MuteAutoOff=FALSE;
    it6802->m_bUpHDMIMode=FALSE;
    it6802->m_bUpHDCPMode=FALSE;
    it6802->m_NewAVIInfoFrameF=FALSE;
    it6802->m_NewAUDInfoFrameF=FALSE;
    it6802->m_HDCPRepeater=FALSE;

    it6802->m_bOutputVideoMode=HDMIRX_OUTPUT_VID_MODE ;
    it6802->m_bRxAVmute=FALSE;



    #ifdef _IT6607_GeNPacket_Usage_
    it6802->m_PollingPacket=0;
    it6802->m_PacketState=0;
    it6802->m_ACPState=0;
    it6802->m_GamutPacketRequest=FALSE;
    it6802->m_GeneralRecPackType=0x00;
    #endif
}



////////////////////////////////////////////////////////////////////
//void hdmitx_rst( void )
//
//
//
////////////////////////////////////////////////////////////////////
static void IT6802_Rst( struct it6802_dev_data *it6802 )
{
	hdmirx_Var_init(it6802);
	RCPinitQ(it6802);
	hdimrx_write_init(IT6802_HDMI_INIT_TABLE);
	mhlrx_write_init(IT6802_MHL_INIT_TABLE);
}

//=========================================================================//
void IT6802_fsm_init(void)
{
	struct it6802_dev_data *it6802data = get_it6802_dev_data();

	MHLRX_DEBUG_PRINTF(printf("IT6802_fsm_init( ) \r\n"));
	IT6802_Rst(it6802data);

#if 1
	if( DeviceID==IT6802_CHIP) {
		hdmirxset(0x77, 0x80, 0x00);
		chgbank(1);
	    hdmirxset(0xC0, 0x80, 0x00);
		chgbank(0);
	}
	else 
	{
		hdmirxset(0x77, 0x80, 0x80);
		chgbank(1);
		hdmirxset(0xC0, 0x80, 0x80);
		chgbank(0);
	}

	//RS initial valie
	hdmirxwr(0x27, 0x1F);
	hdmirxwr(0x28, 0x1F);
	hdmirxwr(0x29, 0x1F);
	hdmirxwr(0x3F, 0x1F);
	hdmirxwr(0x40, 0x1F);
	hdmirxwr(0x41, 0x1F);

#ifdef _SUPPORT_AUTO_EQ_
	//if( EnP0AutoEQ==TRUE )
	{
		chgbank(1);
		hdmirxwr(0xBC, 0x06);
		chgbank(0);
		hdmirxset(0x20, 0x40, 0x40);
		hdmirxwr(0x22, 0x38);
		hdmirxwr(0x26, 0x80);
	}

	//if( EnP1AutoEQ==TRUE )
	{
		chgbank(1);
		hdmirxwr(0xBC, 0x06);
		chgbank(0);
		hdmirxset(0x38, 0x40, 0x40);
		hdmirxwr(0x3A, 0x38);
		hdmirxwr(0x3E, 0x80);
	}
#endif

	hdmirxset(0x16, 0x08, 0x08); //enable P0 CLKD5 auto reset
//	hdmirxset(0x17, 0xC0, (INVHCLK<<7)+(P0INVCLKD5<<6));
	hdmirxset(0x1D, 0x08, 0x08); //enable P1 CLKD5 auto reset
//	hdmirxset(0x1E, 0xC0, (INVTMDSCLK<<7)+(P1INVCLKD5<<6));
//	hdmirxset(0x2A, 0x10, EnP0PLLBufRst<<4);
	hdmirxwr(0x2B, 0x07);
//	hdmirxwr(0x31, (EnRepeater<<7)+(En1p1Feature<<5)+(EnFastAuth<<4)+(BCap7B<<3)+(UpdRiSel<<2));
	hdmirxwr(0x34, 0xE1);
	hdmirxset(0x35, 0x0C, DeltaNum<<2);
//	hdmirxset(0x42, 0x10, EnP1PLLBufRst<<4);
//	hdmirxset(0x51, 0x01, PortSel);
	hdmirxwr(0x54, (1<<4)+RCLKFreqSel);
	hdmirxwr(0x6A, GenPktRecType);
	hdmirxset(0x71, 0x08, 0x00); //disalbe ppcolmode
	hdmirxwr(0x74, 0xA0);

	//WCLK valid setting
	hdmirxwr(0x37, 0x88);
	hdmirxwr(0x4D, 0x88);

    	chgbank(1);
	hdmirxset(0xB5, 0x03, 0x03);
	chgbank(0);

	if( HDCPIntKey==TRUE )
	{
		hdmirxset(0x73, 0x08, 0x08);
		hdmirxwr(0x90, 0x22);
		delay1ms(1);
		hdmirxwr(0x90, 0x22);
		delay1ms(1);
		hdmirxwr(0x90, 0x22);
	}
	else
	{
		hdmirxset(0x73, 0x08, 0x00);
	}

//    hdmirxset(0x50, 0x13, (VCLK_INV<<4)+VCLK_DLY);

#ifdef  _SUPPORT_EDID_RAM_
	if( EnMultiSeg==TRUE)
		hdmirxset(REG_RX_0C0, 0x40, 0x40);
	else
		hdmirxset(REG_RX_0C0, 0x40, 0x00);

	if( EnIntEDID==TRUE ) {
		hdmirxset(REG_RX_0C0, 0x03, 0x00);
		hdmirxset(REG_RX_087, 0x01, 0x01);
	}
	else {
		hdmirxset(REG_RX_0C0, 0x01, 0x01);
		hdmirxset(REG_RX_0C0, 0x01, 0x00);
	}
#endif

	mhlrxset(0x28, 0x09, CBUSFloatAdj<<3);

#endif

#ifdef  _SUPPORT_EDID_RAM_
	EDIDRAMInitial(&Default_Edid_Block[0]);
#else
	HDMI_HotPlug(1);	//set port 1 HPD=1
#endif
	it6802PortSelect(1);	// select port 0
}

#endif


/*****************************************************************************/
/* HDMIRX functions    *******************************************************/
/*****************************************************************************/
#ifdef _IT680x_

static void chgbank( int bank )
{
	switch( bank ) {
	case 0 :
		 hdmirxset(0x0F, 0x03, 0x00);
		 break;
	case 1 :
		 hdmirxset(0x0F, 0x03, 0x01);
		 break;
	case 2 :
		 hdmirxset(0x0F, 0x03, 0x02);
		 break;
	case 3:
		 hdmirxset(0x0F, 0x03, 0x03);
		 break;
	default :
		 break;
	}
}


static unsigned char CheckSCDT(struct it6802_dev_data *it6802)
{
	unsigned char ucPortSel;
	unsigned char sys_state_P0;

	ucPortSel = hdmirxrd(REG_RX_051) & B_PORT_SEL;
	sys_state_P0=hdmirxrd(REG_RX_P0_SYS_STATUS);

	if(ucPortSel == it6802->m_ucCurrentHDMIPort) {

		if(sys_state_P0 & B_P0_SCDT)
		{
			//SCDT on
			it6802->m_ucSCDTOffCount=0;
			return TRUE;
		}
		else
		{
			//SCDT off
			return FALSE;
		}

	}
}


static void WaitingForSCDT(struct it6802_dev_data *it6802)
{
	unsigned char sys_state_P0;
	unsigned char sys_state_P1;
	unsigned char ucPortSel;

	sys_state_P0=hdmirxrd(REG_RX_P0_SYS_STATUS) & (B_P0_SCDT|B_P0_PWR5V_DET|B_P0_RXCK_VALID);
	sys_state_P1=hdmirxrd(REG_RX_P1_SYS_STATUS) & (B_P1_SCDT|B_P1_PWR5V_DET|B_P1_RXCK_VALID);
	ucPortSel = hdmirxrd(REG_RX_051) & B_PORT_SEL;

	if(sys_state_P0 & B_P0_SCDT)
	{
		it6802->m_ucSCDTOffCount=0;
		IT6802SwitchVideoState(it6802,VSTATE_SyncChecking);	//2013-0520
		return;
	}
	else{

		if(ucPortSel == F_PORT_SEL_0) {
			if((sys_state_P0 & (B_P0_PWR5V_DET|B_P0_RXCK_VALID)) == (B_P0_PWR5V_DET|B_P0_RXCK_VALID))
				{
					it6802->m_ucSCDTOffCount++;
					//printf(" SCDT off count = %d \r\n",(int)it6802->m_ucSCDTOffCount);
					//printf(" sys_state_P0 = %x \r\n",sys_state_P0);
				}
				else{
						it6802->m_ucSCDTOffCount=0;
					}
		}
		else{
				if((sys_state_P1 & (B_P1_PWR5V_DET|B_P1_RXCK_VALID)) == (B_P1_PWR5V_DET|B_P1_RXCK_VALID))
				{
					it6802->m_ucSCDTOffCount++;
					//printf(" SCDT off count = %d \r\n",(int)it6802->m_ucSCDTOffCount);
					//printf(" sys_state_P1 = %x \r\n",sys_state_P1);

				}
				else{
						it6802->m_ucSCDTOffCount=0;
					}
			}

		if((it6802->m_ucSCDTOffCount)>SCDT_OFF_TIMEOUT)
		{
			it6802->m_ucSCDTOffCount=0;

			MHLRX_DEBUG_PRINTF(printf("CDR reset for SCDT_OFF_TIMEOUT !!!\r\n"));

			if(ucPortSel == F_PORT_SEL_0) {
				hdmirxset(REG_RX_011,(B_P0_DCLKRST|B_P0_CDRRST),(B_P0_DCLKRST|B_P0_CDRRST));
				hdmirxset(REG_RX_011,(B_P0_DCLKRST|B_P0_CDRRST),0x00);
			}
			else
				{
				hdmirxset(REG_RX_018,(B_P1_DCLKRST|B_P1_CDRRST),(B_P1_DCLKRST|B_P1_CDRRST));
				hdmirxset(REG_RX_018,(B_P1_DCLKRST|B_P1_CDRRST),0x00);
				}
		}

	}
}

static unsigned char CheckAVMute(void)
{

	unsigned char ucAVMute;
	unsigned char ucPortSel;

	ucAVMute=hdmirxrd(REG_RX_0A8) & (B_P0_AVMUTE|B_P1_AVMUTE);
	ucPortSel = hdmirxrd(REG_RX_051)&B_PORT_SEL;

	if(((ucAVMute & B_P0_AVMUTE)&& (ucPortSel == F_PORT_SEL_0 ))||
	((ucAVMute & B_P1_AVMUTE)&& (ucPortSel == F_PORT_SEL_1 )))
	{
		return TRUE;
	}
	else
	{
		return FALSE;
	}

}



static unsigned char CheckPlg5VPwr(unsigned char ucPortSel)
{
	unsigned char sys_state_P0;
	unsigned char sys_state_P1;

	if(ucPortSel==0)
	{
		sys_state_P0 = hdmirxrd(REG_RX_P0_SYS_STATUS) & B_P0_PWR5V_DET;
		if((sys_state_P0 & B_P0_PWR5V_DET))
		{

				//chgbank(0);
				//reg0Ah = hdmirxrd(0x0A);
				//if( (reg0Ah&0x40) == 0)
				//BUSMODE = MHL;
				//else
				//BUSMODE = HDMI;
				 //if( BUSMODE==HDMI ) {


				 if((hdmirxrd(0x0A)&0x40)==0){
					 chgbank(1);
					 hdmirxset(0xB0, 0x03, 0x03);
					 chgbank(0);
				 }

			return TRUE;
		}
		else
		{
			return FALSE;
		}
	}
	else
	{
		sys_state_P1 = hdmirxrd(REG_RX_P1_SYS_STATUS) & B_P1_PWR5V_DET;
		if((sys_state_P1 & B_P1_PWR5V_DET))
		{
			return TRUE;
		}
		else
		{
			return FALSE;
		}

	}
}

// ---------------------------------------------------------------------------
static unsigned char IsHDMIMode(void)
{

	unsigned char sys_state_P0;
	unsigned char sys_state_P1;
	unsigned char ucPortSel;

	sys_state_P0=hdmirxrd(REG_RX_P0_SYS_STATUS) & B_P0_HDMI_MODE;
	sys_state_P1=hdmirxrd(REG_RX_P1_SYS_STATUS) & B_P1_HDMI_MODE;
	ucPortSel = hdmirxrd(REG_RX_051) & B_PORT_SEL;

	if(((sys_state_P0 & B_P0_HDMI_MODE)&& (ucPortSel == F_PORT_SEL_0 ))||
	((sys_state_P1 & B_P1_HDMI_MODE)&& (ucPortSel == F_PORT_SEL_1 )))
	{
		return TRUE;
	}
	else
	{
		return FALSE;
	}

}

// ---------------------------------------------------------------------------
static void SetVideoInputFormatWithInfoFrame(struct it6802_dev_data *it6802)
{
	unsigned char i;
	unsigned char bAVIColorModeIndicated=FALSE;
//	unsigned char bOldInputVideoMode=it6802->m_bInputVideoMode;

	chgbank(2);
	i=hdmirxrd(REG_RX_215);	//REG_RX_AVI_DB1
	chgbank(0);
	it6802->m_bInputVideoMode &=~F_MODE_CLRMOD_MASK;


	switch((i>>O_AVI_COLOR_MODE)&M_AVI_COLOR_MASK)
	{
		case B_AVI_COLOR_YUV444:
			HDMIRX_VIDEO_PRINTF(printf("input YUV444 mode "));
			it6802->m_bInputVideoMode |=F_MODE_YUV444;
			break;
		case B_AVI_COLOR_YUV422:
			HDMIRX_VIDEO_PRINTF(printf("input YUV422 mode "));
			it6802->m_bInputVideoMode |=F_MODE_YUV422;
			break;
		case B_AVI_COLOR_RGB24:
			HDMIRX_VIDEO_PRINTF(printf("input RGB24 mode "));
			it6802->m_bInputVideoMode |=F_MODE_RGB24;
			break;
		default:
			return;
	}


	HDMIRX_DEBUG_PRINTF(printf("SetVideoInputFormatWithInfoFrame - RegAE=%x it6802->m_bInputVideoMode=%x\r\n",i,it6802->m_bInputVideoMode));
	i=hdmirxrd(REG_RX_IN_CSC_CTRL);
	i &=~B_IN_FORCE_COLOR_MODE;
	mhlrxwr(REG_RX_IN_CSC_CTRL,i);
}

// ---------------------------------------------------------------------------
static void SetColorimetryByInfoFrame(struct it6802_dev_data *it6802)
{
    unsigned char i;


//    if(it6802->m_NewAVIInfoFrameF)
    {
	chgbank(2);
	i=hdmirxrd(REG_RX_216);	//REG_RX_AVI_DB2
	chgbank(0);
        i &=M_AVI_CLRMET_MASK<<O_AVI_CLRMET;

        if(i==(B_AVI_CLRMET_ITU601<<O_AVI_CLRMET))
        {
            it6802->m_bInputVideoMode &=~F_MODE_ITU709;
        }
        else if(i==(B_AVI_CLRMET_ITU709<<O_AVI_CLRMET))
        {
            it6802->m_bInputVideoMode |=F_MODE_ITU709;

        }
    }

}
// ---------------------------------------------------------------------------
static void SetCSCBYPASS(struct it6802_dev_data *it6802)
{

    it6802->m_bOutputVideoMode=it6802->m_bInputVideoMode;

    switch(it6802->m_bInputVideoMode&F_MODE_CLRMOD_MASK) {
    case F_MODE_RGB24 :
	hdmirxset(REG_RX_OUT_CSC_CTRL,(M_OUTPUT_COLOR_MASK),B_OUTPUT_RGB24);
	break;
    case F_MODE_YUV422 :
	hdmirxset(REG_RX_OUT_CSC_CTRL,(M_OUTPUT_COLOR_MASK),B_OUTPUT_YUV422);
	break;
    case F_MODE_YUV444 :
	hdmirxset(REG_RX_OUT_CSC_CTRL,(M_OUTPUT_COLOR_MASK),B_OUTPUT_YUV444);
	break;
    }

}
// ---------------------------------------------------------------------------
static void SetColorSpaceConvert(struct it6802_dev_data *it6802)
{
	unsigned char csc ;
	//    unsigned char uc ;
	unsigned char filter = 0 ; // filter is for Video CTRL DN_FREE_GO, EN_DITHER, and ENUDFILT

#ifdef DISABLE_HDMI_CSC
	HDMIRX_VIDEO_PRINTF(printf("IT680x - HDMI Color Space Convert is disabled \r\n"));

	csc = B_CSC_BYPASS ;
	it6802->m_bOutputVideoMode = it6802->m_bInputVideoMode;

#else
	HDMIRX_VIDEO_PRINTF(printf("\r\n!!! SetColorSpaceConvert( ) !!!\r\n"));

    //HDMIRX_VIDEO_PRINTF(printf("Input mode is YUV444 "));
    switch(it6802->m_bOutputVideoMode&F_MODE_CLRMOD_MASK)
    {
    #if defined(SUPPORT_OUTPUTYUV444)
    case F_MODE_YUV444:
         HDMIRX_VIDEO_PRINTF(printf("Output mode is YUV444\r\n"));
	    switch(it6802->m_bInputVideoMode&F_MODE_CLRMOD_MASK)
	    {
	    case F_MODE_YUV444:
             HDMIRX_VIDEO_PRINTF(printf("Input mode is YUV444\r\n"));
	        csc = B_CSC_BYPASS ;
	        break ;
	    case F_MODE_YUV422:
             HDMIRX_VIDEO_PRINTF(printf("Input mode is YUV422\r\n"));
            csc = B_CSC_BYPASS ;
            if(it6802->m_bOutputVideoMode & F_MODE_EN_UDFILT)// RGB24 to YUV422 need up/dn filter.
            {
                filter |= B_RX_EN_UDFILTER ;
            }

            if(it6802->m_bOutputVideoMode & F_MODE_EN_DITHER)// RGB24 to YUV422 need up/dn filter.
            {
                filter |= B_RX_EN_UDFILTER | B_RX_DNFREE_GO ;
            }

            break ;
	    case F_MODE_RGB24:
             HDMIRX_VIDEO_PRINTF(printf("Input mode is RGB444\r\n"));
            csc = B_CSC_RGB2YUV ;
            break ;
	    }
        break ;
    #endif

    #if defined(SUPPORT_OUTPUTYUV422)

    case F_MODE_YUV422:
	    switch(it6802->m_bInputVideoMode&F_MODE_CLRMOD_MASK)
	    {
	    case F_MODE_YUV444:
             HDMIRX_VIDEO_PRINTF(printf("Input mode is YUV444\r\n"));
	        if(it6802->m_bOutputVideoMode & F_MODE_EN_UDFILT)
	        {
	            filter |= B_RX_EN_UDFILTER ;
	        }
	        csc = B_CSC_BYPASS ;
	        break ;
	    case F_MODE_YUV422:
             HDMIRX_VIDEO_PRINTF(printf("Input mode is YUV422\r\n"));
            csc = B_CSC_BYPASS ;

            // if output is YUV422 and 16 bit or 565, then the dither is possible when
            // the input is YUV422 with 24bit input, however, the dither should be selected
            // by customer, thus the requirement should set in ROM, no need to check
            // the register value .
            if(it6802->m_bOutputVideoMode & F_MODE_EN_DITHER)// RGB24 to YUV422 need up/dn filter.
            {
                filter |= B_RX_EN_UDFILTER | B_RX_DNFREE_GO ;
            }
	    	break ;
	    case F_MODE_RGB24:
             HDMIRX_VIDEO_PRINTF(printf("Input mode is RGB444\r\n"));
            if(it6802->m_bOutputVideoMode & F_MODE_EN_UDFILT)// RGB24 to YUV422 need up/dn filter.
            {
                filter |= B_RX_EN_UDFILTER ;
            }
            csc = B_CSC_RGB2YUV ;
	    	break ;
	    }
	    break ;
    #endif

    #if defined(SUPPORT_OUTPUTRGB)
    case F_MODE_RGB24:
         HDMIRX_VIDEO_PRINTF(printf("Output mode is RGB24\r\n"));
	    switch(it6802->m_bInputVideoMode&F_MODE_CLRMOD_MASK)
	    {
	    case F_MODE_YUV444:
             HDMIRX_VIDEO_PRINTF(printf("Input mode is YUV444\r\n"));
	        csc = B_CSC_YUV2RGB ;
	        break ;
	    case F_MODE_YUV422:
             HDMIRX_VIDEO_PRINTF(printf("Input mode is YUV422\r\n"));
            csc = B_CSC_YUV2RGB ;
            if(it6802->m_bOutputVideoMode & F_MODE_EN_UDFILT)// RGB24 to YUV422 need up/dn filter.
            {
                filter |= B_RX_EN_UDFILTER ;
            }
            if(it6802->m_bOutputVideoMode & F_MODE_EN_DITHER)// RGB24 to YUV422 need up/dn filter.
            {
                filter |= B_RX_EN_UDFILTER | B_RX_DNFREE_GO ;
            }
	    	break ;
	    case F_MODE_RGB24:
             HDMIRX_VIDEO_PRINTF(printf("Input mode is RGB444\r\n"));
            csc = B_CSC_BYPASS ;
	    	break ;
	    }
	    break ;
    #endif
    }


    #if defined(SUPPORT_OUTPUTYUV)
    // set the CSC associated registers
    if(csc == B_CSC_RGB2YUV)
    {
        // HDMIRX_VIDEO_PRINTF(printf("CSC = RGB2YUV "));
        if(it6802->m_bInputVideoMode & F_MODE_ITU709)
        {
            HDMIRX_VIDEO_PRINTF(printf("ITU709 "));

            if(it6802->m_bInputVideoMode & F_MODE_16_235)
            {
                HDMIRX_VIDEO_PRINTF(printf(" 16-235\r\n"));
		chgbank(1);	//for CSC setting Reg170 ~ Reg184 !!!!
                hdmirxbwr(REG_RX_170,sizeof(bCSCMtx_RGB2YUV_ITU709_16_235),bCSCMtx_RGB2YUV_ITU709_16_235);
            }
            else
            {
                HDMIRX_VIDEO_PRINTF(printf(" 0-255\r\n"));
		chgbank(1);	//for CSC setting Reg170 ~ Reg184 !!!!
                hdmirxbwr(REG_RX_170,sizeof(bCSCMtx_RGB2YUV_ITU709_0_255),bCSCMtx_RGB2YUV_ITU709_0_255);
            }
        }
        else
        {
            HDMIRX_VIDEO_PRINTF(printf("ITU601 "));
            if(it6802->m_bInputVideoMode & F_MODE_16_235)
            {
		chgbank(1);	//for CSC setting Reg170 ~ Reg184 !!!!
                hdmirxbwr(REG_RX_170,sizeof(bCSCMtx_RGB2YUV_ITU601_16_235),bCSCMtx_RGB2YUV_ITU601_16_235);
                HDMIRX_VIDEO_PRINTF(printf(" 16-235\r\n"));
            }
            else
            {
		chgbank(1);	//for CSC setting Reg170 ~ Reg184 !!!!
                hdmirxbwr(REG_RX_170,sizeof(bCSCMtx_RGB2YUV_ITU601_0_255),bCSCMtx_RGB2YUV_ITU601_0_255);
                HDMIRX_VIDEO_PRINTF(printf(" 0-255\r\n"));
            }
        }
    }
    #endif
    #if defined(SUPPORT_OUTPUTRGB)
	if(csc == B_CSC_YUV2RGB)
    {
        HDMIRX_VIDEO_PRINTF(printf("CSC = YUV2RGB "));
        if(it6802->m_bInputVideoMode & F_MODE_ITU709)
        {
            HDMIRX_VIDEO_PRINTF(printf("ITU709 "));
            if(it6802->m_bOutputVideoMode & F_MODE_16_235)
            {
                HDMIRX_VIDEO_PRINTF(printf("16-235\r\n"));
		chgbank(1);	//for CSC setting Reg170 ~ Reg184 !!!!
                hdmirxbwr(REG_RX_170,sizeof(bCSCMtx_YUV2RGB_ITU709_16_235),bCSCMtx_YUV2RGB_ITU709_16_235);
            }
            else
            {
                HDMIRX_VIDEO_PRINTF(printf("0-255\r\n"));
		chgbank(1);	//for CSC setting Reg170 ~ Reg184 !!!!
                hdmirxbwr(REG_RX_170,sizeof(bCSCMtx_YUV2RGB_ITU709_0_255),bCSCMtx_YUV2RGB_ITU709_0_255);
            }
        }
        else
        {
            HDMIRX_VIDEO_PRINTF(printf("ITU601 "));
            if(it6802->m_bOutputVideoMode & F_MODE_16_235)
            {
                HDMIRX_VIDEO_PRINTF(printf("16-235\r\n"));
		chgbank(1);	//for CSC setting Reg170 ~ Reg184 !!!!
                hdmirxbwr(REG_RX_170,sizeof(bCSCMtx_YUV2RGB_ITU601_16_235),bCSCMtx_YUV2RGB_ITU601_16_235);
            }
            else
            {
                HDMIRX_VIDEO_PRINTF(printf("0-255\r\n"));
		chgbank(1);	//for CSC setting Reg170 ~ Reg184 !!!!
                hdmirxbwr(REG_RX_170,sizeof(bCSCMtx_YUV2RGB_ITU601_0_255),bCSCMtx_YUV2RGB_ITU601_0_255);

            }
        }

    }
	#endif // SUPPORT_OUTPUTRGB

#endif	//end of DISABLE_HDMI_CSC

	chgbank(0);
    	hdmirxset(REG_RX_OUT_CSC_CTRL,(M_CSC_SEL_MASK),csc);

    // set output Up/Down Filter, Dither control
	hdmirxset(REG_RX_VIDEO_CTRL1,(B_RX_DNFREE_GO|B_RX_EN_DITHER|B_RX_EN_UDFILTER),filter);

}

// ---------------------------------------------------------------------------
static void SetNewInfoVideoOutput(struct it6802_dev_data *it6802)
{

	MHLRX_DEBUG_PRINTF(printf("SetNewInfoVideoOutput() \r\n"));

	SetVideoInputFormatWithInfoFrame(it6802);
	SetColorimetryByInfoFrame(it6802);
	SetColorSpaceConvert(it6802);

	SetVideoOutputColorFormat(it6802);	//2013-0502
}

// ---------------------------------------------------------------------------
static void SetVideoInputFormatWithoutInfoFrame(struct it6802_dev_data *it6802,unsigned char bInMode)
{
    unsigned char i;

    i=hdmirxrd(REG_RX_IN_CSC_CTRL);
    i |=B_IN_FORCE_COLOR_MODE;

    i &=(~M_INPUT_COLOR_MASK);
    it6802->m_bInputVideoMode &=~F_MODE_CLRMOD_MASK;

    switch(bInMode)
    {
    case F_MODE_YUV444:
	i |=B_INPUT_YUV444;
	it6802->m_bInputVideoMode |=F_MODE_YUV444;
	break;
    case F_MODE_YUV422:
	i |=B_INPUT_YUV422;
        it6802->m_bInputVideoMode |=F_MODE_YUV422;
        break;
    case F_MODE_RGB24:
	i |=B_INPUT_RGB24;
        it6802->m_bInputVideoMode |=F_MODE_RGB24;
        break;
    default:
        return;
    }
    mhlrxwr(REG_RX_IN_CSC_CTRL,i);

}
// ---------------------------------------------------------------------------
static void SetColorimetryByMode(struct it6802_dev_data *it6802)
{
    unsigned char  RxClkXCNT;
    RxClkXCNT=hdmirxrd(REG_RX_PIXCLK_SPEED);

   MHLRX_DEBUG_PRINTF(printf(" SetColorimetryByMode() REG_RX_PIXCLK_SPEED=%x \r\n", RxClkXCNT));

    it6802->m_bInputVideoMode &=~F_MODE_ITU709;

     if(RxClkXCNT <0x34)
    {

        it6802->m_bInputVideoMode |=F_MODE_ITU709;
    }
    else
    {

        it6802->m_bInputVideoMode &=~F_MODE_ITU709;
    }

}
// ---------------------------------------------------------------------------
static void SetDVIVideoOutput(struct it6802_dev_data *it6802)
{
	MHLRX_DEBUG_PRINTF(printf("SetDVIVideoOutput() \r\n"));

	SetVideoInputFormatWithoutInfoFrame(it6802,F_MODE_RGB24);
	SetColorimetryByMode(it6802);
	SetColorSpaceConvert(it6802);

	SetVideoOutputColorFormat(it6802);	//2013-0502
}




static void IT6802VideoOutputConfigure(struct it6802_dev_data *it6802)
{
	unsigned char  RxClkXCNT;
	// Configure Output color space convert
#ifndef DISABLE_HDMI_CSC
	it6802->m_bOutputVideoMode = HDMIRX_OUTPUT_VID_MODE ;
#endif
	it6802->m_bUpHDMIMode =IsHDMIMode();
	if(it6802->m_bUpHDMIMode==FALSE)
	{
	SetDVIVideoOutput(it6802);
	}
	else
	{
	SetNewInfoVideoOutput(it6802);
	}
	it6802->m_NewAVIInfoFrameF=FALSE;

	// Configure Output Color Depth

	it6802->GCP_CD = ((hdmirxrd(0x99)&0xF0)>>4);
	switch( it6802->GCP_CD ) {
	case 5 :
	//printf( "\r\n Output ColorDepth = 30 bits per pixel\r\n");
	hdmirxset(0x65, 0x0C, 0x04);
	break;
	case 6 :
	//printf( "\r\n Output ColorDepth = 36 bits per pixel\r\n");
	hdmirxset(0x65, 0x0C, 0x08);
	break;
	default :
	//printf( "\r\n Output ColorDepth = 24 bits per pixel\r\n");
	hdmirxset(0x65, 0x0C, 0x00);
	break;
	}


	// Configure Output TTL Pixel mode

	RxClkXCNT=hdmirxrd(REG_RX_PIXCLK_SPEED);
	if(RxClkXCNT <0x12)	// 1600x1200@60Hz 165MHz = 0x13 ~ 0x14
	{
	#ifdef EN_DUAL_PIXEL_MODE
	it6802->pixelMode = DUAL_PIXEL;
	#else
	it6802->pixelMode = SINGLE_PIXEL;
	#endif
	}
	else
	{
	it6802->pixelMode = SINGLE_PIXEL;
	}

	if(it6802->pixelMode == DUAL_PIXEL)
	{
	hdmirxset(REG_RX_051,(B_HALF_CLK|B_OUT_DDR),(B_HALF_CLK|B_OUT_DDR));		// for output Dual Pixel mode
	//printf( "\r\n Output Dual Pixel Mode \r\n");
	}
	else
	{
	hdmirxset(REG_RX_051,(B_HALF_CLK|B_OUT_DDR),0x00);	// for output  single Pixel mode
	//printf( "\r\n Output Single Pixel Mode \r\n");
	}

}

// ---------------------------------------------------------------------------
static void SetVideoOutputColorFormat(struct it6802_dev_data *it6802)
{
	switch(it6802->m_bOutputVideoMode&F_MODE_CLRMOD_MASK) {
		case F_MODE_RGB24 :
			hdmirxset(REG_RX_OUT_CSC_CTRL,(M_OUTPUT_COLOR_MASK),B_OUTPUT_RGB24);
			break;
		case F_MODE_YUV422 :
			hdmirxset(REG_RX_OUT_CSC_CTRL,(M_OUTPUT_COLOR_MASK),B_OUTPUT_YUV422);
			break;
		case F_MODE_YUV444 :
			hdmirxset(REG_RX_OUT_CSC_CTRL,(M_OUTPUT_COLOR_MASK),B_OUTPUT_YUV444);
			break;
    }
}

void it6802PortSelect(unsigned char ucPortSel)
{
	struct it6802_dev_data *it6802data = get_it6802_dev_data();

#ifdef _IT6802_
	if(ucPortSel == F_PORT_SEL_0 )
		hdmirxset(REG_RX_051, B_PORT_SEL, F_PORT_SEL_0); //select port 0
	else
		hdmirxset(REG_RX_051, B_PORT_SEL, F_PORT_SEL_1); //select port 1

	it6802data->m_ucCurrentHDMIPort = ucPortSel;
#else
	hdmirxset(REG_RX_051, B_PORT_SEL, F_PORT_SEL_0); //select port 0
	it6802data->m_ucCurrentHDMIPort = F_PORT_SEL_0;
#endif

	IT6802SwitchVideoState(it6802data,VSTATE_SyncWait);

}


#endif

#ifdef _IT680x_
// ***************************************************************************
// Audio function
// ***************************************************************************
static void aud_fiforst( void )
{
	hdmirxset(REG_RX_010, 0x02, 0x02);
	hdmirxset(REG_RX_010, 0x02, 0x00);
}

// ---------------------------------------------------------------------------
static void IT6802AudioOutputEnable(unsigned char bEnable)
{
	if(bEnable==TRUE)
	{
		hdmirxset(REG_RX_052,(B_TriI2SIO|B_TriSPDIF),0x00);
	}
	else
	{
		hdmirxset(REG_RX_052,(B_TriI2SIO|B_TriSPDIF),(B_TriI2SIO|B_TriSPDIF));
	}
}

// ---------------------------------------------------------------------------

static void hdmirx_ResetAudio(void)
{
	hdmirxset(REG_RX_RST_CTRL,B_AUDRST,B_AUDRST);
	hdmirxset(REG_RX_RST_CTRL,B_AUDRST,0x00);
}

// ---------------------------------------------------------------------------
static void hdmirx_SetHWMuteClrMode(void)
{
    hdmirxset(REG_RX_HWMuteCtrl,(B_HWAudMuteClrMode),(B_HWAudMuteClrMode));
}
// ---------------------------------------------------------------------------
static void hdmirx_SetHWMuteClr(void)
{
    hdmirxset(REG_RX_HWMuteCtrl,(B_HWMuteClr),(B_HWMuteClr));
}
// ---------------------------------------------------------------------------
static void hdmirx_ClearHWMuteClr(void)
{
    hdmirxset(REG_RX_HWMuteCtrl,(B_HWMuteClr),0);
}



// ---------------------------------------------------------------------------
static void getHDMIRXInputAudio(AUDIO_CAPS *pAudioCaps)
{

    unsigned char uc;

    uc = hdmirxrd(REG_RX_0AE);	// REG_RX_AUD_CHSTAT3
    pAudioCaps->SampleFreq = uc & M_FS;

    uc = hdmirxrd(REG_RX_0AA);	//REG_RX_AUDIO_CH_STAT
    pAudioCaps->AudioFlag = uc & 0xF0;
    pAudioCaps->AudSrcEnable=uc&M_AUDIO_CH;
    pAudioCaps->AudSrcEnable|=hdmirxrd(REG_RX_0AA)&M_AUDIO_CH;

    if( (uc & (B_HBRAUDIO|B_DSDAUDIO)) == 0)
    {
        uc = hdmirxrd(REG_RX_0AB);	//REG_RX_AUD_CHSTAT0

        if( (uc & B_NLPCM ) == 0 )
        {
            pAudioCaps->AudioFlag |= B_CAP_LPCM;
        }
    }

}


// ---------------------------------------------------------------------------

static void IT6802SwitchAudioState(struct it6802_dev_data *it6802,Audio_State_Type state)
{
//	unsigned char uc;

	if( it6802->m_AState == state )
	{
	    return ;
	}

	HDMIRX_AUDIO_PRINTF(printf(AStateStr[(unsigned char)state]));
	HDMIRX_AUDIO_PRINTF(printf("+++ \r\n"));

	it6802->m_AState=state;
	//AssignAudioVirtualTime();

	switch(it6802->m_AState)
	{
	case ASTATE_AudioOff:
		hdmirxset(REG_RX_RST_CTRL, B_AUDRST, B_AUDRST);
		IT6802AudioOutputEnable(OFF);

		break;
	case ASTATE_RequestAudio:
		IT6802AudioOutputEnable(OFF);

	    break;

	case ASTATE_WaitForReady:
		hdmirx_SetHWMuteClr();
		hdmirx_ClearHWMuteClr();
		it6802->m_AudioCountingTimer = AUDIO_READY_TIMEOUT;
	    break;

	case ASTATE_AudioOn:

		IT6802AudioOutputEnable(ON);

		HDMIRX_AUDIO_PRINTF(printf("Cat6023 Audio--> Audio flag=%02X,Ch No=%02X,Fs=%02X ... \r\n",
                        		(int)it6802->m_RxAudioCaps.AudioFlag,
                        		(int)it6802->m_RxAudioCaps.AudSrcEnable,
                        		(int)it6802->m_RxAudioCaps.SampleFreq));
    	break;
	}
}

static void IT6802AudioHandler(struct it6802_dev_data *it6802)
{
//    unsigned char uc;

   if(it6802->m_AudioCountingTimer > MS_LOOP)
   {
   it6802->m_AudioCountingTimer -= MS_LOOP;
   }
   else
   {
   it6802->m_AudioCountingTimer = 0;
   }


   if(it6802->m_RxHDCPState==RxHDCP_ModeCheck)
   	return;

    switch(it6802->m_AState)
    {
    case ASTATE_RequestAudio:

        getHDMIRXInputAudio(&(it6802->m_RxAudioCaps));

        if(it6802->m_RxAudioCaps.AudioFlag & B_CAP_AUDIO_ON)
        {

		hdmirxset(REG_RX_MCLK_CTRL,M_MCLKSel,B_256FS);

            if(it6802->m_RxAudioCaps.AudioFlag& B_CAP_HBR_AUDIO)
            {
		HDMIRX_AUDIO_PRINTF(printf("+++++++++++ B_CAP_HBR_AUDIO +++++++++++++++++\r\n"));

		hdmirxset(REG_RX_MCLK_CTRL,M_MCLKSel,B_128FS);	// MCLK = 128fs only for HBR audio

		hdmirx_SetHWMuteClrMode();
		hdmirx_ResetAudio();
            }
            else if(it6802->m_RxAudioCaps.AudioFlag& B_CAP_DSD_AUDIO )
            {

                hdmirx_SetHWMuteClrMode();
                hdmirx_ResetAudio();
            }
            else
            {

		hdmirxset(REG_RX_HWMuteCtrl,B_HWMuteClr,0x00);
		hdmirx_SetHWMuteClrMode();
		hdmirx_ResetAudio();

            }

            IT6802SwitchAudioState(it6802,ASTATE_WaitForReady);

        }
        break;

    case ASTATE_WaitForReady:

	//if(AudioTimeOutCheck(AUDIO_READY_TIMEOUT))
	if(it6802->m_AudioCountingTimer==0)
        {
            IT6802SwitchAudioState(it6802,ASTATE_AudioOn);
        }
        break;

    case ASTATE_AudioOn:
	//if(AudioTimeOutCheck(AUDIO_MONITOR_TIMEOUT)==TRUE)
	if(it6802->m_AudioCountingTimer==0)
	{
		AUDIO_CAPS CurAudioCaps;
		//it6802->m_AudioCountingTimer = GetCurrentVirtualTime();
		//AssignAudioTimerTimeout(AUDIO_MONITOR_TIMEOUT);
		it6802->m_AudioCountingTimer = AUDIO_MONITOR_TIMEOUT;

		getHDMIRXInputAudio(&CurAudioCaps);

	        if(it6802->m_RxAudioCaps.AudioFlag != CurAudioCaps.AudioFlag
	           || it6802->m_RxAudioCaps.AudSrcEnable != CurAudioCaps.AudSrcEnable
	           || it6802->m_RxAudioCaps.SampleFreq != CurAudioCaps.SampleFreq)
	        {
			//it6802->m_ucHDMIAudioErrorCount=0;
			IT6802SwitchAudioState(it6802,ASTATE_RequestAudio);
	        }
	}
        break;
    }
}

#endif

#ifdef _IT680x_
// ***************************************************************************
// Video function
// ***************************************************************************


static void IT6802_AFE_Rst( void )
{
	unsigned char Reg51h;

	chgbank(0);
	Reg51h = hdmirxrd(0x51);
	if( Reg51h&0x01 ) {
		hdmirxset(0x11, 0x0C, 0x0C);
		delay1ms(1);
		hdmirxset(0x11, 0x0C, 0x00);
	}
	else {
		hdmirxset(0x18, 0x0C, 0x0C);
		delay1ms(1);
		hdmirxset(0x18, 0x0C, 0x00);
	}
}

static void IT6802_SetVideoMute(struct it6802_dev_data *it6802,unsigned char bMute)
{

    if(bMute)
    {
	//******** AV Mute -> ON ********//
	hdmirxset(REG_RX_053,(B_VDGatting|B_VIOSel),(B_VDGatting|B_VIOSel));	//Reg53[7][5] = 11    // for enable B_VDIO_GATTING and VIO_SEL
	hdmirxset(REG_RX_052,(B_DisVAutoMute),(B_DisVAutoMute));				//Reg52[5] = 1 for disable Auto video MUTE
	hdmirxset(REG_RX_053,(B_TriVDIO),(0x00));								//Reg53[2:0] = 000;         // 0 for enable video io data output
    }
    else
    {
        if(it6802->m_VState == VSTATE_VideoOn)
        {
		//******** AV Mute -> OFF ********//
		hdmirxset(REG_RX_053,(B_TriSYNC),(0x00));								//Reg53[0] = 0;                 // for enable video sync
		hdmirxset(REG_RX_053,(B_TriVDIO),(0x00));								//Reg53[3:1] = 000;         // 0 for enable video io data output

            if(CheckAVMute()==TRUE)
            {
		hdmirxset(REG_RX_052,(B_DisVAutoMute),(B_DisVAutoMute));				//Reg52[5] = 1 for disable Auto video MUTE
            }
            else
            {

		hdmirxset(REG_RX_053,(B_TriVDIO),(B_TriVDIO));							//Reg53[2:0] = 111;         // 1 for enable tri-state of video io data
		hdmirxset(REG_RX_053,(B_TriVDIO),(0x00));								//Reg53[2:0] = 000;         // 0 for enable video io data output

		hdmirxset(REG_RX_053,(B_VDGatting|B_VIOSel),(B_VDGatting|B_VIOSel));	//Reg53[7][5] = 11    // for enable B_VDIO_GATTING and VIO_SEL
		hdmirxset(REG_RX_053,(B_VDGatting|B_VIOSel),(B_VIOSel));				//Reg53[7][5] = 01    // for disable B_VDIO_GATTING
            }

        }

    }

}




//static void IT6802VideoOutputCDSet(void)
//{
//
//	unsigned char GCP_CD;
//	GCP_CD = ((hdmirxrd(0x99)&0xF0)>>4);
//
//	switch( GCP_CD ) {
//	case 5 :
//	printf("\r\n Output ColorDepth = 30 bits per pixel\r\n");
//	hdmirxset(0x65, 0x0C, 0x04);
//	break;
//	case 6 :
//	printf( "\r\n Output ColorDepth = 36 bits per pixel\r\n");
//	hdmirxset(0x65, 0x0C, 0x08);
//	break;
//	default :
//	printf( "\r\n Output ColorDepth = 24 bits per pixel\r\n");
//	hdmirxset(0x65, 0x0C, 0x00);
//	break;
//	}
//}


static void IT6802VideoOutputEnable(unsigned char bEnableOutput)
{
	if(bEnableOutput)
	{
		// enable output
		hdmirxset(REG_RX_053,(B_TriSYNC|B_TriVDIO),(0x00));
//		IT6802VideoOutputCDSet();
	}
	else
	{
		// disable output
		hdmirxset(REG_RX_053,(B_TriSYNC|B_TriVDIO),(B_TriSYNC|B_TriVDIO));
	}
}



static void IT6802SwitchVideoState(struct it6802_dev_data *it6802,Video_State_Type  eNewVState)
{

	if(it6802->m_VState==eNewVState)
		return;

	HDMIRX_VIDEO_PRINTF(printf(VStateStr[(unsigned char)eNewVState]));
	HDMIRX_VIDEO_PRINTF(printf("+++ \r\n"));


	it6802->m_VState=eNewVState;
//	it6802->m_VideoCountingTimer = GetCurrentVirtualTime(); // get current time tick, and the next tick judge in the polling handler.

	switch(it6802->m_VState)
	{

		case VSTATE_SWReset: {
				IT6802_AFE_Rst();
			}
			break;

		case VSTATE_SyncWait: {
				// 1. SCDT off interrupt
				// 2. VideoMode_Chg interrupt
				IT6802VideoOutputEnable(FALSE);
				it6802->m_NewAVIInfoFrameF=FALSE;
				it6802->m_ucDeskew_P0=0;
				it6802->m_ucDeskew_P1=0;
				it6802->m_ucSCDTOffCount=0;

				#ifdef Enable_Vendor_Specific_packet
				it6802->f_de3dframe_hdmi = FALSE;
				hdmirxwr(REG_RX_06A, 0x82);
				#endif

			}
			break;

		case VSTATE_SyncChecking: {
				// 1. SCDT on interrupt
				//AssignVideoVirtualTime(VSATE_CONFIRM_SCDT_COUNT);
				//AssignVideoTimerTimeout(VSATE_CONFIRM_SCDT_COUNT);

				it6802->m_VideoCountingTimer = VSATE_CONFIRM_SCDT_COUNT;

				#ifdef Enable_Vendor_Specific_packet
				hdmirxwr(REG_RX_06A, 0x82);
				#endif

			}
			break;

		case VSTATE_VideoOn: {
				IT6802VideoOutputConfigure(it6802);
				IT6802VideoOutputEnable(TRUE);
				IT6802SwitchAudioState(it6802,ASTATE_RequestAudio);

				get_vid_info();
				show_vid_info();

				hdmirxwr(0x84, 0x8F);	//2011/06/17 xxxxx, for enable Rx Chip count

				#ifdef Enable_Vendor_Specific_packet
				hdmirxwr(REG_RX_06A, 0x81);
				#endif


			}
			break;
	}

}

// ---------------------------------------------------------------------------
static void IT6802VideoHandler(struct it6802_dev_data *it6802)
{
//	unsigned char uc;

	if(it6802->m_VideoCountingTimer > MS_LOOP)
	{
	it6802->m_VideoCountingTimer -= MS_LOOP;
	}
	else
	{
	it6802->m_VideoCountingTimer = 0;
	}



	switch(it6802->m_VState)
	{

		case VSTATE_SyncWait: {
				//Waiting for SCDT on interrupt !!!
				//if(VideoCountingTimer==0)

				WaitingForSCDT(it6802);

#if 0
				if(TimeOutCheck(eVideoCountingTimer)==TRUE) {
					MHLRX_DEBUG_PRINTF(printf("------------SyncWait time out -----------\r\n"));
					SWReset_HDMIRX();
					return;
				}
#endif
			}
			break;

		case VSTATE_SyncChecking:{
			        //if(VideoTimeOutCheck(VSATE_CONFIRM_SCDT_COUNT))
			        if(it6802->m_VideoCountingTimer == 0)
			        {
						IT6802SwitchVideoState(it6802,VSTATE_VideoOn);
			        }
			}
			break;

		case VSTATE_VideoOn: {
				if(it6802->m_NewAVIInfoFrameF==TRUE)
				{
					if(it6802->m_RxHDCPState != RxHDCP_ModeCheck)
					{
						IT6802VideoOutputConfigure(it6802);
						it6802->m_NewAVIInfoFrameF=FALSE;
					}

				}

				if(hdmirxrd(REG_RX_053)&B_VDGatting)
				{
			            if(CheckAVMute()==FALSE)
			            	{
						IT6802_SetVideoMute(it6802,OFF);
			            	}
				}

//				#ifdef Enable_Vendor_Specific_packet
//					if(it6802->f_de3dframe_hdmi == FALSE)
//					{
//					it6802->f_de3dframe_hdmi = IT6802_DE3DFrame(TRUE);
//					}
//				#endif

			}
			break;
	}
}

#endif

#ifdef _IT680x_
// ***************************************************************************
// Interrupt function
// ***************************************************************************

static void hdmirx_INT_5V_Pwr_Chg(struct it6802_dev_data *it6802,unsigned char ucport)
{

	unsigned char ucPortSel;
	ucPortSel = hdmirxrd(REG_RX_051)&B_PORT_SEL;

	if(ucPortSel == ucport)
	{
		if(CheckPlg5VPwr(ucport)){
			MHLRX_DEBUG_PRINTF(printf("#### Power 5V ON ####\r\n"));
			IT6802SwitchVideoState(it6802,VSTATE_SyncWait);
		}
		else {
			MHLRX_DEBUG_PRINTF(printf("#### Power 5V OFF ####\r\n"));
			IT6802SwitchVideoState(it6802,VSTATE_SWReset);
		}
	}

}

// ---------------------------------------------------------------------------
static void hdmirx_INT_P0_ECC(struct it6802_dev_data *it6802)
{
	if((it6802->m_ucEccCount_P0++) > ECC_TIMEOUT)
	{
		it6802->m_ucEccCount_P0=0;

		MHLRX_DEBUG_PRINTF(printf("CDR reset for Port0 ECC_TIMEOUT !!!\r\n"));

		hdmirxset(REG_RX_011,(B_P0_DCLKRST|B_P0_CDRRST),(B_P0_DCLKRST|B_P0_CDRRST));
		hdmirxset(REG_RX_011,(B_P0_DCLKRST|B_P0_CDRRST),0x00);

	}
}

// ---------------------------------------------------------------------------
static void hdmirx_INT_P1_ECC(struct it6802_dev_data *it6802)
{
	if((it6802->m_ucEccCount_P1++) > ECC_TIMEOUT)
	{
		it6802->m_ucEccCount_P1=0;

		MHLRX_DEBUG_PRINTF(printf("CDR reset for Port1 ECC_TIMEOUT !!!\r\n"));

		hdmirxset(REG_RX_018,(B_P1_DCLKRST|B_P1_CDRRST),(B_P1_DCLKRST|B_P1_CDRRST));
		hdmirxset(REG_RX_018,(B_P1_DCLKRST|B_P1_CDRRST),0x00);
	}
}

// ---------------------------------------------------------------------------
static void hdmirx_INT_P0_Deskew(struct it6802_dev_data *it6802)
{
	if((it6802->m_ucDeskew_P0++) > DESKEW_TIMEOUT)
	{
		it6802->m_ucDeskew_P0=0;

		MHLRX_DEBUG_PRINTF(printf("CDR reset for Port0 DESKEW_TIMEOUT !!!\r\n"));

		hdmirxset(REG_RX_011,(B_P0_DCLKRST|B_P0_CDRRST),(B_P0_DCLKRST|B_P0_CDRRST));
		hdmirxset(REG_RX_011,(B_P0_DCLKRST|B_P0_CDRRST),0x00);

	}
}

// ---------------------------------------------------------------------------
static void hdmirx_INT_P1_Deskew(struct it6802_dev_data *it6802)
{
	if((it6802->m_ucDeskew_P1++) > DESKEW_TIMEOUT)
	{
		it6802->m_ucDeskew_P1=0;

		MHLRX_DEBUG_PRINTF(printf("CDR reset for Port1 DESKEW_TIMEOUT !!!\r\n"));

		hdmirxset(REG_RX_018,(B_P1_DCLKRST|B_P1_CDRRST),(B_P1_DCLKRST|B_P1_CDRRST));
		hdmirxset(REG_RX_018,(B_P1_DCLKRST|B_P1_CDRRST),0x00);

	}
}


// ---------------------------------------------------------------------------
static void hdmirx_INT_HDMIMode_Chg(struct it6802_dev_data *it6802)
{
	if(IsHDMIMode()){
	    	if(it6802->m_VState==VSTATE_VideoOn)
	        {
			    IT6802SwitchAudioState(it6802,ASTATE_RequestAudio);
		}
		it6802->m_bUpHDMIMode = TRUE ;
		MHLRX_DEBUG_PRINTF(printf("#### HDMI/DVI Mode : HDMI ####\r\n"));
	}
	else
	{
		IT6802SwitchAudioState(it6802,ASTATE_AudioOff);
		it6802->m_NewAVIInfoFrameF=FALSE;
	    	if(it6802->m_VState==VSTATE_VideoOn)
	    	{
	    		SetDVIVideoOutput(it6802);
	    	}
		it6802->m_bUpHDMIMode = FALSE ;
		MHLRX_DEBUG_PRINTF(printf("#### HDMI/DVI Mode : DVI ####\r\n"));
	}
}

// ---------------------------------------------------------------------------
static void hdmirx_INT_SCDT_Chg(struct it6802_dev_data *it6802)
{
	if(CheckSCDT(it6802) == TRUE){
		MHLRX_DEBUG_PRINTF(printf("#### SCDT ON ####\r\n"));
		IT6802SwitchVideoState(it6802,VSTATE_SyncChecking);
	}
	else{
		MHLRX_DEBUG_PRINTF(printf("#### SCDT OFF ####\r\n"));
		IT6802SwitchVideoState(it6802,VSTATE_SyncWait);
		IT6802SwitchAudioState(it6802,ASTATE_AudioOff);
	}
}
#endif


#ifdef _IT680x_
/*****************************************************************************/
/* HDCP functions    *********************************************************/
/*****************************************************************************/

static void hdcpsts( void )
{
	int AKSV1, AKSV2, AKSV3, AKSV4, AKSV5;
	int BKSV1, BKSV2, BKSV3, BKSV4, BKSV5;
	int BMi1,BMi2, BMi3, BMi4, BMi5, BMi6, BMi7, BMi8;
	int Mi1, Mi2, Mi3, Mi4, Mi5, Mi6, Mi7, Mi8;

    chgbank(2);

	BKSV1 = hdmirxrd(0x9F);
	BKSV2 = hdmirxrd(0xA0);
	BKSV3 = hdmirxrd(0xA1);
	BKSV4 = hdmirxrd(0xA2);
	BKSV5 = hdmirxrd(0xA3);

	AKSV1 = hdmirxrd(0x9A);
	AKSV2 = hdmirxrd(0x9B);
	AKSV3 = hdmirxrd(0x9C);
	AKSV4 = hdmirxrd(0x9D);
	AKSV5 = hdmirxrd(0x9E);

	BMi1 = hdmirxrd(0xA4);
	BMi2 = hdmirxrd(0xA5);
	BMi3 = hdmirxrd(0xA6);
	BMi4 = hdmirxrd(0xA7);
	BMi5 = hdmirxrd(0xA8);
	BMi6 = hdmirxrd(0xA9);
	BMi7 = hdmirxrd(0xAA);
	BMi8 = hdmirxrd(0xAB);

	Mi1 = (~BMi1)&0xFF;
	Mi2 = (~BMi2)&0xFF;
	Mi3 = (~BMi3)&0xFF;
	Mi4 = (~BMi4)&0xFF;
	Mi5 = (~BMi5)&0xFF;
	Mi6 = (~BMi6)&0xFF;
	Mi7 = (~BMi7)&0xFF;
	Mi8 = (~BMi8)&0xFF;

	MHLRX_DEBUG_PRINTF(printf("AKSV = 0x%X%X%X%X%X%X%X%X%X%X \r\n", AKSV5>>4, AKSV5&0x0F,
		                                       AKSV4>>4, AKSV4&0x0F,
											   AKSV3>>4, AKSV3&0x0F,
											   AKSV2>>4, AKSV2&0x0F,
											   AKSV1>>4, AKSV1&0x0F));

	MHLRX_DEBUG_PRINTF(printf("BKSV = 0x%X%X%X%X%X%X%X%X%X%X \r\n", BKSV5>>4, BKSV5&0x0F,
		                                       BKSV4>>4, BKSV4&0x0F,
											   BKSV3>>4, BKSV3&0x0F,
											   BKSV2>>4, BKSV2&0x0F,
											   BKSV1>>4, BKSV1&0x0F));

	MHLRX_DEBUG_PRINTF(printf("M0   = 0x%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X%X \r\n", Mi8>>4, Mi8&0x0F,
		                                                   Mi7>>4, Mi7&0x0F,
														   Mi6>>4, Mi6&0x0F,
														   Mi5>>4, Mi5&0x0F,
														   Mi4>>4, Mi4&0x0F,
														   Mi3>>4, Mi3&0x0F,
														   Mi2>>4, Mi2&0x0F,
														   Mi1>>4, Mi1&0x0F));
	chgbank(0);
}
#endif


#ifdef _IT680x_
/*****************************************************************************/
/* MHLRX functions    *********************************************************/
/*****************************************************************************/
#ifdef _SUPPORT_RCP_
////////////////////////////////////////////////////////////////////
//void parse_rcpkey( unsigned char rcpkey )
//
//
//
////////////////////////////////////////////////////////////////////
static void parse_rcpkey( unsigned char rcpkey )
{
     unsigned char suppkey;

     suppkey = TRUE;

     MHLRX_DEBUG_PRINTF(printf("KeyCode=%x ==>", rcpkey&0x7F));

     switch( rcpkey&0x7F ) {
     case 0x00: MHLRX_DEBUG_PRINTF(printf("Select")); break;
     case 0x01: MHLRX_DEBUG_PRINTF(printf("Up")); break;
     case 0x02: MHLRX_DEBUG_PRINTF(printf("Down")); break;
     case 0x03: MHLRX_DEBUG_PRINTF(printf("Left")); break;
     case 0x04: MHLRX_DEBUG_PRINTF(printf("Right")); break;
     case 0x05: MHLRX_DEBUG_PRINTF(printf("Right-Up")); break;
     case 0x06: MHLRX_DEBUG_PRINTF(printf("Right-Down")); break;
     case 0x07: MHLRX_DEBUG_PRINTF(printf("Left-Up")); break;
     case 0x08: MHLRX_DEBUG_PRINTF(printf("Left-Down")); break;
     case 0x09: MHLRX_DEBUG_PRINTF(printf("Root Menu")); break;
     case 0x0A: MHLRX_DEBUG_PRINTF(printf("Setup Menu")); break;
     case 0x0B: MHLRX_DEBUG_PRINTF(printf("Contents Menu")); break;
     case 0x0C: MHLRX_DEBUG_PRINTF(printf("Favorite Menu")); break;
     case 0x0D: MHLRX_DEBUG_PRINTF(printf("Exit")); break;

     case 0x20: MHLRX_DEBUG_PRINTF(printf("Numeric 0")); break;
     case 0x21: MHLRX_DEBUG_PRINTF(printf("Numeric 1")); break;
     case 0x22: MHLRX_DEBUG_PRINTF(printf("Numeric 2")); break;
     case 0x23: MHLRX_DEBUG_PRINTF(printf("Numeric 3")); break;
     case 0x24: MHLRX_DEBUG_PRINTF(printf("Numeric 4")); break;
     case 0x25: MHLRX_DEBUG_PRINTF(printf("Numeric 5")); break;
     case 0x26: MHLRX_DEBUG_PRINTF(printf("Numeric 6")); break;
     case 0x27: MHLRX_DEBUG_PRINTF(printf("Numeric 7")); break;
     case 0x28: MHLRX_DEBUG_PRINTF(printf("Numeric 8")); break;
     case 0x29: MHLRX_DEBUG_PRINTF(printf("Numeric 9")); break;
     case 0x2A: MHLRX_DEBUG_PRINTF(printf("Dot")); break;
     case 0x2B: MHLRX_DEBUG_PRINTF(printf("Enter")); break;
     case 0x2C: MHLRX_DEBUG_PRINTF(printf("Clear")); break;

     case 0x30: MHLRX_DEBUG_PRINTF(printf("Channel Up")); break;
     case 0x31: MHLRX_DEBUG_PRINTF(printf("Channel Down")); break;
     case 0x32: MHLRX_DEBUG_PRINTF(printf("Previous Channel")); break;
     case 0x33: MHLRX_DEBUG_PRINTF(printf("Sound Select")); break;
     case 0x34: MHLRX_DEBUG_PRINTF(printf("Input Select")); break;
     case 0x35: MHLRX_DEBUG_PRINTF(printf("Show Information")); break;
     case 0x36: MHLRX_DEBUG_PRINTF(printf("Help")); break;
     case 0x37: MHLRX_DEBUG_PRINTF(printf("Page Up")); break;
     case 0x38: MHLRX_DEBUG_PRINTF(printf("Page Down")); break;

     case 0x41: MHLRX_DEBUG_PRINTF(printf("Volume Up")); break;
     case 0x42: MHLRX_DEBUG_PRINTF(printf("Volume Down")); break;
     case 0x43: MHLRX_DEBUG_PRINTF(printf("Mute")); break;
     case 0x44: MHLRX_DEBUG_PRINTF(printf("Play")); break;
     case 0x45: MHLRX_DEBUG_PRINTF(printf("Stop")); break;
     case 0x46: MHLRX_DEBUG_PRINTF(printf("Pause")); break;
     case 0x47: MHLRX_DEBUG_PRINTF(printf("Record")); break;
     case 0x48: MHLRX_DEBUG_PRINTF(printf("Rewind")); break;
     case 0x49: MHLRX_DEBUG_PRINTF(printf("Fast Forward")); break;
     case 0x4A: MHLRX_DEBUG_PRINTF(printf("Eject")); break;
     case 0x4B: MHLRX_DEBUG_PRINTF(printf("Forward")); break;
     case 0x4C: MHLRX_DEBUG_PRINTF(printf("Backward")); break;

     case 0x50: MHLRX_DEBUG_PRINTF(printf("Angle")); break;
     case 0x51: MHLRX_DEBUG_PRINTF(printf("Subpicture")); break;

     case 0x60: MHLRX_DEBUG_PRINTF(printf("Play_Function")); break;
     case 0x61: MHLRX_DEBUG_PRINTF(printf("Pause_Play_Function")); break;
     case 0x62: MHLRX_DEBUG_PRINTF(printf("Record_Function")); break;
     case 0x63: MHLRX_DEBUG_PRINTF(printf("Pause_Record_Function")); break;
     case 0x64: MHLRX_DEBUG_PRINTF(printf("Stop")); break;
     case 0x65: MHLRX_DEBUG_PRINTF(printf("Mute")); break;
     case 0x66: MHLRX_DEBUG_PRINTF(printf("Restore_Volume_Function")); break;
     case 0x67: MHLRX_DEBUG_PRINTF(printf("Tune_Function")); break;
     case 0x68: MHLRX_DEBUG_PRINTF(printf("Select_Media_Function")); break;

     case 0x71: MHLRX_DEBUG_PRINTF(printf("F1 (Blue)")); break;
     case 0x72: MHLRX_DEBUG_PRINTF(printf("F2 (Red)")); break;
     case 0x73: MHLRX_DEBUG_PRINTF(printf("F3 (Green)")); break;
     case 0x74: MHLRX_DEBUG_PRINTF(printf("F4 (Yellow)")); break;
     case 0x75: MHLRX_DEBUG_PRINTF(printf("F5")); break;
     case 0x7E: MHLRX_DEBUG_PRINTF(printf("Vendor_Specific")); break;

     default  : MHLRX_DEBUG_PRINTF(printf("ERROR: Reserved RCP sub-command code !!!\r\n")); suppkey = FALSE;
     }

     if( suppkey ) {
         if( rcpkey&0x80 )
             MHLRX_DEBUG_PRINTF(printf(" Key Release\r\n"));
         else
             MHLRX_DEBUG_PRINTF(printf(" Key Press\r\n"));
     }
}

////////////////////////////////////////////////////////////////////
//static void mhl_parse_RCPkey(struct it6802_dev_data *it6802)
//
//
//
////////////////////////////////////////////////////////////////////
static void mhl_parse_RCPkey(struct it6802_dev_data *it6802)
{
	parse_rcpkey( it6802->rxmsgdata[1]);

	if( SuppRCPCode[it6802->rxmsgdata[1]] ){

		it6802->txmsgdata[0] = MSG_RCPK;
		it6802->txmsgdata[1] = it6802->rxmsgdata[1];
		MHL_MSC_DEBUG_PRINTF(printf("Send a RCPK with action code = 0x%02X\r\n", it6802->txmsgdata[1]));

		//not yet !!!rcp_report_event(it6802->rxmsgdata[1]);

	}
	else {
		it6802->txmsgdata[0] = MSG_RCPE;
		it6802->txmsgdata[1] = 0x01;

		MHL_MSC_DEBUG_PRINTF(printf("Send a RCPE with status code = 0x%02X\r\n", it6802->txmsgdata[1]));
	}

	cbus_send_mscmsg(it6802);
	SwitchRCPResult(it6802,RCP_Result_Finish);

}
#endif


#ifdef _SUPPORT_RAP_
static void mhl_parse_RAPkey(struct it6802_dev_data *it6802)
{
	//parse_rapkey( it6802->rxmsgdata[1]);

	it6802->txmsgdata[0] = MSG_RAPK;

	if( SuppRAPCode[it6802->rxmsgdata[1]]) {
		it6802->txmsgdata[1] = 0x00;
	}
	else{
		it6802->txmsgdata[1] = 0x02;
	}

	switch( it6802->rxmsgdata[1] ) {
		case 0x00:
			MHL_MSC_DEBUG_PRINTF(printf("Poll\r\n"));
			break;
		case 0x10:
			MHL_MSC_DEBUG_PRINTF(printf("Change to CONTENT_ON state\r\n"));
			hdmirxset(0x61, 0x10, 0x00);
			break;
		case 0x11:
			MHL_MSC_DEBUG_PRINTF(printf("Change to CONTENT_OFF state\r\n"));
			hdmirxset(0x61, 0x10, 0x10);
			break;
		default  :

		it6802->txmsgdata[1] = 0x01;
		MHL_MSC_DEBUG_PRINTF(printf("ERROR: Unknown RAP action code 0x%02X !!!\r\n", it6802->rxmsgdata[1]));
		MHL_MSC_DEBUG_PRINTF(printf("Send a RAPK with status code = 0x%02X\r\n", it6802->txmsgdata[1]));
	 }

	cbus_send_mscmsg(it6802);
}

#endif

#if(_SUPPORT_UCP_)
static void ucp_report_event( unsigned char key)
{
    struct it6802_dev_data *it6802data = get_it6802_dev_data();

	MHL_MSC_DEBUG_PRINTF(printf("ucp_report_event key: %d\r\n", key));
	//input_report_key(it6802data->ucp_input, (unsigned int)key+1, 1);
	//input_report_key(it6802data->ucp_input, (unsigned int)key+1, 0);
	//input_sync(it6802data->ucp_input);

}
static void mhl_parse_UCPkey(struct it6802_dev_data *it6802)
{

	//parse_ucpkey( it6802->rxmsgdata[1] );

	if( (it6802->rxmsgdata[1]&0x80)==0x00 ) {
		it6802->txmsgdata[0] = MSG_UCPK;
		it6802->txmsgdata[1] = it6802->rxmsgdata[1];
		ucp_report_event(it6802->rxmsgdata[1]);
	}
	else {
		it6802->txmsgdata[0] = MSG_UCPE;
		it6802->txmsgdata[1] = 0x01;
	}

	cbus_send_mscmsg(it6802);
}
#endif


////////////////////////////////////////////////////////////////////
//static void mhl_read_mscmsg( struct it6802_dev_data *it6802 )
//
//
//
////////////////////////////////////////////////////////////////////
static void mhl_read_mscmsg( struct it6802_dev_data *it6802 )
{


    //mhltxbrd(0x60, 2, &it6802->rxmsgdata[0]);
	it6802->rxmsgdata[0] = mhlrxrd(0x60);
	it6802->rxmsgdata[1] = mhlrxrd(0x61);

    switch( it6802->rxmsgdata[0] ) {
		case MSG_MSGE :
			MHL_MSC_DEBUG_PRINTF(printf("RX MSGE => "));
			switch( it6802->rxmsgdata[1] ) {
				case 0x00:
					MHL_MSC_DEBUG_PRINTF(printf("No Error\r\n"));
					break;
				case 0x01:
					MHL_MSC_DEBUG_PRINTF(printf("ERROR: Invalid sub-command code !!!\r\n"));
					break;
				default  :
					MHL_MSC_DEBUG_PRINTF(printf("ERROR: Unknown MSC_MSG status code 0x%02X !!!\r\n", it6802->rxmsgdata[1]));
			}
			 break;
#ifdef _SUPPORT_RCP_
		case MSG_RCP  :
			mhl_parse_RCPkey(it6802);
			break;
		case MSG_RCPK :
			 MHL_MSC_DEBUG_PRINTF(printf("RX RCPK  => "));
			parse_rcpkey( it6802->rxmsgdata[1]);
			SwitchRCPResult(it6802,RCP_Result_Finish);
			 break;
		case MSG_RCPE :
			 switch( it6802->rxmsgdata[1] ){
				case 0x00: MHL_MSC_DEBUG_PRINTF(printf("No Error\r\n")); break;
				case 0x01: MHL_MSC_DEBUG_PRINTF(printf("ERROR: Ineffective RCP Key Code !!!\r\n")); break;
				case 0x02: MHL_MSC_DEBUG_PRINTF(printf("Responder Busy ...\r\n")); break;
				default  : MHL_MSC_DEBUG_PRINTF(printf("ERROR: Unknown RCP status code !!!\r\n"));
			 }
			SwitchRCPResult(it6802,RCP_Result_Finish);

			 break;
#endif
#ifdef _SUPPORT_RAP_
		case MSG_RAP  :
			mhl_parse_RAPkey(it6802);
			break;
		case MSG_RAPK :
			 MHL_MSC_DEBUG_PRINTF(printf("RX RAPK  => "));
			 switch( it6802->rxmsgdata[1] ) {
				case 0x00: MHL_MSC_DEBUG_PRINTF(printf("No Error\r\n")); break;
				case 0x01: MHL_MSC_DEBUG_PRINTF(printf("ERROR: Unrecognized Action Code !!!\r\n")); break;
				case 0x02: MHL_MSC_DEBUG_PRINTF(printf("ERROR: Unsupported Action Code !!!\r\n")); break;
				case 0x03: MHL_MSC_DEBUG_PRINTF(printf("Responder Busy ...\r\n")); break;
				default  : MHL_MSC_DEBUG_PRINTF(printf("ERROR: Unknown RAP status code 0x%02X !!!\r\n", it6802->rxmsgdata[1]));
			}
			break;
#endif
#if(_SUPPORT_UCP_)
		case MSG_UCP  :
			mhl_parse_UCPkey(it6802);
			break;
		case MSG_UCPK :
			 break;
		case MSG_UCPE :
			 switch( it6802->rxmsgdata[1] ){
				case 0x00: MHL_MSC_DEBUG_PRINTF(printf("No Error\r\n")); break;
				case 0x01: MHL_MSC_DEBUG_PRINTF(printf("ERROR: Ineffective UCP Key Code !!!\r\n")); break;
				default  : MHL_MSC_DEBUG_PRINTF(printf("ERROR: Unknown UCP status code !!!\r\n"));
			 }
			 break;
#endif
		default :
			MHL_MSC_DEBUG_PRINTF(printf("ERROR: Unknown MSC_MSG sub-command code 0x%02X !!!\r\n", it6802->rxmsgdata[0]));
			it6802->txmsgdata[0] = MSG_MSGE;
			it6802->txmsgdata[1] = 0x01;
			cbus_send_mscmsg(it6802);
			SwitchRCPResult(it6802,RCP_Result_Finish);
	}
}

////////////////////////////////////////////////////////////////////
//void mscwait( void )
//
//
//
////////////////////////////////////////////////////////////////////
static int mscwait( void )
{
    int cbuswaitcnt;
    unsigned char MHL05;

     cbuswaitcnt = 0;
     do {
         cbuswaitcnt++;
	delay1ms(CBUSWAITTIME);

     } while( (mhlrxrd(0x1C)&0x02)==0x02 && cbuswaitcnt<CBUSWAITNUM   );


     MHL05 = mhlrxrd(0x05);
     if( (cbuswaitcnt==CBUSWAITNUM) || MHL05&0x02 ) {
 	return FAIL;
     }
     else
         return SUCCESS;
}



////////////////////////////////////////////////////////////////////
//void mscfire( void )
//
//
//
////////////////////////////////////////////////////////////////////
static int mscfire( int offset, int wdata )
{
	int  fwmodeflag = FALSE;
	int  wrburstflag = FALSE;
	int mscreqsts;



	if( offset==0x51)
	{
		if(wdata==0x80 )
			fwmodeflag  = TRUE;
		if(wdata==0x01 )
			wrburstflag = TRUE;
	}


	mhlrxwr((unsigned char)offset, (unsigned char)wdata);

	mscreqsts = mscwait();
	IT6802_MHL_DEBUG_PRINTF(printf("IT6802-MSC FIRE() %ld  \r\n",(int) mscreqsts));

	return (mscreqsts==SUCCESS)?SUCCESS:FAIL;


}

static void cbus_send_mscmsg( struct it6802_dev_data *it6802 )
{
	mhlrxwr(0x54, it6802->txmsgdata[0]);
	mhlrxwr(0x55, it6802->txmsgdata[1]);
	mscfire(0x51, 0x02);
}

#if 1
//== MHL interrupt ===
//
//
//
//
static void parse_devcap(unsigned char *devcap )
{
    MHLRX_DEBUG_PRINTF(printf("\r\nParsing Device Capability Register ...\r\n"));
    MHLRX_DEBUG_PRINTF(printf("DEV_STATE=%02bX\r\n", devcap[0]));

    MHLRX_DEBUG_PRINTF(printf("MHL_VER_MAJOR/MINOR=%02bX\r\n", devcap[1]));

    MHLRX_DEBUG_PRINTF(printf("DEV_TYPE="));
    switch(devcap[2]&0x0F){
        case 0: MHLRX_DEBUG_PRINTF(printf("ERROR: DEV_TYPE at least one bit must be set !!!\r\n")); break;
        case 1: MHLRX_DEBUG_PRINTF(printf("DEV_TYPE = Sink, ")); break;
        case 2: MHLRX_DEBUG_PRINTF(printf("DEV_TYPE = Source, ")); break;
        case 3: MHLRX_DEBUG_PRINTF(printf("DEV_TYPE = Dongle, ")); break;
        default: MHLRX_DEBUG_PRINTF(printf("ERROR: Reserved for future use !!! ")); break;
    }
    MHLRX_DEBUG_PRINTF(printf("POW = %02bX\r\n", (devcap[2]&0x10)>>4));
    MHLRX_DEBUG_PRINTF(printf("PLIM = %02bX\r\n", (devcap[2]&0x60)>>5));

    MHLRX_DEBUG_PRINTF(printf("ADOPTER_ID_H=0x%02bX, ADOPTER_ID_L=0x%02bX\r\n", devcap[3], devcap[4]));

    MHLRX_DEBUG_PRINTF(printf("VID_LINK_MODE:\r\n"));
    MHLRX_DEBUG_PRINTF(printf("    SUPP_RGB444   = %02bX\r\n", (devcap[5]&0x01)>>0));
    MHLRX_DEBUG_PRINTF(printf("    SUPP_YCBCR444 = %02bX\r\n", (devcap[5]&0x02)>>1));
    MHLRX_DEBUG_PRINTF(printf("    SUPP_YCBCR422 = %02bX\r\n", (devcap[5]&0x04)>>2));
    MHLRX_DEBUG_PRINTF(printf("    SUPP_PPIXEL   = %02bX\r\n", (devcap[5]&0x08)>>3));
    MHLRX_DEBUG_PRINTF(printf("    SUPP_ISLANDS  = %02bX\r\n", (devcap[5]&0x10)>>4));
    MHLRX_DEBUG_PRINTF(printf("    SUPP_VGA      = %02bX\r\n", (devcap[5]&0x20)>>5));

    MHLRX_DEBUG_PRINTF(printf("AUD_LINK_MODE:\r\n"));
    MHLRX_DEBUG_PRINTF(printf("    SUPP_2CH  = %02bX\r\n", (devcap[6]&0x01)>>0));
    MHLRX_DEBUG_PRINTF(printf("    SUPP_8CH  = %02bX\r\n", (devcap[6]&0x02)>>1));

    if( devcap[7]&0x80 ) {
        MHLRX_DEBUG_PRINTF(printf("VIDEO_TYPE: \r\n"));
        MHLRX_DEBUG_PRINTF(printf("    VT_GRAPHICS = %02bX\r\n", (devcap[7]&0x01)>>0));
        MHLRX_DEBUG_PRINTF(printf("    VT_PHOTO    = %02bX\r\n", (devcap[7]&0x02)>>1));
        MHLRX_DEBUG_PRINTF(printf("    VT_CINEMA   = %02bX\r\n", (devcap[7]&0x04)>>2));
        MHLRX_DEBUG_PRINTF(printf("    VT_GAME     = %02bX\r\n", (devcap[7]&0x08)>>3));
    }
    else
        MHLRX_DEBUG_PRINTF(printf("Not Support VIDEO_TYPE !!!\r\n"));

    MHLRX_DEBUG_PRINTF(printf("LOG_DEV_MAP:\r\n"));
    MHLRX_DEBUG_PRINTF(printf("    LD_DISPLAY  = %02bX\r\n", (devcap[8]&0x01)>>0));
    MHLRX_DEBUG_PRINTF(printf("    LD_VIDEO    = %02bX\r\n", (devcap[8]&0x02)>>1));
    MHLRX_DEBUG_PRINTF(printf("    LD_AUDIO    = %02bX\r\n", (devcap[8]&0x04)>>2));
    MHLRX_DEBUG_PRINTF(printf("    LD_MEDIA    = %02bX\r\n", (devcap[8]&0x08)>>3));
    MHLRX_DEBUG_PRINTF(printf("    LD_TUNER    = %02bX\r\n", (devcap[8]&0x10)>>4));
    MHLRX_DEBUG_PRINTF(printf("    LD_RECORD   = %02bX\r\n", (devcap[8]&0x20)>>5));
    MHLRX_DEBUG_PRINTF(printf("    LD_SPEAKER  = %02bX\r\n", (devcap[8]&0x40)>>6));
    MHLRX_DEBUG_PRINTF(printf("    LD_GUI      = %02bX\r\n", (devcap[8]&0x80)>>7));

    MHLRX_DEBUG_PRINTF(printf("BANDWIDTH = %XMHz\r\n", devcap[9]*5));

    MHLRX_DEBUG_PRINTF(printf("FEATURE_FLAG:\r\n"));
    MHLRX_DEBUG_PRINTF(printf("         RCP_SUPPORT = %02bX\r\n", (devcap[10]&0x01)>>0));
    MHLRX_DEBUG_PRINTF(printf("         RAP_SUPPORT = %02bX\r\n", (devcap[10]&0x02)>>1));
    MHLRX_DEBUG_PRINTF(printf("         SP_SUPPORT  = %02bX\r\n", (devcap[10]&0x04)>>2));
    MHLRX_DEBUG_PRINTF(printf("    UCP_SEND_SUPPORT = %02bX\r\n", (devcap[10]&0x08)>>3));
    MHLRX_DEBUG_PRINTF(printf("    UCP_RECV_SUPPORT = %02bX\r\n", (devcap[10]&0x10)>>4));

    MHLRX_DEBUG_PRINTF(printf("DEVICE_ID_H=0x%02bX, DEVICE_ID_L=0x%02bX\r\n", devcap[11], devcap[12]));

    if( devcap[10]&0x04 )
        MHLRX_DEBUG_PRINTF(printf("SCRATCHPAD_SIZE = %02bX Bytes\r\n", devcap[13]));

    MHLRX_DEBUG_PRINTF(printf("INT_SIZE  = %02bX Bytes\r\n", (devcap[14]&0x0F)+1));
    MHLRX_DEBUG_PRINTF(printf("STAT_SIZE = %02bX Bytes\r\n", ((devcap[14]&0xF0)>>4)+1));

}

////////////////////////////////////////////////////////////////////
//void read_devcap_hw( void )
//
//
//
////////////////////////////////////////////////////////////////////
static int read_devcap_hw( struct it6802_dev_data *it6802 )
{
	unsigned char offset;

	IT6802_MHL_DEBUG_PRINTF(printf("IT6802-\r\nRead Device Capability Start ...\r\n"));

	for(offset=0; offset<0x10; offset++) {

		mhlrxwr(0x54, offset);

		if( mscfire(0x50, 0x40) == SUCCESS )
			it6802->Mhl_devcap[offset] = mhlrxrd(0x56);
		else
			return -1;


		IT6802_MHL_DEBUG_PRINTF(printf("IT6802-DevCap[%X]=%X\r\n", (int)offset, (int)it6802->Mhl_devcap[offset]));
	}

	IT6802_MHL_DEBUG_PRINTF(printf("IT6802-Read Device Capability End...\r\n"));

	parse_devcap(&it6802->Mhl_devcap[0]);

	return 0;

}


static void set_mhlint( unsigned char offset, unsigned char field )
{
    mhlrxwr(0x54, offset);
    mhlrxwr(0x55, field);
    mscfire(0x50, 0x80);
}

static void set_mhlsts( unsigned char offset, unsigned char status )
{
    mhlrxwr(0x54, offset);
    mhlrxwr(0x55, status);
    mscfire(0x50, 0x80);
}

static void write_burst(struct it6802_dev_data *it6802, int offset, int byteno )
{
    set_wrburst_data(it6802, offset, byteno);
//    MHLRX_DEBUG_PRINTF(printf("Fire WRITE_BURST (WrData=0x%02X) ...\r\n", it6802->txscrpad[3]));
//  enarblosetrg = TRUE;
    mscfire(0x51, 0x01);        // fire WRITE_BURST
//  enarblosetrg = FALSE;
    mhlrxset(0x00, 0x80, EnCBusDbgMode<<7);  // Restore setting
}

static void set_wrburst_data(struct it6802_dev_data *it6802, int offset, int byteno )
{
    int i;

    if( byteno<=2 || (offset+byteno)>16 ) {
        MHLRX_DEBUG_PRINTF(printf("ERROR: Set Burst Write Data Fail !!!\r\n"));
        return;
    }

//    mhlrxbwr(0x5E, 2, &it6802->txscrpad[0]);
    mhlrxwr(0x54, 0x40+offset);

    if( EnMSCBurstWr ) {
        mhlrxset(0x00, 0x80, 0x00); // Disable CBUS Debug Mode when using Burst Write


        if( MSCBurstWrID )
            i = 2;
        else
            i = 0;

		for(; i<byteno; i++)
            mhlrxwr(0x59, it6802->txscrpad[i]);

    }
    else
        mhlrxwr(0x55, it6802->txscrpad[2]);
}


#endif

#if 1
static void v3d_burst1st(struct it6802_dev_data *it6802)
{
     it6802->txscrpad[0]  = 0x00;
	 it6802->txscrpad[1]  = 0x11;
	 it6802->txscrpad[2]  = 0xC1;
	 it6802->txscrpad[3]  = 0x05;
	 it6802->txscrpad[4]  = 0x01;
	 it6802->txscrpad[5]  = 0x05;
	 it6802->txscrpad[6]  = 0x00;
	 it6802->txscrpad[7]  = 0x07;
	 it6802->txscrpad[8]  = 0x00;
	 it6802->txscrpad[9]  = 0x07;
	 it6802->txscrpad[10] = 0x00;
	 it6802->txscrpad[11] = 0x07;
	 it6802->txscrpad[12] = 0x00;
	 it6802->txscrpad[13] = 0x07;
	 it6802->txscrpad[14] = 0x00;
	 it6802->txscrpad[15] = 0x07;

	 mhlrxwr(0x5E, it6802->txscrpad[0]);
	 mhlrxwr(0x5F, it6802->txscrpad[1]);
	 wrburstoff = 0;
	 wrburstnum = 16;
	 write_burst(it6802,wrburstoff, wrburstnum);
	 MHLRX_DEBUG_PRINTF(printf("Set DSCR_CHG to 1 (TxSeqNum=%d) ...\r\n", TxWrBstSeq++));
	 set_mhlint(MHLInt00B, DSCR_CHG);
	V3D_EntryCnt++;
	 set_mhlint(MHLInt00B, REQ_WRT);
}

static void v3d_burst2nd(struct it6802_dev_data *it6802)
{
	 it6802->txscrpad[0]  = 0x00;
	 it6802->txscrpad[1]  = 0x10;
	 it6802->txscrpad[2]  = 0xB8;
	 it6802->txscrpad[3]  = 0x0F;
	 it6802->txscrpad[4]  = 0x01;
	 it6802->txscrpad[5]  = 0x05;
	 it6802->txscrpad[6]  = 0x00;
	 it6802->txscrpad[7]  = 0x07;
	 it6802->txscrpad[8]  = 0x00;
	 it6802->txscrpad[9]  = 0x07;
	 it6802->txscrpad[10] = 0x00;
	 it6802->txscrpad[11] = 0x07;
	 it6802->txscrpad[12] = 0x00;
	 it6802->txscrpad[13] = 0x07;
	 it6802->txscrpad[14] = 0x00;
	 it6802->txscrpad[15] = 0x07;

	 mhlrxwr(0x5E, it6802->txscrpad[0]);
	 mhlrxwr(0x5F, it6802->txscrpad[1]);
	 wrburstoff = 0;
	 wrburstnum = 16;
	 write_burst(it6802,wrburstoff, wrburstnum);
	 MHLRX_DEBUG_PRINTF(printf("Set DSCR_CHG to 1 (TxSeqNum=%d) ...\r\n", TxWrBstSeq++));
	 set_mhlint(MHLInt00B, DSCR_CHG);
	V3D_EntryCnt++;
	 set_mhlint(MHLInt00B, REQ_WRT);
}

static void v3d_burst3rd(struct it6802_dev_data *it6802)
{
	 it6802->txscrpad[0]  = 0x00;
	 it6802->txscrpad[1]  = 0x10;
	 it6802->txscrpad[2]  = 0xB7;
	 it6802->txscrpad[3]  = 0x0F;
	 it6802->txscrpad[4]  = 0x02;
	 it6802->txscrpad[5]  = 0x05;
	 it6802->txscrpad[6]  = 0x00;
	 it6802->txscrpad[7]  = 0x07;
	 it6802->txscrpad[8]  = 0x00;
	 it6802->txscrpad[9]  = 0x07;
	 it6802->txscrpad[10] = 0x00;
	 it6802->txscrpad[11] = 0x07;
	 it6802->txscrpad[12] = 0x00;
	 it6802->txscrpad[13] = 0x07;
	 it6802->txscrpad[14] = 0x00;
	 it6802->txscrpad[15] = 0x07;

	 mhlrxwr(0x5E, it6802->txscrpad[0]);
	 mhlrxwr(0x5F, it6802->txscrpad[1]);
	 wrburstoff = 0;
	 wrburstnum = 16;
	 write_burst(it6802,wrburstoff, wrburstnum);
	 MHLRX_DEBUG_PRINTF(printf("Set DSCR_CHG to 1 (TxSeqNum=%d) ...\r\n", TxWrBstSeq++));
	 set_mhlint(MHLInt00B, DSCR_CHG);
	V3D_EntryCnt++;
	 set_mhlint(MHLInt00B, REQ_WRT);
}

static void v3d_burst4th(struct it6802_dev_data *it6802)
{
	 it6802->txscrpad[0]  = 0x00;
	 it6802->txscrpad[1]  = 0x10;
	 it6802->txscrpad[2]  = 0xB6;
	 it6802->txscrpad[3]  = 0x0F;
	 it6802->txscrpad[4]  = 0x03;
	 it6802->txscrpad[5]  = 0x05;
	 it6802->txscrpad[6]  = 0x00;
	 it6802->txscrpad[7]  = 0x07;
	 it6802->txscrpad[8]  = 0x00;
	 it6802->txscrpad[9]  = 0x07;
	 it6802->txscrpad[10] = 0x00;
	 it6802->txscrpad[11] = 0x07;
	 it6802->txscrpad[12] = 0x00;
	 it6802->txscrpad[13] = 0x07;
	 it6802->txscrpad[14] = 0x00;
	 it6802->txscrpad[15] = 0x07;

	 mhlrxwr(0x5E, it6802->txscrpad[0]);
	 mhlrxwr(0x5F, it6802->txscrpad[1]);
	 wrburstoff = 0;
	 wrburstnum = 16;
	 write_burst(it6802,wrburstoff, wrburstnum);
	 MHLRX_DEBUG_PRINTF(printf("Set DSCR_CHG to 1 (TxSeqNum=%d) ...\r\n", TxWrBstSeq++));
	 set_mhlint(MHLInt00B, DSCR_CHG);
	V3D_EntryCnt++;
}

static void v3d_unsupport1st(struct it6802_dev_data *it6802)
{
	 it6802->txscrpad[0]  = 0x00;
	 it6802->txscrpad[1]  = 0x02;
	 it6802->txscrpad[2]  = 0xFE;
	 it6802->txscrpad[3]  = 0x00;

	 mhlrxwr(0x5E, it6802->txscrpad[0]);
	 mhlrxwr(0x5F, it6802->txscrpad[1]);
	 wrburstoff = 0;
	 wrburstnum = 4;
	 write_burst(it6802,wrburstoff, wrburstnum);

	 MHLRX_DEBUG_PRINTF(printf("Set DSCR_CHG to 1 (TxSeqNum=%d) ...\r\n", TxWrBstSeq++));
	 set_mhlint(MHLInt00B, DSCR_CHG);
	V3D_EntryCnt++;
 	 set_mhlint(MHLInt00B, REQ_WRT);
}

static void v3d_unsupport2nd(struct it6802_dev_data *it6802)
{
	 it6802->txscrpad[0]  = 0x00;
	 it6802->txscrpad[1]  = 0x03;
	 it6802->txscrpad[2]  = 0xFD;
	 it6802->txscrpad[3]  = 0x00;

	 mhlrxwr(0x5E, it6802->txscrpad[0]);
	 mhlrxwr(0x5F, it6802->txscrpad[1]);
	 wrburstoff = 0;
	 wrburstnum = 4;
	 write_burst(it6802,wrburstoff, wrburstnum);
	 MHLRX_DEBUG_PRINTF(printf("Set DSCR_CHG to 1 (TxSeqNum=%d) ...\r\n", TxWrBstSeq++));
	 set_mhlint(MHLInt00B, DSCR_CHG);
	V3D_EntryCnt++;
}

#endif

#endif


#ifdef _SUPPORT_EDID_RAM_
/*****************************************************************************/
/* EDID RAM  functions    *******************************************************/
/*****************************************************************************/

static unsigned char UpdateEDIDRAM(unsigned char *pEDID,unsigned char BlockNUM)
{
	unsigned char  i,offset,sum =0;

	if ( BlockNUM == 0x02 )
		offset = 0x00+128*0x01;
	else
		offset = 0x00+128*BlockNUM;

	MHLRX_DEBUG_PRINTF(printf("block No =%x offset = %x \r\n",BlockNUM,offset));


	for(i=0;i<0x7F;i++)
	{
		EDID_RAM_Write(offset,1 ,(pEDID+offset));

		sum += *(pEDID+offset);
		offset ++;
//		pEDID++;
	}
	sum = 0x00- sum;
//    EDID_RAM_Write(offset,1,&sum);
	return 	sum;
}

static void EnableEDIDupdata(void)
{
	MHLRX_DEBUG_PRINTF(printf("EnableEDIDupdata() \r\n"));

	HDMI_HotPlug(0);	//clear port 1 HPD=0 for Enable EDID update

	chgbank(1);
	hdmirxset(REG_RX_1B0, 0x03, 0x01); //clear port 0 HPD=1 for EDID update
	chgbank(0);
}

static void DisableEDIDupdata(void)
{
	MHLRX_DEBUG_PRINTF(printf("DisableEDIDupdata() \r\n"));

	HDMI_HotPlug(1);	//set port 1 HPD=1

	chgbank(1);
	hdmirxset(REG_RX_1B0, 0x03, 0x03); //set port 0 HPD=1
	chgbank(0);

}


static void EDIDRAMInitial(unsigned char *pIT6802EDID)
{

	unsigned char Block0_CheckSum;
	unsigned char Block1_CheckSum;
	unsigned char u8_VSDB_Addr;
	unsigned char BlockNo;

	u8_VSDB_Addr=0;

	EnableEDIDupdata();

	for(BlockNo=0;BlockNo<2;BlockNo++){

		MHLRX_DEBUG_PRINTF(printf("IT6802 EDIDRAMInitial = %x\r\n", BlockNo));

		if(BlockNo==0)
		{
			Block0_CheckSum =  UpdateEDIDRAM(pIT6802EDID,0);
			hdmirxwr(REG_RX_0C4,Block0_CheckSum);		//Port 0 Bank 0 CheckSum
			hdmirxwr(REG_RX_0C8,Block0_CheckSum);		//Port 1 Bank 0 CheckSum

			MHLRX_DEBUG_PRINTF(printf(" Block0_CheckSum = %x\r\n", Block0_CheckSum));
		}
		else
		{
			Block1_CheckSum =  UpdateEDIDRAM(pIT6802EDID,1);
			MHLRX_DEBUG_PRINTF(printf(" Block1_CheckSum = %x\r\n", Block1_CheckSum));
			u8_VSDB_Addr=Find_Phyaddress_Location(pIT6802EDID,1);

			MHLRX_DEBUG_PRINTF(printf("u8_VSDB_Addr = %x\r\n", u8_VSDB_Addr));
			PhyAdrSet();

			if(u8_VSDB_Addr!=0)
			{

				UpdateEDIDReg(u8_VSDB_Addr, pIT6802EDID[u8_VSDB_Addr],pIT6802EDID[u8_VSDB_Addr+1], Block1_CheckSum);
				MHLRX_DEBUG_PRINTF(printf("EDID Parsing OK\r\n"));
			}
		}
	}

	DisableEDIDupdata();
}


static unsigned char Find_Phyaddress_Location(unsigned char *pEDID,unsigned char Block_Number)
{
	unsigned char AddStart;
	unsigned char tag, count;
	unsigned char offset,End;
	unsigned char u8_VSDB_Addr;

	if ( Block_Number == 0x02 )
		AddStart = 0x00+128*0x01;
	else
		AddStart = 0x00+128*Block_Number;

	if((*(pEDID+AddStart))!=0x2 || (*(pEDID+AddStart+1))!=0x3)
		return 0;
	End = (*(pEDID+AddStart+2));
	u8_VSDB_Addr=0;
	for(offset=(AddStart+0x04);offset<(AddStart+End); )
	{
		#ifdef printf_EDID
		MHLRX_DEBUG_PRINTF(printf("offset = %x\r\n", offset));
		#endif
		tag=(*(pEDID+offset))>>5;
		count=(*(pEDID+offset)) & 0x1f;
		offset++;
        if(tag==0x03)
        {
        	#ifdef printf_EDID
        	MHLRX_DEBUG_PRINTF(printf("offset2 = %x\r\n", offset));
        	#endif
			if(	(*(pEDID+offset  ))==0x03 &&
				(*(pEDID+offset+1))==0x0C &&
				(*(pEDID+offset+2))==0x0    )
			{
				u8_VSDB_Addr=offset+3;
				txphyadr[0]=(*(pEDID+offset+3));
				txphyadr[1]=(*(pEDID+offset+4));
				#ifdef printf_EDID
				MHLRX_DEBUG_PRINTF(printf("txphyadr[0] = %x\r\n", txphyadr[0]));
				MHLRX_DEBUG_PRINTF(printf("txphyadr[1] = %x\r\n", txphyadr[1]));
				#endif
				return u8_VSDB_Addr;
			}
		}
		offset=offset+count;
	}
    return 0;
}



static void UpdateEDIDReg(unsigned char u8_VSDB_Addr, unsigned char CEC_AB, unsigned char CEC_CD, unsigned char Block1_CheckSum)
{

    unsigned char xdata A_Addr_AB, A_Addr_CD, A_Block1_CheckSum;
    unsigned char xdata B_Addr_AB, B_Addr_CD, B_Block1_CheckSum;

	A_Addr_AB=rxphyadr[0][0];
	A_Addr_CD=rxphyadr[0][1];

	B_Addr_AB=rxphyadr[1][0];
	B_Addr_CD=rxphyadr[1][1];


	A_Block1_CheckSum=(Block1_CheckSum+CEC_AB+CEC_CD -A_Addr_AB-A_Addr_CD)%0x100;
	B_Block1_CheckSum=(Block1_CheckSum+CEC_AB+CEC_CD -B_Addr_AB-B_Addr_CD)%0x100;


	hdmirxwr(REG_RX_0C1,u8_VSDB_Addr);			//VSDB Start Address
	hdmirxwr(REG_RX_0C2,A_Addr_AB);					//Port 0 AB
	hdmirxwr(REG_RX_0C3,A_Addr_CD);				//Port 0 CD
	hdmirxwr(REG_RX_0C5,A_Block1_CheckSum);		//Port 0 Bank 1 CheckSum

	hdmirxwr(REG_RX_0C6,B_Addr_AB);					//Port 1 AB
	hdmirxwr(REG_RX_0C7,B_Addr_CD);				//Port 1 CD
	hdmirxwr(REG_RX_0C9,B_Block1_CheckSum);		//Port 1 Bank 1 CheckSum



}
static void PhyAdrSet(void)
{
	txphyA = (txphyadr[0]&0xF0)>>4;
	txphyB = (txphyadr[0]&0x0F);
	txphyC = (txphyadr[1]&0xF0)>>4;
	txphyD = (txphyadr[1]&0x0F);

	if( txphyA==0 && txphyB==0 && txphyC==0 && txphyD==0 )
		txphylevel = 0;
	else if( txphyB==0 && txphyC==0 && txphyD==0 )
		txphylevel = 1;
	else if( txphyC==0 && txphyD==0 )
		txphylevel = 2;
	else if( txphyD==0 )
		txphylevel = 3;
	else
		txphylevel = 4;

	rxcurport = 0;
	switch( txphylevel )
	{
		case 0:
			rxphyadr[0][0] = 0x10;
			rxphyadr[0][1] = 0x00;
			rxphyadr[1][0] = 0x20;
			rxphyadr[1][1] = 0x00;
			break;
		case 1:
			rxphyadr[0][0] = (txphyA<<4)+0x01;
			rxphyadr[0][1] = 0x00;
			rxphyadr[1][0] = (txphyA<<4)+0x02;
			rxphyadr[1][1] = 0x00;
			break;
		case 2:
			rxphyadr[0][0] = txphyadr[0];
			rxphyadr[0][1] = 0x10;
			rxphyadr[1][0] = txphyadr[0];
			rxphyadr[1][1] = 0x20;
			break;
		case 3:
			rxphyadr[0][0] = txphyadr[0];
			rxphyadr[0][1] = (txphyC<<4)+0x01;
			rxphyadr[1][0] = txphyadr[0];
			rxphyadr[1][1] = (txphyC<<4)+0x02;
			break;
		default:
			rxphyadr[0][0] = 0xFF;
			rxphyadr[0][1] = 0xFF;
			rxphyadr[1][0] = 0xFF;
			rxphyadr[1][1] = 0xFF;
			break;
	}

#ifdef Enable_IT6802_CEC
	if(Myself_LogicAdr==DEVICE_ID_TV)
	{
		rxphyadr[0][0] = 0x10;
		rxphyadr[0][1] = 0x00;
		rxphyadr[1][0] = 0x20;
		rxphyadr[1][1] = 0x00;

	}
#endif
	MHLRX_DEBUG_PRINTF(printf("\r\nDnStrm PhyAdr = %x, %x, %x, %x\r\n", txphyA, txphyB, txphyC, txphyD));

	rxphyA = (rxphyadr[0][0]&0xF0)>>4;
	rxphyB = (rxphyadr[0][0]&0x0F);
	rxphyC = (rxphyadr[0][1]&0xF0)>>4;
	rxphyD = (rxphyadr[0][1]&0x0F);
	MHLRX_DEBUG_PRINTF(printf(" PortA PhyAdr = %x, %x, %x, %x\r\n", rxphyA, rxphyB, rxphyC, rxphyD));

	rxphyA = (rxphyadr[1][0]&0xF0)>>4;
	rxphyB = (rxphyadr[1][0]&0x0F);
	rxphyC = (rxphyadr[1][1]&0xF0)>>4;
	rxphyD = (rxphyadr[1][1]&0x0F);
	MHLRX_DEBUG_PRINTF(printf(" PortB PhyAdr = %x, %x, %x, %x\r\n", rxphyA, rxphyB, rxphyC, rxphyD));

}


#endif



#ifdef _SUPPORT_RCP_
/*****************************************************************************/
/* RCP functions    *******************************************************/
/*****************************************************************************/

static void RCPinitQ(struct it6802_dev_data *it6802)
{
	it6802->RCPhead = 0;
	it6802->RCPtail = 0;
	it6802->RCPResult = RCP_Result_Finish;
}

void RCPKeyPush(unsigned char ucKey)
{
	unsigned char	i;

	struct it6802_dev_data *it6802 = get_it6802_dev_data();


	// IF buffer is full , can't put data
	if( ( it6802->RCPhead % MAXRCPINDEX ) == ( ( it6802->RCPtail+1 ) % MAXRCPINDEX ) )
	{
		return;
	}

	// put in buffer
	it6802->RCPtail += 1;
	i=it6802->RCPtail % MAXRCPINDEX;
	it6802->RCPTxArray[i]=ucKey;

	SwitchRCPStatus(it6802,RCP_Transfer);

}

static int RCPKeyPop(struct it6802_dev_data *it6802)
{

	// is Empty
	if( (it6802->RCPhead % MAXRCPINDEX) == (it6802->RCPtail % MAXRCPINDEX) )
	{
		return FAIL;
	}

	it6802->RCPhead += 1;

	it6802->txmsgdata[0]=MSG_RCP;
	it6802->txmsgdata[1]=it6802->RCPTxArray[ it6802->RCPhead % MAXRCPINDEX ];	//tx new key to peer

	MHLRX_DEBUG_PRINTF(printf("RCPKeyPop() key = %x \r\n",it6802->txmsgdata[1]));

	cbus_send_mscmsg(it6802);
	SwitchRCPResult(it6802,RCP_Result_Transfer);

	return SUCCESS;
}

static void SwitchRCPResult(struct it6802_dev_data *it6802,RCPResult_Type RCPResult)
{
	it6802->RCPResult = RCPResult;
	switch(RCPResult)
	{
		case RCP_Result_OK:		MHLRX_DEBUG_PRINTF(printf("RCP_Result_OK \r\n"));   break;
		case RCP_Result_FAIL:		MHLRX_DEBUG_PRINTF(printf("RCP_Result_FAIL \r\n"));   break;
		case RCP_Result_ABORT:	MHLRX_DEBUG_PRINTF(printf("RCP_Result_ABORT \r\n"));   break;
		case RCP_Result_Transfer:	MHLRX_DEBUG_PRINTF(printf("RCP_Result_Transfer \r\n"));   break;
		case RCP_Result_Finish:	MHLRX_DEBUG_PRINTF(printf("RCP_Result_Finish \r\n"));   break;
		case RCP_Result_Unknown:	break;

	}
}

static void SwitchRCPStatus(struct it6802_dev_data *it6802,RCPState_Type RCPState)
{
	it6802->RCPState = RCPState;
}

static void RCPManager(struct it6802_dev_data *it6802)
{

	switch(it6802->RCPState)
	{

		case RCP_Transfer:	//Send New RCP key
			{
				if(it6802->RCPResult == RCP_Result_Finish)
				{
					if(RCPKeyPop(it6802)==FAIL)
						SwitchRCPStatus(it6802,RCP_Empty);
				}
			}
			break;

		default :
			break;
	}
}

#endif



/*****************************************************************************/
/* Driver State Machine Process **********************************************/
/*****************************************************************************/
#ifdef _IT680x_
static void IT6802MHLInterruptHandler(struct it6802_dev_data *it6802)
{
	unsigned char MHL04, MHL05, MHL06;
	unsigned char MHLA0, MHLA1, MHLA2, MHLA3;
	unsigned char i,rddata;

	MHL04 = 0x00;
	MHL05 = 0x00;
	MHL06 = 0x00;
	MHLA0 = 0x00;
	MHLA1 = 0x00;
	MHLA2 = 0x00;
	MHLA3 = 0x00;

	MHL04 = mhlrxrd(0x04);
	MHL05 = mhlrxrd(0x05);
	MHL06 = mhlrxrd(0x06);

	mhlrxwr(0x04,MHL04);
	mhlrxwr(0x05,MHL05);
	mhlrxwr(0x06,MHL06);

	MHLA0 = mhlrxrd(0xA0);
	MHLA1 = mhlrxrd(0xA1);
	MHLA2 = mhlrxrd(0xA2);
	MHLA3 = mhlrxrd(0xA3);

	mhlrxwr(0xA0,MHLA0);
	mhlrxwr(0xA1,MHLA1);
	mhlrxwr(0xA2,MHLA2);
	mhlrxwr(0xA3,MHLA3);



	if( MHL04&0x01 ) {

		IT6802_DEBUG_INT_PRINTF(printf("IT6802-CBUS Link Layer TX Packet Done Interrupt ...\r\n"));

	}

	if( MHL04&0x02 ) {

		IT6802_DEBUG_INT_PRINTF(printf("IT6802-ERROR: CBUS Link Layer TX Packet Fail Interrupt ... \r\n"));
		IT6802_DEBUG_INT_PRINTF(printf("IT6802- TX Packet error Status reg15=%X\r\n", (int)mhlrxrd(0x15)));

		rddata = mhlrxrd(0x15);

		mhlrxwr(0x15, rddata&0xF0);

	}

	if( MHL04&0x04 ) {

		IT6802_DEBUG_INT_PRINTF(printf("IT6802-CBUS Link Layer RX Packet Done Interrupt ...\r\n"));

	}

	if( MHL04&0x08 ) {

		 IT6802_DEBUG_INT_PRINTF(printf("IT6802-ERROR: CBUS Link Layer RX Packet Fail Interrupt ... \r\n"));

		 IT6802_DEBUG_INT_PRINTF(printf("IT6802- TX Packet error Status reg15=%X\r\n", (int)mhlrxrd(0x15)));

		 rddata = mhlrxrd(0x15);

		 mhlrxwr(0x15, rddata&0x0F);


	}

	if( MHL04&0x10 ) {
		IT6802_DEBUG_INT_PRINTF(printf("IT6802-MSC RX MSC_MSG Interrupt ...\r\n"));

	    mhl_read_mscmsg(it6802 );

	}

	if( MHL04&0x20 ) {
		 IT6802_DEBUG_INT_PRINTF(printf("IT6802-MSC RX WRITE_STAT Interrupt ...\r\n"));
	}
	if( MHL04&0x40 ) {

		IT6802_DEBUG_INT_PRINTF(printf("IT6802-MSC RX WRITE_BURST Interrupt  ...\r\n"));
	}


	if( MHL05&0x01 ) {

		IT6802_DEBUG_INT_PRINTF(printf("IT6802-MSC Req Done Interrupt ...\r\n"));
	}


	if( MHL05&0x02 )
	 {

		IT6802_DEBUG_INT_PRINTF(printf("IT6802-MSC Req Fail Interrupt (Unexpected) ...\r\n"));
		IT6802_DEBUG_INT_PRINTF(printf("IT6802-MSC Req Fail reg18= %02X \r\n",(int)mhlrxrd(0x18)));

		rddata = mhlrxrd(0x18);
		mhlrxwr(0x18, rddata);

		rddata = mhlrxrd(0x19);

		if( rddata&0x01 )
			IT6802_DEBUG_INT_PRINTF(printf("IT6802-ERROR: TX FW Fail in the middle of the command sequence !!!\r\n"));
		if( rddata&0x02 )
			IT6802_DEBUG_INT_PRINTF(printf("IT6802-ERROR: TX Fail because FW mode RxPktFIFO not empty !!!\r\n"));

		mhlrxwr(0x19, rddata);


	}

	if( MHL05&0x04 ) {
		 mhlrxwr(0x05, 0x04);

		 IT6802_DEBUG_INT_PRINTF(printf("IT6802-MSC Rpd Done Interrupt ...\r\n"));
	}

	if( MHL05&0x08 ) {
		IT6802_DEBUG_INT_PRINTF(printf("IT6802-MSC Rpd Fail Interrupt ...\r\n" ));
		IT6802_DEBUG_INT_PRINTF(printf("IT6802-MSC Rpd Fail status reg1A=%X reg1B=%X\r\n", (int)mhlrxrd(0x1A),(int)mhlrxrd(0x1B)));

		 rddata = mhlrxrd(0x1A);

		mhlrxwr(0x1A, rddata);

		 rddata = mhlrxrd(0x1B);
		 if( rddata&0x01 )
			 IT6802_DEBUG_INT_PRINTF(printf("IT6802-ERROR: Retry > 32 times !!!\r\n"));
		 if( rddata&0x02 ) {
			 IT6802_DEBUG_INT_PRINTF(printf("IT6802-ERROR: Receive ABORT Packet !!!\r\n"));
			 //get_msc_errcode();
		 }

		 mhlrxwr(0x1B, rddata);


	}

	if( MHL05&0x10 ) {

	         mhlrxwr(0x05, 0x10);

		 if( (mhlrxrd(0xB1)&0x07)==2 ) {
			IT6802_DEBUG_INT_PRINTF(printf("MHL Clock Mode : PackPixel Mode ...\r\n"));
		 }
		 else {
			IT6802_DEBUG_INT_PRINTF(printf("MHL Clock Mode : 24 bits Mode ...\r\n"));
		 }

	}

	if( MHL05&0x20 ) {

		IT6802_DEBUG_INT_PRINTF(printf("IT6802-DDC Req Fail Interrupt (Hardware) ... \r\n"));

	}

	if( MHL05&0x40 ) {

		IT6802_DEBUG_INT_PRINTF(printf("IT6802-DDC Rpd Done Interrupt ...\r\n"));
	}

	if( MHL05&0x80 ) {

		IT6802_DEBUG_INT_PRINTF(printf("IT6802-DDC Rpd Fail Interrupt ...\r\n"));

		rddata  = mhlrxrd(0x16);
		mhlrxwr(0x16, rddata);

		rddata = mhlrxrd(0x17);
		mhlrxwr(0x17, rddata);


	}

	 if( MHL06&0x01 ) {
		 mhlrxwr(0x06, 0x01);
		 wakeupfailcnt = 0;
	 }

	 if( MHL06&0x02 ) {
		 mhlrxwr(0x06, 0x02);
		 wakeupfailcnt++;
		 MHLRX_DEBUG_PRINTF(printf("WakeUp Fail Interrupt\r\n"));

		 if( wakeupfailcnt==8 ) {
             if( mhlrxrd(0x28)&0x08 ) {
			     mhlrxset(0x28, 0x08, 0x00);
			 }
			 else {
				 mhlrxset(0x28, 0x08, 0x08);
			 }
			 wakeupfailcnt=0;
		 }
	 }


	if( MHL06&0x04 ) {

		IT6802_DEBUG_INT_PRINTF(printf("it6802-CBUS Discovery Done Interrupt ...\r\n"));
		MHLRX_DEBUG_PRINTF(printf("CBUS Discovery Done Interrupt ...\r\n"));
		TxWrBstSeq = 0;

		if( EnHWPathEn==FALSE ) {

			// DEVCAP initialization here
			MHLRX_DEBUG_PRINTF(printf("Set DCAP_RDY to 1 ...\r\n"));
			set_mhlsts(MHLSts00B, DCAP_RDY);

			MHLRX_DEBUG_PRINTF(printf("Set HPD to 1 ...\r\n"));
//			mhlrxwr(0x50, 0x04);	// SET_HPD
			 mscfire(0x50, 0x04);


			MHLRX_DEBUG_PRINTF(printf("Set PATH_EN to 1 ...\r\n"));
			set_mhlsts(MHLSts01B, PATH_EN);
		}
	}

	if( MHL06&0x08 ) {

//		IT6802_DEBUG_INT_PRINTF(printf("it6802-CBUS Discovery Fail Interrupt ... ==> %dth Fail\r\n",(int) it6802->DisvFailCnt));

	}

	if( MHL06&0x10 ) {

		IT6802_DEBUG_INT_PRINTF(printf("IT6802-CBUS PATH_EN Change Interrupt ...\r\n"));
		if( EnHWPathEn )
//		mhlrxwr(0x50, 0x04);	// SET_HPD
		mscfire(0x50, 0x04);

		hdmirxset(0x26, 0x80, 0x00);
		delay1ms(1);
		hdmirxset(0x26, 0x80, 0x80);
		hdmirxset(0x22, 0x04, 0x04);


//		hdmirxset(0x22, 0x04, 0x04); //trigger AutoEQ

	}

	if( MHL06&0x20 ) {

		IT6802_DEBUG_INT_PRINTF(printf("it6802-CBUS MUTE Change Interrupt ...\r\n"));
		IT6802_DEBUG_INT_PRINTF(printf("it6802-Current CBUS MUTE Status = %X \r\n", (int)(mhlrxrd(0xB1)&0x10)>>4));
	}

	if( MHL06&0x40 ) {

		IT6802_DEBUG_INT_PRINTF(printf("IT6802-CBUS DCapRdy Change Interrupt ...\r\n"));

		if( mhlrxrd(0xB0)&0x01 )
		{

			read_devcap_hw(it6802);  // READ_DEVCAP hardware mode

			IT6802_DEBUG_INT_PRINTF(printf("IT6802-Set DCAP_RDY to 1 ...\r\n"));

			set_mhlsts(MHLSts00B, DCAP_RDY);

		}
		else
			IT6802_DEBUG_INT_PRINTF(printf("IT6802-DCapRdy Change from '1' to '0'\r\n"));
		}

	if( MHL06&0x80 ) {

		IT6802_DEBUG_INT_PRINTF(printf("IT6802-VBUS Status Change Interrupt ...\r\n"));
		IT6802_DEBUG_INT_PRINTF(printf("IT6802-Current VBUS Status = %X\r\n",(int) (mhlrxrd(0x10)&0x08)>>3));

	}


	if( MHLA0&0x01 ) {
		 IT6802_DEBUG_INT_PRINTF(printf("IT6802-MHL Device Capability Change Interrupt ...\r\n"));

			if( mhlrxrd(0xB0)&0x01 ){
				read_devcap_hw(it6802);	  // READ_DEVCAP HardWare mode
			}
			else
				IT6802_DEBUG_INT_PRINTF(printf("IT6802-MHL Device Capability is still not Ready !!! \r\n"));
	}

	if( MHLA0&0x02 ) {
		IT6802_DEBUG_INT_PRINTF(printf("IT6802-MHL DSCR_CHG Interrupt ......\r\n"));

         mhlrxbrd(0xC0, 16, &(it6802->rxscrpad[0]));

         rddata = mhlrxrd(0x64);

         for(i=0; i<rddata; i++)
             MHLRX_DEBUG_PRINTF(printf("RX Scratch Pad [%02d] = 0x%02X\r\n", i, it6802->rxscrpad[i]));

         if( rddata>16 )
             MHLRX_DEBUG_PRINTF(printf("ERROR: Receive Scratch Pad Data > 16 bytes !!!\r\n"));

         if( it6802->rxscrpad[0]!=mhlrxrd(0x83) || it6802->rxscrpad[1]!=mhlrxrd(0x84) ) {
             MHLRX_DEBUG_PRINTF(printf("Adopter ID = 0x%02X %02X\r\n", mhlrxrd(0x83), mhlrxrd(0x84)));
             MHLRX_DEBUG_PRINTF(printf("ERROR: Adopter ID Mismatch !!!\r\n"));
         }


	}

	if( MHLA0&0x04 ) {

		IT6802_DEBUG_INT_PRINTF(printf("IT6802-MHL REQ_WRT Interrupt  ...\r\n"));

		IT6802_DEBUG_INT_PRINTF(printf("IT6802-Set GRT_WRT to 1  ...\r\n"));

		set_mhlint(MHLInt00B, GRT_WRT);

         rddata = mhlrxrd(0x64);

         for(i=0; i<rddata; i++)
             MHLRX_DEBUG_PRINTF(printf("RX Scratch Pad [%02d] = 0x%02X\r\n", i, mhlrxrd(0xc0+i)));


	}

	if( MHLA0&0x08 ) {

		IT6802_DEBUG_INT_PRINTF(printf("IT6802-[**]MHL GNT_WRT Interrupt  ...\r\n"));


         MHLRX_DEBUG_PRINTF(printf("MHL GNT_WRT Interrupt (TxSeqNum=%d) ...\r\n", TxWrBstSeq));
		 if( EnMHL3DSupport==TRUE ) {
		     if( V3D_EntryCnt==0 )
                 v3d_burst1st(it6802);
		     else if( V3D_EntryCnt==1 )
				      v3d_burst2nd(it6802);
		     else if( V3D_EntryCnt==2 )
				      v3d_burst3rd(it6802);
			 else if( V3D_EntryCnt==3 ) {
				      v3d_burst4th(it6802);
			 		  MHLRX_DEBUG_PRINTF(printf(" ### 3D supporpt Write_Burst End ###\r\n"));
			 }
		 }
		 else {
			 if( V3D_EntryCnt==0 )
				 v3d_unsupport1st(it6802);
			 else if( V3D_EntryCnt==1 ) {
				      v3d_unsupport2nd(it6802);
				      MHLRX_DEBUG_PRINTF(printf(" ### 3D Un-Support Write_Burst End ###\r\n"));
			 }
		 }

	}



     if( MHLA0&0x10 ) {
         mhlrxwr(0xA0, 0x10);

         MHLRX_DEBUG_PRINTF(printf("3D Request Interrupt ...\r\n"));

		 if( EnMSCWrBurst3D==TRUE ) {
			 V3D_EntryCnt = 0;
		     set_mhlint(MHLInt00B, REQ_WRT);
		 }

     }

	if( MHLA1&0x02 ) {
		IT6802_DEBUG_INT_PRINTF(printf("IT6802-MHL EDID Change Interrupt ...\r\n"));
	}

}



static void IT6802HDMIInterruptHandler(struct it6802_dev_data *it6802)
{
	unsigned char Reg05h;
	unsigned char Reg06h;
	unsigned char Reg07h;
	unsigned char Reg08h;
	unsigned char Reg09h;
	unsigned char Reg0Ah;
	unsigned char Reg0Bh;
	unsigned char RegD0h;

	chgbank(0);

	Reg05h = hdmirxrd(REG_RX_005);
	Reg06h = hdmirxrd(REG_RX_006);
	Reg07h = hdmirxrd(REG_RX_007);
	Reg08h = hdmirxrd(REG_RX_008);
	Reg09h = hdmirxrd(REG_RX_009);

	Reg0Ah = hdmirxrd(REG_RX_P0_SYS_STATUS);
	Reg0Bh = hdmirxrd(REG_RX_P1_SYS_STATUS);
	RegD0h = hdmirxrd(REG_RX_0D0);

	hdmirxwr(REG_RX_005, Reg05h);
	hdmirxwr(REG_RX_006, Reg06h);
	hdmirxwr(REG_RX_007, Reg07h);
	hdmirxwr(REG_RX_008, Reg08h);
	hdmirxwr(REG_RX_009, Reg09h);
	hdmirxwr(REG_RX_0D0, RegD0h);

     if( Reg05h!=0x00 ) {
		 if( Reg05h&0x80 ) {
			 MHLRX_DEBUG_PRINTF(printf("#### Port 0 HDCP Off Detected ###\r\n"));
			it6802->m_ucEccCount_P0=0;
		 }

		 if( Reg05h&0x40 ) {
			 MHLRX_DEBUG_PRINTF(printf("#### Port 0 ECC Error ####\r\n"));
			hdmirx_INT_P0_ECC(it6802);
		 }

		 if( Reg05h&0x20 ) {

		     MHLRX_DEBUG_PRINTF(printf("#### Port 0 HDMI/DVI Mode change ####\r\n"));
			hdmirx_INT_HDMIMode_Chg(it6802);

		 }

		 if( Reg05h&0x08 ) {
			 MHLRX_DEBUG_PRINTF(printf("#### Port 0 HDCP Authentication Start ####\r\n"));
			it6802->m_ucEccCount_P0=0;
		 }

		 if( Reg05h&0x10 ) {
			 MHLRX_DEBUG_PRINTF(printf("#### Port 0 HDCP Authentication Done ####\r\n"));
		 }

		 if( Reg05h&0x04 ) {
			 MHLRX_DEBUG_PRINTF(printf("#### Port 0 Input Clock Change Detect ####\r\n"));
		 }

		 if( Reg05h&0x02 ) {
	             MHLRX_DEBUG_PRINTF(printf("#### Port 0 Rx CKOn Detect ####\r\n"));
			it6802->m_ucEccCount_P0=0;
			it6802->m_ucDeskew_P0=0;
			//it6802->m_ucDeskew_P1=0;
			//it6802->m_ucEccCount_P1=0;

		 }

		 if( Reg05h&0x01 ) {
			MHLRX_DEBUG_PRINTF(printf("#### Port 0 Power 5V change ####\r\n"));
			hdmirx_INT_5V_Pwr_Chg(it6802,0);
		 }
	 }

     if( Reg06h!=0x00 ) {
		 if( Reg06h&0x80 ) {
			MHLRX_DEBUG_PRINTF(printf("#### Port 1 HDCP Off Detected ###\r\n"));
			it6802->m_ucEccCount_P1=0;

		 }

		 if( Reg06h&0x40 ) {
			 MHLRX_DEBUG_PRINTF(printf("#### Port 1 ECC Error ####\r\n"));
			hdmirx_INT_P1_ECC(it6802);
		 }

		 if( Reg06h&0x20 ) {
		     MHLRX_DEBUG_PRINTF(printf("#### Port 1 HDMI/DVI Mode change ####\r\n"));
			hdmirx_INT_HDMIMode_Chg(it6802);
		 }

		 if( Reg06h&0x10 ) {
			 MHLRX_DEBUG_PRINTF(printf("#### Port 1 HDCP Authentication Done ####\r\n"));
		 }

		 if( Reg06h&0x08 ) {
			 MHLRX_DEBUG_PRINTF(printf("#### Port 1 HDCP Authentication Start ####\r\n"));
			it6802->m_ucEccCount_P1=0;

		 }

		 if( Reg06h&0x04 ) {
			 MHLRX_DEBUG_PRINTF(printf("#### Port 1 Input Clock Change Detect ####\r\n"));
		 }

		 if( Reg06h&0x02 ) {
			MHLRX_DEBUG_PRINTF(printf("#### Port 1 Rx CKOn Detect ####\r\n"));
			//it6802->m_ucEccCount_P0=0;
			//it6802->m_ucDeskew_P0=0;
			it6802->m_ucDeskew_P1=0;
			it6802->m_ucEccCount_P1=0;

		 }

		 if( Reg06h&0x01 ) {
			MHLRX_DEBUG_PRINTF(printf("#### Port 1 Power 5V change ####\r\n"));
			hdmirx_INT_5V_Pwr_Chg(it6802,1);
		 }

	 }

	 if( Reg07h!=0x00) {
		 if( Reg07h&0x80 ) {
			 MHLRX_DEBUG_PRINTF(printf("#### Audio FIFO Error ####\r\n"));
			 aud_fiforst();
		 }

		 if( Reg07h&0x40 ) {
			 MHLRX_DEBUG_PRINTF(printf("#### Audio Auto Mute ####\r\n"));
		 }

		 if( Reg07h&0x20 ) {
			 MHLRX_DEBUG_PRINTF(printf("#### Packet Left Mute ####\r\n"));
			 IT6802_SetVideoMute(it6802,OFF);
		 }

		 if( Reg07h&0x10 ) {
			 MHLRX_DEBUG_PRINTF(printf("#### Set Mute Packet Received ####\r\n"));

			 IT6802_SetVideoMute(it6802,ON);
		 }

		 if( Reg07h&0x08 ) {
			//			 MHLRX_DEBUG_PRINTF(printf("#### Timer Counter Tntterrupt ####\r\n"));
			//			 bDumpTiming=TRUE;	//2011/06/17 xxxxx
		 }

		 if( Reg07h&0x04 ) {
			 MHLRX_DEBUG_PRINTF(printf("#### Video Mode Changed ####\r\n"));
		 }

		 if( Reg07h&0x02 ) {
			hdmirx_INT_SCDT_Chg(it6802);
		 }

		 if( Reg07h&0x01 ) {
			 if( (Reg0Ah&0x40)>>6 ) {
				 MHLRX_DEBUG_PRINTF(printf("#### Port 0 Bus Mode : MHL ####\r\n"));
			 }
			 else {
		                 MHLRX_DEBUG_PRINTF(printf("#### Port 0 Bus Mode : HDMI ####\r\n"));
			 }
		 };
	 }

	 if( Reg08h!=0x00) {
		 if( Reg08h&0x80 ) {
			//			 MHLRX_DEBUG_PRINTF(printf("#### No General Packet 2 Received ####\r\n"));
		 }

		 if( Reg08h&0x40 ) {
			//			 MHLRX_DEBUG_PRINTF(printf("#### No General Packet Received ####\r\n"));
		 }

		 if( Reg08h&0x20 ) {
			 MHLRX_DEBUG_PRINTF(printf("#### No Audio InfoFrame Received ####\r\n"));
		 }

		 if( Reg08h&0x10) {
			 MHLRX_DEBUG_PRINTF(printf("#### No AVI InfoFrame Received ####\r\n"));
		 }

		 if( Reg08h&0x08 ) {
			 MHLRX_DEBUG_PRINTF(printf("#### CD Detect ####\r\n"));

		 }

		 if( Reg08h&0x04 ) {
			//			 MHLRX_DEBUG_PRINTF(printf("#### Gen Pkt Detect ####\r\n"));
			 MHLRX_DEBUG_PRINTF(printf("#### 3D InfoFrame Detect ####\r\n"));

				#ifdef Enable_Vendor_Specific_packet
					if(it6802->f_de3dframe_hdmi == FALSE)
					{
					it6802->f_de3dframe_hdmi = IT6802_DE3DFrame(TRUE);
					}
				#endif

		 }

		 if( Reg08h&0x02 ) {
			 MHLRX_DEBUG_PRINTF(printf("#### ISRC2 Detect ####\r\n"));
		 }

		 if( Reg08h&0x01 ) {
			 MHLRX_DEBUG_PRINTF(printf("#### ISRC1 Detect ####\r\n"));
		 }
	 }

	 if( Reg09h!=0x00 ) {
         if( Reg09h&0x80 ) {
			 MHLRX_DEBUG_PRINTF(printf("#### H2V Buffer Skew Fail ####\r\n"));
		 }

		 if( Reg09h&0x40 ) {
			//			 hdmirxwr(0x09, 0x40);
			hdmirxwr(0x09, 0x20); //bug ~ need to update by Andrew
			MHLRX_DEBUG_PRINTF(printf("#### Port 1 Deskew Error ####\r\n"));
			hdmirx_INT_P1_Deskew(it6802);
		 }

		 if( Reg09h&0x20 ) {
			 hdmirxwr(0x09, 0x20);
			 MHLRX_DEBUG_PRINTF(printf("#### Port 0 Deskew Error ####\r\n"));
			hdmirx_INT_P0_Deskew(it6802);
		 }

		 if( Reg09h&0x10 ) {
			 MHLRX_DEBUG_PRINTF(printf("#### New Audio Packet Received ####\r\n"));
		 }

		 if( Reg09h&0x08 ) {
			 MHLRX_DEBUG_PRINTF(printf("#### New ACP Packet Received ####\r\n"));
		 }

		 if( Reg09h&0x04 ) {
			 MHLRX_DEBUG_PRINTF(printf("#### New SPD Packet Received ####\r\n"));
		 }

		 if( Reg09h&0x02) {
			 MHLRX_DEBUG_PRINTF(printf("#### New MPEG InfoFrame Received ####\r\n"));
		 }

		 if( Reg09h&0x01) {
			 MHLRX_DEBUG_PRINTF(printf("#### New AVI InfoFrame Received ####\r\n"));
			//IT6802VideoOutputConfigure();
			it6802->m_NewAVIInfoFrameF=TRUE;
		 }

	 }


 if( RegD0h&0x10 ) {
	 MHLRX_DEBUG_PRINTF(printf("#### Port 0 EQ done interrupt ####\r\n"));
	chgbank(1);
	 MHLRX_DEBUG_PRINTF(printf(" P0_Rec_B_CS=%02bX  P0_Rec_B_RS=%02bX  \r\n",(hdmirxrd(REG_RX_1D5)&0x80)>>7 , (hdmirxrd(REG_RX_1D5)&0x7F)));
	 MHLRX_DEBUG_PRINTF(printf(" P0_Rec_G_CS=%02bX  P0_Rec_G_RS=%02bX  \r\n",(hdmirxrd(REG_RX_1D6)&0x80)>>7 , (hdmirxrd(REG_RX_1D6)&0x7F)));
	 MHLRX_DEBUG_PRINTF(printf(" P0_Rec_R_CS=%02bX  P0_Rec_R_RS=%02bX  \r\n",(hdmirxrd(REG_RX_1D7)&0x80)>>7 , (hdmirxrd(REG_RX_1D7)&0x7F)));
	chgbank(0);

 }

 if( RegD0h&0x40 ) {
	chgbank(1);
	 MHLRX_DEBUG_PRINTF(printf("#### Port 1 EQ done interrupt ####\r\n"));
	 MHLRX_DEBUG_PRINTF(printf(" P1_Rec_B_CS=%02bX  P1_Rec_B_RS=%02bX  \r\n",(hdmirxrd(REG_RX_1DD)&0x80)>>7 , (hdmirxrd(REG_RX_1DD)&0x7F)));
	 MHLRX_DEBUG_PRINTF(printf(" P1_Rec_G_CS=%02bX  P1_Rec_G_RS=%02bX  \r\n",(hdmirxrd(REG_RX_1DE)&0x80)>>7 , (hdmirxrd(REG_RX_1DE)&0x7F)));
	 MHLRX_DEBUG_PRINTF(printf(" P1_Rec_R_CS=%02bX  P1_Rec_R_RS=%02bX  \r\n",(hdmirxrd(REG_RX_1DF)&0x80)>>7 , (hdmirxrd(REG_RX_1DF)&0x7F)));
	chgbank(0);
 }

if( RegD0h&0x20) {
hdmirxwr(0xD0, 0x20);
#ifdef _SUPPORT_AUTO_EQ_
//printf("#### Port 0 EQ Fail Interrupt ####\r\n");
hdmirxset(0x26, 0x80, 0x00);
//idle(1000);
delay1ms(1);
hdmirxset(0x26, 0x80, 0x80);
hdmirxset(0x22, 0x04, 0x04);
#endif
}

if( RegD0h&0x80) {
hdmirxwr(0xD0, 0x80);
#ifdef _SUPPORT_AUTO_EQ_
//printf("#### Port 1 EQ Fail Interrupt ####\r\n");
hdmirxset(0x3E, 0x80, 0x00);
//idle(1000);
delay1ms(1);
hdmirxset(0x3E, 0x80, 0x80);
hdmirxset(0x3A, 0x04, 0x04);
#endif
}




}

void IT6802_fsm(void)
{

	struct it6802_dev_data *it6802data = get_it6802_dev_data();

	IT6802MHLInterruptHandler(it6802data);
	IT6802HDMIInterruptHandler(it6802data);
	IT6802VideoHandler(it6802data);
	IT6802AudioHandler(it6802data);

	RCPManager(it6802data);


	#ifndef Enable_IR
	//it6802AutoPortSelect(it6802data);
	#endif
	it6802ShowErrorCount();


}

static void it6802ShowErrorCount(void)
{

	BYTE RegB4;
	BYTE RegB5;
	BYTE RegB9;
	BYTE RegBA;

	RegB4 = hdmirxrd(REG_RX_0B4);
	RegB5 = hdmirxrd(REG_RX_0B5);
	RegB9 = hdmirxrd(REG_RX_0B9);
	RegBA = hdmirxrd(REG_RX_0BA);

	if(OldRegB4!=RegB4)
	{
		MHLRX_DEBUG_PRINTF(printf("11111111 RegB4=%x \r\n",RegB4));
		OldRegB4=RegB4;
	}

	if(OldRegB5!=RegB5)
	{

		MHLRX_DEBUG_PRINTF(printf("22222222 RegB5=%x \r\n",RegB5));
		OldRegB5=RegB5;
	}

	if(OldRegB9!=RegB9)
	{
		MHLRX_DEBUG_PRINTF(printf("33333333 RegB9=%x \r\n",RegB9));
		OldRegB9=RegB9;
	}

	if(OldRegBA!=RegBA)
	{
		MHLRX_DEBUG_PRINTF(printf("44444444 RegBA=%x \r\n",RegBA));
		OldRegBA=RegBA;
	}


}

/*static void it6802AutoPortSelect(struct it6802_dev_data *it6802)
{
#ifdef _IT6802_
	if(SEL_PORT_1==1)
	{
		if(it6802->m_ucCurrentHDMIPort != 0)
		{
			it6802PortSelect(0);
		}
	}
	else
	{
		if(it6802->m_ucCurrentHDMIPort == 0)
		{
			it6802PortSelect(1);
		}

	}
#endif
}*/


void get_vid_info( void )
{
	int HSyncPol, VSyncPol, InterLaced;
	int HTotal, HActive, HFP, HSYNCW;
	int VTotal, VActive, VFP, VSYNCW;
//	int rddata;
//	int i;
//	float PCLK, sump;
	float TMDSCLK;	//, sumt;

#if 0
	sumt = 0;
	for( i=0; i<100; i++) {
//		 idle(1000);

		 if( hdmirxrd(0x51)&0x01 ) {
			 rddata = hdmirxrd(0x92)+1;
		 }
		 else {
		     rddata = hdmirxrd(0x91)+1;
		 }
		 sumt += rddata;
	}

	rddata = hdmirxrd(0x90);


	if( hdmirxrd(0x51)&0x01 ) {
		if( rddata&0x04 )
            TMDSCLK=2*RCLK*256*100/sumt;
		else if( rddata&0x08 )
                 TMDSCLK=4*RCLK*256*100/sumt;
		else
            TMDSCLK=RCLK*256*100/sumt;
	}
	else {
	    if( rddata&0x01 )
	        TMDSCLK=2*RCLK*256*100/sumt;
	    else if( rddata&0x02 )
                 TMDSCLK=4*RCLK*256*100/sumt;
	    else
	        TMDSCLK=RCLK*256*100/sumt;
	}
#endif

//    if( RINGOSC==SLOW )
//    {
//	    TMDSCLK=33000*128*100/sumt;
//    }
//    else if( RINGOSC==FAST )
//    {
//             TMDSCLK=47000*128*100/sumt;
//    }
//    else
//    {
//        TMDSCLK=40500*128*100/sumt;
//    }

//	sump = 0;
//	for( i=0; i<100; i++ ) {
//		idle(1000);
//		rddata = hdmirxrd(0x9A);
//		sump += rddata;
//	}

//	PCLK=RCLK*255*100/sump;

	InterLaced = (hdmirxrd(0x99)&0x02)>>1;

	HTotal   = ((hdmirxrd(0x9D)&0x3F)<<8) + hdmirxrd(0x9C);
	HActive  = ((hdmirxrd(0x9F)&0x3F)<<8) + hdmirxrd(0x9E);
	HFP      = ((hdmirxrd(0xA1)&0xF0)<<4) + hdmirxrd(0xA2);
	HSYNCW   = ((hdmirxrd(0xA1)&0x01)<<8) + hdmirxrd(0xA0);
	HSyncPol = hdmirxrd(0xA8)&0x04>>2;

	VTotal   = ((hdmirxrd(0xA4)&0x0F)<<8) + hdmirxrd(0xA3);
	VActive  = ((hdmirxrd(0xA4)&0xF0)<<4) + hdmirxrd(0xA5);
	VFP      = hdmirxrd(0xA7)&0x3F;
	VSYNCW   = hdmirxrd(0xA6)&0x1F;
	VSyncPol = (hdmirxrd(0xA8)&0x08)>>3;

//	CurVTiming.TMDSCLK     = (int)TMDSCLK;
	CurTMDSCLK             = (int)TMDSCLK;
//	CurVTiming.PCLK        = (int)PCLK;
	CurVTiming.HActive     = HActive;
	CurVTiming.HTotal      = HTotal;
	CurVTiming.HFrontPorch = HFP;
	CurVTiming.HSyncWidth  = HSYNCW;
	CurVTiming.HBackPorch  = HTotal - HActive - HFP - HSYNCW;
	CurVTiming.VActive     = VActive;
	CurVTiming.VTotal      = VTotal;
	CurVTiming.VFrontPorch = VFP;
	CurVTiming.VSyncWidth  = VSYNCW;
	CurVTiming.VBackPorch  = VTotal - VActive - VFP - VSYNCW;
	CurVTiming.ScanMode    = (InterLaced)&0x01;
	CurVTiming.VPolarity   = (VSyncPol)&0x01;
	CurVTiming.HPolarity   = (HSyncPol)&0x01;
}



void show_vid_info( void )
{
	int InBPC, InBPP;
	int MHL_Mode;
	int MHL_CLK_Mode;
	int GCP_CD       = CD8BIT; //24 bits per pixel

	GCP_CD = ((hdmirxrd(0x99)&0xF0)>>4);

	switch( GCP_CD ) {
	case 5 :
	MHLRX_DEBUG_PRINTF(printf("\r\nInput ColorDepth = 30 bits per pixel\r\n"));
	InBPC=10;
	hdmirxset(0x65, 0x0C, 0x04);
	OutCD = OUT10B;
	break;
	case 6 :
	MHLRX_DEBUG_PRINTF(printf("\r\nInput ColorDepth = 36 bits per pixel\r\n"));
	InBPC=12;
	hdmirxset(0x65, 0x0C, 0x08);
	OutCD = OUT12B;
	break;
	default :
	MHLRX_DEBUG_PRINTF(printf("\r\nInput ColorDepth = 24 bits per pixel\r\n"));
	InBPC=8;
	hdmirxset(0x65, 0x0C, 0x00);
	OutCD = OUT8B;
	break;
	}

	switch( OutCD ) {
	case 1 :
	MHLRX_DEBUG_PRINTF(printf("Output ColorDepth = 30 bits per pixel\r\n"));
	break;
	case 2 :
	MHLRX_DEBUG_PRINTF(printf("Output ColorDepth = 36 bits per pixel\r\n"));
	break;
	default :
	MHLRX_DEBUG_PRINTF(printf("Output ColorDepth = 24 bits per pixel\r\n"));
	break;
	}

	chgbank(2);
	InColorMode = (hdmirxrd(0x15)&0x60)>>5;
	chgbank(0);

	if( InColorMode==1 ) { //YCbCr422
	InBPP = InBPC*2;
	}
	else
	{
	InBPP = InBPC*3;
	}

	switch( InColorMode ) {
	case 0 :
	MHLRX_DEBUG_PRINTF(printf("Input Color Mode = RGB444\r\n"));
	//		 hdmirxset(0xAE, 0x01, 0x01);
	//		 defaultrgb();
	break;
	case 1 :
	MHLRX_DEBUG_PRINTF(printf("Input Color Mode = YCbCr422\r\n"));
	//		 hdmirxset(0xAE, 0x01, 0x00);
	//		 yuv422torgb();
	break;
	case 2 :
	MHLRX_DEBUG_PRINTF(printf("Input Color Mode = YCbCr444\r\n"));
	//		 hdmirxset(0xAE, 0x01, 0x00);
	//		 yuv444torgb();
	break;
	default :
	MHLRX_DEBUG_PRINTF(printf("Input Color Mode = Reserved !!!\r\n"));
	break;
	}


	OutColorMode = (hdmirxrd(0x65)&0x30)>>5;
	switch( OutColorMode ) {
	case 0 :
	MHLRX_DEBUG_PRINTF(printf("Output Color Mode = RGB444\r\n"));
	//		 hdmirxset(0x65, 0x30, 0x00);
	break;
	case 1 :
	MHLRX_DEBUG_PRINTF(printf("Output Color Mode = YCbCr422\r\n"));
	//		 hdmirxset(0x65, 0x30, 0x10);
	break;
	case 2 :
	MHLRX_DEBUG_PRINTF(printf("Output Color Mode = YCbCr444\r\n"));
	//		 hdmirxset(0x65, 0x30, 0x20);
	break;
	default :
	MHLRX_DEBUG_PRINTF(printf("Output Color Mode = Reserved !!!\r\n"));
	break;
	}


	MHL_Mode     = ((hdmirxrd(0x0A)&0x40)>>6);
	MHL_CLK_Mode = ((mhlrxrd(0xB1)&0x07));

	if( MHL_Mode ) {
	if( MHL_CLK_Mode==0x02 )
	MHLRX_DEBUG_PRINTF(printf("BUS MODE : MHL PackPixel Mode\r\n"));
	else
	MHLRX_DEBUG_PRINTF(printf("BUS MODE : MHL 24 bits Mode\r\n"));
	}
	else
	MHLRX_DEBUG_PRINTF(printf("BUS MODE : HDMI Mode\r\n"));

	//    MHLRX_DEBUG_PRINTF(printf("Video Input Timing: %s\r\n", s_VMTable[VIC].format));
	//    MHLRX_DEBUG_PRINTF(printf("TMDSCLK = %3.3fMHz\r\n", (float)(CurTMDSCLK)/1000));
	//    MHLRX_DEBUG_PRINTF(printf("PCLK = %3.3fMHz\r\n", (float)(CurVTiming.PCLK)/1000));
	MHLRX_DEBUG_PRINTF(printf("HActive = %d\r\n", CurVTiming.HActive));
	MHLRX_DEBUG_PRINTF(printf("VActive = %d\r\n", CurVTiming.VActive));
	MHLRX_DEBUG_PRINTF(printf("HTotal = %d\r\n", CurVTiming.HTotal));
	MHLRX_DEBUG_PRINTF(printf("VTotal = %d\r\n", CurVTiming.VTotal));
	MHLRX_DEBUG_PRINTF(printf("HFrontPorch = %d\r\n", CurVTiming.HFrontPorch));
	MHLRX_DEBUG_PRINTF(printf("HSyncWidth = %d\r\n", CurVTiming.HSyncWidth));
	MHLRX_DEBUG_PRINTF(printf("HBackPorch = %d\r\n", CurVTiming.HBackPorch));
	MHLRX_DEBUG_PRINTF(printf("VFrontPorch = %d\r\n", CurVTiming.VFrontPorch));
	MHLRX_DEBUG_PRINTF(printf("VSyncWidth = %d\r\n", CurVTiming.VSyncWidth));
	MHLRX_DEBUG_PRINTF(printf("VBackPorch = %d\r\n", CurVTiming.VBackPorch));

	if( CurVTiming.ScanMode==0 ) {
	MHLRX_DEBUG_PRINTF(printf("ScanMode = Progressive\r\n"));
	}
	else {
	MHLRX_DEBUG_PRINTF(printf("ScanMode = InterLaced\r\n"));
	}

	if( CurVTiming.VPolarity==1 ) {
	MHLRX_DEBUG_PRINTF(printf("VSyncPol = Positive\r\n"));
	}
	else {
	MHLRX_DEBUG_PRINTF(printf("VSyncPol = Negative\r\n"));
	}

	if( CurVTiming.HPolarity==1 ) {
	MHLRX_DEBUG_PRINTF(printf("HSyncPol = Positive\r\n"));
	}
	else {
	MHLRX_DEBUG_PRINTF(printf("HSyncPol = Negative\r\n"));
	}


	MHLRX_DEBUG_PRINTF(printf(" RegB4=%x \r\n",hdmirxrd(REG_RX_0B4)));
	MHLRX_DEBUG_PRINTF(printf(" RegB5=%x \r\n",hdmirxrd(REG_RX_0B5)));
	MHLRX_DEBUG_PRINTF(printf(" RegB9=%x \r\n",hdmirxrd(REG_RX_0B9)));
	MHLRX_DEBUG_PRINTF(printf(" RegBA=%x \r\n",hdmirxrd(REG_RX_0BA)));


}

#endif


/*****************************************************************************/
/* Power Control Functions  **************************************************/
/*****************************************************************************/


/*********************************************************************************/
/* End of IT680x.c ***************************************************************/
/*********************************************************************************/




#define HDMI_3DFORMAT_PRESENT           0x40
#define HDMI_3DFORMAT_OFF               0x00
#define FRAME_PACKING                   0x00
#define TOP_AND_BOTTOM                  0x60
#define SIDE_BY_SIDE                    0x80


SET_DE3D_FRAME t_3d_syncgen[] =
{
    //720p      //1124   //1165   //1120   //1129
    {0x3c      ,0x02ED  ,0x0306  ,0x02E8  ,0x02F2}, // 24Hz
    {0x3e      ,0x02ED  ,0x0306  ,0x02E8  ,0x02F2}, // 30Hz
    {0x13      ,0x02ED  ,0x0306  ,0x02E8  ,0x02F2}, // 50Hz
    {0x04      ,0x02ED  ,0x0306  ,0x02E8  ,0x02F2}, // 60Hz
    //1080i     //1124   //1165   //1120   //1129
    {0x05      ,0x0464  ,0x048D  ,0x0460  ,0x0469}, // 50Hz
    {0x14      ,0x0464  ,0x048D  ,0x0460  ,0x0469}, // 60Hz
    //1080i     //1124   //1165   //1120   //1129
    {0x20      ,0x0464  ,0x048D  ,0x0460  ,0x0469}, // 24Hz
    {0x22      ,0x0464  ,0x048D  ,0x0460  ,0x0469}, // 30Hz
    {0x1f      ,0x0464  ,0x048D  ,0x0460  ,0x0469}, // 50Hz
    {0x10      ,0x0464  ,0x048D  ,0x0460  ,0x0469}, // 60Hz
    //default
    {0xFF      ,0x0000  ,0x0000  ,0x0000  ,0x0000}
};




static unsigned char IT6802_DE3DFrame(unsigned char ena_de3d)
/*
 * This function configures the HDMI DE3DFrame
 * @param uunsigned char ena_de3d
 * @return      TRUE
 *              FALSE
 */
{
    unsigned char i, uc;
    unsigned int v_total;
    unsigned int v_act_start;
    unsigned int v_act_end;
    unsigned int v_sync_end;
    unsigned int v_act_bspace;

    #ifdef DEBUG_MODE
    //dbmsg_trace(DBM_DPATH,"IT680x - HDMI_DE3DFrame \r\n");
    #endif

	struct it6802_dev_data *it6802data = get_it6802_dev_data();

    if(ena_de3d  == TRUE)
    {

 	chgbank(2);
	uc=hdmirxrd(REG_RX_224);

        if(uc == 0x81)	 // 3D InfoFrame Packet Type is valid
        {

	it6802data->s_Current3DFr.VIC=hdmirxrd(REG_RX_218);	//AVI INFO PB4
	it6802data->s_Current3DFr.HB0=hdmirxrd(REG_RX_224);	// General Packet Header Byte 0
	it6802data->s_Current3DFr.HB1=hdmirxrd(REG_RX_225);
	it6802data->s_Current3DFr.HB2=hdmirxrd(REG_RX_226);
	it6802data->s_Current3DFr.PB0=hdmirxrd(REG_RX_227);	// General Packet Data Byte 0
	it6802data->s_Current3DFr.PB1=hdmirxrd(REG_RX_228);
	it6802data->s_Current3DFr.PB2=hdmirxrd(REG_RX_229);
	it6802data->s_Current3DFr.PB3=hdmirxrd(REG_RX_22A);
	it6802data->s_Current3DFr.PB4=hdmirxrd(REG_RX_22B);
	it6802data->s_Current3DFr.PB5=hdmirxrd(REG_RX_22C);
	it6802data->s_Current3DFr.PB6=hdmirxrd(REG_RX_22D);
	it6802data->s_Current3DFr.PB7=hdmirxrd(REG_RX_22E);
 	chgbank(0);

//#ifdef DEBUG_MODE_3D
    MHLRX_DEBUG_PRINTF(printf("\r\nIT653x - HDMI_DumpDE3DFrameInfo: \r\n"));
    MHLRX_DEBUG_PRINTF(printf("        HDMI VIC = 0x%02bX \r\n",it6802data->s_Current3DFr.VIC));
    MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe HB0 = 0x%02bX \r\n",it6802data->s_Current3DFr.HB0));
    MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe HB1 = 0x%02bX \r\n",it6802data->s_Current3DFr.HB1));
    MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe HB2 = 0x%02bX \r\n",it6802data->s_Current3DFr.HB2));
    MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe PB0 = 0x%02bX \r\n",it6802data->s_Current3DFr.PB0));
    MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe PB1 = 0x%02bX \r\n",it6802data->s_Current3DFr.PB1));
    MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe PB2 = 0x%02bX \r\n",it6802data->s_Current3DFr.PB2));
    MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe PB3 = 0x%02bX \r\n",it6802data->s_Current3DFr.PB3));
    MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe PB4 = 0x%02bX \r\n",it6802data->s_Current3DFr.PB4));
    MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe PB5 = 0x%02bX \r\n",it6802data->s_Current3DFr.PB5));
    MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe PB6 = 0x%02bX \r\n",it6802data->s_Current3DFr.PB6));
    MHLRX_DEBUG_PRINTF(printf("        Record HDMI vender specific inforframe PB7 = 0x%02bX \r\n",it6802data->s_Current3DFr.PB7));
//#endif



            /******************************  3D integration  *************************************/

            it6802data->de3dframe_config.LR_Reference             =  2; // Source of the 3D L/R reference.
            it6802data->de3dframe_config.FrameDominance           =  0; // Left or Right Eye is first in L/R image pair.
            it6802data->de3dframe_config.LR_Encoding              =  1; // Type of 3D L/R encoding
            it6802data->de3dframe_config.TB_Reference             =  2; // Top/Bottom reference for vertically sub-sampled sources
            it6802data->de3dframe_config.OE_Reference             =  2; // Odd/Even reference for horizontally sub-sampled sources

            it6802data->de3dframe_config.NumActiveBlankLines      =  0; // Number of lines separating vertically packed L/R data to be removed (cropped)before being displayed
            it6802data->de3dframe_config.NumberOfEncodedLines     =  0; // Number of encoded lines in one L/R eye frame of the display data to be blanked out with "Blanking Color".
            it6802data->de3dframe_config.LeftEncodedLineLocation  = -1; // Active line number of 1st encoded line in one Left eye frame of the display data (-1=unknown).
            it6802data->de3dframe_config.RightEncodedLineLocation = -1; // Active line number of 1st encoded line in one Right eye frame of the display data (-1=unknown).
            it6802data->de3dframe_config.BlankingColor            =  7; // Color to use when blanking (or masking off) any embedded L/R encoding

            if(((it6802data->s_Current3DFr.PB4&0xE0) == HDMI_3DFORMAT_PRESENT) && ((it6802data->s_Current3DFr.PB5&0xF0) == FRAME_PACKING))
            {
                i =0;

                while(t_3d_syncgen[i].Vic != 0xFF)
                {
                    if(t_3d_syncgen[i].Vic == it6802data->s_Current3DFr.VIC)
                    {
                        break;
                    }
                    i++;
                }
                v_total     = t_3d_syncgen[i].V_total;
                v_act_start = t_3d_syncgen[i].V_act_start;
                v_act_end   = t_3d_syncgen[i].V_act_end;
                v_sync_end  = t_3d_syncgen[i].V_sync_end;
                v_act_bspace = v_act_start - v_act_end;
            }

            if(((it6802data->s_Current3DFr.PB4&0xE0) == HDMI_3DFORMAT_PRESENT) && (!it6802data->DE3DFormat_HDMIFlag))
            {
                it6802data->DE3DFormat_HDMIFlag = TRUE;
            }

            if(((it6802data->s_Current3DFr.PB4&0xE0) == HDMI_3DFORMAT_PRESENT) && (it6802data->DE3DFormat_HDMIFlag))
            {
                if(((it6802data->s_Current3DFr.PB5&0xF0) == FRAME_PACKING) && (!it6802data->FramePacking_Flag))
                {
                    it6802data->FramePacking_Flag   = TRUE;
                    it6802data->TopAndBottom_Flag   = FALSE;
                    it6802data->SideBySide_Flag     = FALSE;
                    it6802data->oldVIC              = 0;
                }

                if(((it6802data->s_Current3DFr.PB5&0xF0) == FRAME_PACKING) && (it6802data->FramePacking_Flag))
                {
                    it6802data->newVIC = it6802data->s_Current3DFr.VIC;
                    if(it6802data->newVIC != it6802data->oldVIC)
                    {
                        if((it6802data->s_Current3DFr.VIC == 0x3c) || (it6802data->s_Current3DFr.VIC ==0x3e) || (it6802data->s_Current3DFr.VIC == 0x13) ||
                           (it6802data->s_Current3DFr.VIC == 0x04) ||(it6802data->s_Current3DFr.VIC ==0x20) || (it6802data->s_Current3DFr.VIC == 0x22))
                           //(it6802data->s_Current3DFr.VIC == 0x05) ||(it6802data->s_Current3DFr.VIC == 0x14) // 1080i@50&60Hz not supported for frame packing
                        {
                            it6802data->de3dframe_config.NumActiveBlankLines  =  (unsigned char)v_act_bspace;
                            it6802data->de3dframe_config.Format = VERT_PACKED_FULL; // Type of 3D source format is FRAME_PACKING(VERT_PACKED_FULL)

                            #ifdef DEBUG_MODE_3D
                            dbmsg_trace(DBM_3D,"IT680x - HDMI_3DFORMAT is FRAME_PACKING \r\n");
				   #else
				MHLRX_DEBUG_PRINTF(printf("IT680x - HDMI_3DFORMAT is FRAME_PACKING \r\n"));

                            #endif
                        }
                        else
                        {
                            it6802data->de3dframe_config.Format    =  6; // Type of 3D source format is UNDEFINED_FORMAT

                            #ifdef DEBUG_MODE_3D
                            dbmsg_trace(DBM_3D,"IT680x - HDMI_3DFORMAT is UNDEFINED_FORMAT \r\n");
                            #endif
                        }
                            #ifdef DEBUG_MODE_3D
						dbmsg_trace(DBM_3D,"IT680x - HDMI_3DFORMAT is FRAME_PACKING call detect3D_Port_3D_On( ) \r\n");
				#endif
                        //detect3D_Port_3D_On(&it6802data->de3dframe_config);  //ralph
                        //HDMI_DumpDE3DFrameInfo(&it6802data->s_Current3DFr);
                        it6802data->oldVIC = it6802data->newVIC;
                    }
                }

                if(((it6802data->s_Current3DFr.PB5&0xF0) == TOP_AND_BOTTOM) && (!it6802data->TopAndBottom_Flag))
                {
                    if((it6802data->s_Current3DFr.VIC == 0x3c) || (it6802data->s_Current3DFr.VIC ==0x3e) || (it6802data->s_Current3DFr.VIC == 0x13) || (it6802data->s_Current3DFr.VIC == 0x04) || (it6802data->s_Current3DFr.VIC == 0x05) ||
                       (it6802data->s_Current3DFr.VIC == 0x14) || (it6802data->s_Current3DFr.VIC ==0x20) || (it6802data->s_Current3DFr.VIC == 0x22) || (it6802data->s_Current3DFr.VIC == 0x1f) || (it6802data->s_Current3DFr.VIC == 0x10))
                    {
                        it6802data->de3dframe_config.Format   =  VERT_PACKED_HALF; // Type of 3D source format is TOP_AND_BOTTOM(VERT_PACKED_HALF)

                        #ifdef DEBUG_MODE_3D
                        dbmsg_trace(DBM_3D,"IT680x - HDMI_3DFORMAT is TOP_AND_BOTTOM \r\n");
			   #else
				MHLRX_DEBUG_PRINTF(printf("IT680x - HDMI_3DFORMAT is TOP_AND_BOTTOM \r\n"));
                        #endif
                    }
                    else
                    {
                        it6802data->de3dframe_config.Format   =  6; // Type of 3D source format is UNDEFINED_FORMAT

                        #ifdef DEBUG_MODE_3D
                        dbmsg_trace(DBM_3D,"IT680x - HDMI_3DFORMAT is UNDEFINED_FORMAT \r\n");
                        #endif
                    }

                    //detect3D_Port_3D_On(&it6802data->de3dframe_config);  //ralph
                    //HDMI_DumpDE3DFrameInfo(&it6802data->s_Current3DFr);

                    it6802data->FramePacking_Flag   = FALSE;
                    it6802data->TopAndBottom_Flag   = TRUE;
                    it6802data->SideBySide_Flag     = FALSE;
                }

                if(((it6802data->s_Current3DFr.PB5&0xF0) == SIDE_BY_SIDE) && (!it6802data->SideBySide_Flag))
                {
                    if((it6802data->s_Current3DFr.VIC == 0x3c) || (it6802data->s_Current3DFr.VIC ==0x3e) || (it6802data->s_Current3DFr.VIC == 0x13) || (it6802data->s_Current3DFr.VIC == 0x04) || (it6802data->s_Current3DFr.VIC == 0x05) ||
                       (it6802data->s_Current3DFr.VIC == 0x14) || (it6802data->s_Current3DFr.VIC ==0x20) || (it6802data->s_Current3DFr.VIC == 0x22) || (it6802data->s_Current3DFr.VIC == 0x1f) || (it6802data->s_Current3DFr.VIC == 0x10))
                    {
                        it6802data->de3dframe_config.Format   =  HORIZ_PACKED_HALF; // Type of 3D source format is SIDE_BY_SIDE(HORIZ_PACKED_HALF)

                        #ifdef DEBUG_MODE_3D
                        dbmsg_trace(DBM_3D,"IT680x - HDMI_3DFORMAT is SIDE_BY_SIDE \r\n");
			   			#else
						MHLRX_DEBUG_PRINTF(printf("IT680x - HDMI_3DFORMAT is SIDE_BY_SIDE \r\n"));
                        #endif
                    }
                    else
                    {
                        it6802data->de3dframe_config.Format   =  6; // Type of 3D source format is UNDEFINED_FORMAT

                        #ifdef DEBUG_MODE_3D
                        dbmsg_trace(DBM_3D,"IT680x - HDMI_3DFORMAT is UNDEFINED_FORMAT \r\n");
                        #endif
                    }

                    //detect3D_Port_3D_On(&it6802data->de3dframe_config);  //ralph
                    //HDMI_DumpDE3DFrameInfo(&it6802data->s_Current3DFr);

                    it6802data->FramePacking_Flag   = FALSE;
                    it6802data->TopAndBottom_Flag   = FALSE;
                    it6802data->SideBySide_Flag     = TRUE;
                }

                #ifdef DEBUG_MODE_3D
                dbmsg_trace(DBM_3D,"\r\nIT680x - HDMI_3D_SourceConfiguration: \r\n");
                dbmsg_ftrace(DBM_3D,"        Format                   = %d \r\n",it6802data->de3dframe_config.Format);
                dbmsg_ftrace(DBM_3D,"        LR_Reference             = %d \r\n",it6802data->de3dframe_config.LR_Reference);
                dbmsg_ftrace(DBM_3D,"        FrameDominance           = %d \r\n",it6802data->de3dframe_config.FrameDominance);
                dbmsg_ftrace(DBM_3D,"        LR_Encoding              = %d \r\n",it6802data->de3dframe_config.LR_Encoding);
                dbmsg_ftrace(DBM_3D,"        TB_Reference             = %d \r\n",it6802data->de3dframe_config.TB_Reference);
                dbmsg_ftrace(DBM_3D,"        OE_Reference             = %d \r\n",it6802data->de3dframe_config.OE_Reference);
                dbmsg_ftrace(DBM_3D,"        NumActiveBlankLines      = %d \r\n",it6802data->de3dframe_config.NumActiveBlankLines);
                dbmsg_ftrace(DBM_3D,"        NumberOfEncodedLines     = %d \r\n",it6802data->de3dframe_config.NumberOfEncodedLines);
                dbmsg_ftrace(DBM_3D,"        LeftEncodedLineLocation  = %d \r\n",it6802data->de3dframe_config.LeftEncodedLineLocation);
                dbmsg_ftrace(DBM_3D,"        RightEncodedLineLocation = %d \r\n",it6802data->de3dframe_config.RightEncodedLineLocation);
                dbmsg_ftrace(DBM_3D,"        BlankingColor            = %d \r\n",it6802data->de3dframe_config.BlankingColor );

				#else
				MHLRX_DEBUG_PRINTF(printf("\r\nIT680x - HDMI_3D_SourceConfiguration: \r\n"));
				MHLRX_DEBUG_PRINTF(printf("        Format                   = %d \r\n",it6802data->de3dframe_config.Format));
				MHLRX_DEBUG_PRINTF(printf("        LR_Reference             = %d \r\n",it6802data->de3dframe_config.LR_Reference));
				MHLRX_DEBUG_PRINTF(printf("        FrameDominance           = %d \r\n",it6802data->de3dframe_config.FrameDominance));
				MHLRX_DEBUG_PRINTF(printf("        LR_Encoding              = %d \r\n",it6802data->de3dframe_config.LR_Encoding));
				MHLRX_DEBUG_PRINTF(printf("        TB_Reference             = %d \r\n",it6802data->de3dframe_config.TB_Reference));
				MHLRX_DEBUG_PRINTF(printf("        OE_Reference             = %d \r\n",it6802data->de3dframe_config.OE_Reference));
				MHLRX_DEBUG_PRINTF(printf("        NumActiveBlankLines      = %d \r\n",it6802data->de3dframe_config.NumActiveBlankLines));
				MHLRX_DEBUG_PRINTF(printf("        NumberOfEncodedLines     = %d \r\n",it6802data->de3dframe_config.NumberOfEncodedLines));
				MHLRX_DEBUG_PRINTF(printf("        LeftEncodedLineLocation  = %d \r\n",it6802data->de3dframe_config.LeftEncodedLineLocation));
				MHLRX_DEBUG_PRINTF(printf("        RightEncodedLineLocation = %d \r\n",it6802data->de3dframe_config.RightEncodedLineLocation));
				MHLRX_DEBUG_PRINTF(printf("        BlankingColor            = %d \r\n",it6802data->de3dframe_config.BlankingColor ));
                #endif

                return TRUE;
            }
        }

        if(it6802data->DE3DFormat_HDMIFlag)// 3D InfoFrame Packet Type is not valid
        {
            #ifdef DEBUG_MODE_3D
            dbmsg_trace(DBM_3D,"IT680x - HDMI_3DFORMAT is OFF \r\n");
            #endif

//ralph
//detect3D_Port_3D_Off();
//mbSend( detect3DMbxID, D3DMSG_STATE_PORT_2D, -1, 0, FALSE, 0);
//dbmsg_ftrace( DBM_3D, "detect3D_Port_3D_Off: Current state=%s\r\n", detect3DStateStringTable[detect3DState]);

            it6802data->DE3DFormat_HDMIFlag = FALSE;
            it6802data->FramePacking_Flag   = FALSE;
            it6802data->TopAndBottom_Flag   = FALSE;
            it6802data->SideBySide_Flag     = FALSE;
        }

        /******************************  3D integration  *************************************/
    }

    return FALSE;
}

