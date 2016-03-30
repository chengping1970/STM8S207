   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  15                     	switch	.data
  16  0000               L7_uart_received:
  17  0000 00            	dc.b	0
  51                     ; 19 INTERRUPT_HANDLER(UART_ISR, 18)
  51                     ; 20 {
  52                     	switch	.text
  53  0000               f_UART_ISR:
  55  0000 3b0002        	push	c_x+2
  56  0003 be00          	ldw	x,c_x
  57  0005 89            	pushw	x
  58  0006 3b0002        	push	c_y+2
  59  0009 be00          	ldw	x,c_y
  60  000b 89            	pushw	x
  63                     ; 21 	uart_rx_buffer[uart_rx_index] = UART1_ReceiveData8();
  65  000c c6000c        	ld	a,L5_uart_rx_index
  66  000f 5f            	clrw	x
  67  0010 97            	ld	xl,a
  68  0011 89            	pushw	x
  69  0012 8d000000      	callf	f_UART1_ReceiveData8
  71  0016 85            	popw	x
  72  0017 d7000d        	ld	(L3_uart_rx_buffer,x),a
  73                     ; 22 	UART1_ClearITPendingBit(UART1_IT_RXNE);
  75  001a ae0255        	ldw	x,#597
  76  001d 8d000000      	callf	f_UART1_ClearITPendingBit
  78                     ; 24 	if (uart_rx_index == 0)
  80  0021 725d000c      	tnz	L5_uart_rx_index
  81  0025 260d          	jrne	L33
  82                     ; 26 		if (uart_rx_buffer[0] != 0xFF)
  84  0027 c6000d        	ld	a,L3_uart_rx_buffer
  85  002a a1ff          	cp	a,#255
  86  002c 2725          	jreq	L73
  87                     ; 28 			uart_rx_index = 0;
  89  002e 725f000c      	clr	L5_uart_rx_index
  90                     ; 29 			return;
  92  0032 2012          	jra	L6
  93  0034               L33:
  94                     ; 32 	else if (uart_rx_index == 1)
  96  0034 c6000c        	ld	a,L5_uart_rx_index
  97  0037 a101          	cp	a,#1
  98  0039 2618          	jrne	L73
  99                     ; 34 		if (uart_rx_buffer[1] != 0x55)
 101  003b c6000e        	ld	a,L3_uart_rx_buffer+1
 102  003e a155          	cp	a,#85
 103  0040 2711          	jreq	L73
 104                     ; 36 			uart_rx_index = 0;
 106  0042 725f000c      	clr	L5_uart_rx_index
 107                     ; 37 			return;
 108  0046               L6:
 111  0046 85            	popw	x
 112  0047 bf00          	ldw	c_y,x
 113  0049 320002        	pop	c_y+2
 114  004c 85            	popw	x
 115  004d bf00          	ldw	c_x,x
 116  004f 320002        	pop	c_x+2
 117  0052 80            	iret
 118  0053               L73:
 119                     ; 41 	uart_rx_index++;
 121  0053 725c000c      	inc	L5_uart_rx_index
 122                     ; 43 	if (uart_rx_index == UART_BUFFER_MAX_LENGTH + 2)
 124  0057 c6000c        	ld	a,L5_uart_rx_index
 125  005a a107          	cp	a,#7
 126  005c 2608          	jrne	L54
 127                     ; 45 		uart_rx_index = 0;
 129  005e 725f000c      	clr	L5_uart_rx_index
 130                     ; 46 		uart_received = TRUE;
 132  0062 35010000      	mov	L7_uart_received,#1
 133  0066               L54:
 134                     ; 48 }
 136  0066 20de          	jra	L6
 169                     ; 50 void UART_PutChar(char c)
 169                     ; 51 {
 170                     	switch	.text
 171  0068               f_UART_PutChar:
 175                     ; 52   UART1_SendData8(c);
 177  0068 8d000000      	callf	f_UART1_SendData8
 180  006c               L56:
 181                     ; 53   while (UART1_GetFlagStatus(UART1_FLAG_TXE) == RESET);
 183  006c ae0080        	ldw	x,#128
 184  006f 8d000000      	callf	f_UART1_GetFlagStatus
 186  0073 4d            	tnz	a
 187  0074 27f6          	jreq	L56
 188                     ; 54 }
 191  0076 87            	retf
 240                     ; 56 void UART_Send(u8 * reply, u8 count)
 240                     ; 57 {
 241                     	switch	.text
 242  0077               f_UART_Send:
 244  0077 89            	pushw	x
 245  0078 88            	push	a
 246       00000001      OFST:	set	1
 249                     ; 60 	for (i = 0; i < count;i++)
 251  0079 0f01          	clr	(OFST+0,sp)
 253  007b 2011          	jra	L711
 254  007d               L311:
 255                     ; 62 		UART_PutChar(* reply++);
 257  007d 1e02          	ldw	x,(OFST+1,sp)
 258  007f 1c0001        	addw	x,#1
 259  0082 1f02          	ldw	(OFST+1,sp),x
 260  0084 1d0001        	subw	x,#1
 261  0087 f6            	ld	a,(x)
 262  0088 8d680068      	callf	f_UART_PutChar
 264                     ; 60 	for (i = 0; i < count;i++)
 266  008c 0c01          	inc	(OFST+0,sp)
 267  008e               L711:
 270  008e 7b01          	ld	a,(OFST+0,sp)
 271  0090 1107          	cp	a,(OFST+6,sp)
 272  0092 25e9          	jrult	L311
 273                     ; 64 }
 276  0094 5b03          	addw	sp,#3
 277  0096 87            	retf
 305                     ; 66 void UART_Init(void)
 305                     ; 67 {
 306                     	switch	.text
 307  0097               f_UART_Init:
 311                     ; 68 	UART1_Init((uint32_t)115200, UART1_WORDLENGTH_8D, UART1_STOPBITS_1, UART1_PARITY_NO, UART1_SYNCMODE_CLOCK_DISABLE, UART1_MODE_TXRX_ENABLE);
 313  0097 4b0c          	push	#12
 314  0099 4b80          	push	#128
 315  009b 4b00          	push	#0
 316  009d 4b00          	push	#0
 317  009f 4b00          	push	#0
 318  00a1 aec200        	ldw	x,#49664
 319  00a4 89            	pushw	x
 320  00a5 ae0001        	ldw	x,#1
 321  00a8 89            	pushw	x
 322  00a9 8d000000      	callf	f_UART1_Init
 324  00ad 5b09          	addw	sp,#9
 325                     ; 69 	UART1_ITConfig(UART1_IT_RXNE, ENABLE);
 327  00af 4b01          	push	#1
 328  00b1 ae0255        	ldw	x,#597
 329  00b4 8d000000      	callf	f_UART1_ITConfig
 331  00b8 84            	pop	a
 332                     ; 70 	UART1_Cmd(ENABLE);
 334  00b9 a601          	ld	a,#1
 335  00bb 8d000000      	callf	f_UART1_Cmd
 337                     ; 72 	UART3_Init((uint32_t)115200, UART3_WORDLENGTH_8D, UART3_STOPBITS_1, UART3_PARITY_NO, UART3_MODE_TXRX_ENABLE);
 339  00bf 4b0c          	push	#12
 340  00c1 4b00          	push	#0
 341  00c3 4b00          	push	#0
 342  00c5 4b00          	push	#0
 343  00c7 aec200        	ldw	x,#49664
 344  00ca 89            	pushw	x
 345  00cb ae0001        	ldw	x,#1
 346  00ce 89            	pushw	x
 347  00cf 8d000000      	callf	f_UART3_Init
 349  00d3 5b08          	addw	sp,#8
 350                     ; 73 	UART3_Cmd(ENABLE);
 352  00d5 a601          	ld	a,#1
 353  00d7 8d000000      	callf	f_UART3_Cmd
 355                     ; 75 	uart_rx_index = 0;
 357  00db 725f000c      	clr	L5_uart_rx_index
 358                     ; 76 }
 361  00df 87            	retf
 406                     ; 78 void UART_Update(void)
 406                     ; 79 {
 407                     	switch	.text
 408  00e0               f_UART_Update:
 410  00e0 89            	pushw	x
 411       00000002      OFST:	set	2
 414                     ; 80 	if (uart_received)
 416  00e1 725d0000      	tnz	L7_uart_received
 417  00e5 2764          	jreq	L751
 418                     ; 83 		u8 checksum = 0;
 420  00e7 0f01          	clr	(OFST-1,sp)
 421                     ; 85 		uart_received = FALSE;
 423  00e9 725f0000      	clr	L7_uart_received
 424                     ; 86 		for (i = 0; i < UART_BUFFER_MAX_LENGTH + 2;i++)
 426  00ed 0f02          	clr	(OFST+0,sp)
 427  00ef               L161:
 428                     ; 88 			uart_send_data[i] = uart_rx_buffer[i];
 430  00ef 7b02          	ld	a,(OFST+0,sp)
 431  00f1 5f            	clrw	x
 432  00f2 97            	ld	xl,a
 433  00f3 d6000d        	ld	a,(L3_uart_rx_buffer,x)
 434  00f6 d70000        	ld	(L31_uart_send_data,x),a
 435                     ; 86 		for (i = 0; i < UART_BUFFER_MAX_LENGTH + 2;i++)
 437  00f9 0c02          	inc	(OFST+0,sp)
 440  00fb 7b02          	ld	a,(OFST+0,sp)
 441  00fd a107          	cp	a,#7
 442  00ff 25ee          	jrult	L161
 443                     ; 90 		for (i = 0; i < UART_BUFFER_MAX_LENGTH;i++)
 445  0101 0f02          	clr	(OFST+0,sp)
 446  0103               L761:
 447                     ; 92 			uart_data[i] = uart_rx_buffer[i + 2];
 449  0103 7b02          	ld	a,(OFST+0,sp)
 450  0105 5f            	clrw	x
 451  0106 97            	ld	xl,a
 452  0107 d6000f        	ld	a,(L3_uart_rx_buffer+2,x)
 453  010a d70007        	ld	(L11_uart_data,x),a
 454                     ; 90 		for (i = 0; i < UART_BUFFER_MAX_LENGTH;i++)
 456  010d 0c02          	inc	(OFST+0,sp)
 459  010f 7b02          	ld	a,(OFST+0,sp)
 460  0111 a105          	cp	a,#5
 461  0113 25ee          	jrult	L761
 462                     ; 95 		switch (uart_data[0])
 464  0115 c60007        	ld	a,L11_uart_data
 466                     ; 104 			default:
 466                     ; 105 				break;
 467  0118 4a            	dec	a
 468  0119 2705          	jreq	L331
 469  011b 4a            	dec	a
 470  011c 2714          	jreq	L531
 471  011e 2021          	jra	L771
 472  0120               L331:
 473                     ; 97 			case 1:
 473                     ; 98 				SWI2C_WriteByte(uart_data[1], uart_data[2], uart_data[3]);
 475  0120 3b000a        	push	L11_uart_data+3
 476  0123 c60009        	ld	a,L11_uart_data+2
 477  0126 97            	ld	xl,a
 478  0127 c60008        	ld	a,L11_uart_data+1
 479  012a 95            	ld	xh,a
 480  012b 8d000000      	callf	f_SWI2C_WriteByte
 482  012f 84            	pop	a
 483                     ; 99 				break;
 485  0130 200f          	jra	L771
 486  0132               L531:
 487                     ; 100 			case 2:
 487                     ; 101 				uart_send_data[5] = SWI2C_ReadByte(uart_data[1], uart_data[2]);
 489  0132 c60009        	ld	a,L11_uart_data+2
 490  0135 97            	ld	xl,a
 491  0136 c60008        	ld	a,L11_uart_data+1
 492  0139 95            	ld	xh,a
 493  013a 8d000000      	callf	f_SWI2C_ReadByte
 495  013e c70005        	ld	L31_uart_send_data+5,a
 496                     ; 102 				break;
 498  0141               L731:
 499                     ; 104 			default:
 499                     ; 105 				break;
 501  0141               L771:
 502                     ; 108 		UART_Send(uart_send_data, UART_BUFFER_MAX_LENGTH + 2);
 504  0141 4b07          	push	#7
 505  0143 ae0000        	ldw	x,#L31_uart_send_data
 506  0146 8d770077      	callf	f_UART_Send
 508  014a 84            	pop	a
 509  014b               L751:
 510                     ; 110 }
 513  014b 85            	popw	x
 514  014c 87            	retf
 547                     ; 113 char putchar(char c)
 547                     ; 114 {
 548                     	switch	.text
 549  014d               f_putchar:
 551  014d 88            	push	a
 552       00000000      OFST:	set	0
 555                     ; 116 	UART3_SendData8(c);
 557  014e 8d000000      	callf	f_UART3_SendData8
 560  0152               L712:
 561                     ; 118 	while (UART3_GetFlagStatus(UART3_FLAG_TXE) == RESET);
 563  0152 ae0080        	ldw	x,#128
 564  0155 8d000000      	callf	f_UART3_GetFlagStatus
 566  0159 4d            	tnz	a
 567  015a 27f6          	jreq	L712
 568                     ; 120 	return (c);
 570  015c 7b01          	ld	a,(OFST+1,sp)
 573  015e 5b01          	addw	sp,#1
 574  0160 87            	retf
 632                     	xdef	f_putchar
 633                     	xdef	f_UART_Update
 634                     	xdef	f_UART_Init
 635                     	xdef	f_UART_Send
 636                     	xdef	f_UART_PutChar
 637                     	xdef	f_UART_ISR
 638                     	switch	.bss
 639  0000               L31_uart_send_data:
 640  0000 000000000000  	ds.b	7
 641  0007               L11_uart_data:
 642  0007 0000000000    	ds.b	5
 643  000c               L5_uart_rx_index:
 644  000c 00            	ds.b	1
 645  000d               L3_uart_rx_buffer:
 646  000d 000000000000  	ds.b	7
 647                     	xref	f_SWI2C_WriteByte
 648                     	xref	f_SWI2C_ReadByte
 649                     	xref	f_UART3_GetFlagStatus
 650                     	xref	f_UART3_SendData8
 651                     	xref	f_UART3_Cmd
 652                     	xref	f_UART3_Init
 653                     	xref	f_UART1_ClearITPendingBit
 654                     	xref	f_UART1_GetFlagStatus
 655                     	xref	f_UART1_SendData8
 656                     	xref	f_UART1_ReceiveData8
 657                     	xref	f_UART1_ITConfig
 658                     	xref	f_UART1_Cmd
 659                     	xref	f_UART1_Init
 660                     	xref.b	c_x
 661                     	xref.b	c_y
 681                     	end
