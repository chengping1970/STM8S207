   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  15                     	switch	.data
  16  0000               L7_uart_received:
  17  0000 00            	dc.b	0
  18  0001               L31_uart_data_length:
  19  0001 0008          	dc.w	8
  54                     ; 86 INTERRUPT_HANDLER(UART_ISR, 18)
  54                     ; 87 {
  55                     	switch	.text
  56  0000               f_UART_ISR:
  58  0000 3b0002        	push	c_x+2
  59  0003 be00          	ldw	x,c_x
  60  0005 89            	pushw	x
  61  0006 3b0002        	push	c_y+2
  62  0009 be00          	ldw	x,c_y
  63  000b 89            	pushw	x
  66                     ; 88 	uart_rx_buffer[uart_rx_index] = UART1_ReceiveData8();
  68  000c c60107        	ld	a,L5_uart_rx_index
  69  000f 5f            	clrw	x
  70  0010 97            	ld	xl,a
  71  0011 89            	pushw	x
  72  0012 8d000000      	callf	f_UART1_ReceiveData8
  74  0016 85            	popw	x
  75  0017 d70108        	ld	(L3_uart_rx_buffer,x),a
  76                     ; 89 	UART1_ClearITPendingBit(UART1_IT_RXNE);
  78  001a ae0255        	ldw	x,#597
  79  001d 8d000000      	callf	f_UART1_ClearITPendingBit
  81                     ; 91 	if (uart_rx_index == 0)
  83  0021 725d0107      	tnz	L5_uart_rx_index
  84  0025 260d          	jrne	L33
  85                     ; 93 		if (uart_rx_buffer[0] != 0xFF)
  87  0027 c60108        	ld	a,L3_uart_rx_buffer
  88  002a a1ff          	cp	a,#255
  89  002c 2725          	jreq	L73
  90                     ; 95 			uart_rx_index = 0;
  92  002e 725f0107      	clr	L5_uart_rx_index
  93                     ; 96 			return;
  95  0032 2012          	jra	L6
  96  0034               L33:
  97                     ; 99 	else if (uart_rx_index == 1)
  99  0034 c60107        	ld	a,L5_uart_rx_index
 100  0037 a101          	cp	a,#1
 101  0039 2618          	jrne	L73
 102                     ; 101 		if (uart_rx_buffer[1] != 0x55)
 104  003b c60109        	ld	a,L3_uart_rx_buffer+1
 105  003e a155          	cp	a,#85
 106  0040 2711          	jreq	L73
 107                     ; 103 			uart_rx_index = 0;
 109  0042 725f0107      	clr	L5_uart_rx_index
 110                     ; 104 			return;
 111  0046               L6:
 114  0046 85            	popw	x
 115  0047 bf00          	ldw	c_y,x
 116  0049 320002        	pop	c_y+2
 117  004c 85            	popw	x
 118  004d bf00          	ldw	c_x,x
 119  004f 320002        	pop	c_x+2
 120  0052 80            	iret
 121  0053               L73:
 122                     ; 107 	if (uart_rx_buffer[2] == DATA_COMMAND_WRITE_BANK)
 124  0053 c6010a        	ld	a,L3_uart_rx_buffer+2
 125  0056 a102          	cp	a,#2
 126  0058 2608          	jrne	L54
 127                     ; 109 		uart_data_length = UART_BUFFER_MAX_LENGTH + 2;
 129  005a ae0107        	ldw	x,#263
 130  005d cf0001        	ldw	L31_uart_data_length,x
 132  0060 2015          	jra	L74
 133  0062               L54:
 134                     ; 111 	else if (uart_rx_buffer[2] == DATA_COMMAND_WRITE_CONFIG)
 136  0062 c6010a        	ld	a,L3_uart_rx_buffer+2
 137  0065 a106          	cp	a,#6
 138  0067 2608          	jrne	L15
 139                     ; 113 		uart_data_length = 27;
 141  0069 ae001b        	ldw	x,#27
 142  006c cf0001        	ldw	L31_uart_data_length,x
 144  006f 2006          	jra	L74
 145  0071               L15:
 146                     ; 117 		uart_data_length = 8;
 148  0071 ae0008        	ldw	x,#8
 149  0074 cf0001        	ldw	L31_uart_data_length,x
 150  0077               L74:
 151                     ; 119 	uart_rx_index++;
 153  0077 725c0107      	inc	L5_uart_rx_index
 154                     ; 121 	if (uart_rx_index == uart_data_length)
 156  007b c60107        	ld	a,L5_uart_rx_index
 157  007e 5f            	clrw	x
 158  007f 97            	ld	xl,a
 159  0080 c30001        	cpw	x,L31_uart_data_length
 160  0083 2608          	jrne	L55
 161                     ; 123 		uart_rx_index = 0;
 163  0085 725f0107      	clr	L5_uart_rx_index
 164                     ; 124 		uart_received = TRUE;
 166  0089 35010000      	mov	L7_uart_received,#1
 167  008d               L55:
 168                     ; 126 }
 170  008d 20b7          	jra	L6
 203                     ; 136 void UART_PutChar(char c)
 203                     ; 137 {
 204                     	switch	.text
 205  008f               f_UART_PutChar:
 209                     ; 138   UART1_SendData8(c);
 211  008f 8d000000      	callf	f_UART1_SendData8
 214  0093               L57:
 215                     ; 139   while (UART1_GetFlagStatus(UART1_FLAG_TXE) == RESET);
 217  0093 ae0080        	ldw	x,#128
 218  0096 8d000000      	callf	f_UART1_GetFlagStatus
 220  009a 4d            	tnz	a
 221  009b 27f6          	jreq	L57
 222                     ; 140 }
 225  009d 87            	retf
 274                     ; 143 void UART_Send(u8 * reply, u16 count)
 274                     ; 144 {
 275                     	switch	.text
 276  009e               f_UART_Send:
 278  009e 89            	pushw	x
 279  009f 89            	pushw	x
 280       00000002      OFST:	set	2
 283                     ; 147 	for (i = 0; i < count;i++)
 285  00a0 5f            	clrw	x
 286  00a1 1f01          	ldw	(OFST-1,sp),x
 288  00a3 2016          	jra	L721
 289  00a5               L321:
 290                     ; 149 		UART_PutChar(* reply++);
 292  00a5 1e03          	ldw	x,(OFST+1,sp)
 293  00a7 1c0001        	addw	x,#1
 294  00aa 1f03          	ldw	(OFST+1,sp),x
 295  00ac 1d0001        	subw	x,#1
 296  00af f6            	ld	a,(x)
 297  00b0 8d8f008f      	callf	f_UART_PutChar
 299                     ; 147 	for (i = 0; i < count;i++)
 301  00b4 1e01          	ldw	x,(OFST-1,sp)
 302  00b6 1c0001        	addw	x,#1
 303  00b9 1f01          	ldw	(OFST-1,sp),x
 304  00bb               L721:
 307  00bb 1e01          	ldw	x,(OFST-1,sp)
 308  00bd 1308          	cpw	x,(OFST+6,sp)
 309  00bf 25e4          	jrult	L321
 310                     ; 151 }
 313  00c1 5b04          	addw	sp,#4
 314  00c3 87            	retf
 342                     ; 153 void UART_Init(void)
 342                     ; 154 {
 343                     	switch	.text
 344  00c4               f_UART_Init:
 348                     ; 155 	UART1_Init((uint32_t)115200, UART1_WORDLENGTH_8D, UART1_STOPBITS_1, UART1_PARITY_NO, UART1_SYNCMODE_CLOCK_DISABLE, UART1_MODE_TXRX_ENABLE);
 350  00c4 4b0c          	push	#12
 351  00c6 4b80          	push	#128
 352  00c8 4b00          	push	#0
 353  00ca 4b00          	push	#0
 354  00cc 4b00          	push	#0
 355  00ce aec200        	ldw	x,#49664
 356  00d1 89            	pushw	x
 357  00d2 ae0001        	ldw	x,#1
 358  00d5 89            	pushw	x
 359  00d6 8d000000      	callf	f_UART1_Init
 361  00da 5b09          	addw	sp,#9
 362                     ; 157 	UART1_ITConfig(UART1_IT_RXNE, ENABLE);
 364  00dc 4b01          	push	#1
 365  00de ae0255        	ldw	x,#597
 366  00e1 8d000000      	callf	f_UART1_ITConfig
 368  00e5 84            	pop	a
 369                     ; 159 	UART1_Cmd(ENABLE);
 371  00e6 a601          	ld	a,#1
 372  00e8 8d000000      	callf	f_UART1_Cmd
 374                     ; 161 	UART3_Init((uint32_t)115200, UART3_WORDLENGTH_8D, UART3_STOPBITS_1, UART3_PARITY_NO, UART3_MODE_TXRX_ENABLE);
 376  00ec 4b0c          	push	#12
 377  00ee 4b00          	push	#0
 378  00f0 4b00          	push	#0
 379  00f2 4b00          	push	#0
 380  00f4 aec200        	ldw	x,#49664
 381  00f7 89            	pushw	x
 382  00f8 ae0001        	ldw	x,#1
 383  00fb 89            	pushw	x
 384  00fc 8d000000      	callf	f_UART3_Init
 386  0100 5b08          	addw	sp,#8
 387                     ; 165 	UART3_Cmd(ENABLE);
 389  0102 a601          	ld	a,#1
 390  0104 8d000000      	callf	f_UART3_Cmd
 392                     ; 167 	uart_rx_index = 0;
 394  0108 725f0107      	clr	L5_uart_rx_index
 395                     ; 168 }
 398  010c 87            	retf
 470                     .const:	section	.text
 471  0000               L22:
 472  0000 00000100      	dc.l	256
 473  0004               L42:
 474  0004 00000020      	dc.l	32
 475  0008               L03:
 476  0008 00000008      	dc.l	8
 477                     ; 170 void UART_Update(void)
 477                     ; 171 {
 478                     	switch	.text
 479  010d               f_UART_Update:
 481  010d 5206          	subw	sp,#6
 482       00000006      OFST:	set	6
 485                     ; 172 	if (uart_received)
 487  010f 725d0000      	tnz	L7_uart_received
 488  0113 2604          	jrne	L23
 489  0115 ac4e044e      	jpf	L712
 490  0119               L23:
 491                     ; 175 		uart_received = FALSE;		
 493  0119 725f0000      	clr	L7_uart_received
 494                     ; 178 		memcpy(uart_rxtx_data, uart_rx_buffer, UART_BUFFER_MAX_LENGTH + 2);
 496  011d ae0107        	ldw	x,#263
 497  0120               L02:
 498  0120 d60107        	ld	a,(L3_uart_rx_buffer-1,x)
 499  0123 d7ffff        	ld	(L11_uart_rxtx_data-1,x),a
 500  0126 5a            	decw	x
 501  0127 26f7          	jrne	L02
 502                     ; 180 		switch (uart_rxtx_data[DP_COMMAND])
 504  0129 c60002        	ld	a,L11_uart_rxtx_data+2
 506                     ; 371 			default:
 506                     ; 372 				break;
 507  012c 4d            	tnz	a
 508  012d 2724          	jreq	L341
 509  012f 4a            	dec	a
 510  0130 276d          	jreq	L541
 511  0132 4a            	dec	a
 512  0133 2604          	jrne	L43
 513  0135 acfd01fd      	jpf	L741
 514  0139               L43:
 515  0139 4a            	dec	a
 516  013a 2604          	jrne	L63
 517  013c acce02ce      	jpf	L151
 518  0140               L63:
 519  0140 4a            	dec	a
 520  0141 2604          	jrne	L04
 521  0143 ac9c039c      	jpf	L351
 522  0147               L04:
 523  0147 a002          	sub	a,#2
 524  0149 2604          	jrne	L24
 525  014b acec03ec      	jpf	L761
 526  014f               L24:
 527  014f ac4e044e      	jpf	L712
 528  0153               L341:
 529                     ; 182 			case DATA_COMMAND_WRITE_BYTE:
 529                     ; 183 				checksum = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
 531  0153 c60003        	ld	a,L11_uart_rxtx_data+3
 532  0156 cb0004        	add	a,L11_uart_rxtx_data+4
 533  0159 cb0005        	add	a,L11_uart_rxtx_data+5
 534  015c cb0006        	add	a,L11_uart_rxtx_data+6
 535  015f a000          	sub	a,#0
 536  0161 40            	neg	a
 537  0162 6b05          	ld	(OFST-1,sp),a
 538                     ; 184 				if (checksum == uart_rxtx_data[DP_CHECK_SUM])
 540  0164 7b05          	ld	a,(OFST-1,sp)
 541  0166 c10007        	cp	a,L11_uart_rxtx_data+7
 542  0169 2620          	jrne	L522
 543                     ; 186 					ret = SWI2C_WriteBytes(uart_rxtx_data[DP_DEVICE_ADDR], uart_rxtx_data[DP_SUB_ADDR], 1, &uart_rxtx_data[DP_DATA]);
 545  016b ae0006        	ldw	x,#L11_uart_rxtx_data+6
 546  016e 89            	pushw	x
 547  016f 4b01          	push	#1
 548  0171 c60004        	ld	a,L11_uart_rxtx_data+4
 549  0174 97            	ld	xl,a
 550  0175 c60003        	ld	a,L11_uart_rxtx_data+3
 551  0178 95            	ld	xh,a
 552  0179 8d000000      	callf	f_SWI2C_WriteBytes
 554  017d 5b03          	addw	sp,#3
 555  017f 6b06          	ld	(OFST+0,sp),a
 556                     ; 187 					if (ret == IIC_FAIL)
 558  0181 0d06          	tnz	(OFST+0,sp)
 559  0183 260a          	jrne	L132
 560                     ; 189 						uart_rxtx_data[DP_COMMAND] = 0xFF;
 562  0185 35ff0002      	mov	L11_uart_rxtx_data+2,#255
 563  0189 2004          	jra	L132
 564  018b               L522:
 565                     ; 194 					uart_rxtx_data[DP_COMMAND] = 0xFE;
 567  018b 35fe0002      	mov	L11_uart_rxtx_data+2,#254
 568  018f               L132:
 569                     ; 196 				UART_Send(uart_rxtx_data, 8);
 571  018f ae0008        	ldw	x,#8
 572  0192 89            	pushw	x
 573  0193 ae0000        	ldw	x,#L11_uart_rxtx_data
 574  0196 8d9e009e      	callf	f_UART_Send
 576  019a 85            	popw	x
 577                     ; 197 				break;
 579  019b ac4e044e      	jpf	L712
 580  019f               L541:
 581                     ; 198 			case DATA_COMMAND_READ_BYTE:
 581                     ; 199 				checksum = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
 583  019f c60003        	ld	a,L11_uart_rxtx_data+3
 584  01a2 cb0004        	add	a,L11_uart_rxtx_data+4
 585  01a5 cb0005        	add	a,L11_uart_rxtx_data+5
 586  01a8 cb0006        	add	a,L11_uart_rxtx_data+6
 587  01ab a000          	sub	a,#0
 588  01ad 40            	neg	a
 589  01ae 6b05          	ld	(OFST-1,sp),a
 590                     ; 200 				if (checksum == uart_rxtx_data[DP_CHECK_SUM])
 592  01b0 7b05          	ld	a,(OFST-1,sp)
 593  01b2 c10007        	cp	a,L11_uart_rxtx_data+7
 594  01b5 2632          	jrne	L332
 595                     ; 202 					ret = SWI2C_ReadBytes(uart_rxtx_data[DP_DEVICE_ADDR], uart_rxtx_data[DP_SUB_ADDR], 1, &uart_rxtx_data[DP_DATA]);
 597  01b7 ae0006        	ldw	x,#L11_uart_rxtx_data+6
 598  01ba 89            	pushw	x
 599  01bb 4b01          	push	#1
 600  01bd c60004        	ld	a,L11_uart_rxtx_data+4
 601  01c0 97            	ld	xl,a
 602  01c1 c60003        	ld	a,L11_uart_rxtx_data+3
 603  01c4 95            	ld	xh,a
 604  01c5 8d000000      	callf	f_SWI2C_ReadBytes
 606  01c9 5b03          	addw	sp,#3
 607  01cb 6b06          	ld	(OFST+0,sp),a
 608                     ; 203 					uart_rxtx_data[DP_CHECK_SUM] = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
 610  01cd c60003        	ld	a,L11_uart_rxtx_data+3
 611  01d0 cb0004        	add	a,L11_uart_rxtx_data+4
 612  01d3 cb0005        	add	a,L11_uart_rxtx_data+5
 613  01d6 cb0006        	add	a,L11_uart_rxtx_data+6
 614  01d9 a000          	sub	a,#0
 615  01db 40            	neg	a
 616  01dc c70007        	ld	L11_uart_rxtx_data+7,a
 617                     ; 204 					if (ret == IIC_FAIL)
 619  01df 0d06          	tnz	(OFST+0,sp)
 620  01e1 260a          	jrne	L732
 621                     ; 206 						uart_rxtx_data[DP_COMMAND] = 0xFF;
 623  01e3 35ff0002      	mov	L11_uart_rxtx_data+2,#255
 624  01e7 2004          	jra	L732
 625  01e9               L332:
 626                     ; 211 					uart_rxtx_data[DP_COMMAND] = 0xFE;
 628  01e9 35fe0002      	mov	L11_uart_rxtx_data+2,#254
 629  01ed               L732:
 630                     ; 213 				UART_Send(uart_rxtx_data, 8);
 632  01ed ae0008        	ldw	x,#8
 633  01f0 89            	pushw	x
 634  01f1 ae0000        	ldw	x,#L11_uart_rxtx_data
 635  01f4 8d9e009e      	callf	f_UART_Send
 637  01f8 85            	popw	x
 638                     ; 214 				break;
 640  01f9 ac4e044e      	jpf	L712
 641  01fd               L741:
 642                     ; 218 					checksum = uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2];
 644  01fd c60003        	ld	a,L11_uart_rxtx_data+3
 645  0200 cb0004        	add	a,L11_uart_rxtx_data+4
 646  0203 cb0005        	add	a,L11_uart_rxtx_data+5
 647  0206 6b05          	ld	(OFST-1,sp),a
 648                     ; 219 					for (i = 0; i < 256; i++)
 650  0208 ae0000        	ldw	x,#0
 651  020b 1f03          	ldw	(OFST-3,sp),x
 652  020d ae0000        	ldw	x,#0
 653  0210 1f01          	ldw	(OFST-5,sp),x
 654  0212               L142:
 655                     ; 221 						checksum += uart_rxtx_data[DP_DATA + i];
 657  0212 1e03          	ldw	x,(OFST-3,sp)
 658  0214 7b05          	ld	a,(OFST-1,sp)
 659  0216 db0006        	add	a,(L11_uart_rxtx_data+6,x)
 660  0219 6b05          	ld	(OFST-1,sp),a
 661                     ; 219 					for (i = 0; i < 256; i++)
 663  021b 96            	ldw	x,sp
 664  021c 1c0001        	addw	x,#OFST-5
 665  021f a601          	ld	a,#1
 666  0221 8d000000      	callf	d_lgadc
 670  0225 96            	ldw	x,sp
 671  0226 1c0001        	addw	x,#OFST-5
 672  0229 8d000000      	callf	d_ltor
 674  022d ae0000        	ldw	x,#L22
 675  0230 8d000000      	callf	d_lcmp
 677  0234 25dc          	jrult	L142
 678                     ; 223 					checksum = 0x100 - checksum;
 680  0236 a600          	ld	a,#0
 681  0238 1005          	sub	a,(OFST-1,sp)
 682  023a 6b05          	ld	(OFST-1,sp),a
 683                     ; 224 					if (checksum == uart_rxtx_data[6 + 256])
 685  023c 7b05          	ld	a,(OFST-1,sp)
 686  023e c10106        	cp	a,L11_uart_rxtx_data+262
 687  0241 2677          	jrne	L742
 688                     ; 227 						for (i = 0; i < 32;i++)
 690  0243 ae0000        	ldw	x,#0
 691  0246 1f03          	ldw	(OFST-3,sp),x
 692  0248 ae0000        	ldw	x,#0
 693  024b 1f01          	ldw	(OFST-5,sp),x
 694  024d               L152:
 695                     ; 229 							ret = SWI2C_WriteBytes(uart_rxtx_data[DP_DEVICE_ADDR], i*8, 8, &uart_rxtx_data[DP_DATA + i*8]);
 697  024d 1e03          	ldw	x,(OFST-3,sp)
 698  024f 58            	sllw	x
 699  0250 58            	sllw	x
 700  0251 58            	sllw	x
 701  0252 1c0006        	addw	x,#L11_uart_rxtx_data+6
 702  0255 89            	pushw	x
 703  0256 4b08          	push	#8
 704  0258 7b07          	ld	a,(OFST+1,sp)
 705  025a 48            	sll	a
 706  025b 48            	sll	a
 707  025c 48            	sll	a
 708  025d 97            	ld	xl,a
 709  025e c60003        	ld	a,L11_uart_rxtx_data+3
 710  0261 95            	ld	xh,a
 711  0262 8d000000      	callf	f_SWI2C_WriteBytes
 713  0266 5b03          	addw	sp,#3
 714  0268 6b06          	ld	(OFST+0,sp),a
 715                     ; 230 							if (ret == IIC_FAIL)
 717  026a 0d06          	tnz	(OFST+0,sp)
 718  026c 2730          	jreq	L552
 719                     ; 232 								break;
 721                     ; 234 							if (uart_rxtx_data[DP_DEVICE_ADDR] >= 0xA0 && uart_rxtx_data[DP_DEVICE_ADDR] < 0xB0)
 723  026e c60003        	ld	a,L11_uart_rxtx_data+3
 724  0271 a1a0          	cp	a,#160
 725  0273 250e          	jrult	L162
 727  0275 c60003        	ld	a,L11_uart_rxtx_data+3
 728  0278 a1b0          	cp	a,#176
 729  027a 2407          	jruge	L162
 730                     ; 236 								IR_DelayNMiliseconds(20);
 732  027c ae0014        	ldw	x,#20
 733  027f 8d000000      	callf	f_IR_DelayNMiliseconds
 735  0283               L162:
 736                     ; 227 						for (i = 0; i < 32;i++)
 738  0283 96            	ldw	x,sp
 739  0284 1c0001        	addw	x,#OFST-5
 740  0287 a601          	ld	a,#1
 741  0289 8d000000      	callf	d_lgadc
 745  028d 96            	ldw	x,sp
 746  028e 1c0001        	addw	x,#OFST-5
 747  0291 8d000000      	callf	d_ltor
 749  0295 ae0004        	ldw	x,#L42
 750  0298 8d000000      	callf	d_lcmp
 752  029c 25af          	jrult	L152
 753  029e               L552:
 754                     ; 264 						uart_rxtx_data[DP_CHECK_SUM] = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
 756  029e c60003        	ld	a,L11_uart_rxtx_data+3
 757  02a1 cb0004        	add	a,L11_uart_rxtx_data+4
 758  02a4 cb0005        	add	a,L11_uart_rxtx_data+5
 759  02a7 cb0006        	add	a,L11_uart_rxtx_data+6
 760  02aa a000          	sub	a,#0
 761  02ac 40            	neg	a
 762  02ad c70007        	ld	L11_uart_rxtx_data+7,a
 763                     ; 265 						if (ret == IIC_FAIL)
 765  02b0 0d06          	tnz	(OFST+0,sp)
 766  02b2 260a          	jrne	L562
 767                     ; 267 							uart_rxtx_data[DP_COMMAND] = 0xFF;
 769  02b4 35ff0002      	mov	L11_uart_rxtx_data+2,#255
 770  02b8 2004          	jra	L562
 771  02ba               L742:
 772                     ; 272 						uart_rxtx_data[DP_COMMAND] = 0xFE;
 774  02ba 35fe0002      	mov	L11_uart_rxtx_data+2,#254
 775  02be               L562:
 776                     ; 274 					UART_Send(uart_rxtx_data, 8);
 778  02be ae0008        	ldw	x,#8
 779  02c1 89            	pushw	x
 780  02c2 ae0000        	ldw	x,#L11_uart_rxtx_data
 781  02c5 8d9e009e      	callf	f_UART_Send
 783  02c9 85            	popw	x
 784                     ; 276 				break;
 786  02ca ac4e044e      	jpf	L712
 787  02ce               L151:
 788                     ; 280 					checksum = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
 790  02ce c60003        	ld	a,L11_uart_rxtx_data+3
 791  02d1 cb0004        	add	a,L11_uart_rxtx_data+4
 792  02d4 cb0005        	add	a,L11_uart_rxtx_data+5
 793  02d7 cb0006        	add	a,L11_uart_rxtx_data+6
 794  02da a000          	sub	a,#0
 795  02dc 40            	neg	a
 796  02dd 6b05          	ld	(OFST-1,sp),a
 797                     ; 281 					if (checksum == uart_rxtx_data[DP_CHECK_SUM])
 799  02df 7b05          	ld	a,(OFST-1,sp)
 800  02e1 c10007        	cp	a,L11_uart_rxtx_data+7
 801  02e4 2704          	jreq	L44
 802  02e6 ac880388      	jpf	L762
 803  02ea               L44:
 804                     ; 283 						memset(&uart_rxtx_data[6], 0, 256);
 806  02ea ae0100        	ldw	x,#256
 807  02ed               L62:
 808  02ed 724f0005      	clr	(L11_uart_rxtx_data+5,x)
 809  02f1 5a            	decw	x
 810  02f2 26f9          	jrne	L62
 811                     ; 285 						for (i = 0; i < 8;i++)
 813  02f4 ae0000        	ldw	x,#0
 814  02f7 1f03          	ldw	(OFST-3,sp),x
 815  02f9 ae0000        	ldw	x,#0
 816  02fc 1f01          	ldw	(OFST-5,sp),x
 817  02fe               L172:
 818                     ; 287 							ret = SWI2C_ReadBytes(uart_rxtx_data[DP_DEVICE_ADDR], i*32, 32, &uart_rxtx_data[DP_DATA + i*32]);
 820  02fe 1e03          	ldw	x,(OFST-3,sp)
 821  0300 58            	sllw	x
 822  0301 58            	sllw	x
 823  0302 58            	sllw	x
 824  0303 58            	sllw	x
 825  0304 58            	sllw	x
 826  0305 1c0006        	addw	x,#L11_uart_rxtx_data+6
 827  0308 89            	pushw	x
 828  0309 4b20          	push	#32
 829  030b 7b07          	ld	a,(OFST+1,sp)
 830  030d 97            	ld	xl,a
 831  030e a620          	ld	a,#32
 832  0310 42            	mul	x,a
 833  0311 9f            	ld	a,xl
 834  0312 97            	ld	xl,a
 835  0313 c60003        	ld	a,L11_uart_rxtx_data+3
 836  0316 95            	ld	xh,a
 837  0317 8d000000      	callf	f_SWI2C_ReadBytes
 839  031b 5b03          	addw	sp,#3
 840  031d 6b06          	ld	(OFST+0,sp),a
 841                     ; 288 							if (ret == IIC_FAIL)
 843  031f 0d06          	tnz	(OFST+0,sp)
 844  0321 271b          	jreq	L572
 845                     ; 290 								break;
 847                     ; 285 						for (i = 0; i < 8;i++)
 849  0323 96            	ldw	x,sp
 850  0324 1c0001        	addw	x,#OFST-5
 851  0327 a601          	ld	a,#1
 852  0329 8d000000      	callf	d_lgadc
 856  032d 96            	ldw	x,sp
 857  032e 1c0001        	addw	x,#OFST-5
 858  0331 8d000000      	callf	d_ltor
 860  0335 ae0008        	ldw	x,#L03
 861  0338 8d000000      	callf	d_lcmp
 863  033c 25c0          	jrult	L172
 864  033e               L572:
 865                     ; 303 						checksum = uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2];
 867  033e c60003        	ld	a,L11_uart_rxtx_data+3
 868  0341 cb0004        	add	a,L11_uart_rxtx_data+4
 869  0344 cb0005        	add	a,L11_uart_rxtx_data+5
 870  0347 6b05          	ld	(OFST-1,sp),a
 871                     ; 304 						for (i = 0; i < 256;i++)
 873  0349 ae0000        	ldw	x,#0
 874  034c 1f03          	ldw	(OFST-3,sp),x
 875  034e ae0000        	ldw	x,#0
 876  0351 1f01          	ldw	(OFST-5,sp),x
 877  0353               L103:
 878                     ; 306 							checksum += uart_rxtx_data[DP_DATA + i];
 880  0353 1e03          	ldw	x,(OFST-3,sp)
 881  0355 7b05          	ld	a,(OFST-1,sp)
 882  0357 db0006        	add	a,(L11_uart_rxtx_data+6,x)
 883  035a 6b05          	ld	(OFST-1,sp),a
 884                     ; 304 						for (i = 0; i < 256;i++)
 886  035c 96            	ldw	x,sp
 887  035d 1c0001        	addw	x,#OFST-5
 888  0360 a601          	ld	a,#1
 889  0362 8d000000      	callf	d_lgadc
 893  0366 96            	ldw	x,sp
 894  0367 1c0001        	addw	x,#OFST-5
 895  036a 8d000000      	callf	d_ltor
 897  036e ae0000        	ldw	x,#L22
 898  0371 8d000000      	callf	d_lcmp
 900  0375 25dc          	jrult	L103
 901                     ; 308 						uart_rxtx_data[6 + 256] = 0x100 - checksum;
 903  0377 a600          	ld	a,#0
 904  0379 1005          	sub	a,(OFST-1,sp)
 905  037b c70106        	ld	L11_uart_rxtx_data+262,a
 906                     ; 309 						if (ret == IIC_FAIL)
 908  037e 0d06          	tnz	(OFST+0,sp)
 909  0380 260a          	jrne	L113
 910                     ; 311 							uart_rxtx_data[DP_COMMAND] = 0xFF;
 912  0382 35ff0002      	mov	L11_uart_rxtx_data+2,#255
 913  0386 2004          	jra	L113
 914  0388               L762:
 915                     ; 316 						uart_rxtx_data[DP_COMMAND] = 0xFE;
 917  0388 35fe0002      	mov	L11_uart_rxtx_data+2,#254
 918  038c               L113:
 919                     ; 318 					UART_Send(uart_rxtx_data, 256 + 7);
 921  038c ae0107        	ldw	x,#263
 922  038f 89            	pushw	x
 923  0390 ae0000        	ldw	x,#L11_uart_rxtx_data
 924  0393 8d9e009e      	callf	f_UART_Send
 926  0397 85            	popw	x
 927                     ; 320 				break;
 929  0398 ac4e044e      	jpf	L712
 930  039c               L351:
 931                     ; 321 			case DATA_COMMAND_COMMAND:
 931                     ; 322 					checksum = 0x100 - (uart_rxtx_data[DP_DEVICE_ADDR] + uart_rxtx_data[DP_SUB_ADDR] + uart_rxtx_data[DP_SUB_ADDR_2] + uart_rxtx_data[DP_DATA]);
 933  039c c60003        	ld	a,L11_uart_rxtx_data+3
 934  039f cb0004        	add	a,L11_uart_rxtx_data+4
 935  03a2 cb0005        	add	a,L11_uart_rxtx_data+5
 936  03a5 cb0006        	add	a,L11_uart_rxtx_data+6
 937  03a8 a000          	sub	a,#0
 938  03aa 40            	neg	a
 939  03ab 6b05          	ld	(OFST-1,sp),a
 940                     ; 323 					if (checksum == uart_rxtx_data[DP_CHECK_SUM])
 942  03ad 7b05          	ld	a,(OFST-1,sp)
 943  03af c10007        	cp	a,L11_uart_rxtx_data+7
 944  03b2 2624          	jrne	L313
 945                     ; 325 						switch (uart_rxtx_data[DP_DEVICE_ADDR])
 947  03b4 c60003        	ld	a,L11_uart_rxtx_data+3
 949                     ; 336 							default:
 949                     ; 337 								break;
 950  03b7 4d            	tnz	a
 951  03b8 2708          	jreq	L551
 952  03ba 4a            	dec	a
 953  03bb 270b          	jreq	L751
 954  03bd 4a            	dec	a
 955  03be 270e          	jreq	L161
 956  03c0 201a          	jra	L123
 957  03c2               L551:
 958                     ; 327 							case 0:
 958                     ; 328 								SWI2C_ProcessPower();
 960  03c2 8d000000      	callf	f_SWI2C_ProcessPower
 962                     ; 329 								break;
 964  03c6 2014          	jra	L123
 965  03c8               L751:
 966                     ; 330 							case 1:
 966                     ; 331 								SWI2C_Toggle3DOnOff();
 968  03c8 8d000000      	callf	f_SWI2C_Toggle3DOnOff
 970                     ; 332 								break;
 972  03cc 200e          	jra	L123
 973  03ce               L161:
 974                     ; 333 							case 2:
 974                     ; 334 								SWI2C_ToggleI2CMode();
 976  03ce 8d000000      	callf	f_SWI2C_ToggleI2CMode
 978                     ; 335 								break;
 980  03d2 2008          	jra	L123
 981  03d4               L361:
 982                     ; 336 							default:
 982                     ; 337 								break;
 984  03d4 2006          	jra	L123
 985  03d6               L713:
 987  03d6 2004          	jra	L123
 988  03d8               L313:
 989                     ; 342 						uart_rxtx_data[DP_COMMAND] = 0xFE;
 991  03d8 35fe0002      	mov	L11_uart_rxtx_data+2,#254
 992  03dc               L123:
 993                     ; 344 					UART_Send(uart_rxtx_data, 8);
 995  03dc ae0008        	ldw	x,#8
 996  03df 89            	pushw	x
 997  03e0 ae0000        	ldw	x,#L11_uart_rxtx_data
 998  03e3 8d9e009e      	callf	f_UART_Send
