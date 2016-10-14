   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  15                     	switch	.data
  16  0000               L7_uart_received:
  17  0000 00            	dc.b	0
  18  0001               L31_uart_data_length:
  19  0001 0008          	dc.w	8
  54                     ; 44 INTERRUPT_HANDLER(UART_ISR, 21)
  54                     ; 45 {
  55                     	switch	.text
  56  0000               f_UART_ISR:
  58  0000 3b0002        	push	c_x+2
  59  0003 be00          	ldw	x,c_x
  60  0005 89            	pushw	x
  61  0006 3b0002        	push	c_y+2
  62  0009 be00          	ldw	x,c_y
  63  000b 89            	pushw	x
  66                     ; 46 	uart_rx_buffer[uart_rx_index] = UART3_ReceiveData8();
  68  000c c60107        	ld	a,L5_uart_rx_index
  69  000f 5f            	clrw	x
  70  0010 97            	ld	xl,a
  71  0011 89            	pushw	x
  72  0012 8d000000      	callf	f_UART3_ReceiveData8
  74  0016 85            	popw	x
  75  0017 d70108        	ld	(L3_uart_rx_buffer,x),a
  76                     ; 47 	UART3_ClearITPendingBit(UART3_IT_RXNE);
  78  001a ae0255        	ldw	x,#597
  79  001d 8d000000      	callf	f_UART3_ClearITPendingBit
  81                     ; 49 	if (uart_rx_index == 0)
  83  0021 725d0107      	tnz	L5_uart_rx_index
  84  0025 260d          	jrne	L33
  85                     ; 51 		if (uart_rx_buffer[0] != 0xFF)
  87  0027 c60108        	ld	a,L3_uart_rx_buffer
  88  002a a1ff          	cp	a,#255
  89  002c 2725          	jreq	L73
  90                     ; 53 			uart_rx_index = 0;
  92  002e 725f0107      	clr	L5_uart_rx_index
  93                     ; 54 			return;
  95  0032 2012          	jra	L6
  96  0034               L33:
  97                     ; 57 	else if (uart_rx_index == 1)
  99  0034 c60107        	ld	a,L5_uart_rx_index
 100  0037 a101          	cp	a,#1
 101  0039 2618          	jrne	L73
 102                     ; 59 		if (uart_rx_buffer[1] != 0x55)
 104  003b c60109        	ld	a,L3_uart_rx_buffer+1
 105  003e a155          	cp	a,#85
 106  0040 2711          	jreq	L73
 107                     ; 61 			uart_rx_index = 0;
 109  0042 725f0107      	clr	L5_uart_rx_index
 110                     ; 62 			return;
 111  0046               L6:
 114  0046 85            	popw	x
 115  0047 bf00          	ldw	c_y,x
 116  0049 320002        	pop	c_y+2
 117  004c 85            	popw	x
 118  004d bf00          	ldw	c_x,x
 119  004f 320002        	pop	c_x+2
 120  0052 80            	iret
 121  0053               L73:
 122                     ; 65 	if (uart_rx_buffer[2] == DATA_COMMAND_WRITE_BANK)
 124  0053 c6010a        	ld	a,L3_uart_rx_buffer+2
 125  0056 a102          	cp	a,#2
 126  0058 2608          	jrne	L54
 127                     ; 67 		uart_data_length = UART_BUFFER_MAX_LENGTH + 2;
 129  005a ae0107        	ldw	x,#263
 130  005d cf0001        	ldw	L31_uart_data_length,x
 132  0060 2006          	jra	L74
 133  0062               L54:
 134                     ; 71 		uart_data_length = 8;
 136  0062 ae0008        	ldw	x,#8
 137  0065 cf0001        	ldw	L31_uart_data_length,x
 138  0068               L74:
 139                     ; 73 	uart_rx_index++;
 141  0068 725c0107      	inc	L5_uart_rx_index
 142                     ; 75 	if (uart_rx_index == uart_data_length)
 144  006c c60107        	ld	a,L5_uart_rx_index
 145  006f 5f            	clrw	x
 146  0070 97            	ld	xl,a
 147  0071 c30001        	cpw	x,L31_uart_data_length
 148  0074 2608          	jrne	L15
 149                     ; 77 		uart_rx_index = 0;
 151  0076 725f0107      	clr	L5_uart_rx_index
 152                     ; 78 		uart_received = TRUE;
 154  007a 35010000      	mov	L7_uart_received,#1
 155  007e               L15:
 156                     ; 80 }
 158  007e 20c6          	jra	L6
 191                     ; 122 void UART_PutChar(char c)
 191                     ; 123 {
 192                     	switch	.text
 193  0080               f_UART_PutChar:
 197                     ; 124   UART3_SendData8(c);
 199  0080 8d000000      	callf	f_UART3_SendData8
 202  0084               L17:
 203                     ; 125   while (UART3_GetFlagStatus(UART1_FLAG_TXE) == RESET);
 205  0084 ae0080        	ldw	x,#128
 206  0087 8d000000      	callf	f_UART3_GetFlagStatus
 208  008b 4d            	tnz	a
 209  008c 27f6          	jreq	L17
 210                     ; 126 }
 213  008e 87            	retf
 262                     ; 135 void UART_Send(u8 * reply, u16 count)
 262                     ; 136 {
 263                     	switch	.text
 264  008f               f_UART_Send:
 266  008f 89            	pushw	x
 267  0090 89            	pushw	x
 268       00000002      OFST:	set	2
 271                     ; 139 	for (i = 0; i < count;i++)
 273  0091 5f            	clrw	x
 274  0092 1f01          	ldw	(OFST-1,sp),x
 276  0094 2016          	jra	L321
 277  0096               L711:
 278                     ; 141 		UART_PutChar(* reply++);
 280  0096 1e03          	ldw	x,(OFST+1,sp)
 281  0098 1c0001        	addw	x,#1
 282  009b 1f03          	ldw	(OFST+1,sp),x
 283  009d 1d0001        	subw	x,#1
 284  00a0 f6            	ld	a,(x)
 285  00a1 8d800080      	callf	f_UART_PutChar
 287                     ; 139 	for (i = 0; i < count;i++)
 289  00a5 1e01          	ldw	x,(OFST-1,sp)
 290  00a7 1c0001        	addw	x,#1
 291  00aa 1f01          	ldw	(OFST-1,sp),x
 292  00ac               L321:
 295  00ac 1e01          	ldw	x,(OFST-1,sp)
 296  00ae 1308          	cpw	x,(OFST+6,sp)
 297  00b0 25e4          	jrult	L711
 298                     ; 143 }
 301  00b2 5b04          	addw	sp,#4
 302  00b4 87            	retf
 330                     ; 145 void UART_Init(void)
 330                     ; 146 {
 331                     	switch	.text
 332  00b5               f_UART_Init:
 336                     ; 147 	UART1_Init((uint32_t)115200, UART1_WORDLENGTH_8D, UART1_STOPBITS_1, UART1_PARITY_NO, UART1_SYNCMODE_CLOCK_DISABLE, UART1_MODE_TXRX_ENABLE);
 338  00b5 4b0c          	push	#12
 339  00b7 4b80          	push	#128
 340  00b9 4b00          	push	#0
 341  00bb 4b00          	push	#0
 342  00bd 4b00          	push	#0
 343  00bf aec200        	ldw	x,#49664
 344  00c2 89            	pushw	x
 345  00c3 ae0001        	ldw	x,#1
 346  00c6 89            	pushw	x
 347  00c7 8d000000      	callf	f_UART1_Init
 349  00cb 5b09          	addw	sp,#9
 350                     ; 151 	UART1_Cmd(ENABLE);
 352  00cd a601          	ld	a,#1
 353  00cf 8d000000      	callf	f_UART1_Cmd
 355                     ; 153 	UART3_Init((uint32_t)115200, UART3_WORDLENGTH_8D, UART3_STOPBITS_1, UART3_PARITY_NO, UART3_MODE_TXRX_ENABLE);
 357  00d3 4b0c          	push	#12
 358  00d5 4b00          	push	#0
 359  00d7 4b00          	push	#0
 360  00d9 4b00          	push	#0
 361  00db aec200        	ldw	x,#49664
 362  00de 89            	pushw	x
 363  00df ae0001        	ldw	x,#1
 364  00e2 89            	pushw	x
 365  00e3 8d000000      	callf	f_UART3_Init
 367  00e7 5b08          	addw	sp,#8
 368                     ; 155 	UART3_ITConfig(UART3_IT_RXNE, ENABLE);
 370  00e9 4b01          	push	#1
 371  00eb ae0255        	ldw	x,#597
 372  00ee 8d000000      	callf	f_UART3_ITConfig
 374  00f2 84            	pop	a
 375                     ; 157 	UART3_Cmd(ENABLE);
 377  00f3 a601          	ld	a,#1
 378  00f5 8d000000      	callf	f_UART3_Cmd
 380                     ; 159 	uart_rx_index = 0;
 382  00f9 725f0107      	clr	L5_uart_rx_index
 383                     ; 160 }
 386  00fd 87            	retf
 458                     .const:	section	.text
 459  0000               L22:
 460  0000 00000100      	dc.l	256
 461  0004               L42:
 462  0004 00000020      	dc.l	32
 463  0008               L03:
 464  0008 00000008      	dc.l	8
 465                     ; 162 void UART_Update(void)
 465                     ; 163 {
 466                     	switch	.text
 467  00fe               f_UART_Update:
 469  00fe 5206          	subw	sp,#6
 470       00000006      OFST:	set	6
 473                     ; 164 	if (uart_received)
 475  0100 725d0000      	tnz	L7_uart_received
 476  0104 2604          	jrne	L23
 477  0106 ac3f043f      	jpf	L312
 478  010a               L23:
 479                     ; 167 		uart_received = FALSE;		
 481  010a 725f0000      	clr	L7_uart_received
 482                     ; 170 		memcpy(uart_rxtx_data, uart_rx_buffer, UART_BUFFER_MAX_LENGTH + 2);
 484  010e ae0107        	ldw	x,#263
 485  0111               L02:
 486  0111 d60107        	ld	a,(L3_uart_rx_buffer-1,x)
 487  0114 d7ffff        	ld	(L11_uart_rxtx_data-1,x),a
 488  0117 5a            	decw	x
 489  0118 26f7          	jrne	L02
 490                     ; 172 		switch (uart_rxtx_data[DP_COMMAND])
 492  011a c60002        	ld	a,L11_uart_rxtx_data+2
 494                     ; 363 			default:
 494                     ; 364 				break;
 495  011d 4d            	tnz	a
 496  011e 2724          	jreq	L731
 497  0120 4a            	dec	a
 498  0121 276d          	jreq	L141
 499  0123 4a            	dec	a
 500  0124 2604          	jrne	L43
 501  0126 acee01ee      	jpf	L341
 502  012a               L43:
 503  012a 4a            	dec	a
 504  012b 2604          	jrne	L63
 505  012d acbf02bf      	jpf	L541
 506  0131               L63:
 507  0131 4a            	dec	a
 508  0132 2604          	jrne	L04
 509  0134 ac8d038d      	jpf	L741
 510  0138               L04:
 511  0138 a002          	sub	a,#2
 512  013a 2604          	jrne	L24
 513  013c acdd03dd      	jpf	L361
 514  0140               L24:
 515  0140 ac3f043f      	jpf	L312
 516  0144               L731:
 517                     ; 174 			case DATA_COMMAND_WRITE_BYTE:
 517                     ; 175 				checksum = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
 519  0144 c60003        	ld	a,L11_uart_rxtx_data+3
 520  0147 cb0004        	add	a,L11_uart_rxtx_data+4
 521  014a cb0005        	add	a,L11_uart_rxtx_data+5
 522  014d cb0006        	add	a,L11_uart_rxtx_data+6
 523  0150 a000          	sub	a,#0
 524  0152 40            	neg	a
 525  0153 6b05          	ld	(OFST-1,sp),a
 526                     ; 176 				if (checksum == uart_rxtx_data[DP_CHECK_SUM])
 528  0155 7b05          	ld	a,(OFST-1,sp)
 529  0157 c10007        	cp	a,L11_uart_rxtx_data+7
 530  015a 2620          	jrne	L122
 531                     ; 178 					ret = SWI2C_WriteBytes(uart_rxtx_data[DP_DEVICE_ADDR], uart_rxtx_data[DP_SUB_ADDR], 1, &uart_rxtx_data[DP_DATA]);
 533  015c ae0006        	ldw	x,#L11_uart_rxtx_data+6
 534  015f 89            	pushw	x
 535  0160 4b01          	push	#1
 536  0162 c60004        	ld	a,L11_uart_rxtx_data+4
 537  0165 97            	ld	xl,a
 538  0166 c60003        	ld	a,L11_uart_rxtx_data+3
 539  0169 95            	ld	xh,a
 540  016a 8d000000      	callf	f_SWI2C_WriteBytes
 542  016e 5b03          	addw	sp,#3
 543  0170 6b06          	ld	(OFST+0,sp),a
 544                     ; 179 					if (ret == IIC_FAIL)
 546  0172 0d06          	tnz	(OFST+0,sp)
 547  0174 260a          	jrne	L522
 548                     ; 181 						uart_rxtx_data[DP_COMMAND] = 0xFF;
 550  0176 35ff0002      	mov	L11_uart_rxtx_data+2,#255
 551  017a 2004          	jra	L522
 552  017c               L122:
 553                     ; 186 					uart_rxtx_data[DP_COMMAND] = 0xFE;
 555  017c 35fe0002      	mov	L11_uart_rxtx_data+2,#254
 556  0180               L522:
 557                     ; 188 				UART_Send(uart_rxtx_data, 8);
 559  0180 ae0008        	ldw	x,#8
 560  0183 89            	pushw	x
 561  0184 ae0000        	ldw	x,#L11_uart_rxtx_data
 562  0187 8d8f008f      	callf	f_UART_Send
 564  018b 85            	popw	x
 565                     ; 189 				break;
 567  018c ac3f043f      	jpf	L312
 568  0190               L141:
 569                     ; 190 			case DATA_COMMAND_READ_BYTE:
 569                     ; 191 				checksum = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
 571  0190 c60003        	ld	a,L11_uart_rxtx_data+3
 572  0193 cb0004        	add	a,L11_uart_rxtx_data+4
 573  0196 cb0005        	add	a,L11_uart_rxtx_data+5
 574  0199 cb0006        	add	a,L11_uart_rxtx_data+6
 575  019c a000          	sub	a,#0
 576  019e 40            	neg	a
 577  019f 6b05          	ld	(OFST-1,sp),a
 578                     ; 192 				if (checksum == uart_rxtx_data[DP_CHECK_SUM])
 580  01a1 7b05          	ld	a,(OFST-1,sp)
 581  01a3 c10007        	cp	a,L11_uart_rxtx_data+7
 582  01a6 2632          	jrne	L722
 583                     ; 194 					ret = SWI2C_ReadBytes(uart_rxtx_data[DP_DEVICE_ADDR], uart_rxtx_data[DP_SUB_ADDR], 1, &uart_rxtx_data[DP_DATA]);
 585  01a8 ae0006        	ldw	x,#L11_uart_rxtx_data+6
 586  01ab 89            	pushw	x
 587  01ac 4b01          	push	#1
 588  01ae c60004        	ld	a,L11_uart_rxtx_data+4
 589  01b1 97            	ld	xl,a
 590  01b2 c60003        	ld	a,L11_uart_rxtx_data+3
 591  01b5 95            	ld	xh,a
 592  01b6 8d000000      	callf	f_SWI2C_ReadBytes
 594  01ba 5b03          	addw	sp,#3
 595  01bc 6b06          	ld	(OFST+0,sp),a
 596                     ; 195 					uart_rxtx_data[DP_CHECK_SUM] = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
 598  01be c60003        	ld	a,L11_uart_rxtx_data+3
 599  01c1 cb0004        	add	a,L11_uart_rxtx_data+4
 600  01c4 cb0005        	add	a,L11_uart_rxtx_data+5
 601  01c7 cb0006        	add	a,L11_uart_rxtx_data+6
 602  01ca a000          	sub	a,#0
 603  01cc 40            	neg	a
 604  01cd c70007        	ld	L11_uart_rxtx_data+7,a
 605                     ; 196 					if (ret == IIC_FAIL)
 607  01d0 0d06          	tnz	(OFST+0,sp)
 608  01d2 260a          	jrne	L332
 609                     ; 198 						uart_rxtx_data[DP_COMMAND] = 0xFF;
 611  01d4 35ff0002      	mov	L11_uart_rxtx_data+2,#255
 612  01d8 2004          	jra	L332
 613  01da               L722:
 614                     ; 203 					uart_rxtx_data[DP_COMMAND] = 0xFE;
 616  01da 35fe0002      	mov	L11_uart_rxtx_data+2,#254
 617  01de               L332:
 618                     ; 205 				UART_Send(uart_rxtx_data, 8);
 620  01de ae0008        	ldw	x,#8
 621  01e1 89            	pushw	x
 622  01e2 ae0000        	ldw	x,#L11_uart_rxtx_data
 623  01e5 8d8f008f      	callf	f_UART_Send
 625  01e9 85            	popw	x
 626                     ; 206 				break;
 628  01ea ac3f043f      	jpf	L312
 629  01ee               L341:
 630                     ; 210 					checksum = uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2];
 632  01ee c60003        	ld	a,L11_uart_rxtx_data+3
 633  01f1 cb0004        	add	a,L11_uart_rxtx_data+4
 634  01f4 cb0005        	add	a,L11_uart_rxtx_data+5
 635  01f7 6b05          	ld	(OFST-1,sp),a
 636                     ; 211 					for (i = 0; i < 256; i++)
 638  01f9 ae0000        	ldw	x,#0
 639  01fc 1f03          	ldw	(OFST-3,sp),x
 640  01fe ae0000        	ldw	x,#0
 641  0201 1f01          	ldw	(OFST-5,sp),x
 642  0203               L532:
 643                     ; 213 						checksum += uart_rxtx_data[DP_DATA + i];
 645  0203 1e03          	ldw	x,(OFST-3,sp)
 646  0205 7b05          	ld	a,(OFST-1,sp)
 647  0207 db0006        	add	a,(L11_uart_rxtx_data+6,x)
 648  020a 6b05          	ld	(OFST-1,sp),a
 649                     ; 211 					for (i = 0; i < 256; i++)
 651  020c 96            	ldw	x,sp
 652  020d 1c0001        	addw	x,#OFST-5
 653  0210 a601          	ld	a,#1
 654  0212 8d000000      	callf	d_lgadc
 658  0216 96            	ldw	x,sp
 659  0217 1c0001        	addw	x,#OFST-5
 660  021a 8d000000      	callf	d_ltor
 662  021e ae0000        	ldw	x,#L22
 663  0221 8d000000      	callf	d_lcmp
 665  0225 25dc          	jrult	L532
 666                     ; 215 					checksum = 0x100 - checksum;
 668  0227 a600          	ld	a,#0
 669  0229 1005          	sub	a,(OFST-1,sp)
 670  022b 6b05          	ld	(OFST-1,sp),a
 671                     ; 216 					if (checksum == uart_rxtx_data[6 + 256])
 673  022d 7b05          	ld	a,(OFST-1,sp)
 674  022f c10106        	cp	a,L11_uart_rxtx_data+262
 675  0232 2677          	jrne	L342
 676                     ; 219 						for (i = 0; i < 32;i++)
 678  0234 ae0000        	ldw	x,#0
 679  0237 1f03          	ldw	(OFST-3,sp),x
 680  0239 ae0000        	ldw	x,#0
 681  023c 1f01          	ldw	(OFST-5,sp),x
 682  023e               L542:
 683                     ; 221 							ret = SWI2C_WriteBytes(uart_rxtx_data[DP_DEVICE_ADDR], i*8, 8, &uart_rxtx_data[DP_DATA + i*8]);
 685  023e 1e03          	ldw	x,(OFST-3,sp)
 686  0240 58            	sllw	x
 687  0241 58            	sllw	x
 688  0242 58            	sllw	x
 689  0243 1c0006        	addw	x,#L11_uart_rxtx_data+6
 690  0246 89            	pushw	x
 691  0247 4b08          	push	#8
 692  0249 7b07          	ld	a,(OFST+1,sp)
 693  024b 48            	sll	a
 694  024c 48            	sll	a
 695  024d 48            	sll	a
 696  024e 97            	ld	xl,a
 697  024f c60003        	ld	a,L11_uart_rxtx_data+3
 698  0252 95            	ld	xh,a
 699  0253 8d000000      	callf	f_SWI2C_WriteBytes
 701  0257 5b03          	addw	sp,#3
 702  0259 6b06          	ld	(OFST+0,sp),a
 703                     ; 222 							if (ret == IIC_FAIL)
 705  025b 0d06          	tnz	(OFST+0,sp)
 706  025d 2730          	jreq	L152
 707                     ; 224 								break;
 709                     ; 226 							if (uart_rxtx_data[DP_DEVICE_ADDR] >= 0xA0 && uart_rxtx_data[DP_DEVICE_ADDR] < 0xB0)
 711  025f c60003        	ld	a,L11_uart_rxtx_data+3
 712  0262 a1a0          	cp	a,#160
 713  0264 250e          	jrult	L552
 715  0266 c60003        	ld	a,L11_uart_rxtx_data+3
 716  0269 a1b0          	cp	a,#176
 717  026b 2407          	jruge	L552
 718                     ; 228 								IR_DelayNMiliseconds(20);
 720  026d ae0014        	ldw	x,#20
 721  0270 8d000000      	callf	f_IR_DelayNMiliseconds
 723  0274               L552:
 724                     ; 219 						for (i = 0; i < 32;i++)
 726  0274 96            	ldw	x,sp
 727  0275 1c0001        	addw	x,#OFST-5
 728  0278 a601          	ld	a,#1
 729  027a 8d000000      	callf	d_lgadc
 733  027e 96            	ldw	x,sp
 734  027f 1c0001        	addw	x,#OFST-5
 735  0282 8d000000      	callf	d_ltor
 737  0286 ae0004        	ldw	x,#L42
 738  0289 8d000000      	callf	d_lcmp
 740  028d 25af          	jrult	L542
 741  028f               L152:
 742                     ; 256 						uart_rxtx_data[DP_CHECK_SUM] = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
 744  028f c60003        	ld	a,L11_uart_rxtx_data+3
 745  0292 cb0004        	add	a,L11_uart_rxtx_data+4
 746  0295 cb0005        	add	a,L11_uart_rxtx_data+5
 747  0298 cb0006        	add	a,L11_uart_rxtx_data+6
 748  029b a000          	sub	a,#0
 749  029d 40            	neg	a
 750  029e c70007        	ld	L11_uart_rxtx_data+7,a
 751                     ; 257 						if (ret == IIC_FAIL)
 753  02a1 0d06          	tnz	(OFST+0,sp)
 754  02a3 260a          	jrne	L162
 755                     ; 259 							uart_rxtx_data[DP_COMMAND] = 0xFF;
 757  02a5 35ff0002      	mov	L11_uart_rxtx_data+2,#255
 758  02a9 2004          	jra	L162
 759  02ab               L342:
 760                     ; 264 						uart_rxtx_data[DP_COMMAND] = 0xFE;
 762  02ab 35fe0002      	mov	L11_uart_rxtx_data+2,#254
 763  02af               L162:
 764                     ; 266 					UART_Send(uart_rxtx_data, 8);
 766  02af ae0008        	ldw	x,#8
 767  02b2 89            	pushw	x
 768  02b3 ae0000        	ldw	x,#L11_uart_rxtx_data
 769  02b6 8d8f008f      	callf	f_UART_Send
 771  02ba 85            	popw	x
 772                     ; 268 				break;
 774  02bb ac3f043f      	jpf	L312
 775  02bf               L541:
 776                     ; 272 					checksum = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
 778  02bf c60003        	ld	a,L11_uart_rxtx_data+3
 779  02c2 cb0004        	add	a,L11_uart_rxtx_data+4
 780  02c5 cb0005        	add	a,L11_uart_rxtx_data+5
 781  02c8 cb0006        	add	a,L11_uart_rxtx_data+6
 782  02cb a000          	sub	a,#0
 783  02cd 40            	neg	a
 784  02ce 6b05          	ld	(OFST-1,sp),a
 785                     ; 273 					if (checksum == uart_rxtx_data[DP_CHECK_SUM])
 787  02d0 7b05          	ld	a,(OFST-1,sp)
 788  02d2 c10007        	cp	a,L11_uart_rxtx_data+7
 789  02d5 2704          	jreq	L44
 790  02d7 ac790379      	jpf	L362
 791  02db               L44:
 792                     ; 275 						memset(&uart_rxtx_data[6], 0, 256);
 794  02db ae0100        	ldw	x,#256
 795  02de               L62:
 796  02de 724f0005      	clr	(L11_uart_rxtx_data+5,x)
 797  02e2 5a            	decw	x
 798  02e3 26f9          	jrne	L62
 799                     ; 277 						for (i = 0; i < 8;i++)
 801  02e5 ae0000        	ldw	x,#0
 802  02e8 1f03          	ldw	(OFST-3,sp),x
 803  02ea ae0000        	ldw	x,#0
 804  02ed 1f01          	ldw	(OFST-5,sp),x
 805  02ef               L562:
 806                     ; 279 							ret = SWI2C_ReadBytes(uart_rxtx_data[DP_DEVICE_ADDR], i*32, 32, &uart_rxtx_data[DP_DATA + i*32]);
 808  02ef 1e03          	ldw	x,(OFST-3,sp)
 809  02f1 58            	sllw	x
 810  02f2 58            	sllw	x
 811  02f3 58            	sllw	x
 812  02f4 58            	sllw	x
 813  02f5 58            	sllw	x
 814  02f6 1c0006        	addw	x,#L11_uart_rxtx_data+6
 815  02f9 89            	pushw	x
 816  02fa 4b20          	push	#32
 817  02fc 7b07          	ld	a,(OFST+1,sp)
 818  02fe 97            	ld	xl,a
 819  02ff a620          	ld	a,#32
 820  0301 42            	mul	x,a
 821  0302 9f            	ld	a,xl
 822  0303 97            	ld	xl,a
 823  0304 c60003        	ld	a,L11_uart_rxtx_data+3
 824  0307 95            	ld	xh,a
 825  0308 8d000000      	callf	f_SWI2C_ReadBytes
 827  030c 5b03          	addw	sp,#3
 828  030e 6b06          	ld	(OFST+0,sp),a
 829                     ; 280 							if (ret == IIC_FAIL)
 831  0310 0d06          	tnz	(OFST+0,sp)
 832  0312 271b          	jreq	L172
 833                     ; 282 								break;
 835                     ; 277 						for (i = 0; i < 8;i++)
 837  0314 96            	ldw	x,sp
 838  0315 1c0001        	addw	x,#OFST-5
 839  0318 a601          	ld	a,#1
 840  031a 8d000000      	callf	d_lgadc
 844  031e 96            	ldw	x,sp
 845  031f 1c0001        	addw	x,#OFST-5
 846  0322 8d000000      	callf	d_ltor
 848  0326 ae0008        	ldw	x,#L03
 849  0329 8d000000      	callf	d_lcmp
 851  032d 25c0          	jrult	L562
 852  032f               L172:
 853                     ; 295 						checksum = uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2];
 855  032f c60003        	ld	a,L11_uart_rxtx_data+3
 856  0332 cb0004        	add	a,L11_uart_rxtx_data+4
 857  0335 cb0005        	add	a,L11_uart_rxtx_data+5
 858  0338 6b05          	ld	(OFST-1,sp),a
 859                     ; 296 						for (i = 0; i < 256;i++)
 861  033a ae0000        	ldw	x,#0
 862  033d 1f03          	ldw	(OFST-3,sp),x
 863  033f ae0000        	ldw	x,#0
 864  0342 1f01          	ldw	(OFST-5,sp),x
 865  0344               L572:
 866                     ; 298 							checksum += uart_rxtx_data[DP_DATA + i];
 868  0344 1e03          	ldw	x,(OFST-3,sp)
 869  0346 7b05          	ld	a,(OFST-1,sp)
 870  0348 db0006        	add	a,(L11_uart_rxtx_data+6,x)
 871  034b 6b05          	ld	(OFST-1,sp),a
 872                     ; 296 						for (i = 0; i < 256;i++)
 874  034d 96            	ldw	x,sp
 875  034e 1c0001        	addw	x,#OFST-5
 876  0351 a601          	ld	a,#1
 877  0353 8d000000      	callf	d_lgadc
 881  0357 96            	ldw	x,sp
 882  0358 1c0001        	addw	x,#OFST-5
 883  035b 8d000000      	callf	d_ltor
 885  035f ae0000        	ldw	x,#L22
 886  0362 8d000000      	callf	d_lcmp
 888  0366 25dc          	jrult	L572
 889                     ; 300 						uart_rxtx_data[6 + 256] = 0x100 - checksum;
 891  0368 a600          	ld	a,#0
 892  036a 1005          	sub	a,(OFST-1,sp)
 893  036c c70106        	ld	L11_uart_rxtx_data+262,a
 894                     ; 301 						if (ret == IIC_FAIL)
 896  036f 0d06          	tnz	(OFST+0,sp)
 897  0371 260a          	jrne	L503
 898                     ; 303 							uart_rxtx_data[DP_COMMAND] = 0xFF;
 900  0373 35ff0002      	mov	L11_uart_rxtx_data+2,#255
 901  0377 2004          	jra	L503
 902  0379               L362:
 903                     ; 308 						uart_rxtx_data[DP_COMMAND] = 0xFE;
 905  0379 35fe0002      	mov	L11_uart_rxtx_data+2,#254
 906  037d               L503:
 907                     ; 310 					UART_Send(uart_rxtx_data, 256 + 7);
 909  037d ae0107        	ldw	x,#263
 910  0380 89            	pushw	x
 911  0381 ae0000        	ldw	x,#L11_uart_rxtx_data
 912  0384 8d8f008f      	callf	f_UART_Send
 914  0388 85            	popw	x
 915                     ; 312 				break;
 917  0389 ac3f043f      	jpf	L312
 918  038d               L741:
 919                     ; 313 			case DATA_COMMAND_COMMAND:
 919                     ; 314 					checksum = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
 921  038d c60003        	ld	a,L11_uart_rxtx_data+3
 922  0390 cb0004        	add	a,L11_uart_rxtx_data+4
 923  0393 cb0005        	add	a,L11_uart_rxtx_data+5
 924  0396 cb0006        	add	a,L11_uart_rxtx_data+6
 925  0399 a000          	sub	a,#0
 926  039b 40            	neg	a
 927  039c 6b05          	ld	(OFST-1,sp),a
 928                     ; 315 					if (checksum == uart_rxtx_data[DP_CHECK_SUM])
 930  039e 7b05          	ld	a,(OFST-1,sp)
 931  03a0 c10007        	cp	a,L11_uart_rxtx_data+7
 932  03a3 2624          	jrne	L703
 933                     ; 317 						switch (uart_rxtx_data[DP_DEVICE_ADDR])
 935  03a5 c60003        	ld	a,L11_uart_rxtx_data+3
 937                     ; 328 							default:
 937                     ; 329 								break;
 938  03a8 4d            	tnz	a
 939  03a9 2708          	jreq	L151
 940  03ab 4a            	dec	a
 941  03ac 270b          	jreq	L351
 942  03ae 4a            	dec	a
 943  03af 270e          	jreq	L551
 944  03b1 201a          	jra	L513
 945  03b3               L151:
 946                     ; 319 							case 0:
 946                     ; 320 								SWI2C_ProcessPower();
 948  03b3 8d000000      	callf	f_SWI2C_ProcessPower
 950                     ; 321 								break;
 952  03b7 2014          	jra	L513
 953  03b9               L351:
 954                     ; 322 							case 1:
 954                     ; 323 								SWI2C_Toggle3DOnOff();
 956  03b9 8d000000      	callf	f_SWI2C_Toggle3DOnOff
 958                     ; 324 								break;
 960  03bd 200e          	jra	L513
 961  03bf               L551:
 962                     ; 325 							case 2:
 962                     ; 326 								SWI2C_ToggleI2CMode();
 964  03bf 8d000000      	callf	f_SWI2C_ToggleI2CMode
 966                     ; 327 								break;
 968  03c3 2008          	jra	L513
 969  03c5               L751:
 970                     ; 328 							default:
 970                     ; 329 								break;
 972  03c5 2006          	jra	L513
 973  03c7               L313:
 975  03c7 2004          	jra	L513
 976  03c9               L703:
 977                     ; 334 						uart_rxtx_data[DP_COMMAND] = 0xFE;
 979  03c9 35fe0002      	mov	L11_uart_rxtx_data+2,#254
 980  03cd               L513:
 981                     ; 336 					UART_Send(uart_rxtx_data, 8);
 983  03cd ae0008        	ldw	x,#8
 984  03d0 89            	pushw	x
 985  03d1 ae0000        	ldw	x,#L11_uart_rxtx_data
 986  03d4 8d8f008f      	callf	f_UART_Send
 988  03d8 85            	popw	x
 989                     ; 337 					break;
 991  03d9 2064          	jra	L312
 992  03db               L161:
 993                     ; 338 				case DATA_COMMAND_WRITE_TWO_BYTE:
 993                     ; 339 					break;
 995  03db 2062          	jra	L312
 996  03dd               L361:
 997                     ; 343 						checksum = uart_rxtx_data[5];
 999  03dd c60005        	ld	a,L11_uart_rxtx_data+5
