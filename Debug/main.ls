   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  15                     .const:	section	.text
  16  0000               _address_table:
  17  0000 57            	dc.b	87
  18  0001 c8            	dc.b	200
  19  0002 c9            	dc.b	201
  20  0003 ca            	dc.b	202
  21  0004 cb            	dc.b	203
  22  0005 18            	dc.b	24
  23  0006 47            	dc.b	71
  24  0007 48            	dc.b	72
  25  0008 49            	dc.b	73
  26  0009 4a            	dc.b	74
  27  000a 58            	dc.b	88
  28  000b 59            	dc.b	89
  29  000c 5a            	dc.b	90
  30  000d 5b            	dc.b	91
  31  000e 5c            	dc.b	92
  32  000f 7d            	dc.b	125
  33  0010 df            	dc.b	223
  34  0011 e7            	dc.b	231
  35  0012 0d            	dc.b	13
  36  0013               _table_size:
  37  0013 13            	dc.b	19
  38  0014               _register_default_value:
  39  0014 a5            	dc.b	165
  40  0015 80            	dc.b	128
  41  0016 cc            	dc.b	204
  42  0017 8f            	dc.b	143
  43  0018 de            	dc.b	222
  44  0019 60            	dc.b	96
  45  001a 00            	dc.b	0
  46  001b 30            	dc.b	48
  47  001c 01            	dc.b	1
  48  001d ff            	dc.b	255
  49  001e 35            	dc.b	53
  50  001f 23            	dc.b	35
  51  0020 40            	dc.b	64
  52  0021 80            	dc.b	128
  53  0022 17            	dc.b	23
  54  0023 80            	dc.b	128
  55  0024 2c            	dc.b	44
  56  0025 9d            	dc.b	157
  57  0026 bd            	dc.b	189
  58  0027 24            	dc.b	36
 102                     ; 70 void flash_init(void)
 102                     ; 71 {
 103                     	switch	.text
 104  0000               f_flash_init:
 106  0000 88            	push	a
 107       00000001      OFST:	set	1
 110                     ; 73 	FLASH_SetProgrammingTime(FLASH_PROGRAMTIME_STANDARD);
 112  0001 4f            	clr	a
 113  0002 8d000000      	callf	f_FLASH_SetProgrammingTime
 115                     ; 76 	FLASH_Unlock(FLASH_MEMTYPE_DATA);
 117  0006 a6f7          	ld	a,#247
 118  0008 8d000000      	callf	f_FLASH_Unlock
 121  000c               L72:
 122                     ; 78 	while (FLASH_GetFlagStatus(FLASH_FLAG_DUL) == RESET)
 124  000c a608          	ld	a,#8
 125  000e 8d000000      	callf	f_FLASH_GetFlagStatus
 127  0012 4d            	tnz	a
 128  0013 27f7          	jreq	L72
 129                     ; 81 	if (FLASH_ReadByte(EEPROM_START_ADDRESS) != INIT_FLAG)
 132  0015 ae4000        	ldw	x,#16384
 133  0018 89            	pushw	x
 134  0019 ae0000        	ldw	x,#0
 135  001c 89            	pushw	x
 136  001d 8d000000      	callf	f_FLASH_ReadByte
 138  0021 5b04          	addw	sp,#4
 139  0023 a1a5          	cp	a,#165
 140  0025 2729          	jreq	L33
 141                     ; 84 		for (i = 0; i < sizeof(register_default_value); i++)
 143  0027 0f01          	clr	(OFST+0,sp)
 144  0029               L53:
 145                     ; 86 			FLASH_ProgramByte(EEPROM_START_ADDRESS + i,register_default_value[i]);
 147  0029 7b01          	ld	a,(OFST+0,sp)
 148  002b 5f            	clrw	x
 149  002c 97            	ld	xl,a
 150  002d d60014        	ld	a,(_register_default_value,x)
 151  0030 88            	push	a
 152  0031 7b02          	ld	a,(OFST+1,sp)
 153  0033 5f            	clrw	x
 154  0034 97            	ld	xl,a
 155  0035 1c4000        	addw	x,#16384
 156  0038 8d000000      	callf	d_itolx
 158  003c be02          	ldw	x,c_lreg+2
 159  003e 89            	pushw	x
 160  003f be00          	ldw	x,c_lreg
 161  0041 89            	pushw	x
 162  0042 8d000000      	callf	f_FLASH_ProgramByte
 164  0046 5b05          	addw	sp,#5
 165                     ; 84 		for (i = 0; i < sizeof(register_default_value); i++)
 167  0048 0c01          	inc	(OFST+0,sp)
 170  004a 7b01          	ld	a,(OFST+0,sp)
 171  004c a114          	cp	a,#20
 172  004e 25d9          	jrult	L53
 173  0050               L33:
 174                     ; 89 }
 177  0050 84            	pop	a
 178  0051 87            	retf
 211                     ; 91 main()
 211                     ; 92 {	
 212                     	switch	.text
 213  0052               f_main:
 217                     ; 101   	CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
 219  0052 4f            	clr	a
 220  0053 8d000000      	callf	f_CLK_HSIPrescalerConfig
 222                     ; 103 	SWI2C_Init();
 224  0057 8d000000      	callf	f_SWI2C_Init
 226                     ; 104 	flash_init();	
 228  005b 8d000000      	callf	f_flash_init
 230                     ; 105 	IR_IN_Init();
 232  005f 8d000000      	callf	f_IR_IN_Init
 234                     ; 106 	Timer_Init();
 236  0063 8d000000      	callf	f_Timer_Init
 238                     ; 107 	UART_Init();
 240  0067 8d000000      	callf	f_UART_Init
 242                     ; 110 	enableInterrupts();	
 245  006b 9a            rim
 247                     ; 112 	SWI2C_SystemPowerUp();
 250  006c 8d000000      	callf	f_SWI2C_SystemPowerUp
 252  0070               L35:
 253                     ; 116 		IR_Update();
 255  0070 8d000000      	callf	f_IR_Update
 257                     ; 117 		SWI2C_Update();
 259  0074 8d000000      	callf	f_SWI2C_Update
 261                     ; 118 		UART_Update();		
 263  0078 8d000000      	callf	f_UART_Update
 266  007c 20f2          	jra	L35
 310                     	xdef	f_main
 311                     	xdef	f_flash_init
 312                     	xdef	_register_default_value
 313                     	xdef	_table_size
 314                     	xdef	_address_table
 315                     	xref	f_FLASH_GetFlagStatus
 316                     	xref	f_FLASH_SetProgrammingTime
 317                     	xref	f_FLASH_ReadByte
 318                     	xref	f_FLASH_ProgramByte
 319                     	xref	f_FLASH_Unlock
 320                     	xref	f_UART_Update
 321                     	xref	f_UART_Init
 322                     	xref	f_IR_Update
 323                     	xref	f_Timer_Init
 324                     	xref	f_IR_IN_Init
 325                     	xref	f_SWI2C_SystemPowerUp
 326                     	xref	f_SWI2C_Update
 327                     	xref	f_SWI2C_Init
 328                     	xref	f_CLK_HSIPrescalerConfig
 329                     	xref.b	c_lreg
 348                     	xref	d_itolx
 349                     	end
