   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  15                     	switch	.data
  16  0000               L7_uart_received:
  17  0000 00            	dc.b	0
  18  0001               L31_uart_data_length:
  19  0001 0008          	dc.w	8
  54                     ; 41 INTERRUPT_HANDLER(UART_ISR, 18)
  54                     ; 42 {
  55                     	switch	.text
  56  0000               f_UART_ISR:
  58  0000 3b0002        	push	c_x+2
  59  0003 be00          	ldw	x,c_x
  60  0005 89            	pushw	x
  61  0006 3b0002        	push	c_y+2
  62  0009 be00          	ldw	x,c_y
  63  000b 89            	pushw	x
  66                     ; 43 	uart_rx_buffer[uart_rx_index] = UART1_ReceiveData8();
  68  000c c60107        	ld	a,L5_uart_rx_index
  69  000f 5f            	clrw	x
  70  0010 97            	ld	xl,a
  71  0011 89            	pushw	x
  72  0012 8d000000      	callf	f_UART1_ReceiveData8
  74  0016 85            	popw	x
  75  0017 d70108        	ld	(L3_uart_rx_buffer,x),a
  76                     ; 44 	UART1_ClearITPendingBit(UART1_IT_RXNE);
  78  001a ae0255        	ldw	x,#597
  79  001d 8d000000      	callf	f_UART1_ClearITPendingBit
  81                     ; 46 	if (uart_rx_index == 0)
  83  0021 725d0107      	tnz	L5_uart_rx_index
  84  0025 260d          	jrne	L33
  85                     ; 48 		if (uart_rx_buffer[0] != 0xFF)
  87  0027 c60108        	ld	a,L3_uart_rx_buffer
  88  002a a1ff          	cp	a,#255
  89  002c 2725          	jreq	L73
  90                     ; 50 			uart_rx_index = 0;
  92  002e 725f0107      	clr	L5_uart_rx_index
  93                     ; 51 			return;
  95  0032 2012          	jra	L6
  96  0034               L33:
  97                     ; 54 	else if (uart_rx_index == 1)
  99  0034 c60107        	ld	a,L5_uart_rx_index
 100  0037 a101          	cp	a,#1
 101  0039 2618          	jrne	L73
 102                     ; 56 		if (uart_rx_buffer[1] != 0x55)
 104  003b c60109        	ld	a,L3_uart_rx_buffer+1
 105  003e a155          	cp	a,#85
 106  0040 2711          	jreq	L73
 107                     ; 58 			uart_rx_index = 0;
 109  0042 725f0107      	clr	L5_uart_rx_index
 110                     ; 59 			return;
 111  0046               L6:
 114  0046 85            	popw	x
 115  0047 bf00          	ldw	c_y,x
 116  0049 320002        	pop	c_y+2
 117  004c 85            	popw	x
 118  004d bf00          	ldw	c_x,x
 119  004f 320002        	pop	c_x+2
 120  0052 80            	iret
 121  0053               L73:
 122                     ; 62 	if (uart_rx_buffer[2] == 2)
 124  0053 c6010a        	ld	a,L3_uart_rx_buffer+2
 125  0056 a102          	cp	a,#2
 126  0058 2608          	jrne	L54
 127                     ; 64 		uart_data_length = UART_BUFFER_MAX_LENGTH + 2;
 129  005a ae0107        	ldw	x,#263
 130  005d cf0001        	ldw	L31_uart_data_length,x
 132  0060 2006          	jra	L74
 133  0062               L54:
 134                     ; 68 		uart_data_length = 8;
 136  0062 ae0008        	ldw	x,#8
 137  0065 cf0001        	ldw	L31_uart_data_length,x
 138  0068               L74:
 139                     ; 70 	uart_rx_index++;
 141  0068 725c0107      	inc	L5_uart_rx_index
 142                     ; 72 	if (uart_rx_index == uart_data_length)
 144  006c c60107        	ld	a,L5_uart_rx_index
 145  006f 5f            	clrw	x
 146  0070 97            	ld	xl,a
 147  0071 c30001        	cpw	x,L31_uart_data_length
 148  0074 2608          	jrne	L15
 149                     ; 74 		uart_rx_index = 0;
 151  0076 725f0107      	clr	L5_uart_rx_index
 152                     ; 75 		uart_received = TRUE;
 154  007a 35010000      	mov	L7_uart_received,#1
 155  007e               L15:
 156                     ; 77 }
 158  007e 20c6          	jra	L6
 191                     ; 79 void UART_PutChar(char c)
 191                     ; 80 {
 192                     	switch	.text
 193  0080               f_UART_PutChar:
 197                     ; 81   UART1_SendData8(c);
 199  0080 8d000000      	callf	f_UART1_SendData8
 202  0084               L17:
 203                     ; 82   while (UART1_GetFlagStatus(UART1_FLAG_TXE) == RESET);
 205  0084 ae0080        	ldw	x,#128
 206  0087 8d000000      	callf	f_UART1_GetFlagStatus
 208  008b 4d            	tnz	a
 209  008c 27f6          	jreq	L17
 210                     ; 83 }
 213  008e 87            	retf
 262                     ; 85 void UART_Send(u8 * reply, u8 count)
 262                     ; 86 {
 263                     	switch	.text
 264  008f               f_UART_Send:
 266  008f 89            	pushw	x
 267  0090 88            	push	a
 268       00000001      OFST:	set	1
 271                     ; 89 	for (i = 0; i < count;i++)
 273  0091 0f01          	clr	(OFST+0,sp)
 275  0093 2011          	jra	L321
 276  0095               L711:
 277                     ; 91 		UART_PutChar(* reply++);
 279  0095 1e02          	ldw	x,(OFST+1,sp)
 280  0097 1c0001        	addw	x,#1
 281  009a 1f02          	ldw	(OFST+1,sp),x
 282  009c 1d0001        	subw	x,#1
 283  009f f6            	ld	a,(x)
 284  00a0 8d800080      	callf	f_UART_PutChar
 286                     ; 89 	for (i = 0; i < count;i++)
 288  00a4 0c01          	inc	(OFST+0,sp)
 289  00a6               L321:
 292  00a6 7b01          	ld	a,(OFST+0,sp)
 293  00a8 1107          	cp	a,(OFST+6,sp)
 294  00aa 25e9          	jrult	L711
 295                     ; 93 }
 298  00ac 5b03          	addw	sp,#3
 299  00ae 87            	retf
 327                     ; 95 void UART_Init(void)
 327                     ; 96 {
 328                     	switch	.text
 329  00af               f_UART_Init:
 333                     ; 97 	UART1_Init((uint32_t)115200, UART1_WORDLENGTH_8D, UART1_STOPBITS_1, UART1_PARITY_NO, UART1_SYNCMODE_CLOCK_DISABLE, UART1_MODE_TXRX_ENABLE);
 335  00af 4b0c          	push	#12
 336  00b1 4b80          	push	#128
 337  00b3 4b00          	push	#0
 338  00b5 4b00          	push	#0
 339  00b7 4b00          	push	#0
 340  00b9 aec200        	ldw	x,#49664
 341  00bc 89            	pushw	x
 342  00bd ae0001        	ldw	x,#1
 343  00c0 89            	pushw	x
 344  00c1 8d000000      	callf	f_UART1_Init
 346  00c5 5b09          	addw	sp,#9
 347                     ; 98 	UART1_ITConfig(UART1_IT_RXNE, ENABLE);
 349  00c7 4b01          	push	#1
 350  00c9 ae0255        	ldw	x,#597
 351  00cc 8d000000      	callf	f_UART1_ITConfig
 353  00d0 84            	pop	a
 354                     ; 99 	UART1_Cmd(ENABLE);
 356  00d1 a601          	ld	a,#1
 357  00d3 8d000000      	callf	f_UART1_Cmd
 359                     ; 101 	UART3_Init((uint32_t)115200, UART3_WORDLENGTH_8D, UART3_STOPBITS_1, UART3_PARITY_NO, UART3_MODE_TXRX_ENABLE);
 361  00d7 4b0c          	push	#12
 362  00d9 4b00          	push	#0
 363  00db 4b00          	push	#0
 364  00dd 4b00          	push	#0
 365  00df aec200        	ldw	x,#49664
 366  00e2 89            	pushw	x
 367  00e3 ae0001        	ldw	x,#1
 368  00e6 89            	pushw	x
 369  00e7 8d000000      	callf	f_UART3_Init
 371  00eb 5b08          	addw	sp,#8
 372                     ; 102 	UART3_Cmd(ENABLE);
 374  00ed a601          	ld	a,#1
 375  00ef 8d000000      	callf	f_UART3_Cmd
 377                     ; 104 	uart_rx_index = 0;
 379  00f3 725f0107      	clr	L5_uart_rx_index
 380                     ; 105 }
 383  00f7 87            	retf
 444                     .const:	section	.text
 445  0000               L22:
 446  0000 00000100      	dc.l	256
 447  0004               L42:
 448  0004 00000020      	dc.l	32
 449  0008               L03:
 450  0008 00000010      	dc.l	16
 451                     ; 107 void UART_Update(void)
 451                     ; 108 {
 452                     	switch	.text
 453  00f8               f_UART_Update:
 455  00f8 5206          	subw	sp,#6
 456       00000006      OFST:	set	6
 459                     ; 109 	if (uart_received)
 461  00fa 725d0000      	tnz	L7_uart_received
 462  00fe 2604          	jrne	L23
 463  0100 ac6b036b      	jpf	L571
 464  0104               L23:
 465                     ; 112 		uart_received = FALSE;		
 467  0104 725f0000      	clr	L7_uart_received
 468                     ; 115 		memcpy(uart_rxtx_data, uart_rx_buffer, UART_BUFFER_MAX_LENGTH + 2);
 470  0108 ae0107        	ldw	x,#263
 471  010b               L02:
 472  010b d60107        	ld	a,(L3_uart_rx_buffer-1,x)
 473  010e d7ffff        	ld	(L11_uart_rxtx_data-1,x),a
 474  0111 5a            	decw	x
 475  0112 26f7          	jrne	L02
 476                     ; 117 		switch (uart_rxtx_data[DP_COMMAND])
 478  0114 c60002        	ld	a,L11_uart_rxtx_data+2
 480                     ; 260 			default:
 480                     ; 261 				break;
 481  0117 4d            	tnz	a
 482  0118 2715          	jreq	L731
 483  011a 4a            	dec	a
 484  011b 275c          	jreq	L141
 485  011d 4a            	dec	a
 486  011e 2604          	jrne	L43
 487  0120 acd501d5      	jpf	L341
 488  0124               L43:
 489  0124 4a            	dec	a
 490  0125 2604          	jrne	L63
 491  0127 aca402a4      	jpf	L541
 492  012b               L63:
 493  012b ac6b036b      	jpf	L571
 494  012f               L731:
 495                     ; 119 			case DATA_COMMAND_WRITE_BYTE:
 495                     ; 120 				checksum = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
 497  012f c60003        	ld	a,L11_uart_rxtx_data+3
 498  0132 cb0004        	add	a,L11_uart_rxtx_data+4
 499  0135 cb0005        	add	a,L11_uart_rxtx_data+5
 500  0138 cb0006        	add	a,L11_uart_rxtx_data+6
 501  013b a000          	sub	a,#0
 502  013d 40            	neg	a
 503  013e 6b05          	ld	(OFST-1,sp),a
 504                     ; 121 				if (checksum == uart_rxtx_data[DP_CHECK_SUM])
 506  0140 7b05          	ld	a,(OFST-1,sp)
 507  0142 c10007        	cp	a,L11_uart_rxtx_data+7
 508  0145 2620          	jrne	L302
 509                     ; 123 					ret = SWI2C_WriteBytes(uart_rxtx_data[DP_DEVICE_ADDR], uart_rxtx_data[DP_SUB_ADDR], 1, &uart_rxtx_data[DP_DATA]);
 511  0147 ae0006        	ldw	x,#L11_uart_rxtx_data+6
 512  014a 89            	pushw	x
 513  014b 4b01          	push	#1
 514  014d c60004        	ld	a,L11_uart_rxtx_data+4
 515  0150 97            	ld	xl,a
 516  0151 c60003        	ld	a,L11_uart_rxtx_data+3
 517  0154 95            	ld	xh,a
 518  0155 8d000000      	callf	f_SWI2C_WriteBytes
 520  0159 5b03          	addw	sp,#3
 521  015b 6b06          	ld	(OFST+0,sp),a
 522                     ; 124 					if (ret == IIC_FAIL)
 524  015d 0d06          	tnz	(OFST+0,sp)
 525  015f 260a          	jrne	L702
 526                     ; 126 						uart_rxtx_data[DP_COMMAND] = 0xFF;
 528  0161 35ff0002      	mov	L11_uart_rxtx_data+2,#255
 529  0165 2004          	jra	L702
 530  0167               L302:
 531                     ; 131 					uart_rxtx_data[DP_COMMAND] = 0xFE;
 533  0167 35fe0002      	mov	L11_uart_rxtx_data+2,#254
 534  016b               L702:
 535                     ; 133 				UART_Send(uart_rxtx_data, 8);
 537  016b 4b08          	push	#8
 538  016d ae0000        	ldw	x,#L11_uart_rxtx_data
 539  0170 8d8f008f      	callf	f_UART_Send
 541  0174 84            	pop	a
 542                     ; 134 				break;
 544  0175 ac6b036b      	jpf	L571
 545  0179               L141:
 546                     ; 135 			case DATA_COMMAND_READ_BYTE:
 546                     ; 136 				checksum = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
 548  0179 c60003        	ld	a,L11_uart_rxtx_data+3
 549  017c cb0004        	add	a,L11_uart_rxtx_data+4
 550  017f cb0005        	add	a,L11_uart_rxtx_data+5
 551  0182 cb0006        	add	a,L11_uart_rxtx_data+6
 552  0185 a000          	sub	a,#0
 553  0187 40            	neg	a
 554  0188 6b05          	ld	(OFST-1,sp),a
 555                     ; 137 				if (checksum == uart_rxtx_data[DP_CHECK_SUM])
 557  018a 7b05          	ld	a,(OFST-1,sp)
 558  018c c10007        	cp	a,L11_uart_rxtx_data+7
 559  018f 2632          	jrne	L112
 560                     ; 139 					ret = SWI2C_ReadBytes(uart_rxtx_data[DP_DEVICE_ADDR], uart_rxtx_data[DP_SUB_ADDR], 1, &uart_rxtx_data[DP_DATA]);
 562  0191 ae0006        	ldw	x,#L11_uart_rxtx_data+6
 563  0194 89            	pushw	x
 564  0195 4b01          	push	#1
 565  0197 c60004        	ld	a,L11_uart_rxtx_data+4
 566  019a 97            	ld	xl,a
 567  019b c60003        	ld	a,L11_uart_rxtx_data+3
 568  019e 95            	ld	xh,a
 569  019f 8d000000      	callf	f_SWI2C_ReadBytes
 571  01a3 5b03          	addw	sp,#3
 572  01a5 6b06          	ld	(OFST+0,sp),a
 573                     ; 140 					uart_rxtx_data[DP_CHECK_SUM] = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
 575  01a7 c60003        	ld	a,L11_uart_rxtx_data+3
 576  01aa cb0004        	add	a,L11_uart_rxtx_data+4
 577  01ad cb0005        	add	a,L11_uart_rxtx_data+5
 578  01b0 cb0006        	add	a,L11_uart_rxtx_data+6
 579  01b3 a000          	sub	a,#0
 580  01b5 40            	neg	a
 581  01b6 c70007        	ld	L11_uart_rxtx_data+7,a
 582                     ; 141 					if (ret == IIC_FAIL)
 584  01b9 0d06          	tnz	(OFST+0,sp)
 585  01bb 260a          	jrne	L512
 586                     ; 143 						uart_rxtx_data[DP_COMMAND] = 0xFF;
 588  01bd 35ff0002      	mov	L11_uart_rxtx_data+2,#255
 589  01c1 2004          	jra	L512
 590  01c3               L112:
 591                     ; 148 					uart_rxtx_data[DP_COMMAND] = 0xFE;
 593  01c3 35fe0002      	mov	L11_uart_rxtx_data+2,#254
 594  01c7               L512:
 595                     ; 150 				UART_Send(uart_rxtx_data, 8);
 597  01c7 4b08          	push	#8
 598  01c9 ae0000        	ldw	x,#L11_uart_rxtx_data
 599  01cc 8d8f008f      	callf	f_UART_Send
 601  01d0 84            	pop	a
 602                     ; 151 				break;
 604  01d1 ac6b036b      	jpf	L571
 605  01d5               L341:
 606                     ; 155 					checksum = uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2];
 608  01d5 c60003        	ld	a,L11_uart_rxtx_data+3
 609  01d8 cb0004        	add	a,L11_uart_rxtx_data+4
 610  01db cb0005        	add	a,L11_uart_rxtx_data+5
 611  01de 6b05          	ld	(OFST-1,sp),a
 612                     ; 156 					for (i = 0; i < 256; i++)
 614  01e0 ae0000        	ldw	x,#0
 615  01e3 1f03          	ldw	(OFST-3,sp),x
 616  01e5 ae0000        	ldw	x,#0
 617  01e8 1f01          	ldw	(OFST-5,sp),x
 618  01ea               L712:
 619                     ; 158 						checksum += uart_rxtx_data[DP_DATA + i];
 621  01ea 1e03          	ldw	x,(OFST-3,sp)
 622  01ec 7b05          	ld	a,(OFST-1,sp)
 623  01ee db0006        	add	a,(L11_uart_rxtx_data+6,x)
 624  01f1 6b05          	ld	(OFST-1,sp),a
 625                     ; 156 					for (i = 0; i < 256; i++)
 627  01f3 96            	ldw	x,sp
 628  01f4 1c0001        	addw	x,#OFST-5
 629  01f7 a601          	ld	a,#1
 630  01f9 8d000000      	callf	d_lgadc
 634  01fd 96            	ldw	x,sp
 635  01fe 1c0001        	addw	x,#OFST-5
 636  0201 8d000000      	callf	d_ltor
 638  0205 ae0000        	ldw	x,#L22
 639  0208 8d000000      	callf	d_lcmp
 641  020c 25dc          	jrult	L712
 642                     ; 160 					checksum = 0x100 - checksum;
 644  020e a600          	ld	a,#0
 645  0210 1005          	sub	a,(OFST-1,sp)
 646  0212 6b05          	ld	(OFST-1,sp),a
 647                     ; 161 					if (checksum == uart_rxtx_data[6 + 256])
 649  0214 7b05          	ld	a,(OFST-1,sp)
 650  0216 c10106        	cp	a,L11_uart_rxtx_data+262
 651  0219 2677          	jrne	L522
 652                     ; 164 						for (i = 0; i < 32;i++)
 654  021b ae0000        	ldw	x,#0
 655  021e 1f03          	ldw	(OFST-3,sp),x
 656  0220 ae0000        	ldw	x,#0
 657  0223 1f01          	ldw	(OFST-5,sp),x
 658  0225               L722:
 659                     ; 166 							ret = SWI2C_WriteBytes(uart_rxtx_data[DP_DEVICE_ADDR], i*8, 8, &uart_rxtx_data[DP_DATA + i*8]);
 661  0225 1e03          	ldw	x,(OFST-3,sp)
 662  0227 58            	sllw	x
 663  0228 58            	sllw	x
 664  0229 58            	sllw	x
 665  022a 1c0006        	addw	x,#L11_uart_rxtx_data+6
 666  022d 89            	pushw	x
 667  022e 4b08          	push	#8
 668  0230 7b07          	ld	a,(OFST+1,sp)
 669  0232 48            	sll	a
 670  0233 48            	sll	a
 671  0234 48            	sll	a
 672  0235 97            	ld	xl,a
 673  0236 c60003        	ld	a,L11_uart_rxtx_data+3
 674  0239 95            	ld	xh,a
 675  023a 8d000000      	callf	f_SWI2C_WriteBytes
 677  023e 5b03          	addw	sp,#3
 678  0240 6b06          	ld	(OFST+0,sp),a
 679                     ; 167 							if (ret == IIC_FAIL)
 681  0242 0d06          	tnz	(OFST+0,sp)
 682  0244 2730          	jreq	L332
 683                     ; 169 								break;
 685                     ; 171 							if (uart_rxtx_data[DP_DEVICE_ADDR] >= 0xA0 && uart_rxtx_data[DP_DEVICE_ADDR] < 0xB0)
 687  0246 c60003        	ld	a,L11_uart_rxtx_data+3
 688  0249 a1a0          	cp	a,#160
 689  024b 250e          	jrult	L732
 691  024d c60003        	ld	a,L11_uart_rxtx_data+3
 692  0250 a1b0          	cp	a,#176
 693  0252 2407          	jruge	L732
 694                     ; 173 								IR_DelayNMiliseconds(20);
 696  0254 ae0014        	ldw	x,#20
 697  0257 8d000000      	callf	f_IR_DelayNMiliseconds
 699  025b               L732:
 700                     ; 164 						for (i = 0; i < 32;i++)
 702  025b 96            	ldw	x,sp
 703  025c 1c0001        	addw	x,#OFST-5
 704  025f a601          	ld	a,#1
 705  0261 8d000000      	callf	d_lgadc
 709  0265 96            	ldw	x,sp
 710  0266 1c0001        	addw	x,#OFST-5
 711  0269 8d000000      	callf	d_ltor
 713  026d ae0004        	ldw	x,#L42
 714  0270 8d000000      	callf	d_lcmp
 716  0274 25af          	jrult	L722
 717  0276               L332:
 718                     ; 201 						uart_rxtx_data[DP_CHECK_SUM] = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
 720  0276 c60003        	ld	a,L11_uart_rxtx_data+3
 721  0279 cb0004        	add	a,L11_uart_rxtx_data+4
 722  027c cb0005        	add	a,L11_uart_rxtx_data+5
 723  027f cb0006        	add	a,L11_uart_rxtx_data+6
 724  0282 a000          	sub	a,#0
 725  0284 40            	neg	a
 726  0285 c70007        	ld	L11_uart_rxtx_data+7,a
 727                     ; 202 						if (ret == IIC_FAIL)
 729  0288 0d06          	tnz	(OFST+0,sp)
 730  028a 260a          	jrne	L342
 731                     ; 204 							uart_rxtx_data[DP_COMMAND] = 0xFF;
 733  028c 35ff0002      	mov	L11_uart_rxtx_data+2,#255
 734  0290 2004          	jra	L342
 735  0292               L522:
 736                     ; 209 						uart_rxtx_data[DP_COMMAND] = 0xFE;
 738  0292 35fe0002      	mov	L11_uart_rxtx_data+2,#254
 739  0296               L342:
 740                     ; 211 					UART_Send(uart_rxtx_data, 8);
 742  0296 4b08          	push	#8
 743  0298 ae0000        	ldw	x,#L11_uart_rxtx_data
 744  029b 8d8f008f      	callf	f_UART_Send
 746  029f 84            	pop	a
 747                     ; 213 				break;
 749  02a0 ac6b036b      	jpf	L571
 750  02a4               L541:
 751                     ; 217 					checksum = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
 753  02a4 c60003        	ld	a,L11_uart_rxtx_data+3
 754  02a7 cb0004        	add	a,L11_uart_rxtx_data+4
 755  02aa cb0005        	add	a,L11_uart_rxtx_data+5
 756  02ad cb0006        	add	a,L11_uart_rxtx_data+6
 757  02b0 a000          	sub	a,#0
 758  02b2 40            	neg	a
 759  02b3 6b05          	ld	(OFST-1,sp),a
 760                     ; 218 					if (checksum == uart_rxtx_data[DP_CHECK_SUM])
 762  02b5 7b05          	ld	a,(OFST-1,sp)
 763  02b7 c10007        	cp	a,L11_uart_rxtx_data+7
 764  02ba 2704          	jreq	L04
 765  02bc ac5d035d      	jpf	L542
 766  02c0               L04:
 767                     ; 220 						memset(&uart_rxtx_data[6], 0, 256);
 769  02c0 ae0100        	ldw	x,#256
 770  02c3               L62:
 771  02c3 724f0005      	clr	(L11_uart_rxtx_data+5,x)
 772  02c7 5a            	decw	x
 773  02c8 26f9          	jrne	L62
 774                     ; 222 						for (i = 0; i < 16;i++)
 776  02ca ae0000        	ldw	x,#0
 777  02cd 1f03          	ldw	(OFST-3,sp),x
 778  02cf ae0000        	ldw	x,#0
 779  02d2 1f01          	ldw	(OFST-5,sp),x
 780  02d4               L742:
 781                     ; 224 							ret = SWI2C_ReadBytes(uart_rxtx_data[DP_DEVICE_ADDR], i*16, 16, &uart_rxtx_data[DP_DATA + i*16]);
 783  02d4 1e03          	ldw	x,(OFST-3,sp)
 784  02d6 58            	sllw	x
 785  02d7 58            	sllw	x
 786  02d8 58            	sllw	x
 787  02d9 58            	sllw	x
 788  02da 1c0006        	addw	x,#L11_uart_rxtx_data+6
 789  02dd 89            	pushw	x
 790  02de 4b10          	push	#16
 791  02e0 7b07          	ld	a,(OFST+1,sp)
 792  02e2 97            	ld	xl,a
 793  02e3 a610          	ld	a,#16
 794  02e5 42            	mul	x,a
 795  02e6 9f            	ld	a,xl
 796  02e7 97            	ld	xl,a
 797  02e8 c60003        	ld	a,L11_uart_rxtx_data+3
 798  02eb 95            	ld	xh,a
 799  02ec 8d000000      	callf	f_SWI2C_ReadBytes
 801  02f0 5b03          	addw	sp,#3
 802  02f2 6b06          	ld	(OFST+0,sp),a
 803                     ; 225 							if (ret == IIC_FAIL)
 805  02f4 0d06          	tnz	(OFST+0,sp)
 806  02f6 271b          	jreq	L352
 807                     ; 227 								break;
 809                     ; 222 						for (i = 0; i < 16;i++)
 811  02f8 96            	ldw	x,sp
 812  02f9 1c0001        	addw	x,#OFST-5
 813  02fc a601          	ld	a,#1
 814  02fe 8d000000      	callf	d_lgadc
 818  0302 96            	ldw	x,sp
 819  0303 1c0001        	addw	x,#OFST-5
 820  0306 8d000000      	callf	d_ltor
 822  030a ae0008        	ldw	x,#L03
 823  030d 8d000000      	callf	d_lcmp
 825  0311 25c1          	jrult	L742
 826  0313               L352:
 827                     ; 240 						checksum = uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2];
 829  0313 c60003        	ld	a,L11_uart_rxtx_data+3
 830  0316 cb0004        	add	a,L11_uart_rxtx_data+4
 831  0319 cb0005        	add	a,L11_uart_rxtx_data+5
 832  031c 6b05          	ld	(OFST-1,sp),a
 833                     ; 241 						for (i = 0; i < 256;i++)
 835  031e ae0000        	ldw	x,#0
 836  0321 1f03          	ldw	(OFST-3,sp),x
 837  0323 ae0000        	ldw	x,#0
 838  0326 1f01          	ldw	(OFST-5,sp),x
 839  0328               L752:
 840                     ; 243 							checksum += uart_rxtx_data[DP_DATA + i];
 842  0328 1e03          	ldw	x,(OFST-3,sp)
 843  032a 7b05          	ld	a,(OFST-1,sp)
 844  032c db0006        	add	a,(L11_uart_rxtx_data+6,x)
 845  032f 6b05          	ld	(OFST-1,sp),a
 846                     ; 241 						for (i = 0; i < 256;i++)
 848  0331 96            	ldw	x,sp
 849  0332 1c0001        	addw	x,#OFST-5
 850  0335 a601          	ld	a,#1
 851  0337 8d000000      	callf	d_lgadc
 855  033b 96            	ldw	x,sp
 856  033c 1c0001        	addw	x,#OFST-5
 857  033f 8d000000      	callf	d_ltor
 859  0343 ae0000        	ldw	x,#L22
 860  0346 8d000000      	callf	d_lcmp
 862  034a 25dc          	jrult	L752
 863                     ; 245 						uart_rxtx_data[6 + 256] = 0x100 - checksum;
 865  034c a600          	ld	a,#0
 866  034e 1005          	sub	a,(OFST-1,sp)
 867  0350 c70106        	ld	L11_uart_rxtx_data+262,a
 868                     ; 246 						if (ret == IIC_FAIL)
 870  0353 0d06          	tnz	(OFST+0,sp)
 871  0355 260a          	jrne	L762
 872                     ; 248 							uart_rxtx_data[DP_COMMAND] = 0xFF;
 874  0357 35ff0002      	mov	L11_uart_rxtx_data+2,#255
 875  035b 2004          	jra	L762
 876  035d               L542:
 877                     ; 253 						uart_rxtx_data[DP_COMMAND] = 0xFE;
 879  035d 35fe0002      	mov	L11_uart_rxtx_data+2,#254
 880  0361               L762:
 881                     ; 255 					UART_Send(uart_rxtx_data, 256 + 7);
 883  0361 4b07          	push	#7
 884  0363 ae0000        	ldw	x,#L11_uart_rxtx_data
 885  0366 8d8f008f      	callf	f_UART_Send
 887  036a 84            	pop	a
 888                     ; 257 				break;
 890  036b               L741:
 891                     ; 258 			case DATA_COMMAND_COMMAND:
 891                     ; 259 				break;
 893  036b               L151:
 894                     ; 260 			default:
 894                     ; 261 				break;
 896  036b               L102:
 897  036b               L571:
 898                     ; 264 }
 901  036b 5b06          	addw	sp,#6
 902  036d 87            	retf
 935                     ; 267 char putchar(char c)
 935                     ; 268 {
 936                     	switch	.text
 937  036e               f_putchar:
 939  036e 88            	push	a
 940       00000000      OFST:	set	0
 943                     ; 270 	UART3_SendData8(c);
 945  036f 8d000000      	callf	f_UART3_SendData8
 948  0373               L703:
 949                     ; 272 	while (UART3_GetFlagStatus(UART3_FLAG_TXE) == RESET);
 951  0373 ae0080        	ldw	x,#128
 952  0376 8d000000      	callf	f_UART3_GetFlagStatus
 954  037a 4d            	tnz	a
 955  037b 27f6          	jreq	L703
 956                     ; 274 	return (c);
 958  037d 7b01          	ld	a,(OFST+1,sp)
 961  037f 5b01          	addw	sp,#1
 962  0381 87            	retf
1017                     	xdef	f_putchar
1018                     	xdef	f_UART_Update
1019                     	xdef	f_UART_Init
1020                     	xdef	f_UART_Send
1021                     	xdef	f_UART_PutChar
1022                     	xdef	f_UART_ISR
1023                     	switch	.bss
1024  0000               L11_uart_rxtx_data:
1025  0000 000000000000  	ds.b	263
1026  0107               L5_uart_rx_index:
1027  0107 00            	ds.b	1
1028  0108               L3_uart_rx_buffer:
1029  0108 000000000000  	ds.b	263
1030                     	xref	f_IR_DelayNMiliseconds
1031                     	xref	f_SWI2C_WriteBytes
1032                     	xref	f_SWI2C_ReadBytes
1033                     	xref	f_UART3_GetFlagStatus
1034                     	xref	f_UART3_SendData8
1035                     	xref	f_UART3_Cmd
1036                     	xref	f_UART3_Init
1037                     	xref	f_UART1_ClearITPendingBit
1038                     	xref	f_UART1_GetFlagStatus
1039                     	xref	f_UART1_SendData8
1040                     	xref	f_UART1_ReceiveData8
1041                     	xref	f_UART1_ITConfig
1042                     	xref	f_UART1_Cmd
1043                     	xref	f_UART1_Init
1044                     	xref.b	c_x
1045                     	xref.b	c_y
1065                     	xref	d_lcmp
1066                     	xref	d_ltor
1067                     	xref	d_lgadc
1068                     	end