1000  03e0 6b05          	ld	(OFST-1,sp),a
1001                     ; 344 						for (i = 0; i < 20; i++)
1003  03e2 0f06          	clr	(OFST+0,sp)
1004  03e4               L713:
1005                     ; 346 							checksum += uart_rxtx_data[6+i];
1007  03e4 7b06          	ld	a,(OFST+0,sp)
1008  03e6 5f            	clrw	x
1009  03e7 97            	ld	xl,a
1010  03e8 7b05          	ld	a,(OFST-1,sp)
1011  03ea db0006        	add	a,(L11_uart_rxtx_data+6,x)
1012  03ed 6b05          	ld	(OFST-1,sp),a
1013                     ; 344 						for (i = 0; i < 20; i++)
1015  03ef 0c06          	inc	(OFST+0,sp)
1018  03f1 7b06          	ld	a,(OFST+0,sp)
1019  03f3 a114          	cp	a,#20
1020  03f5 25ed          	jrult	L713
1021                     ; 348 						checksum = 0x100 - checksum;
1023  03f7 a600          	ld	a,#0
1024  03f9 1005          	sub	a,(OFST-1,sp)
1025  03fb 6b05          	ld	(OFST-1,sp),a
1026                     ; 349 						if (checksum == uart_rxtx_data[26])
1028  03fd 7b05          	ld	a,(OFST-1,sp)
1029  03ff c1001a        	cp	a,L11_uart_rxtx_data+26
1030  0402 262b          	jrne	L523
1031                     ; 351 							for (i = 0; i < 20; i++)
1033  0404 0f06          	clr	(OFST+0,sp)
1034  0406               L723:
1035                     ; 353 								FLASH_ProgramByte(EEPROM_START_ADDRESS + i + 1, uart_rxtx_data[6 + i]);
1037  0406 7b06          	ld	a,(OFST+0,sp)
1038  0408 5f            	clrw	x
1039  0409 97            	ld	xl,a
1040  040a d60006        	ld	a,(L11_uart_rxtx_data+6,x)
1041  040d 88            	push	a
1042  040e 7b07          	ld	a,(OFST+1,sp)
1043  0410 5f            	clrw	x
1044  0411 97            	ld	xl,a
1045  0412 1c4001        	addw	x,#16385
1046  0415 8d000000      	callf	d_itolx
1048  0419 be02          	ldw	x,c_lreg+2
1049  041b 89            	pushw	x
1050  041c be00          	ldw	x,c_lreg
1051  041e 89            	pushw	x
1052  041f 8d000000      	callf	f_FLASH_ProgramByte
1054  0423 5b05          	addw	sp,#5
1055                     ; 351 							for (i = 0; i < 20; i++)
1057  0425 0c06          	inc	(OFST+0,sp)
1060  0427 7b06          	ld	a,(OFST+0,sp)
1061  0429 a114          	cp	a,#20
1062  042b 25d9          	jrult	L723
1064  042d 2004          	jra	L533
1065  042f               L523:
1066                     ; 358 							uart_rxtx_data[DP_COMMAND] = 0xFE;
1068  042f 35fe0002      	mov	L11_uart_rxtx_data+2,#254
1069  0433               L533:
1070                     ; 361 					UART_Send(uart_rxtx_data, 27);
1072  0433 ae001b        	ldw	x,#27
1073  0436 89            	pushw	x
1074  0437 ae0000        	ldw	x,#L11_uart_rxtx_data
1075  043a 8d8f008f      	callf	f_UART_Send
1077  043e 85            	popw	x
1078                     ; 362 					break;
1080  043f               L561:
1081                     ; 363 			default:
1081                     ; 364 				break;
1083  043f               L712:
1084  043f               L312:
1085                     ; 367 }
1088  043f 5b06          	addw	sp,#6
1089  0441 87            	retf
1122                     ; 370 char putchar(char c)
1122                     ; 371 {
1123                     	switch	.text
1124  0442               f_putchar:
1126  0442 88            	push	a
1127       00000000      OFST:	set	0
1130                     ; 373 	UART1_SendData8(c);
1132  0443 8d000000      	callf	f_UART1_SendData8
1135  0447               L553:
1136                     ; 375 	while (UART1_GetFlagStatus(UART1_FLAG_TXE) == RESET);
1138  0447 ae0080        	ldw	x,#128
1139  044a 8d000000      	callf	f_UART1_GetFlagStatus
1141  044e 4d            	tnz	a
1142  044f 27f6          	jreq	L553
1143                     ; 377 	return (c);
1145  0451 7b01          	ld	a,(OFST+1,sp)
1148  0453 5b01          	addw	sp,#1
1149  0455 87            	retf
1204                     	xdef	f_putchar
1205                     	xdef	f_UART_Update
1206                     	xdef	f_UART_Init
1207                     	xdef	f_UART_Send
1208                     	xdef	f_UART_PutChar
1209                     	xdef	f_UART_ISR
1210                     	switch	.bss
1211  0000               L11_uart_rxtx_data:
1212  0000 000000000000  	ds.b	263
1213  0107               L5_uart_rx_index:
1214  0107 00            	ds.b	1
1215  0108               L3_uart_rx_buffer:
1216  0108 000000000000  	ds.b	263
1217                     	xref	f_IR_DelayNMiliseconds
1218                     	xref	f_SWI2C_Toggle3DOnOff
1219                     	xref	f_SWI2C_WriteBytes
1220                     	xref	f_SWI2C_ReadBytes
1221                     	xref	f_SWI2C_ToggleI2CMode
1222                     	xref	f_SWI2C_ProcessPower
1223                     	xref	f_FLASH_ProgramByte
1224                     	xref	f_UART3_ClearITPendingBit
1225                     	xref	f_UART3_GetFlagStatus
1226                     	xref	f_UART3_SendData8
1227                     	xref	f_UART3_ReceiveData8
1228                     	xref	f_UART3_ITConfig
1229                     	xref	f_UART3_Cmd
1230                     	xref	f_UART3_Init
1231                     	xref	f_UART1_GetFlagStatus
1232                     	xref	f_UART1_SendData8
1233                     	xref	f_UART1_Cmd
1234                     	xref	f_UART1_Init
1235                     	xref.b	c_lreg
1236                     	xref.b	c_x
1237                     	xref.b	c_y
1257                     	xref	d_itolx
1258                     	xref	d_lcmp
1259                     	xref	d_ltor
1260                     	xref	d_lgadc
1261                     	end