1000  03e7 85            	popw	x
1001                     ; 345 					break;
1003  03e8 2064          	jra	L712
1004  03ea               L561:
1005                     ; 346 				case DATA_COMMAND_WRITE_TWO_BYTE:
1005                     ; 347 					break;
1007  03ea 2062          	jra	L712
1008  03ec               L761:
1009                     ; 351 						checksum = uart_rxtx_data[5];
1011  03ec c60005        	ld	a,L11_uart_rxtx_data+5
1012  03ef 6b05          	ld	(OFST-1,sp),a
1013                     ; 352 						for (i = 0; i < 20; i++)
1015  03f1 0f06          	clr	(OFST+0,sp)
1016  03f3               L323:
1017                     ; 354 							checksum += uart_rxtx_data[6+i];
1019  03f3 7b06          	ld	a,(OFST+0,sp)
1020  03f5 5f            	clrw	x
1021  03f6 97            	ld	xl,a
1022  03f7 7b05          	ld	a,(OFST-1,sp)
1023  03f9 db0006        	add	a,(L11_uart_rxtx_data+6,x)
1024  03fc 6b05          	ld	(OFST-1,sp),a
1025                     ; 352 						for (i = 0; i < 20; i++)
1027  03fe 0c06          	inc	(OFST+0,sp)
1030  0400 7b06          	ld	a,(OFST+0,sp)
1031  0402 a114          	cp	a,#20
1032  0404 25ed          	jrult	L323
1033                     ; 356 						checksum = 0x100 - checksum;
1035  0406 a600          	ld	a,#0
1036  0408 1005          	sub	a,(OFST-1,sp)
1037  040a 6b05          	ld	(OFST-1,sp),a
1038                     ; 357 						if (checksum == uart_rxtx_data[26])
1040  040c 7b05          	ld	a,(OFST-1,sp)
1041  040e c1001a        	cp	a,L11_uart_rxtx_data+26
1042  0411 262b          	jrne	L133
1043                     ; 359 							for (i = 0; i < 20; i++)
1045  0413 0f06          	clr	(OFST+0,sp)
1046  0415               L333:
1047                     ; 361 								FLASH_ProgramByte(EEPROM_START_ADDRESS + i + 1, uart_rxtx_data[6 + i]);
1049  0415 7b06          	ld	a,(OFST+0,sp)
1050  0417 5f            	clrw	x
1051  0418 97            	ld	xl,a
1052  0419 d60006        	ld	a,(L11_uart_rxtx_data+6,x)
1053  041c 88            	push	a
1054  041d 7b07          	ld	a,(OFST+1,sp)
1055  041f 5f            	clrw	x
1056  0420 97            	ld	xl,a
1057  0421 1c4001        	addw	x,#16385
1058  0424 8d000000      	callf	d_itolx
1060  0428 be02          	ldw	x,c_lreg+2
1061  042a 89            	pushw	x
1062  042b be00          	ldw	x,c_lreg
1063  042d 89            	pushw	x
1064  042e 8d000000      	callf	f_FLASH_ProgramByte
1066  0432 5b05          	addw	sp,#5
1067                     ; 359 							for (i = 0; i < 20; i++)
1069  0434 0c06          	inc	(OFST+0,sp)
1072  0436 7b06          	ld	a,(OFST+0,sp)
1073  0438 a114          	cp	a,#20
1074  043a 25d9          	jrult	L333
1076  043c 2004          	jra	L143
1077  043e               L133:
1078                     ; 366 							uart_rxtx_data[DP_COMMAND] = 0xFE;
1080  043e 35fe0002      	mov	L11_uart_rxtx_data+2,#254
1081  0442               L143:
1082                     ; 369 					UART_Send(uart_rxtx_data, 27);
1084  0442 ae001b        	ldw	x,#27
1085  0445 89            	pushw	x
1086  0446 ae0000        	ldw	x,#L11_uart_rxtx_data
1087  0449 8d9e009e      	callf	f_UART_Send
1089  044d 85            	popw	x
1090                     ; 370 					break;
1092  044e               L171:
1093                     ; 371 			default:
1093                     ; 372 				break;
1095  044e               L322:
1096  044e               L712:
1097                     ; 375 }
1100  044e 5b06          	addw	sp,#6
1101  0450 87            	retf
1134                     ; 388 char putchar(char c)
1134                     ; 389 {
1135                     	switch	.text
1136  0451               f_putchar:
1138  0451 88            	push	a
1139       00000000      OFST:	set	0
1142                     ; 391 	UART3_SendData8(c);
1144  0452 8d000000      	callf	f_UART3_SendData8
1147  0456               L163:
1148                     ; 393 	while (UART3_GetFlagStatus(UART3_FLAG_TXE) == RESET);
1150  0456 ae0080        	ldw	x,#128
1151  0459 8d000000      	callf	f_UART3_GetFlagStatus
1153  045d 4d            	tnz	a
1154  045e 27f6          	jreq	L163
1155                     ; 395 	return (c);
1157  0460 7b01          	ld	a,(OFST+1,sp)
1160  0462 5b01          	addw	sp,#1
1161  0464 87            	retf
1216                     	xdef	f_putchar
1217                     	xdef	f_UART_Update
1218                     	xdef	f_UART_Init
1219                     	xdef	f_UART_Send
1220                     	xdef	f_UART_PutChar
1221                     	xdef	f_UART_ISR
1222                     	switch	.bss
1223  0000               L11_uart_rxtx_data:
1224  0000 000000000000  	ds.b	263
1225  0107               L5_uart_rx_index:
1226  0107 00            	ds.b	1
1227  0108               L3_uart_rx_buffer:
1228  0108 000000000000  	ds.b	263
1229                     	xref	f_IR_DelayNMiliseconds
1230                     	xref	f_SWI2C_Toggle3DOnOff
1231                     	xref	f_SWI2C_WriteBytes
1232                     	xref	f_SWI2C_ReadBytes
1233                     	xref	f_SWI2C_ToggleI2CMode
1234                     	xref	f_SWI2C_ProcessPower
1235                     	xref	f_FLASH_ProgramByte
1236                     	xref	f_UART3_GetFlagStatus
1237                     	xref	f_UART3_SendData8
1238                     	xref	f_UART3_Cmd
1239                     	xref	f_UART3_Init
1240                     	xref	f_UART1_ClearITPendingBit
1241                     	xref	f_UART1_GetFlagStatus
1242                     	xref	f_UART1_SendData8
1243                     	xref	f_UART1_ReceiveData8
1244                     	xref	f_UART1_ITConfig
1245                     	xref	f_UART1_Cmd
1246                     	xref	f_UART1_Init
1247                     	xref.b	c_lreg
1248                     	xref.b	c_x
1249                     	xref.b	c_y
1269                     	xref	d_itolx
1270                     	xref	d_lcmp
1271                     	xref	d_ltor
1272                     	xref	d_lgadc
1273                     	end
