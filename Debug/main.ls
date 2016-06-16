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
 140  0025 273b          	jreq	L33
 141                     ; 84 		for (i = 1; i < sizeof(register_default_value); i++)
 143  0027 a601          	ld	a,#1
 144  0029 6b01          	ld	(OFST+0,sp),a
 145  002b               L53:
 146                     ; 86 			FLASH_ProgramByte(EEPROM_START_ADDRESS + i,register_default_value[i]);
 148  002b 7b01          	ld	a,(OFST+0,sp)
 149  002d 5f            	clrw	x
 150  002e 97            	ld	xl,a
 151  002f d60014        	ld	a,(_register_default_value,x)
 152  0032 88            	push	a
 153  0033 7b02          	ld	a,(OFST+1,sp)
 154  0035 5f            	clrw	x
 155  0036 97            	ld	xl,a
 156  0037 1c4000        	addw	x,#16384
 157  003a 8d000000      	callf	d_itolx
 159  003e be02          	ldw	x,c_lreg+2
 160  0040 89            	pushw	x
 161  0041 be00          	ldw	x,c_lreg
 162  0043 89            	pushw	x
 163  0044 8d000000      	callf	f_FLASH_ProgramByte
 165  0048 5b05          	addw	sp,#5
 166                     ; 84 		for (i = 1; i < sizeof(register_default_value); i++)
 168  004a 0c01          	inc	(OFST+0,sp)
 171  004c 7b01          	ld	a,(OFST+0,sp)
 172  004e a114          	cp	a,#20
 173  0050 25d9          	jrult	L53
 174                     ; 88 		FLASH_ProgramByte(EEPROM_START_ADDRESS, INIT_FLAG);
 176  0052 4ba5          	push	#165
 177  0054 ae4000        	ldw	x,#16384
 178  0057 89            	pushw	x
 179  0058 ae0000        	ldw	x,#0
 180  005b 89            	pushw	x
 181  005c 8d000000      	callf	f_FLASH_ProgramByte
 183  0060 5b05          	addw	sp,#5
 184  0062               L33:
 185                     ; 90 }
 188  0062 84            	pop	a
 189  0063 87            	retf
 222                     ; 92 main()
 222                     ; 93 {	
 223                     	switch	.text
 224  0064               f_main:
 228                     ; 102   	CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
 230  0064 4f            	clr	a
 231  0065 8d000000      	callf	f_CLK_HSIPrescalerConfig
 233                     ; 104 	SWI2C_Init();
 235  0069 8d000000      	callf	f_SWI2C_Init
 237                     ; 105 	flash_init();	
 239  006d 8d000000      	callf	f_flash_init
 241                     ; 106 	IR_IN_Init();
 243  0071 8d000000      	callf	f_IR_IN_Init
 245                     ; 107 	Timer_Init();
 247  0075 8d000000      	callf	f_Timer_Init
 249                     ; 108 	UART_Init();
 251  0079 8d000000      	callf	f_UART_Init
 253                     ; 111 	enableInterrupts();	
 256  007d 9a            rim
 258                     ; 113 	SWI2C_SystemPowerUp();
 261  007e 8d000000      	callf	f_SWI2C_SystemPowerUp
 263  0082               L35:
 264                     ; 117 		IR_Update();
 266  0082 8d000000      	callf	f_IR_Update
 268                     ; 118 		SWI2C_Update();
 270  0086 8d000000      	callf	f_SWI2C_Update
 272                     ; 119 		UART_Update();		
 274  008a 8d000000      	callf	f_UART_Update
 277  008e 20f2          	jra	L35
 321                     	xdef	f_main
 322                     	xdef	f_flash_init
 323                     	xdef	_register_default_value
 324                     	xdef	_table_size
 325                     	xdef	_address_table
 326                     	xref	f_FLASH_GetFlagStatus
 327                     	xref	f_FLASH_SetProgrammingTime
 328                     	xref	f_FLASH_ReadByte
 329                     	xref	f_FLASH_ProgramByte
 330                     	xref	f_FLASH_Unlock
 331                     	xref	f_UART_Update
 332                     	xref	f_UART_Init
 333                     	xref	f_IR_Update
 334                     	xref	f_Timer_Init
 335                     	xref	f_IR_IN_Init
 336                     	xref	f_SWI2C_SystemPowerUp
 337                     	xref	f_SWI2C_Update
 338                     	xref	f_SWI2C_Init
 339                     	xref	f_CLK_HSIPrescalerConfig
 340                     	xref.b	c_lreg
 359                     	xref	d_itolx
 360                     	end
