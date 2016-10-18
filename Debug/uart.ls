   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  15                     	switch	.data
  16  0000               L7_uart_received:
  17  0000 00            	dc.b	0
  18  0001               L31_uart_data_length:
  19  0001 0008          	dc.w	8
  20  0003               L51_machine_No:
  21  0003 00            	dc.b	0
  56                     ; 46 INTERRUPT_HANDLER(UART_ISR, 21)
  56                     ; 47 {
  57                     	switch	.text
  58  0000               f_UART_ISR:
  60  0000 3b0002        	push	c_x+2
  61  0003 be00          	ldw	x,c_x
  62  0005 89            	pushw	x
  63  0006 3b0002        	push	c_y+2
  64  0009 be00          	ldw	x,c_y
  65  000b 89            	pushw	x
  68                     ; 48 	uart_rx_buffer[uart_rx_index] = UART3_ReceiveData8();
  70  000c c60107        	ld	a,L5_uart_rx_index
  71  000f 5f            	clrw	x
  72  0010 97            	ld	xl,a
  73  0011 89            	pushw	x
  74  0012 8d000000      	callf	f_UART3_ReceiveData8
  76  0016 85            	popw	x
  77  0017 d70108        	ld	(L3_uart_rx_buffer,x),a
  78                     ; 49 	UART3_ClearITPendingBit(UART3_IT_RXNE);
  80  001a ae0255        	ldw	x,#597
  81  001d 8d000000      	callf	f_UART3_ClearITPendingBit
  83                     ; 51 	if (uart_rx_index == 0)
  85  0021 725d0107      	tnz	L5_uart_rx_index
  86  0025 260d          	jrne	L53
  87                     ; 53 		if (uart_rx_buffer[0] != 0xFF)
  89  0027 c60108        	ld	a,L3_uart_rx_buffer
  90  002a a1ff          	cp	a,#255
  91  002c 2725          	jreq	L14
  92                     ; 55 			uart_rx_index = 0;
  94  002e 725f0107      	clr	L5_uart_rx_index
  95                     ; 56 			return;
  97  0032 2012          	jra	L6
  98  0034               L53:
  99                     ; 59 	else if (uart_rx_index == 1)
 101  0034 c60107        	ld	a,L5_uart_rx_index
 102  0037 a101          	cp	a,#1
 103  0039 2618          	jrne	L14
 104                     ; 61 		if (uart_rx_buffer[1] != 0x55)
 106  003b c60109        	ld	a,L3_uart_rx_buffer+1
 107  003e a155          	cp	a,#85
 108  0040 2711          	jreq	L14
 109                     ; 63 			uart_rx_index = 0;
 111  0042 725f0107      	clr	L5_uart_rx_index
 112                     ; 64 			return;
 113  0046               L6:
 116  0046 85            	popw	x
 117  0047 bf00          	ldw	c_y,x
 118  0049 320002        	pop	c_y+2
 119  004c 85            	popw	x
 120  004d bf00          	ldw	c_x,x
 121  004f 320002        	pop	c_x+2
 122  0052 80            	iret
 123  0053               L14:
 124                     ; 67 	if (uart_rx_buffer[2] == DATA_COMMAND_WRITE_BANK)
 126  0053 c6010a        	ld	a,L3_uart_rx_buffer+2
 127  0056 a102          	cp	a,#2
 128  0058 2608          	jrne	L74
 129                     ; 69 		uart_data_length = UART_BUFFER_MAX_LENGTH + 2;
 131  005a ae0107        	ldw	x,#263
 132  005d cf0001        	ldw	L31_uart_data_length,x
 134  0060 2015          	jra	L15
 135  0062               L74:
 136                     ; 71 	else if (uart_rx_buffer[2] == DATA_COMMAND_WRITE_CONFIG)
 138  0062 c6010a        	ld	a,L3_uart_rx_buffer+2
 139  0065 a106          	cp	a,#6
 140  0067 2608          	jrne	L35
 141                     ; 73 		uart_data_length = 27;
 143  0069 ae001b        	ldw	x,#27
 144  006c cf0001        	ldw	L31_uart_data_length,x
 146  006f 2006          	jra	L15
 147  0071               L35:
 148                     ; 77 		uart_data_length = 8;
 150  0071 ae0008        	ldw	x,#8
 151  0074 cf0001        	ldw	L31_uart_data_length,x
 152  0077               L15:
 153                     ; 79 	uart_rx_index++;
 155  0077 725c0107      	inc	L5_uart_rx_index
 156                     ; 81 	if (uart_rx_index == uart_data_length)
 158  007b c60107        	ld	a,L5_uart_rx_index
 159  007e 5f            	clrw	x
 160  007f 97            	ld	xl,a
 161  0080 c30001        	cpw	x,L31_uart_data_length
 162  0083 2608          	jrne	L75
 163                     ; 83 		uart_rx_index = 0;
 165  0085 725f0107      	clr	L5_uart_rx_index
 166                     ; 84 		uart_received = TRUE;
 168  0089 35010000      	mov	L7_uart_received,#1
 169  008d               L75:
 170                     ; 86 }
 172  008d 20b7          	jra	L6
 205                     ; 132 void UART_PutChar(char c)
 205                     ; 133 {
 206                     	switch	.text
 207  008f               f_UART_PutChar:
 211                     ; 134   UART3_SendData8(c);
 213  008f 8d000000      	callf	f_UART3_SendData8
 216  0093               L77:
 217                     ; 135   while (UART3_GetFlagStatus(UART1_FLAG_TXE) == RESET);
 219  0093 ae0080        	ldw	x,#128
 220  0096 8d000000      	callf	f_UART3_GetFlagStatus
 222  009a 4d            	tnz	a
 223  009b 27f6          	jreq	L77
 224                     ; 136 }
 227  009d 87            	retf
 276                     ; 145 void UART_Send(u8 * reply, u16 count)
 276                     ; 146 {
 277                     	switch	.text
 278  009e               f_UART_Send:
 280  009e 89            	pushw	x
 281  009f 89            	pushw	x
 282       00000002      OFST:	set	2
 285                     ; 149 	for (i = 0; i < count;i++)
 287  00a0 5f            	clrw	x
 288  00a1 1f01          	ldw	(OFST-1,sp),x
 290  00a3 2016          	jra	L131
 291  00a5               L521:
 292                     ; 151 		UART_PutChar(* reply++);
 294  00a5 1e03          	ldw	x,(OFST+1,sp)
 295  00a7 1c0001        	addw	x,#1
 296  00aa 1f03          	ldw	(OFST+1,sp),x
 297  00ac 1d0001        	subw	x,#1
 298  00af f6            	ld	a,(x)
 299  00b0 8d8f008f      	callf	f_UART_PutChar
 301                     ; 149 	for (i = 0; i < count;i++)
 303  00b4 1e01          	ldw	x,(OFST-1,sp)
 304  00b6 1c0001        	addw	x,#1
 305  00b9 1f01          	ldw	(OFST-1,sp),x
 306  00bb               L131:
 309  00bb 1e01          	ldw	x,(OFST-1,sp)
 310  00bd 1308          	cpw	x,(OFST+6,sp)
 311  00bf 25e4          	jrult	L521
 312                     ; 153 }
 315  00c1 5b04          	addw	sp,#4
 316  00c3 87            	retf
 346                     ; 155 void UART_Init(void)
 346                     ; 156 {
 347                     	switch	.text
 348  00c4               f_UART_Init:
 352                     ; 157 	UART1_Init((uint32_t)115200, UART1_WORDLENGTH_8D, UART1_STOPBITS_1, UART1_PARITY_NO, UART1_SYNCMODE_CLOCK_DISABLE, UART1_MODE_TXRX_ENABLE);
 354  00c4 4b0c          	push	#12
 355  00c6 4b80          	push	#128
 356  00c8 4b00          	push	#0
 357  00ca 4b00          	push	#0
 358  00cc 4b00          	push	#0
 359  00ce aec200        	ldw	x,#49664
 360  00d1 89            	pushw	x
 361  00d2 ae0001        	ldw	x,#1
 362  00d5 89            	pushw	x
 363  00d6 8d000000      	callf	f_UART1_Init
 365  00da 5b09          	addw	sp,#9
 366                     ; 161 	UART1_Cmd(ENABLE);
 368  00dc a601          	ld	a,#1
 369  00de 8d000000      	callf	f_UART1_Cmd
 371                     ; 163 	UART3_Init((uint32_t)115200, UART3_WORDLENGTH_8D, UART3_STOPBITS_1, UART3_PARITY_NO, UART3_MODE_TXRX_ENABLE);
 373  00e2 4b0c          	push	#12
 374  00e4 4b00          	push	#0
 375  00e6 4b00          	push	#0
 376  00e8 4b00          	push	#0
 377  00ea aec200        	ldw	x,#49664
 378  00ed 89            	pushw	x
 379  00ee ae0001        	ldw	x,#1
 380  00f1 89            	pushw	x
 381  00f2 8d000000      	callf	f_UART3_Init
 383  00f6 5b08          	addw	sp,#8
 384                     ; 165 	UART3_ITConfig(UART3_IT_RXNE, ENABLE);
 386  00f8 4b01          	push	#1
 387  00fa ae0255        	ldw	x,#597
 388  00fd 8d000000      	callf	f_UART3_ITConfig
 390  0101 84            	pop	a
 391                     ; 167 	UART3_Cmd(ENABLE);
 393  0102 a601          	ld	a,#1
 394  0104 8d000000      	callf	f_UART3_Cmd
 396                     ; 168 	machine_No = FLASH_ReadByte(EEPROM_START_ADDRESS + 20);
 398  0108 ae4014        	ldw	x,#16404
 399  010b 89            	pushw	x
 400  010c ae0000        	ldw	x,#0
 401  010f 89            	pushw	x
 402  0110 8d000000      	callf	f_FLASH_ReadByte
 404  0114 5b04          	addw	sp,#4
 405  0116 c70003        	ld	L51_machine_No,a
 406                     ; 169 	uart_rx_index = 0;
 408  0119 725f0107      	clr	L5_uart_rx_index
 409                     ; 170 }
 412  011d 87            	retf
 485                     .const:	section	.text
 486  0000               L22:
 487  0000 00000100      	dc.l	256
 488  0004               L42:
 489  0004 00000020      	dc.l	32
 490  0008               L03:
 491  0008 00000008      	dc.l	8
 492                     ; 172 void UART_Update(void)
 492                     ; 173 {
 493                     	switch	.text
 494  011e               f_UART_Update:
 496  011e 5206          	subw	sp,#6
 497       00000006      OFST:	set	6
 500                     ; 174 	if (uart_received)
 502  0120 725d0000      	tnz	L7_uart_received
 503  0124 2604          	jrne	L23
 504  0126 acb604b6      	jpf	L122
 505  012a               L23:
 506                     ; 177 		uart_received = FALSE;		
 508  012a 725f0000      	clr	L7_uart_received
 509                     ; 179 		memcpy(uart_rxtx_data, uart_rx_buffer, UART_BUFFER_MAX_LENGTH + 2);
 511  012e ae0107        	ldw	x,#263
 512  0131               L02:
 513  0131 d60107        	ld	a,(L3_uart_rx_buffer-1,x)
 514  0134 d7ffff        	ld	(L11_uart_rxtx_data-1,x),a
 515  0137 5a            	decw	x
 516  0138 26f7          	jrne	L02
 517                     ; 180 		if (uart_rxtx_data[DP_COMMAND] == DATA_COMMAND_WRITE_ID)
 519  013a c60002        	ld	a,L11_uart_rxtx_data+2
 520  013d a107          	cp	a,#7
 521  013f 2644          	jrne	L322
 522                     ; 182 				checksum = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
 524  0141 c60003        	ld	a,L11_uart_rxtx_data+3
 525  0144 cb0004        	add	a,L11_uart_rxtx_data+4
 526  0147 cb0005        	add	a,L11_uart_rxtx_data+5
 527  014a cb0006        	add	a,L11_uart_rxtx_data+6
 528  014d a000          	sub	a,#0
 529  014f 40            	neg	a
 530  0150 6b05          	ld	(OFST-1,sp),a
 531                     ; 183 				if (checksum == uart_rxtx_data[DP_CHECK_SUM])
 533  0152 7b05          	ld	a,(OFST-1,sp)
 534  0154 c10007        	cp	a,L11_uart_rxtx_data+7
 535  0157 2618          	jrne	L522
 536                     ; 185 					FLASH_ProgramByte(EEPROM_START_ADDRESS + 20, uart_rxtx_data[DP_DATA]);
 538  0159 3b0006        	push	L11_uart_rxtx_data+6
 539  015c ae4014        	ldw	x,#16404
 540  015f 89            	pushw	x
 541  0160 ae0000        	ldw	x,#0
 542  0163 89            	pushw	x
 543  0164 8d000000      	callf	f_FLASH_ProgramByte
 545  0168 5b05          	addw	sp,#5
 546                     ; 186 					machine_No = uart_rxtx_data[DP_DATA];
 548  016a 5500060003    	mov	L51_machine_No,L11_uart_rxtx_data+6
 550  016f 2004          	jra	L722
 551  0171               L522:
 552                     ; 190 					uart_rxtx_data[DP_COMMAND] = 0xFE;
 554  0171 35fe0002      	mov	L11_uart_rxtx_data+2,#254
 555  0175               L722:
 556                     ; 192 				UART_Send(uart_rxtx_data, 8);
 558  0175 ae0008        	ldw	x,#8
 559  0178 89            	pushw	x
 560  0179 ae0000        	ldw	x,#L11_uart_rxtx_data
 561  017c 8d9e009e      	callf	f_UART_Send
 563  0180 85            	popw	x
 565  0181 acb604b6      	jpf	L122
 566  0185               L322:
 567                     ; 194 		else if (machine_No == uart_rxtx_data[DP_SUB_ADDR_2])
 569  0185 c60003        	ld	a,L51_machine_No
 570  0188 c10005        	cp	a,L11_uart_rxtx_data+5
 571  018b 2704          	jreq	L43
 572  018d acb604b6      	jpf	L122
 573  0191               L43:
 574                     ; 196 			switch (uart_rxtx_data[DP_COMMAND])
 576  0191 c60002        	ld	a,L11_uart_rxtx_data+2
 578                     ; 387 				default:
 578                     ; 388 					break;
 579  0194 4d            	tnz	a
 580  0195 2724          	jreq	L541
 581  0197 4a            	dec	a
 582  0198 276d          	jreq	L741
 583  019a 4a            	dec	a
 584  019b 2604          	jrne	L63
 585  019d ac650265      	jpf	L151
 586  01a1               L63:
 587  01a1 4a            	dec	a
 588  01a2 2604          	jrne	L04
 589  01a4 ac360336      	jpf	L351
 590  01a8               L04:
 591  01a8 4a            	dec	a
 592  01a9 2604          	jrne	L24
 593  01ab ac040404      	jpf	L551
 594  01af               L24:
 595  01af a002          	sub	a,#2
 596  01b1 2604          	jrne	L44
 597  01b3 ac540454      	jpf	L171
 598  01b7               L44:
 599  01b7 acb604b6      	jpf	L122
 600  01bb               L541:
 601                     ; 198 				case DATA_COMMAND_WRITE_BYTE:
 601                     ; 199 					checksum = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
 603  01bb c60003        	ld	a,L11_uart_rxtx_data+3
 604  01be cb0004        	add	a,L11_uart_rxtx_data+4
 605  01c1 cb0005        	add	a,L11_uart_rxtx_data+5
 606  01c4 cb0006        	add	a,L11_uart_rxtx_data+6
 607  01c7 a000          	sub	a,#0
 608  01c9 40            	neg	a
 609  01ca 6b05          	ld	(OFST-1,sp),a
 610                     ; 200 					if (checksum == uart_rxtx_data[DP_CHECK_SUM])
 612  01cc 7b05          	ld	a,(OFST-1,sp)
 613  01ce c10007        	cp	a,L11_uart_rxtx_data+7
 614  01d1 2620          	jrne	L142
 615                     ; 202 						ret = SWI2C_WriteBytes(uart_rxtx_data[DP_DEVICE_ADDR], uart_rxtx_data[DP_SUB_ADDR], 1, &uart_rxtx_data[DP_DATA]);
 617  01d3 ae0006        	ldw	x,#L11_uart_rxtx_data+6
 618  01d6 89            	pushw	x
 619  01d7 4b01          	push	#1
 620  01d9 c60004        	ld	a,L11_uart_rxtx_data+4
 621  01dc 97            	ld	xl,a
 622  01dd c60003        	ld	a,L11_uart_rxtx_data+3
 623  01e0 95            	ld	xh,a
 624  01e1 8d000000      	callf	f_SWI2C_WriteBytes
 626  01e5 5b03          	addw	sp,#3
 627  01e7 6b06          	ld	(OFST+0,sp),a
 628                     ; 203 						if (ret == IIC_FAIL)
 630  01e9 0d06          	tnz	(OFST+0,sp)
 631  01eb 260a          	jrne	L542
 632                     ; 205 							uart_rxtx_data[DP_COMMAND] = 0xFF;
 634  01ed 35ff0002      	mov	L11_uart_rxtx_data+2,#255
 635  01f1 2004          	jra	L542
 636  01f3               L142:
 637                     ; 210 						uart_rxtx_data[DP_COMMAND] = 0xFE;
 639  01f3 35fe0002      	mov	L11_uart_rxtx_data+2,#254
 640  01f7               L542:
 641                     ; 212 					UART_Send(uart_rxtx_data, 8);
 643  01f7 ae0008        	ldw	x,#8
 644  01fa 89            	pushw	x
 645  01fb ae0000        	ldw	x,#L11_uart_rxtx_data
 646  01fe 8d9e009e      	callf	f_UART_Send
 648  0202 85            	popw	x
 649                     ; 213 					break;
 651  0203 acb604b6      	jpf	L122
 652  0207               L741:
 653                     ; 214 				case DATA_COMMAND_READ_BYTE:
 653                     ; 215 					checksum = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
 655  0207 c60003        	ld	a,L11_uart_rxtx_data+3
 656  020a cb0004        	add	a,L11_uart_rxtx_data+4
 657  020d cb0005        	add	a,L11_uart_rxtx_data+5
 658  0210 cb0006        	add	a,L11_uart_rxtx_data+6
 659  0213 a000          	sub	a,#0
 660  0215 40            	neg	a
 661  0216 6b05          	ld	(OFST-1,sp),a
 662                     ; 216 					if (checksum == uart_rxtx_data[DP_CHECK_SUM])
 664  0218 7b05          	ld	a,(OFST-1,sp)
 665  021a c10007        	cp	a,L11_uart_rxtx_data+7
 666  021d 2632          	jrne	L742
 667                     ; 218 						ret = SWI2C_ReadBytes(uart_rxtx_data[DP_DEVICE_ADDR], uart_rxtx_data[DP_SUB_ADDR], 1, &uart_rxtx_data[DP_DATA]);
 669  021f ae0006        	ldw	x,#L11_uart_rxtx_data+6
 670  0222 89            	pushw	x
 671  0223 4b01          	push	#1
 672  0225 c60004        	ld	a,L11_uart_rxtx_data+4
 673  0228 97            	ld	xl,a
 674  0229 c60003        	ld	a,L11_uart_rxtx_data+3
 675  022c 95            	ld	xh,a
 676  022d 8d000000      	callf	f_SWI2C_ReadBytes
 678  0231 5b03          	addw	sp,#3
 679  0233 6b06          	ld	(OFST+0,sp),a
 680                     ; 219 						uart_rxtx_data[DP_CHECK_SUM] = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
 682  0235 c60003        	ld	a,L11_uart_rxtx_data+3
 683  0238 cb0004        	add	a,L11_uart_rxtx_data+4
 684  023b cb0005        	add	a,L11_uart_rxtx_data+5
 685  023e cb0006        	add	a,L11_uart_rxtx_data+6
 686  0241 a000          	sub	a,#0
 687  0243 40            	neg	a
 688  0244 c70007        	ld	L11_uart_rxtx_data+7,a
 689                     ; 220 						if (ret == IIC_FAIL)
 691  0247 0d06          	tnz	(OFST+0,sp)
 692  0249 260a          	jrne	L352
 693                     ; 222 							uart_rxtx_data[DP_COMMAND] = 0xFF;
 695  024b 35ff0002      	mov	L11_uart_rxtx_data+2,#255
 696  024f 2004          	jra	L352
 697  0251               L742:
 698                     ; 227 						uart_rxtx_data[DP_COMMAND] = 0xFE;
 700  0251 35fe0002      	mov	L11_uart_rxtx_data+2,#254
 701  0255               L352:
 702                     ; 229 					UART_Send(uart_rxtx_data, 8);
 704  0255 ae0008        	ldw	x,#8
 705  0258 89            	pushw	x
 706  0259 ae0000        	ldw	x,#L11_uart_rxtx_data
 707  025c 8d9e009e      	callf	f_UART_Send
 709  0260 85            	popw	x
 710                     ; 230 					break;
 712  0261 acb604b6      	jpf	L122
 713  0265               L151:
 714                     ; 234 						checksum = uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2];
 716  0265 c60003        	ld	a,L11_uart_rxtx_data+3
 717  0268 cb0004        	add	a,L11_uart_rxtx_data+4
 718  026b cb0005        	add	a,L11_uart_rxtx_data+5
 719  026e 6b05          	ld	(OFST-1,sp),a
 720                     ; 235 						for (i = 0; i < 256; i++)
 722  0270 ae0000        	ldw	x,#0
 723  0273 1f03          	ldw	(OFST-3,sp),x
 724  0275 ae0000        	ldw	x,#0
 725  0278 1f01          	ldw	(OFST-5,sp),x
 726  027a               L552:
 727                     ; 237 							checksum += uart_rxtx_data[DP_DATA + i];
 729  027a 1e03          	ldw	x,(OFST-3,sp)
 730  027c 7b05          	ld	a,(OFST-1,sp)
 731  027e db0006        	add	a,(L11_uart_rxtx_data+6,x)
 732  0281 6b05          	ld	(OFST-1,sp),a
 733                     ; 235 						for (i = 0; i < 256; i++)
 735  0283 96            	ldw	x,sp
 736  0284 1c0001        	addw	x,#OFST-5
 737  0287 a601          	ld	a,#1
 738  0289 8d000000      	callf	d_lgadc
 742  028d 96            	ldw	x,sp
 743  028e 1c0001        	addw	x,#OFST-5
 744  0291 8d000000      	callf	d_ltor
 746  0295 ae0000        	ldw	x,#L22
 747  0298 8d000000      	callf	d_lcmp
 749  029c 25dc          	jrult	L552
 750                     ; 239 						checksum = 0x100 - checksum;
 752  029e a600          	ld	a,#0
 753  02a0 1005          	sub	a,(OFST-1,sp)
 754  02a2 6b05          	ld	(OFST-1,sp),a
 755                     ; 240 						if (checksum == uart_rxtx_data[6 + 256])
 757  02a4 7b05          	ld	a,(OFST-1,sp)
 758  02a6 c10106        	cp	a,L11_uart_rxtx_data+262
 759  02a9 2677          	jrne	L362
 760                     ; 243 							for (i = 0; i < 32;i++)
 762  02ab ae0000        	ldw	x,#0
 763  02ae 1f03          	ldw	(OFST-3,sp),x
 764  02b0 ae0000        	ldw	x,#0
 765  02b3 1f01          	ldw	(OFST-5,sp),x
 766  02b5               L562:
 767                     ; 245 								ret = SWI2C_WriteBytes(uart_rxtx_data[DP_DEVICE_ADDR], i*8, 8, &uart_rxtx_data[DP_DATA + i*8]);
 769  02b5 1e03          	ldw	x,(OFST-3,sp)
 770  02b7 58            	sllw	x
 771  02b8 58            	sllw	x
 772  02b9 58            	sllw	x
 773  02ba 1c0006        	addw	x,#L11_uart_rxtx_data+6
 774  02bd 89            	pushw	x
 775  02be 4b08          	push	#8
 776  02c0 7b07          	ld	a,(OFST+1,sp)
 777  02c2 48            	sll	a
 778  02c3 48            	sll	a
 779  02c4 48            	sll	a
 780  02c5 97            	ld	xl,a
 781  02c6 c60003        	ld	a,L11_uart_rxtx_data+3
 782  02c9 95            	ld	xh,a
 783  02ca 8d000000      	callf	f_SWI2C_WriteBytes
 785  02ce 5b03          	addw	sp,#3
 786  02d0 6b06          	ld	(OFST+0,sp),a
 787                     ; 246 								if (ret == IIC_FAIL)
 789  02d2 0d06          	tnz	(OFST+0,sp)
 790  02d4 2730          	jreq	L172
 791                     ; 248 									break;
 793                     ; 250 								if (uart_rxtx_data[DP_DEVICE_ADDR] >= 0xA0 && uart_rxtx_data[DP_DEVICE_ADDR] < 0xB0)
 795  02d6 c60003        	ld	a,L11_uart_rxtx_data+3
 796  02d9 a1a0          	cp	a,#160
 797  02db 250e          	jrult	L572
 799  02dd c60003        	ld	a,L11_uart_rxtx_data+3
 800  02e0 a1b0          	cp	a,#176
 801  02e2 2407          	jruge	L572
 802                     ; 252 									IR_DelayNMiliseconds(20);
 804  02e4 ae0014        	ldw	x,#20
 805  02e7 8d000000      	callf	f_IR_DelayNMiliseconds
 807  02eb               L572:
 808                     ; 243 							for (i = 0; i < 32;i++)
 810  02eb 96            	ldw	x,sp
 811  02ec 1c0001        	addw	x,#OFST-5
 812  02ef a601          	ld	a,#1
 813  02f1 8d000000      	callf	d_lgadc
 817  02f5 96            	ldw	x,sp
 818  02f6 1c0001        	addw	x,#OFST-5
 819  02f9 8d000000      	callf	d_ltor
 821  02fd ae0004        	ldw	x,#L42
 822  0300 8d000000      	callf	d_lcmp
 824  0304 25af          	jrult	L562
 825  0306               L172:
 826                     ; 280 							uart_rxtx_data[DP_CHECK_SUM] = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
 828  0306 c60003        	ld	a,L11_uart_rxtx_data+3
 829  0309 cb0004        	add	a,L11_uart_rxtx_data+4
 830  030c cb0005        	add	a,L11_uart_rxtx_data+5
 831  030f cb0006        	add	a,L11_uart_rxtx_data+6
 832  0312 a000          	sub	a,#0
 833  0314 40            	neg	a
 834  0315 c70007        	ld	L11_uart_rxtx_data+7,a
 835                     ; 281 							if (ret == IIC_FAIL)
 837  0318 0d06          	tnz	(OFST+0,sp)
 838  031a 260a          	jrne	L103
 839                     ; 283 								uart_rxtx_data[DP_COMMAND] = 0xFF;
 841  031c 35ff0002      	mov	L11_uart_rxtx_data+2,#255
 842  0320 2004          	jra	L103
 843  0322               L362:
 844                     ; 288 							uart_rxtx_data[DP_COMMAND] = 0xFE;
 846  0322 35fe0002      	mov	L11_uart_rxtx_data+2,#254
 847  0326               L103:
 848                     ; 290 						UART_Send(uart_rxtx_data, 8);
 850  0326 ae0008        	ldw	x,#8
 851  0329 89            	pushw	x
 852  032a ae0000        	ldw	x,#L11_uart_rxtx_data
 853  032d 8d9e009e      	callf	f_UART_Send
 855  0331 85            	popw	x
 856                     ; 292 					break;
 858  0332 acb604b6      	jpf	L122
 859  0336               L351:
 860                     ; 296 						checksum = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
 862  0336 c60003        	ld	a,L11_uart_rxtx_data+3
 863  0339 cb0004        	add	a,L11_uart_rxtx_data+4
 864  033c cb0005        	add	a,L11_uart_rxtx_data+5
 865  033f cb0006        	add	a,L11_uart_rxtx_data+6
 866  0342 a000          	sub	a,#0
 867  0344 40            	neg	a
 868  0345 6b05          	ld	(OFST-1,sp),a
 869                     ; 297 						if (checksum == uart_rxtx_data[DP_CHECK_SUM])
 871  0347 7b05          	ld	a,(OFST-1,sp)
 872  0349 c10007        	cp	a,L11_uart_rxtx_data+7
 873  034c 2704          	jreq	L64
 874  034e acf003f0      	jpf	L303
 875  0352               L64:
 876                     ; 299 							memset(&uart_rxtx_data[6], 0, 256);
 878  0352 ae0100        	ldw	x,#256
 879  0355               L62:
 880  0355 724f0005      	clr	(L11_uart_rxtx_data+5,x)
 881  0359 5a            	decw	x
 882  035a 26f9          	jrne	L62
 883                     ; 301 							for (i = 0; i < 8;i++)
 885  035c ae0000        	ldw	x,#0
 886  035f 1f03          	ldw	(OFST-3,sp),x
 887  0361 ae0000        	ldw	x,#0
 888  0364 1f01          	ldw	(OFST-5,sp),x
 889  0366               L503:
 890                     ; 303 								ret = SWI2C_ReadBytes(uart_rxtx_data[DP_DEVICE_ADDR], i*32, 32, &uart_rxtx_data[DP_DATA + i*32]);
 892  0366 1e03          	ldw	x,(OFST-3,sp)
 893  0368 58            	sllw	x
 894  0369 58            	sllw	x
 895  036a 58            	sllw	x
 896  036b 58            	sllw	x
 897  036c 58            	sllw	x
 898  036d 1c0006        	addw	x,#L11_uart_rxtx_data+6
 899  0370 89            	pushw	x
 900  0371 4b20          	push	#32
 901  0373 7b07          	ld	a,(OFST+1,sp)
 902  0375 97            	ld	xl,a
 903  0376 a620          	ld	a,#32
 904  0378 42            	mul	x,a
 905  0379 9f            	ld	a,xl
 906  037a 97            	ld	xl,a
 907  037b c60003        	ld	a,L11_uart_rxtx_data+3
 908  037e 95            	ld	xh,a
 909  037f 8d000000      	callf	f_SWI2C_ReadBytes
 911  0383 5b03          	addw	sp,#3
 912  0385 6b06          	ld	(OFST+0,sp),a
 913                     ; 304 								if (ret == IIC_FAIL)
 915  0387 0d06          	tnz	(OFST+0,sp)
 916  0389 271b          	jreq	L113
 917                     ; 306 									break;
 919                     ; 301 							for (i = 0; i < 8;i++)
 921  038b 96            	ldw	x,sp
 922  038c 1c0001        	addw	x,#OFST-5
 923  038f a601          	ld	a,#1
 924  0391 8d000000      	callf	d_lgadc
 928  0395 96            	ldw	x,sp
 929  0396 1c0001        	addw	x,#OFST-5
 930  0399 8d000000      	callf	d_ltor
 932  039d ae0008        	ldw	x,#L03
 933  03a0 8d000000      	callf	d_lcmp
 935  03a4 25c0          	jrult	L503
 936  03a6               L113:
 937                     ; 319 							checksum = uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2];
 939  03a6 c60003        	ld	a,L11_uart_rxtx_data+3
 940  03a9 cb0004        	add	a,L11_uart_rxtx_data+4
 941  03ac cb0005        	add	a,L11_uart_rxtx_data+5
 942  03af 6b05          	ld	(OFST-1,sp),a
 943                     ; 320 							for (i = 0; i < 256;i++)
 945  03b1 ae0000        	ldw	x,#0
 946  03b4 1f03          	ldw	(OFST-3,sp),x
 947  03b6 ae0000        	ldw	x,#0
 948  03b9 1f01          	ldw	(OFST-5,sp),x
 949  03bb               L513:
 950                     ; 322 								checksum += uart_rxtx_data[DP_DATA + i];
 952  03bb 1e03          	ldw	x,(OFST-3,sp)
 953  03bd 7b05          	ld	a,(OFST-1,sp)
 954  03bf db0006        	add	a,(L11_uart_rxtx_data+6,x)
 955  03c2 6b05          	ld	(OFST-1,sp),a
 956                     ; 320 							for (i = 0; i < 256;i++)
 958  03c4 96            	ldw	x,sp
 959  03c5 1c0001        	addw	x,#OFST-5
 960  03c8 a601          	ld	a,#1
 961  03ca 8d000000      	callf	d_lgadc
 965  03ce 96            	ldw	x,sp
 966  03cf 1c0001        	addw	x,#OFST-5
 967  03d2 8d000000      	callf	d_ltor
 969  03d6 ae0000        	ldw	x,#L22
 970  03d9 8d000000      	callf	d_lcmp
 972  03dd 25dc          	jrult	L513
 973                     ; 324 							uart_rxtx_data[6 + 256] = 0x100 - checksum;
 975  03df a600          	ld	a,#0
 976  03e1 1005          	sub	a,(OFST-1,sp)
 977  03e3 c70106        	ld	L11_uart_rxtx_data+262,a
 978                     ; 325 							if (ret == IIC_FAIL)
 980  03e6 0d06          	tnz	(OFST+0,sp)
 981  03e8 260a          	jrne	L523
 982                     ; 327 								uart_rxtx_data[DP_COMMAND] = 0xFF;
 984  03ea 35ff0002      	mov	L11_uart_rxtx_data+2,#255
 985  03ee 2004          	jra	L523
 986  03f0               L303:
 987                     ; 332 							uart_rxtx_data[DP_COMMAND] = 0xFE;
 989  03f0 35fe0002      	mov	L11_uart_rxtx_data+2,#254
 990  03f4               L523:
 991                     ; 334 						UART_Send(uart_rxtx_data, 256 + 7);
 993  03f4 ae0107        	ldw	x,#263
 994  03f7 89            	pushw	x
 995  03f8 ae0000        	ldw	x,#L11_uart_rxtx_data
 996  03fb 8d9e009e      	callf	f_UART_Send
 998  03ff 85            	popw	x
 999                     ; 336 					break;
