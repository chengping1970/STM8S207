   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  48                     ; 18 void flash_init(void)
  48                     ; 19 {
  49                     	switch	.text
  50  0000               f_flash_init:
  54                     ; 21 	FLASH_SetProgrammingTime(FLASH_PROGRAMTIME_STANDARD);
  56  0000 4f            	clr	a
  57  0001 8d000000      	callf	f_FLASH_SetProgrammingTime
  59                     ; 24 	FLASH_Unlock(FLASH_MEMTYPE_DATA);
  61  0005 a6f7          	ld	a,#247
  62  0007 8d000000      	callf	f_FLASH_Unlock
  65  000b               L32:
  66                     ; 26 	while (FLASH_GetFlagStatus(FLASH_FLAG_DUL) == RESET)
  68  000b a608          	ld	a,#8
  69  000d 8d000000      	callf	f_FLASH_GetFlagStatus
  71  0011 4d            	tnz	a
  72  0012 27f7          	jreq	L32
  73                     ; 29 	if (FLASH_ReadByte(0x4000) != 0x55)
  76  0014 ae4000        	ldw	x,#16384
  77  0017 89            	pushw	x
  78  0018 ae0000        	ldw	x,#0
  79  001b 89            	pushw	x
  80  001c 8d000000      	callf	f_FLASH_ReadByte
  82  0020 5b04          	addw	sp,#4
  83  0022 a155          	cp	a,#85
  84  0024 2750          	jreq	L72
  85                     ; 31 		FLASH_ProgramByte(0x4000,0x55);
  87  0026 4b55          	push	#85
  88  0028 ae4000        	ldw	x,#16384
  89  002b 89            	pushw	x
  90  002c ae0000        	ldw	x,#0
  91  002f 89            	pushw	x
  92  0030 8d000000      	callf	f_FLASH_ProgramByte
  94  0034 5b05          	addw	sp,#5
  95                     ; 32 		FLASH_ProgramByte(0x4001,0x05);
  97  0036 4b05          	push	#5
  98  0038 ae4001        	ldw	x,#16385
  99  003b 89            	pushw	x
 100  003c ae0000        	ldw	x,#0
 101  003f 89            	pushw	x
 102  0040 8d000000      	callf	f_FLASH_ProgramByte
 104  0044 5b05          	addw	sp,#5
 105                     ; 33 		FLASH_ProgramByte(0x4002,0x05);
 107  0046 4b05          	push	#5
 108  0048 ae4002        	ldw	x,#16386
 109  004b 89            	pushw	x
 110  004c ae0000        	ldw	x,#0
 111  004f 89            	pushw	x
 112  0050 8d000000      	callf	f_FLASH_ProgramByte
 114  0054 5b05          	addw	sp,#5
 115                     ; 34 		FLASH_ProgramByte(0x4003,0x19);
 117  0056 4b19          	push	#25
 118  0058 ae4003        	ldw	x,#16387
 119  005b 89            	pushw	x
 120  005c ae0000        	ldw	x,#0
 121  005f 89            	pushw	x
 122  0060 8d000000      	callf	f_FLASH_ProgramByte
 124  0064 5b05          	addw	sp,#5
 125                     ; 35 		FLASH_ProgramByte(0x4004,0x00);
 127  0066 4b00          	push	#0
 128  0068 ae4004        	ldw	x,#16388
 129  006b 89            	pushw	x
 130  006c ae0000        	ldw	x,#0
 131  006f 89            	pushw	x
 132  0070 8d000000      	callf	f_FLASH_ProgramByte
 134  0074 5b05          	addw	sp,#5
 135  0076               L72:
 136                     ; 37 }
 139  0076 87            	retf
 172                     ; 39 main()
 172                     ; 40 {	
 173                     	switch	.text
 174  0077               f_main:
 178                     ; 49   	CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
 180  0077 4f            	clr	a
 181  0078 8d000000      	callf	f_CLK_HSIPrescalerConfig
 183                     ; 51 	SWI2C_Init();
 185  007c 8d000000      	callf	f_SWI2C_Init
 187                     ; 52 	flash_init();	
 189  0080 8d000000      	callf	f_flash_init
 191                     ; 53 	IR_IN_Init();
 193  0084 8d000000      	callf	f_IR_IN_Init
 195                     ; 54 	Timer_Init();
 197  0088 8d000000      	callf	f_Timer_Init
 199                     ; 55 	UART_Init();
 201  008c 8d000000      	callf	f_UART_Init
 203                     ; 58 	enableInterrupts();	
 206  0090 9a            rim
 208                     ; 60 	SWI2C_SystemPowerUp();
 211  0091 8d000000      	callf	f_SWI2C_SystemPowerUp
 213  0095               L14:
 214                     ; 64 		IR_Update();
 216  0095 8d000000      	callf	f_IR_Update
 218                     ; 65 		SWI2C_Update();
 220  0099 8d000000      	callf	f_SWI2C_Update
 222                     ; 66 		UART_Update();		
 224  009d 8d000000      	callf	f_UART_Update
 227  00a1 20f2          	jra	L14
 239                     	xdef	f_main
 240                     	xdef	f_flash_init
 241                     	xref	f_FLASH_GetFlagStatus
 242                     	xref	f_FLASH_SetProgrammingTime
 243                     	xref	f_FLASH_ReadByte
 244                     	xref	f_FLASH_ProgramByte
 245                     	xref	f_FLASH_Unlock
 246                     	xref	f_UART_Update
 247                     	xref	f_UART_Init
 248                     	xref	f_IR_Update
 249                     	xref	f_Timer_Init
 250                     	xref	f_IR_IN_Init
 251                     	xref	f_SWI2C_SystemPowerUp
 252                     	xref	f_SWI2C_Update
 253                     	xref	f_SWI2C_Init
 254                     	xref	f_CLK_HSIPrescalerConfig
 273                     	end
