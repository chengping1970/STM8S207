   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  15                     	switch	.data
  16  0000               L7_uart_received:
  17  0000 00            	dc.b	0
  18  0001               L51_uart_data_length:
  19  0001 0008          	dc.w	8
  54                     ; 20 INTERRUPT_HANDLER(UART_ISR, 18)
  54                     ; 21 {
  55                     	switch	.text
  56  0000               f_UART_ISR:
  58  0000 3b0002        	push	c_x+2
  59  0003 be00          	ldw	x,c_x
  60  0005 89            	pushw	x
  61  0006 3b0002        	push	c_y+2
  62  0009 be00          	ldw	x,c_y
  63  000b 89            	pushw	x
  66                     ; 22 	uart_rx_buffer[uart_rx_index] = UART1_ReceiveData8();
  68  000c c60000        	ld	a,L5_uart_rx_index
  69  000f 5f            	clrw	x
  70  0010 97            	ld	xl,a
  71  0011 89            	pushw	x
  72  0012 8d000000      	callf	f_UART1_ReceiveData8
  74  0016 85            	popw	x
  75  0017 d70001        	ld	(L3_uart_rx_buffer,x),a
  76                     ; 23 	UART1_ClearITPendingBit(UART1_IT_RXNE);
  78  001a ae0255        	ldw	x,#597
  79  001d 8d000000      	callf	f_UART1_ClearITPendingBit
  81                     ; 25 	if (uart_rx_index == 0)
  83  0021 725d0000      	tnz	L5_uart_rx_index
  84  0025 260d          	jrne	L53
  85                     ; 27 		if (uart_rx_buffer[0] != 0xFF)
  87  0027 c60001        	ld	a,L3_uart_rx_buffer
  88  002a a1ff          	cp	a,#255
  89  002c 2725          	jreq	L14
  90                     ; 29 			uart_rx_index = 0;
  92  002e 725f0000      	clr	L5_uart_rx_index
  93                     ; 30 			return;
  95  0032 2012          	jra	L6
  96  0034               L53:
  97                     ; 33 	else if (uart_rx_index == 1)
  99  0034 c60000        	ld	a,L5_uart_rx_index
 100  0037 a101          	cp	a,#1
 101  0039 2618          	jrne	L14
 102                     ; 35 		if (uart_rx_buffer[1] != 0x55)
 104  003b c60002        	ld	a,L3_uart_rx_buffer+1
 105  003e a155          	cp	a,#85
 106  0040 2711          	jreq	L14
 107                     ; 37 			uart_rx_index = 0;
 109  0042 725f0000      	clr	L5_uart_rx_index
 110                     ; 38 			return;
 111  0046               L6:
 114  0046 85            	popw	x
 115  0047 bf00          	ldw	c_y,x
 116  0049 320002        	pop	c_y+2
 117  004c 85            	popw	x
 118  004d bf00          	ldw	c_x,x
 119  004f 320002        	pop	c_x+2
 120  0052 80            	iret
 121  0053               L14:
 122                     ; 41 	if (uart_rx_buffer[2] == 2)
 124  0053 c60003        	ld	a,L3_uart_rx_buffer+2
 125  0056 a102          	cp	a,#2
 126  0058 2608          	jrne	L74
 127                     ; 43 		uart_data_length = UART_BUFFER_MAX_LENGTH + 2;
 129  005a ae0107        	ldw	x,#263
 130  005d cf0001        	ldw	L51_uart_data_length,x
 132  0060 2006          	jra	L15
 133  0062               L74:
 134                     ; 47 		uart_data_length = 8;
 136  0062 ae0008        	ldw	x,#8
 137  0065 cf0001        	ldw	L51_uart_data_length,x
 138  0068               L15:
 139                     ; 49 	uart_rx_index++;
 141  0068 725c0000      	inc	L5_uart_rx_index
 142                     ; 51 	if (uart_rx_index == uart_data_length)
 144  006c c60000        	ld	a,L5_uart_rx_index
 145  006f 5f            	clrw	x
 146  0070 97            	ld	xl,a
 147  0071 c30001        	cpw	x,L51_uart_data_length
 148  0074 2608          	jrne	L35
 149                     ; 53 		uart_rx_index = 0;
 151  0076 725f0000      	clr	L5_uart_rx_index
 152                     ; 54 		uart_received = TRUE;
 154  007a 35010000      	mov	L7_uart_received,#1
 155  007e               L35:
 156                     ; 56 }
 158  007e 20c6          	jra	L6
 191                     ; 58 void UART_PutChar(char c)
 191                     ; 59 {
 192                     	switch	.text
 193  0080               f_UART_PutChar:
 197                     ; 60   UART1_SendData8(c);
 199  0080 8d000000      	callf	f_UART1_SendData8
 202  0084               L37:
 203                     ; 61   while (UART1_GetFlagStatus(UART1_FLAG_TXE) == RESET);
 205  0084 ae0080        	ldw	x,#128
 206  0087 8d000000      	callf	f_UART1_GetFlagStatus
 208  008b 4d            	tnz	a
 209  008c 27f6          	jreq	L37
 210                     ; 62 }
 213  008e 87            	retf
 262                     ; 64 void UART_Send(u8 * reply, u8 count)
 262                     ; 65 {
 263                     	switch	.text
 264  008f               f_UART_Send:
 266  008f 89            	pushw	x
 267  0090 88            	push	a
 268       00000001      OFST:	set	1
 271                     ; 68 	for (i = 0; i < count;i++)
 273  0091 0f01          	clr	(OFST+0,sp)
 275  0093 2011          	jra	L521
 276  0095               L121:
 277                     ; 70 		UART_PutChar(* reply++);
 279  0095 1e02          	ldw	x,(OFST+1,sp)
 280  0097 1c0001        	addw	x,#1
 281  009a 1f02          	ldw	(OFST+1,sp),x
 282  009c 1d0001        	subw	x,#1
 283  009f f6            	ld	a,(x)
 284  00a0 8d800080      	callf	f_UART_PutChar
 286                     ; 68 	for (i = 0; i < count;i++)
 288  00a4 0c01          	inc	(OFST+0,sp)
 289  00a6               L521:
 292  00a6 7b01          	ld	a,(OFST+0,sp)
 293  00a8 1107          	cp	a,(OFST+6,sp)
 294  00aa 25e9          	jrult	L121
 295                     ; 72 }
 298  00ac 5b03          	addw	sp,#3
 299  00ae 87            	retf
 327                     ; 74 void UART_Init(void)
 327                     ; 75 {
 328                     	switch	.text
 329  00af               f_UART_Init:
 333                     ; 76 	UART1_Init((uint32_t)115200, UART1_WORDLENGTH_8D, UART1_STOPBITS_1, UART1_PARITY_NO, UART1_SYNCMODE_CLOCK_DISABLE, UART1_MODE_TXRX_ENABLE);
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
 347                     ; 77 	UART1_ITConfig(UART1_IT_RXNE, ENABLE);
 349  00c7 4b01          	push	#1
 350  00c9 ae0255        	ldw	x,#597
 351  00cc 8d000000      	callf	f_UART1_ITConfig
 353  00d0 84            	pop	a
 354                     ; 78 	UART1_Cmd(ENABLE);
 356  00d1 a601          	ld	a,#1
 357  00d3 8d000000      	callf	f_UART1_Cmd
 359                     ; 80 	UART3_Init((uint32_t)115200, UART3_WORDLENGTH_8D, UART3_STOPBITS_1, UART3_PARITY_NO, UART3_MODE_TXRX_ENABLE);
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
 372                     ; 81 	UART3_Cmd(ENABLE);
 374  00ed a601          	ld	a,#1
 375  00ef 8d000000      	callf	f_UART3_Cmd
 377                     ; 83 	uart_rx_index = 0;
 379  00f3 725f0000      	clr	L5_uart_rx_index
 380                     ; 84 }
 383  00f7 87            	retf
 406                     ; 86 void UART_Update(void)
 406                     ; 87 {
 407                     	switch	.text
 408  00f8               f_UART_Update:
 412                     ; 88 	if (uart_received)
 414  00f8 725d0000      	tnz	L7_uart_received
 415  00fc 2704          	jreq	L151
 416                     ; 90 		uart_received = FALSE;		
 418  00fe 725f0000      	clr	L7_uart_received
 419  0102               L151:
 420                     ; 92 }
 423  0102 87            	retf
 456                     ; 95 char putchar(char c)
 456                     ; 96 {
 457                     	switch	.text
 458  0103               f_putchar:
 460  0103 88            	push	a
 461       00000000      OFST:	set	0
 464                     ; 98 	UART3_SendData8(c);
 466  0104 8d000000      	callf	f_UART3_SendData8
 469  0108               L171:
 470                     ; 100 	while (UART3_GetFlagStatus(UART3_FLAG_TXE) == RESET);
 472  0108 ae0080        	ldw	x,#128
 473  010b 8d000000      	callf	f_UART3_GetFlagStatus
 475  010f 4d            	tnz	a
 476  0110 27f6          	jreq	L171
 477                     ; 102 	return (c);
 479  0112 7b01          	ld	a,(OFST+1,sp)
 482  0114 5b01          	addw	sp,#1
 483  0116 87            	retf
 528                     	xdef	f_putchar
 529                     	xdef	f_UART_Update
 530                     	xdef	f_UART_Init
 531                     	xdef	f_UART_Send
 532                     	xdef	f_UART_PutChar
 533                     	xdef	f_UART_ISR
 534                     	switch	.bss
 535  0000               L5_uart_rx_index:
 536  0000 00            	ds.b	1
 537  0001               L3_uart_rx_buffer:
 538  0001 000000000000  	ds.b	263
 539                     	xref	f_UART3_GetFlagStatus
 540                     	xref	f_UART3_SendData8
 541                     	xref	f_UART3_Cmd
 542                     	xref	f_UART3_Init
 543                     	xref	f_UART1_ClearITPendingBit
 544                     	xref	f_UART1_GetFlagStatus
 545                     	xref	f_UART1_SendData8
 546                     	xref	f_UART1_ReceiveData8
 547                     	xref	f_UART1_ITConfig
 548                     	xref	f_UART1_Cmd
 549                     	xref	f_UART1_Init
 550                     	xref.b	c_x
 551                     	xref.b	c_y
 571                     	end