1001  0400 acb604b6      	jpf	L122
1002  0404               L551:
1003                     ; 337 				case DATA_COMMAND_COMMAND:
1003                     ; 338 					checksum = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
1005  0404 c60003        	ld	a,L11_uart_rxtx_data+3
1006  0407 cb0004        	add	a,L11_uart_rxtx_data+4
1007  040a cb0005        	add	a,L11_uart_rxtx_data+5
1008  040d cb0006        	add	a,L11_uart_rxtx_data+6
1009  0410 a000          	sub	a,#0
1010  0412 40            	neg	a
1011  0413 6b05          	ld	(OFST-1,sp),a
1012                     ; 339 					if (checksum == uart_rxtx_data[DP_CHECK_SUM])
1014  0415 7b05          	ld	a,(OFST-1,sp)
1015  0417 c10007        	cp	a,L11_uart_rxtx_data+7
1016  041a 2624          	jrne	L723
1017                     ; 341 						switch (uart_rxtx_data[DP_DEVICE_ADDR])
1019  041c c60003        	ld	a,L11_uart_rxtx_data+3
1021                     ; 352 							default:
1021                     ; 353 								break;
1022  041f 4d            	tnz	a
1023  0420 2708          	jreq	L751
1024  0422 4a            	dec	a
1025  0423 270b          	jreq	L161
1026  0425 4a            	dec	a
1027  0426 270e          	jreq	L361
1028  0428 201a          	jra	L533
1029  042a               L751:
1030                     ; 343 							case 0:
1030                     ; 344 								SWI2C_ProcessPower();
1032  042a 8d000000      	callf	f_SWI2C_ProcessPower
1034                     ; 345 								break;
1036  042e 2014          	jra	L533
1037  0430               L161:
1038                     ; 346 							case 1:
1038                     ; 347 								SWI2C_Toggle3DOnOff();
1040  0430 8d000000      	callf	f_SWI2C_Toggle3DOnOff
1042                     ; 348 								break;
1044  0434 200e          	jra	L533
1045  0436               L361:
1046                     ; 349 							case 2:
1046                     ; 350 								SWI2C_ToggleI2CMode();
1048  0436 8d000000      	callf	f_SWI2C_ToggleI2CMode
1050                     ; 351 								break;
1052  043a 2008          	jra	L533
1053  043c               L561:
1054                     ; 352 							default:
1054                     ; 353 								break;
1056  043c 2006          	jra	L533
1057  043e               L333:
1059  043e 2004          	jra	L533
1060  0440               L723:
1061                     ; 358 						uart_rxtx_data[DP_COMMAND] = 0xFE;
1063  0440 35fe0002      	mov	L11_uart_rxtx_data+2,#254
1064  0444               L533:
1065                     ; 360 					UART_Send(uart_rxtx_data, 8);
1067  0444 ae0008        	ldw	x,#8
1068  0447 89            	pushw	x
1069  0448 ae0000        	ldw	x,#L11_uart_rxtx_data
1070  044b 8d9e009e      	callf	f_UART_Send
1072  044f 85            	popw	x
1073                     ; 361 					break;
1075  0450 2064          	jra	L122
1076  0452               L761:
1077                     ; 362 				case DATA_COMMAND_WRITE_TWO_BYTE:
1077                     ; 363 					break;
1079  0452 2062          	jra	L122
1080  0454               L171:
1081                     ; 367 						checksum = uart_rxtx_data[5];
1083  0454 c60005        	ld	a,L11_uart_rxtx_data+5
1084  0457 6b05          	ld	(OFST-1,sp),a
1085                     ; 368 						for (i = 0; i < 20; i++)
1087  0459 0f06          	clr	(OFST+0,sp)
1088  045b               L733:
1089                     ; 370 							checksum += uart_rxtx_data[6+i];
1091  045b 7b06          	ld	a,(OFST+0,sp)
1092  045d 5f            	clrw	x
1093  045e 97            	ld	xl,a
1094  045f 7b05          	ld	a,(OFST-1,sp)
1095  0461 db0006        	add	a,(L11_uart_rxtx_data+6,x)
1096  0464 6b05          	ld	(OFST-1,sp),a
1097                     ; 368 						for (i = 0; i < 20; i++)
1099  0466 0c06          	inc	(OFST+0,sp)
1102  0468 7b06          	ld	a,(OFST+0,sp)
1103  046a a114          	cp	a,#20
1104  046c 25ed          	jrult	L733
1105                     ; 372 						checksum = 0x100 - checksum;
1107  046e a600          	ld	a,#0
1108  0470 1005          	sub	a,(OFST-1,sp)
1109  0472 6b05          	ld	(OFST-1,sp),a
1110                     ; 373 						if (checksum == uart_rxtx_data[26])
1112  0474 7b05          	ld	a,(OFST-1,sp)
1113  0476 c1001a        	cp	a,L11_uart_rxtx_data+26
1114  0479 262b          	jrne	L543
1115                     ; 375 							for (i = 0; i < 20; i++)
1117  047b 0f06          	clr	(OFST+0,sp)
1118  047d               L743:
1119                     ; 377 								FLASH_ProgramByte(EEPROM_START_ADDRESS + i + 1, uart_rxtx_data[6 + i]);
1121  047d 7b06          	ld	a,(OFST+0,sp)
1122  047f 5f            	clrw	x
1123  0480 97            	ld	xl,a
1124  0481 d60006        	ld	a,(L11_uart_rxtx_data+6,x)
1125  0484 88            	push	a
1126  0485 7b07          	ld	a,(OFST+1,sp)
1127  0487 5f            	clrw	x
1128  0488 97            	ld	xl,a
1129  0489 1c4001        	addw	x,#16385
1130  048c 8d000000      	callf	d_itolx
1132  0490 be02          	ldw	x,c_lreg+2
1133  0492 89            	pushw	x
1134  0493 be00          	ldw	x,c_lreg
1135  0495 89            	pushw	x
1136  0496 8d000000      	callf	f_FLASH_ProgramByte
1138  049a 5b05          	addw	sp,#5
1139                     ; 375 							for (i = 0; i < 20; i++)
1141  049c 0c06          	inc	(OFST+0,sp)
1144  049e 7b06          	ld	a,(OFST+0,sp)
1145  04a0 a114          	cp	a,#20
1146  04a2 25d9          	jrult	L743
1148  04a4 2004          	jra	L553
1149  04a6               L543:
1150                     ; 382 							uart_rxtx_data[DP_COMMAND] = 0xFE;
1152  04a6 35fe0002      	mov	L11_uart_rxtx_data+2,#254
1153  04aa               L553:
1154                     ; 385 					UART_Send(uart_rxtx_data, 27);
1156  04aa ae001b        	ldw	x,#27
1157  04ad 89            	pushw	x
1158  04ae ae0000        	ldw	x,#L11_uart_rxtx_data
1159  04b1 8d9e009e      	callf	f_UART_Send
1161  04b5 85            	popw	x
1162                     ; 386 					break;
1164  04b6               L371:
1165                     ; 387 				default:
1165                     ; 388 					break;
1167  04b6               L732:
1168  04b6               L122:
1169                     ; 392 }
1172  04b6 5b06          	addw	sp,#6
1173  04b8 87            	retf
1206                     ; 395 char putchar(char c)
1206                     ; 396 {
1207                     	switch	.text
1208  04b9               f_putchar:
1210  04b9 88            	push	a
1211       00000000      OFST:	set	0
1214                     ; 398 	UART1_SendData8(c);
1216  04ba 8d000000      	callf	f_UART1_SendData8
1219  04be               L573:
1220                     ; 400 	while (UART1_GetFlagStatus(UART1_FLAG_TXE) == RESET);
1222  04be ae0080        	ldw	x,#128
1223  04c1 8d000000      	callf	f_UART1_GetFlagStatus
1225  04c5 4d            	tnz	a
1226  04c6 27f6          	jreq	L573
1227                     ; 402 	return (c);
1229  04c8 7b01          	ld	a,(OFST+1,sp)
1232  04ca 5b01          	addw	sp,#1
1233  04cc 87            	retf
1295                     	xdef	f_putchar
1296                     	xdef	f_UART_Update
1297                     	xdef	f_UART_Init
1298                     	xdef	f_UART_Send
1299                     	xdef	f_UART_PutChar
1300                     	xdef	f_UART_ISR
1301                     	switch	.bss
1302  0000               L11_uart_rxtx_data:
1303  0000 000000000000  	ds.b	263
1304  0107               L5_uart_rx_index:
1305  0107 00            	ds.b	1
1306  0108               L3_uart_rx_buffer:
1307  0108 000000000000  	ds.b	263
1308                     	xref	f_IR_DelayNMiliseconds
1309                     	xref	f_SWI2C_Toggle3DOnOff
1310                     	xref	f_SWI2C_WriteBytes
1311                     	xref	f_SWI2C_ReadBytes
1312                     	xref	f_SWI2C_ToggleI2CMode
1313                     	xref	f_SWI2C_ProcessPower
1314                     	xref	f_FLASH_ReadByte
1315                     	xref	f_FLASH_ProgramByte
1316                     	xref	f_UART3_ClearITPendingBit
1317                     	xref	f_UART3_GetFlagStatus
1318                     	xref	f_UART3_SendData8
1319                     	xref	f_UART3_ReceiveData8
1320                     	xref	f_UART3_ITConfig
1321                     	xref	f_UART3_Cmd
1322                     	xref	f_UART3_Init
1323                     	xref	f_UART1_GetFlagStatus
1324                     	xref	f_UART1_SendData8
1325                     	xref	f_UART1_Cmd
1326                     	xref	f_UART1_Init
1327                     	xref.b	c_lreg
1328                     	xref.b	c_x
1329                     	xref.b	c_y
1349                     	xref	d_itolx
1350                     	xref	d_lcmp
1351                     	xref	d_ltor
1352                     	xref	d_lgadc
1353                     	end
