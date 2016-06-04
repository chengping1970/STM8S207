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
  27  000a 5b            	dc.b	91
  28  000b 7d            	dc.b	125
  29  000c df            	dc.b	223
  30  000d e7            	dc.b	231
  31  000e 0d            	dc.b	13
  32  000f               _register_default_value:
  33  000f a5            	dc.b	165
  34  0010 80            	dc.b	128
  35  0011 cc            	dc.b	204
  36  0012 8f            	dc.b	143
  37  0013 de            	dc.b	222
  38  0014 60            	dc.b	96
  39  0015 00            	dc.b	0
  40  0016 30            	dc.b	48
  41  0017 01            	dc.b	1
  42  0018 ff            	dc.b	255
  43  0019 04            	dc.b	4
  44  001a 17            	dc.b	23
  45  001b 2c            	dc.b	44
  46  001c 97            	dc.b	151
  47  001d bb            	dc.b	187
  48  001e 24            	dc.b	36
  49  001f               _table_size:
  50  001f 0f            	dc.b	15
  94                     ; 64 void flash_init(void)
  94                     ; 65 {
  95                     	switch	.text
  96  0000               f_flash_init:
  98  0000 88            	push	a
  99       00000001      OFST:	set	1
 102                     ; 67 	FLASH_SetProgrammingTime(FLASH_PROGRAMTIME_STANDARD);
 104  0001 4f            	clr	a
 105  0002 8d000000      	callf	f_FLASH_SetProgrammingTime
 107                     ; 70 	FLASH_Unlock(FLASH_MEMTYPE_DATA);
 109  0006 a6f7          	ld	a,#247
 110  0008 8d000000      	callf	f_FLASH_Unlock
 113  000c               L72:
 114                     ; 72 	while (FLASH_GetFlagStatus(FLASH_FLAG_DUL) == RESET)
 116  000c a608          	ld	a,#8
 117  000e 8d000000      	callf	f_FLASH_GetFlagStatus
 119  0012 4d            	tnz	a
 120  0013 27f7          	jreq	L72
 121                     ; 75 	if (FLASH_ReadByte(0x4000) != INIT_FLAG)
 124  0015 ae4000        	ldw	x,#16384
 125  0018 89            	pushw	x
 126  0019 ae0000        	ldw	x,#0
 127  001c 89            	pushw	x
 128  001d 8d000000      	callf	f_FLASH_ReadByte
 130  0021 5b04          	addw	sp,#4
 131  0023 a1a5          	cp	a,#165
 132  0025 2729          	jreq	L33
 133                     ; 78 		for (i = 0; i < sizeof(register_default_value); i++)
 135  0027 0f01          	clr	(OFST+0,sp)
 136  0029               L53:
 137                     ; 80 			FLASH_ProgramByte(0x4000 + i,register_default_value[i]);
 139  0029 7b01          	ld	a,(OFST+0,sp)
 140  002b 5f            	clrw	x
 141  002c 97            	ld	xl,a
 142  002d d6000f        	ld	a,(_register_default_value,x)
 143  0030 88            	push	a
 144  0031 7b02          	ld	a,(OFST+1,sp)
 145  0033 5f            	clrw	x
 146  0034 97            	ld	xl,a
 147  0035 1c4000        	addw	x,#16384
 148  0038 8d000000      	callf	d_itolx
 150  003c be02          	ldw	x,c_lreg+2
 151  003e 89            	pushw	x
 152  003f be00          	ldw	x,c_lreg
 153  0041 89            	pushw	x
 154  0042 8d000000      	callf	f_FLASH_ProgramByte
 156  0046 5b05          	addw	sp,#5
 157                     ; 78 		for (i = 0; i < sizeof(register_default_value); i++)
 159  0048 0c01          	inc	(OFST+0,sp)
 162  004a 7b01          	ld	a,(OFST+0,sp)
 163  004c a110          	cp	a,#16
 164  004e 25d9          	jrult	L53
 165  0050               L33:
 166                     ; 83 }
 169  0050 84            	pop	a
 170  0051 87            	retf
 203                     ; 85 main()
 203                     ; 86 {	
 204                     	switch	.text
 205  0052               f_main:
 209                     ; 95   	CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
 211  0052 4f            	clr	a
 212  0053 8d000000      	callf	f_CLK_HSIPrescalerConfig
 214                     ; 97 	SWI2C_Init();
 216  0057 8d000000      	callf	f_SWI2C_Init
 218                     ; 98 	flash_init();	
 220  005b 8d000000      	callf	f_flash_init
 222                     ; 99 	IR_IN_Init();
 224  005f 8d000000      	callf	f_IR_IN_Init
 226                     ; 100 	Timer_Init();
 228  0063 8d000000      	callf	f_Timer_Init
 230                     ; 101 	UART_Init();
 232  0067 8d000000      	callf	f_UART_Init
 234                     ; 104 	enableInterrupts();	
 237  006b 9a            rim
 239                     ; 106 	SWI2C_SystemPowerUp();
 242  006c 8d000000      	callf	f_SWI2C_SystemPowerUp
 244  0070               L35:
 245                     ; 110 		IR_Update();
 247  0070 8d000000      	callf	f_IR_Update
 249                     ; 111 		SWI2C_Update();
 251  0074 8d000000      	callf	f_SWI2C_Update
 253                     ; 112 		UART_Update();		
 255  0078 8d000000      	callf	f_UART_Update
 258  007c 20f2          	jra	L35
 302                     	xdef	f_main
 303                     	xdef	f_flash_init
 304                     	xdef	_table_size
 305                     	xdef	_register_default_value
 306                     	xdef	_address_table
 307                     	xref	f_FLASH_GetFlagStatus
 308                     	xref	f_FLASH_SetProgrammingTime
 309                     	xref	f_FLASH_ReadByte
 310                     	xref	f_FLASH_ProgramByte
 311                     	xref	f_FLASH_Unlock
 312                     	xref	f_UART_Update
 313                     	xref	f_UART_Init
 314                     	xref	f_IR_Update
 315                     	xref	f_Timer_Init
 316                     	xref	f_IR_IN_Init
 317                     	xref	f_SWI2C_SystemPowerUp
 318                     	xref	f_SWI2C_Update
 319                     	xref	f_SWI2C_Init
 320                     	xref	f_CLK_HSIPrescalerConfig
 321                     	xref.b	c_lreg
 340                     	xref	d_itolx
 341                     	end
