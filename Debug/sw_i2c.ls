   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  15                     	switch	.data
  16  0000               L3_frc_update_timer:
  17  0000 00000001      	dc.l	1
  18  0004               L5_Backlight_on_timer:
  19  0004 00000000      	dc.l	0
  20  0008               L7_LVDS_mode:
  21  0008 00            	dc.b	0
  22  0009               L11_Power_status:
  23  0009 00            	dc.b	0
  24  000a               L31_I2C_stop:
  25  000a 00            	dc.b	0
  63                     ; 54 static void _Delay_5us(void)
  63                     ; 55 {
  64                     	switch	.text
  65  0000               L51f__Delay_5us:
  67  0000 88            	push	a
  68       00000001      OFST:	set	1
  71                     ; 57    	for (i = 0;i < 10;i++);
  73  0001 0f01          	clr	(OFST+0,sp)
  74  0003               L14:
  78  0003 0c01          	inc	(OFST+0,sp)
  81  0005 7b01          	ld	a,(OFST+0,sp)
  82  0007 a10a          	cp	a,#10
  83  0009 25f8          	jrult	L14
  84                     ; 58 }
  87  000b 84            	pop	a
  88  000c 87            	retf
 113                     ; 60 static void _SWI2C_Start(void)
 113                     ; 61 {
 114                     	switch	.text
 115  000d               L74f__SWI2C_Start:
 119                     ; 62 	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
 121  000d 4b10          	push	#16
 122  000f ae5005        	ldw	x,#20485
 123  0012 8d000000      	callf	f_GPIO_WriteHigh
 125  0016 84            	pop	a
 126                     ; 63 	GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
 128  0017 4b20          	push	#32
 129  0019 ae5005        	ldw	x,#20485
 130  001c 8d000000      	callf	f_GPIO_WriteHigh
 132  0020 84            	pop	a
 133                     ; 64 	_Delay_5us();
 135  0021 8d000000      	callf	L51f__Delay_5us
 137                     ; 65 	GPIO_WriteLow(IIC_SDA_PORT,IIC_SDA_PIN);
 139  0025 4b20          	push	#32
 140  0027 ae5005        	ldw	x,#20485
 141  002a 8d000000      	callf	f_GPIO_WriteLow
 143  002e 84            	pop	a
 144                     ; 66 	_Delay_5us();
 146  002f 8d000000      	callf	L51f__Delay_5us
 148                     ; 67 	GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
 150  0033 4b10          	push	#16
 151  0035 ae5005        	ldw	x,#20485
 152  0038 8d000000      	callf	f_GPIO_WriteLow
 154  003c 84            	pop	a
 155                     ; 68 }
 158  003d 87            	retf
 183                     ; 70 static void _SWI2C_Stop(void)
 183                     ; 71 {
 184                     	switch	.text
 185  003e               L16f__SWI2C_Stop:
 189                     ; 72 	GPIO_WriteLow(IIC_SDA_PORT,IIC_SDA_PIN);
 191  003e 4b20          	push	#32
 192  0040 ae5005        	ldw	x,#20485
 193  0043 8d000000      	callf	f_GPIO_WriteLow
 195  0047 84            	pop	a
 196                     ; 73 	_Delay_5us();
 198  0048 8d000000      	callf	L51f__Delay_5us
 200                     ; 74 	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
 202  004c 4b10          	push	#16
 203  004e ae5005        	ldw	x,#20485
 204  0051 8d000000      	callf	f_GPIO_WriteHigh
 206  0055 84            	pop	a
 207                     ; 75 	_Delay_5us();
 209  0056 8d000000      	callf	L51f__Delay_5us
 211                     ; 76 	GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
 213  005a 4b20          	push	#32
 214  005c ae5005        	ldw	x,#20485
 215  005f 8d000000      	callf	f_GPIO_WriteHigh
 217  0063 84            	pop	a
 218                     ; 77 }
 221  0064 87            	retf
 264                     ; 79 static u8 _SWI2C_SendByte(u8 value)
 264                     ; 80 {
 265                     	switch	.text
 266  0065               L37f__SWI2C_SendByte:
 268  0065 88            	push	a
 269  0066 88            	push	a
 270       00000001      OFST:	set	1
 273                     ; 83 	for (count = 0;count < 8;count++)
 275  0067 0f01          	clr	(OFST+0,sp)
 276  0069               L311:
 277                     ; 85 		if (value&0x80)
 279  0069 7b02          	ld	a,(OFST+1,sp)
 280  006b a580          	bcp	a,#128
 281  006d 270c          	jreq	L121
 282                     ; 87 			GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
 284  006f 4b20          	push	#32
 285  0071 ae5005        	ldw	x,#20485
 286  0074 8d000000      	callf	f_GPIO_WriteHigh
 288  0078 84            	pop	a
 290  0079 200a          	jra	L321
 291  007b               L121:
 292                     ; 91 			GPIO_WriteLow(IIC_SDA_PORT,IIC_SDA_PIN);
 294  007b 4b20          	push	#32
 295  007d ae5005        	ldw	x,#20485
 296  0080 8d000000      	callf	f_GPIO_WriteLow
 298  0084 84            	pop	a
 299  0085               L321:
 300                     ; 93 		_Delay_5us();
 302  0085 8d000000      	callf	L51f__Delay_5us
 304                     ; 94 		GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
 306  0089 4b10          	push	#16
 307  008b ae5005        	ldw	x,#20485
 308  008e 8d000000      	callf	f_GPIO_WriteHigh
 310  0092 84            	pop	a
 311                     ; 95 		_Delay_5us();
 313  0093 8d000000      	callf	L51f__Delay_5us
 315                     ; 96 		GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
 317  0097 4b10          	push	#16
 318  0099 ae5005        	ldw	x,#20485
 319  009c 8d000000      	callf	f_GPIO_WriteLow
 321  00a0 84            	pop	a
 322                     ; 97 		value = value<<1;
 324  00a1 0802          	sll	(OFST+1,sp)
 325                     ; 83 	for (count = 0;count < 8;count++)
 327  00a3 0c01          	inc	(OFST+0,sp)
 330  00a5 7b01          	ld	a,(OFST+0,sp)
 331  00a7 a108          	cp	a,#8
 332  00a9 25be          	jrult	L311
 333                     ; 99 	GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
 335  00ab 4b20          	push	#32
 336  00ad ae5005        	ldw	x,#20485
 337  00b0 8d000000      	callf	f_GPIO_WriteHigh
 339  00b4 84            	pop	a
 340                     ; 100 	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_IN_FL_NO_IT);
 342  00b5 4b00          	push	#0
 343  00b7 4b20          	push	#32
 344  00b9 ae5005        	ldw	x,#20485
 345  00bc 8d000000      	callf	f_GPIO_Init
 347  00c0 85            	popw	x
 348                     ; 101 	_Delay_5us();
 350  00c1 8d000000      	callf	L51f__Delay_5us
 352                     ; 102 	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
 354  00c5 4b10          	push	#16
 355  00c7 ae5005        	ldw	x,#20485
 356  00ca 8d000000      	callf	f_GPIO_WriteHigh
 358  00ce 84            	pop	a
 359                     ; 103 	for (count = 0;count < 20;count++)
 361  00cf 0f01          	clr	(OFST+0,sp)
 362  00d1               L521:
 363                     ; 105 		if (GPIO_ReadInputPin(IIC_SDA_PORT, IIC_SDA_PIN) == 0)
 365  00d1 4b20          	push	#32
 366  00d3 ae5005        	ldw	x,#20485
 367  00d6 8d000000      	callf	f_GPIO_ReadInputPin
 369  00da 5b01          	addw	sp,#1
 370  00dc 4d            	tnz	a
 371  00dd 261a          	jrne	L331
 372                     ; 107 			GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
 374  00df 4b10          	push	#16
 375  00e1 ae5005        	ldw	x,#20485
 376  00e4 8d000000      	callf	f_GPIO_WriteLow
 378  00e8 84            	pop	a
 379                     ; 108 			GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_OUT_OD_LOW_FAST);
 381  00e9 4ba0          	push	#160
 382  00eb 4b20          	push	#32
 383  00ed ae5005        	ldw	x,#20485
 384  00f0 8d000000      	callf	f_GPIO_Init
 386  00f4 85            	popw	x
 387                     ; 109 			return TRUE;
 389  00f5 a601          	ld	a,#1
 391  00f7 201f          	jra	L41
 392  00f9               L331:
 393                     ; 103 	for (count = 0;count < 20;count++)
 395  00f9 0c01          	inc	(OFST+0,sp)
 398  00fb 7b01          	ld	a,(OFST+0,sp)
 399  00fd a114          	cp	a,#20
 400  00ff 25d0          	jrult	L521
 401                     ; 112 	GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
 403  0101 4b10          	push	#16
 404  0103 ae5005        	ldw	x,#20485
 405  0106 8d000000      	callf	f_GPIO_WriteLow
 407  010a 84            	pop	a
 408                     ; 113 	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
 410  010b 4bb0          	push	#176
 411  010d 4b20          	push	#32
 412  010f ae5005        	ldw	x,#20485
 413  0112 8d000000      	callf	f_GPIO_Init
 415  0116 85            	popw	x
 416                     ; 115 	return FALSE;
 418  0117 4f            	clr	a
 420  0118               L41:
 422  0118 85            	popw	x
 423  0119 87            	retf
 480                     ; 119 static u8 _SWI2C_ReceiveByte(u8 send_ack)
 480                     ; 120 {
 481                     	switch	.text
 482  011a               L531f__SWI2C_ReceiveByte:
 484  011a 88            	push	a
 485  011b 5203          	subw	sp,#3
 486       00000003      OFST:	set	3
 489                     ; 121 	u8 count, read, value = 0;
 491  011d 0f02          	clr	(OFST-1,sp)
 492                     ; 123 	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_IN_FL_NO_IT);
 494  011f 4b00          	push	#0
 495  0121 4b20          	push	#32
 496  0123 ae5005        	ldw	x,#20485
 497  0126 8d000000      	callf	f_GPIO_Init
 499  012a 85            	popw	x
 500                     ; 124 	for (count = 0;count < 8;count++)
 502  012b 0f01          	clr	(OFST-2,sp)
 503  012d               L161:
 504                     ; 126 		_Delay_5us();
 506  012d 8d000000      	callf	L51f__Delay_5us
 508                     ; 127 		GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
 510  0131 4b10          	push	#16
 511  0133 ae5005        	ldw	x,#20485
 512  0136 8d000000      	callf	f_GPIO_WriteHigh
 514  013a 84            	pop	a
 515                     ; 128 		if (GPIO_ReadInputPin(IIC_SDA_PORT, IIC_SDA_PIN))
 517  013b 4b20          	push	#32
 518  013d ae5005        	ldw	x,#20485
 519  0140 8d000000      	callf	f_GPIO_ReadInputPin
 521  0144 5b01          	addw	sp,#1
 522  0146 4d            	tnz	a
 523  0147 2706          	jreq	L761
 524                     ; 130 			read = 1;
 526  0149 a601          	ld	a,#1
 527  014b 6b03          	ld	(OFST+0,sp),a
 529  014d 2002          	jra	L171
 530  014f               L761:
 531                     ; 134 			read = 0;
 533  014f 0f03          	clr	(OFST+0,sp)
 534  0151               L171:
 535                     ; 136 		value = (value<<1)|read;
 537  0151 7b02          	ld	a,(OFST-1,sp)
 538  0153 48            	sll	a
 539  0154 1a03          	or	a,(OFST+0,sp)
 540  0156 6b02          	ld	(OFST-1,sp),a
 541                     ; 137 		_Delay_5us();
 543  0158 8d000000      	callf	L51f__Delay_5us
 545                     ; 138 		GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
 547  015c 4b10          	push	#16
 548  015e ae5005        	ldw	x,#20485
 549  0161 8d000000      	callf	f_GPIO_WriteLow
 551  0165 84            	pop	a
 552                     ; 124 	for (count = 0;count < 8;count++)
 554  0166 0c01          	inc	(OFST-2,sp)
 557  0168 7b01          	ld	a,(OFST-2,sp)
 558  016a a108          	cp	a,#8
 559  016c 25bf          	jrult	L161
 560                     ; 140 	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
 562  016e 4bb0          	push	#176
 563  0170 4b20          	push	#32
 564  0172 ae5005        	ldw	x,#20485
 565  0175 8d000000      	callf	f_GPIO_Init
 567  0179 85            	popw	x
 568                     ; 141 	if (send_ack)
 570  017a 0d04          	tnz	(OFST+1,sp)
 571  017c 270c          	jreq	L371
 572                     ; 143 		GPIO_WriteLow(IIC_SDA_PORT,IIC_SDA_PIN);
 574  017e 4b20          	push	#32
 575  0180 ae5005        	ldw	x,#20485
 576  0183 8d000000      	callf	f_GPIO_WriteLow
 578  0187 84            	pop	a
 580  0188 200a          	jra	L571
 581  018a               L371:
 582                     ; 147 		GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
 584  018a 4b20          	push	#32
 585  018c ae5005        	ldw	x,#20485
 586  018f 8d000000      	callf	f_GPIO_WriteHigh
 588  0193 84            	pop	a
 589  0194               L571:
 590                     ; 149 	_Delay_5us();
 592  0194 8d000000      	callf	L51f__Delay_5us
 594                     ; 150 	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
 596  0198 4b10          	push	#16
 597  019a ae5005        	ldw	x,#20485
 598  019d 8d000000      	callf	f_GPIO_WriteHigh
 600  01a1 84            	pop	a
 601                     ; 151 	_Delay_5us();
 603  01a2 8d000000      	callf	L51f__Delay_5us
 605                     ; 152 	GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
 607  01a6 4b10          	push	#16
 608  01a8 ae5005        	ldw	x,#20485
 609  01ab 8d000000      	callf	f_GPIO_WriteLow
 611  01af 84            	pop	a
 612                     ; 153 	_Delay_5us();
 614  01b0 8d000000      	callf	L51f__Delay_5us
 616                     ; 155 	return	value;		
 618  01b4 7b02          	ld	a,(OFST-1,sp)
 621  01b6 5b04          	addw	sp,#4
 622  01b8 87            	retf
 663                     ; 158 u8 SWI2C_TestDevice(u8 addr)
 663                     ; 159 {
 664                     	switch	.text
 665  01b9               f_SWI2C_TestDevice:
 667  01b9 88            	push	a
 668  01ba 88            	push	a
 669       00000001      OFST:	set	1
 672                     ; 161 	_SWI2C_Start();
 674  01bb 8d0d000d      	callf	L74f__SWI2C_Start
 676                     ; 162 	result = _SWI2C_SendByte(addr);
 678  01bf 7b02          	ld	a,(OFST+1,sp)
 679  01c1 8d650065      	callf	L37f__SWI2C_SendByte
 681  01c5 6b01          	ld	(OFST+0,sp),a
 682                     ; 163 	_SWI2C_Stop();
 684  01c7 8d3e003e      	callf	L16f__SWI2C_Stop
 686                     ; 165 	return result;
 688  01cb 7b01          	ld	a,(OFST+0,sp)
 691  01cd 85            	popw	x
 692  01ce 87            	retf
 741                     ; 168 u8 SWI2C_ReadByte(u8 addr, u8 subaddr)
 741                     ; 169 {
 742                     	switch	.text
 743  01cf               f_SWI2C_ReadByte:
 745  01cf 89            	pushw	x
 746  01d0 88            	push	a
 747       00000001      OFST:	set	1
 750                     ; 172 	_SWI2C_Start();
 752  01d1 8d0d000d      	callf	L74f__SWI2C_Start
 754                     ; 173 	_SWI2C_SendByte(addr);
 756  01d5 7b02          	ld	a,(OFST+1,sp)
 757  01d7 8d650065      	callf	L37f__SWI2C_SendByte
 759                     ; 174 	_SWI2C_SendByte(subaddr);
 761  01db 7b03          	ld	a,(OFST+2,sp)
 762  01dd 8d650065      	callf	L37f__SWI2C_SendByte
 764                     ; 175 	_SWI2C_Start();
 766  01e1 8d0d000d      	callf	L74f__SWI2C_Start
 768                     ; 176 	_SWI2C_SendByte(addr|0x01);
 770  01e5 7b02          	ld	a,(OFST+1,sp)
 771  01e7 aa01          	or	a,#1
 772  01e9 8d650065      	callf	L37f__SWI2C_SendByte
 774                     ; 177 	value = _SWI2C_ReceiveByte(FALSE);
 776  01ed 4f            	clr	a
 777  01ee 8d1a011a      	callf	L531f__SWI2C_ReceiveByte
 779  01f2 6b01          	ld	(OFST+0,sp),a
 780                     ; 178 	_SWI2C_Stop();
 782  01f4 8d3e003e      	callf	L16f__SWI2C_Stop
 784                     ; 180 	return value;
 786  01f8 7b01          	ld	a,(OFST+0,sp)
 789  01fa 5b03          	addw	sp,#3
 790  01fc 87            	retf
 849                     ; 183 u8 SWI2C_ReadBytes(u8 addr, u8 subaddr, u8 number, u8 * p_data)
 849                     ; 184 {	
 850                     	switch	.text
 851  01fd               f_SWI2C_ReadBytes:
 853  01fd 89            	pushw	x
 854       00000000      OFST:	set	0
 857                     ; 185 	_SWI2C_Start();
 859  01fe 8d0d000d      	callf	L74f__SWI2C_Start
 861                     ; 186 	_SWI2C_SendByte(addr);
 863  0202 7b01          	ld	a,(OFST+1,sp)
 864  0204 8d650065      	callf	L37f__SWI2C_SendByte
 866                     ; 187 	_SWI2C_SendByte(subaddr);
 868  0208 7b02          	ld	a,(OFST+2,sp)
 869  020a 8d650065      	callf	L37f__SWI2C_SendByte
 871                     ; 188 	_SWI2C_Start();
 873  020e 8d0d000d      	callf	L74f__SWI2C_Start
 875                     ; 189 	_SWI2C_SendByte(addr|0x01);
 877  0212 7b01          	ld	a,(OFST+1,sp)
 878  0214 aa01          	or	a,#1
 879  0216 8d650065      	callf	L37f__SWI2C_SendByte
 882  021a 2010          	jra	L362
 883  021c               L162:
 884                     ; 192 		*p_data = _SWI2C_ReceiveByte(number);
 886  021c 7b06          	ld	a,(OFST+6,sp)
 887  021e 8d1a011a      	callf	L531f__SWI2C_ReceiveByte
 889  0222 1e07          	ldw	x,(OFST+7,sp)
 890  0224 f7            	ld	(x),a
 891                     ; 193 		p_data++;
 893  0225 1e07          	ldw	x,(OFST+7,sp)
 894  0227 1c0001        	addw	x,#1
 895  022a 1f07          	ldw	(OFST+7,sp),x
 896  022c               L362:
 897                     ; 190 	while (number--)
 899  022c 7b06          	ld	a,(OFST+6,sp)
 900  022e 0a06          	dec	(OFST+6,sp)
 901  0230 4d            	tnz	a
 902  0231 26e9          	jrne	L162
 903                     ; 195 	_SWI2C_Stop();
 905  0233 8d3e003e      	callf	L16f__SWI2C_Stop
 907                     ; 197 	return TRUE;
 909  0237 a601          	ld	a,#1
 912  0239 85            	popw	x
 913  023a 87            	retf
 961                     ; 200 void SWI2C_WriteByte(u8 addr, u8 subaddr, u8 value)
 961                     ; 201 {	
 962                     	switch	.text
 963  023b               f_SWI2C_WriteByte:
 965  023b 89            	pushw	x
 966       00000000      OFST:	set	0
 969                     ; 202 	_SWI2C_Start();
 971  023c 8d0d000d      	callf	L74f__SWI2C_Start
 973                     ; 203 	_SWI2C_SendByte(addr);
 975  0240 7b01          	ld	a,(OFST+1,sp)
 976  0242 8d650065      	callf	L37f__SWI2C_SendByte
 978                     ; 204 	_SWI2C_SendByte(subaddr);
 980  0246 7b02          	ld	a,(OFST+2,sp)
 981  0248 8d650065      	callf	L37f__SWI2C_SendByte
 983                     ; 205 	_SWI2C_SendByte(value);
 985  024c 7b06          	ld	a,(OFST+6,sp)
 986  024e 8d650065      	callf	L37f__SWI2C_SendByte
 988                     ; 206 	_SWI2C_Stop();
 990  0252 8d3e003e      	callf	L16f__SWI2C_Stop
 992                     ; 207 }
 995  0256 85            	popw	x
 996  0257 87            	retf
1044                     ; 209 void SWI2C_Write2Byte(u8 addr, u8 subaddr, u16 data) 
1044                     ; 210 {	                                             
1045                     	switch	.text
1046  0258               f_SWI2C_Write2Byte:
1048  0258 89            	pushw	x
1049       00000000      OFST:	set	0
1052                     ; 211 	_SWI2C_Start();                              
1054  0259 8d0d000d      	callf	L74f__SWI2C_Start
1056                     ; 212 	_SWI2C_SendByte(addr);                      
1058  025d 7b01          	ld	a,(OFST+1,sp)
1059  025f 8d650065      	callf	L37f__SWI2C_SendByte
1061                     ; 213 	_SWI2C_SendByte(subaddr);                   
1063  0263 7b02          	ld	a,(OFST+2,sp)
1064  0265 8d650065      	callf	L37f__SWI2C_SendByte
1066                     ; 214 	_SWI2C_SendByte(data>>8);                   
1068  0269 7b06          	ld	a,(OFST+6,sp)
1069  026b 8d650065      	callf	L37f__SWI2C_SendByte
1071                     ; 215 	_SWI2C_SendByte(data);                      
1073  026f 7b07          	ld	a,(OFST+7,sp)
1074  0271 8d650065      	callf	L37f__SWI2C_SendByte
1076                     ; 216 	_SWI2C_Stop();                               
1078  0275 8d3e003e      	callf	L16f__SWI2C_Stop
1080                     ; 217 }      
1083  0279 85            	popw	x
1084  027a 87            	retf
1142                     ; 219 u8 SWI2C_WriteBytes(u8 addr, u8 subaddr, u8 number, u8 * p_data)
1142                     ; 220 {	
1143                     	switch	.text
1144  027b               f_SWI2C_WriteBytes:
1146  027b 89            	pushw	x
1147       00000000      OFST:	set	0
1150                     ; 221 	_SWI2C_Start();
1152  027c 8d0d000d      	callf	L74f__SWI2C_Start
1154                     ; 222 	_SWI2C_SendByte(addr);
1156  0280 7b01          	ld	a,(OFST+1,sp)
1157  0282 8d650065      	callf	L37f__SWI2C_SendByte
1159                     ; 223 	_SWI2C_SendByte(subaddr);
1161  0286 7b02          	ld	a,(OFST+2,sp)
1162  0288 8d650065      	callf	L37f__SWI2C_SendByte
1165  028c 200e          	jra	L553
1166  028e               L353:
1167                     ; 226 		_SWI2C_SendByte(*p_data);
1169  028e 1e07          	ldw	x,(OFST+7,sp)
1170  0290 f6            	ld	a,(x)
1171  0291 8d650065      	callf	L37f__SWI2C_SendByte
1173                     ; 227 		p_data++;
1175  0295 1e07          	ldw	x,(OFST+7,sp)
1176  0297 1c0001        	addw	x,#1
1177  029a 1f07          	ldw	(OFST+7,sp),x
1178  029c               L553:
1179                     ; 224 	while (number--)
1181  029c 7b06          	ld	a,(OFST+6,sp)
1182  029e 0a06          	dec	(OFST+6,sp)
1183  02a0 4d            	tnz	a
1184  02a1 26eb          	jrne	L353
1185                     ; 229 	_SWI2C_Stop();
1187  02a3 8d3e003e      	callf	L16f__SWI2C_Stop
1189                     ; 230 	return TRUE;
1191  02a7 a601          	ld	a,#1
1194  02a9 85            	popw	x
1195  02aa 87            	retf
1223                     ; 233 void SWI2C_Init(void)
1223                     ; 234 {
1224                     	switch	.text
1225  02ab               f_SWI2C_Init:
1229                     ; 235 	GPIO_Init(IIC_SCL_PORT, IIC_SCL_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
1231  02ab 4bb0          	push	#176
1232  02ad 4b10          	push	#16
1233  02af ae5005        	ldw	x,#20485
1234  02b2 8d000000      	callf	f_GPIO_Init
1236  02b6 85            	popw	x
1237                     ; 236 	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
1239  02b7 4bb0          	push	#176
1240  02b9 4b20          	push	#32
1241  02bb ae5005        	ldw	x,#20485
1242  02be 8d000000      	callf	f_GPIO_Init
1244  02c2 85            	popw	x
1245                     ; 237 	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
1247  02c3 4b10          	push	#16
1248  02c5 ae5005        	ldw	x,#20485
1249  02c8 8d000000      	callf	f_GPIO_WriteHigh
1251  02cc 84            	pop	a
1252                     ; 238 	GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
1254  02cd 4b20          	push	#32
1255  02cf ae5005        	ldw	x,#20485
1256  02d2 8d000000      	callf	f_GPIO_WriteHigh
1258  02d6 84            	pop	a
1259                     ; 240 	GPIO_Init(POWER_ONOFF_PORT, POWER_ONOFF_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
1261  02d7 4bf0          	push	#240
1262  02d9 4b20          	push	#32
1263  02db ae500a        	ldw	x,#20490
1264  02de 8d000000      	callf	f_GPIO_Init
1266  02e2 85            	popw	x
1267                     ; 242 	GPIO_Init(FPGA_RESET_PORT, FPGA_RESET_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
1269  02e3 4bf0          	push	#240
1270  02e5 4b10          	push	#16
1271  02e7 ae500a        	ldw	x,#20490
1272  02ea 8d000000      	callf	f_GPIO_Init
1274  02ee 85            	popw	x
1275                     ; 243 	GPIO_Init(IT680X_RESET_PORT, IT680X_RESET_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
1277  02ef 4bf0          	push	#240
1278  02f1 4b01          	push	#1
1279  02f3 ae5005        	ldw	x,#20485
1280  02f6 8d000000      	callf	f_GPIO_Init
1282  02fa 85            	popw	x
1283                     ; 245 	GPIO_Init(LED_R_PORT, LED_R_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);	
1285  02fb 4bf0          	push	#240
1286  02fd 4b01          	push	#1
1287  02ff ae5014        	ldw	x,#20500
1288  0302 8d000000      	callf	f_GPIO_Init
1290  0306 85            	popw	x
1291                     ; 246 	GPIO_Init(LED_G_PORT, LED_G_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
1293  0307 4be0          	push	#224
1294  0309 4b08          	push	#8
1295  030b ae500f        	ldw	x,#20495
1296  030e 8d000000      	callf	f_GPIO_Init
1298  0312 85            	popw	x
1299                     ; 248 	GPIO_Init(HDMI_HOTPLUG_PORT, HDMI_HOTPLUG_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
1301  0313 4bf0          	push	#240
1302  0315 4b40          	push	#64
1303  0317 ae5005        	ldw	x,#20485
1304  031a 8d000000      	callf	f_GPIO_Init
1306  031e 85            	popw	x
1307                     ; 250 	GPIO_Init(BACKLIGHT_ONOFF_PORT, BACKLIGHT_ONOFF_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
1309  031f 4bf0          	push	#240
1310  0321 4b80          	push	#128
1311  0323 ae500a        	ldw	x,#20490
1312  0326 8d000000      	callf	f_GPIO_Init
1314  032a 85            	popw	x
1315                     ; 251 	GPIO_Init(BACKLIGHT_PWM_PORT, BACKLIGHT_PWM_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
1317  032b 4bf0          	push	#240
1318  032d 4b40          	push	#64
1319  032f ae500a        	ldw	x,#20490
1320  0332 8d000000      	callf	f_GPIO_Init
1322  0336 85            	popw	x
1323                     ; 252 	GPIO_Init(VPANEL_ONOFF_PORT, VPANEL_ONOFF_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
1325  0337 4be0          	push	#224
1326  0339 4b01          	push	#1
1327  033b ae501e        	ldw	x,#20510
1328  033e 8d000000      	callf	f_GPIO_Init
1330  0342 85            	popw	x
1331                     ; 254 	TIM1_TimeBaseInit(0, TIM1_COUNTERMODE_UP, 4095, 0);
1333  0343 4b00          	push	#0
1334  0345 ae0fff        	ldw	x,#4095
1335  0348 89            	pushw	x
1336  0349 4b00          	push	#0
1337  034b 5f            	clrw	x
1338  034c 8d000000      	callf	f_TIM1_TimeBaseInit
1340  0350 5b04          	addw	sp,#4
1341                     ; 255 	TIM1_OC1Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE, TIM1_OUTPUTNSTATE_DISABLE,
1341                     ; 256 	           0, TIM1_OCPOLARITY_LOW, TIM1_OCNPOLARITY_HIGH, TIM1_OCIDLESTATE_SET,
1341                     ; 257 	           TIM1_OCNIDLESTATE_RESET);
1343  0352 4b00          	push	#0
1344  0354 4b55          	push	#85
1345  0356 4b00          	push	#0
1346  0358 4b22          	push	#34
1347  035a 5f            	clrw	x
1348  035b 89            	pushw	x
1349  035c 4b00          	push	#0
1350  035e ae0011        	ldw	x,#17
1351  0361 a670          	ld	a,#112
1352  0363 95            	ld	xh,a
1353  0364 8d000000      	callf	f_TIM1_OC1Init
1355  0368 5b07          	addw	sp,#7
1356                     ; 258 	TIM1_Cmd(ENABLE);
1358  036a a601          	ld	a,#1
1359  036c 8d000000      	callf	f_TIM1_Cmd
1361                     ; 259 	TIM1_CtrlPWMOutputs(ENABLE);
1363  0370 a601          	ld	a,#1
1364  0372 8d000000      	callf	f_TIM1_CtrlPWMOutputs
1366                     ; 260 }
1369  0376 87            	retf
1418                     .const:	section	.text
1419  0000               L04:
1420  0000 00000001      	dc.l	1
1421                     ; 262 void SWI2C_Update(void)
1421                     ; 263 {	
1422                     	switch	.text
1423  0377               f_SWI2C_Update:
1425  0377 89            	pushw	x
1426       00000002      OFST:	set	2
1429                     ; 264 	if (Backlight_on_timer == TIMER_EXPIRED)
1431  0378 ae0004        	ldw	x,#L5_Backlight_on_timer
1432  037b 8d000000      	callf	d_ltor
1434  037f ae0000        	ldw	x,#L04
1435  0382 8d000000      	callf	d_lcmp
1437  0386 2627          	jrne	L704
1438                     ; 266 		GPIO_WriteHigh(VPANEL_ONOFF_PORT, VPANEL_ONOFF_PIN);
1440  0388 4b01          	push	#1
1441  038a ae501e        	ldw	x,#20510
1442  038d 8d000000      	callf	f_GPIO_WriteHigh
1444  0391 84            	pop	a
1445                     ; 267 		IR_DelayNMiliseconds(500);
1447  0392 ae01f4        	ldw	x,#500
1448  0395 8d000000      	callf	f_IR_DelayNMiliseconds
1450                     ; 268 		GPIO_WriteLow(BACKLIGHT_ONOFF_PORT, BACKLIGHT_ONOFF_PIN);
1452  0399 4b80          	push	#128
1453  039b ae500a        	ldw	x,#20490
1454  039e 8d000000      	callf	f_GPIO_WriteLow
1456  03a2 84            	pop	a
1457                     ; 270 		Backlight_on_timer = TIMER_STOPPED;
1459  03a3 ae0000        	ldw	x,#0
1460  03a6 cf0006        	ldw	L5_Backlight_on_timer+2,x
1461  03a9 ae0000        	ldw	x,#0
1462  03ac cf0004        	ldw	L5_Backlight_on_timer,x
1463  03af               L704:
1464                     ; 273 	if (Power_status && !I2C_stop)
1466  03af 725d0009      	tnz	L11_Power_status
1467  03b3 275f          	jreq	L114
1469  03b5 725d000a      	tnz	L31_I2C_stop
1470  03b9 2659          	jrne	L114
1471                     ; 275 		IT6802_fsm();
1473  03bb 8d000000      	callf	f_IT6802_fsm
1475                     ; 277 		if (frc_update_timer == TIMER_EXPIRED)
1477  03bf ae0000        	ldw	x,#L3_frc_update_timer
1478  03c2 8d000000      	callf	d_ltor
1480  03c6 ae0000        	ldw	x,#L04
1481  03c9 8d000000      	callf	d_lcmp
1483  03cd 2645          	jrne	L114
1484                     ; 280 			read_LVDS_mode = SWI2C_ReadByte(FRC_BOARD_ADDRESS, 0x18);
1486  03cf ae0018        	ldw	x,#24
1487  03d2 a622          	ld	a,#34
1488  03d4 95            	ld	xh,a
1489  03d5 8dcf01cf      	callf	f_SWI2C_ReadByte
1491  03d9 6b01          	ld	(OFST-1,sp),a
1492                     ; 281 			if (read_LVDS_mode != LVDS_mode)
1494  03db 7b01          	ld	a,(OFST-1,sp)
1495  03dd c10008        	cp	a,L7_LVDS_mode
1496  03e0 270e          	jreq	L514
1497                     ; 283 				SWI2C_WriteByte(FRC_BOARD_ADDRESS, 0x18, LVDS_mode);
1499  03e2 3b0008        	push	L7_LVDS_mode
1500  03e5 ae0018        	ldw	x,#24
1501  03e8 a622          	ld	a,#34
1502  03ea 95            	ld	xh,a
1503  03eb 8d3b023b      	callf	f_SWI2C_WriteByte
1505  03ef 84            	pop	a
1506  03f0               L514:
1507                     ; 285 			read_MFC = SWI2C_ReadByte(FRC_BOARD_ADDRESS, 0x0A);
1509  03f0 ae000a        	ldw	x,#10
1510  03f3 a622          	ld	a,#34
1511  03f5 95            	ld	xh,a
1512  03f6 8dcf01cf      	callf	f_SWI2C_ReadByte
1514  03fa 6b02          	ld	(OFST+0,sp),a
1515                     ; 286 			if (read_MFC != 0)
1517  03fc 0d02          	tnz	(OFST+0,sp)
1518  03fe 2714          	jreq	L114
1519                     ; 288 				IR_DelayNMiliseconds(50);
1521  0400 ae0032        	ldw	x,#50
1522  0403 8d000000      	callf	f_IR_DelayNMiliseconds
1524                     ; 289 				SWI2C_WriteByte(FRC_BOARD_ADDRESS, 0x0A, 0);
1526  0407 4b00          	push	#0
1527  0409 ae000a        	ldw	x,#10
1528  040c a622          	ld	a,#34
1529  040e 95            	ld	xh,a
1530  040f 8d3b023b      	callf	f_SWI2C_WriteByte
1532  0413 84            	pop	a
1533  0414               L114:
1534                     ; 293 }
1537  0414 85            	popw	x
1538  0415 87            	retf
1568                     ; 295 void SWI2C_SystemPowerUp(void)
1568                     ; 296 {
1569                     	switch	.text
1570  0416               f_SWI2C_SystemPowerUp:
1574                     ; 297 	GPIO_WriteLow(POWER_ONOFF_PORT, POWER_ONOFF_PIN);
1576  0416 4b20          	push	#32
1577  0418 ae500a        	ldw	x,#20490
1578  041b 8d000000      	callf	f_GPIO_WriteLow
1580  041f 84            	pop	a
1581                     ; 298 	GPIO_WriteLow(LED_R_PORT, LED_R_PIN);			
1583  0420 4b01          	push	#1
1584  0422 ae5014        	ldw	x,#20500
1585  0425 8d000000      	callf	f_GPIO_WriteLow
1587  0429 84            	pop	a
1588                     ; 299 	GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
1590  042a 4b08          	push	#8
1591  042c ae500f        	ldw	x,#20495
1592  042f 8d000000      	callf	f_GPIO_WriteHigh
1594  0433 84            	pop	a
1595                     ; 300 	IR_DelayNMiliseconds(50);
1597  0434 ae0032        	ldw	x,#50
1598  0437 8d000000      	callf	f_IR_DelayNMiliseconds
1600                     ; 301 	Power_status = TRUE;
1602  043b 35010009      	mov	L11_Power_status,#1
1603                     ; 302 	GPIO_WriteLow(IT680X_RESET_PORT, IT680X_RESET_PIN);
1605  043f 4b01          	push	#1
1606  0441 ae5005        	ldw	x,#20485
1607  0444 8d000000      	callf	f_GPIO_WriteLow
1609  0448 84            	pop	a
1610                     ; 303 	GPIO_WriteLow(FPGA_RESET_PORT, FPGA_RESET_PIN);
1612  0449 4b10          	push	#16
1613  044b ae500a        	ldw	x,#20490
1614  044e 8d000000      	callf	f_GPIO_WriteLow
1616  0452 84            	pop	a
1617                     ; 304 	IR_DelayNMiliseconds(200);
1619  0453 ae00c8        	ldw	x,#200
1620  0456 8d000000      	callf	f_IR_DelayNMiliseconds
1622                     ; 305 	GPIO_WriteHigh(IT680X_RESET_PORT, IT680X_RESET_PIN);
1624  045a 4b01          	push	#1
1625  045c ae5005        	ldw	x,#20485
1626  045f 8d000000      	callf	f_GPIO_WriteHigh
1628  0463 84            	pop	a
1629                     ; 306 	GPIO_WriteHigh(FPGA_RESET_PORT, FPGA_RESET_PIN);
1631  0464 4b10          	push	#16
1632  0466 ae500a        	ldw	x,#20490
1633  0469 8d000000      	callf	f_GPIO_WriteHigh
1635  046d 84            	pop	a
1636                     ; 307 	IR_DelayNMiliseconds(1000);
1638  046e ae03e8        	ldw	x,#1000
1639  0471 8d000000      	callf	f_IR_DelayNMiliseconds
1641                     ; 308 	FPGA_Init();	
1643  0475 8d4f054f      	callf	f_FPGA_Init
1645                     ; 309 	IT6802_fsm_init();
1647  0479 8d000000      	callf	f_IT6802_fsm_init
1649                     ; 310 	Backlight_on_timer = BACKLIGHT_DELAY_TIME;
1651  047d ae03e9        	ldw	x,#1001
1652  0480 cf0006        	ldw	L5_Backlight_on_timer+2,x
1653  0483 ae0000        	ldw	x,#0
1654  0486 cf0004        	ldw	L5_Backlight_on_timer,x
1655                     ; 311 }
1658  0489 87            	retf
1686                     ; 313 void SWI2C_SystemPowerDown(void)
1686                     ; 314 {
1687                     	switch	.text
1688  048a               f_SWI2C_SystemPowerDown:
1692                     ; 315 	GPIO_WriteHigh(BACKLIGHT_ONOFF_PORT, BACKLIGHT_ONOFF_PIN);
1694  048a 4b80          	push	#128
1695  048c ae500a        	ldw	x,#20490
1696  048f 8d000000      	callf	f_GPIO_WriteHigh
1698  0493 84            	pop	a
1699                     ; 316 	IR_DelayNMiliseconds(200);
1701  0494 ae00c8        	ldw	x,#200
1702  0497 8d000000      	callf	f_IR_DelayNMiliseconds
1704                     ; 317 	GPIO_WriteLow(VPANEL_ONOFF_PORT, VPANEL_ONOFF_PIN);
1706  049b 4b01          	push	#1
1707  049d ae501e        	ldw	x,#20510
1708  04a0 8d000000      	callf	f_GPIO_WriteLow
1710  04a4 84            	pop	a
1711                     ; 318 	GPIO_WriteHigh(POWER_ONOFF_PORT, POWER_ONOFF_PIN);
1713  04a5 4b20          	push	#32
1714  04a7 ae500a        	ldw	x,#20490
1715  04aa 8d000000      	callf	f_GPIO_WriteHigh
1717  04ae 84            	pop	a
1718                     ; 319 	GPIO_WriteHigh(LED_R_PORT, LED_R_PIN);			
1720  04af 4b01          	push	#1
1721  04b1 ae5014        	ldw	x,#20500
1722  04b4 8d000000      	callf	f_GPIO_WriteHigh
1724  04b8 84            	pop	a
1725                     ; 320 	GPIO_WriteLow(LED_G_PORT, LED_G_PIN);
1727  04b9 4b08          	push	#8
1728  04bb ae500f        	ldw	x,#20495
1729  04be 8d000000      	callf	f_GPIO_WriteLow
1731  04c2 84            	pop	a
1732                     ; 321 	Power_status = FALSE;
1734  04c3 725f0009      	clr	L11_Power_status
1735                     ; 322 	I2C_stop = FALSE;
1737  04c7 725f000a      	clr	L31_I2C_stop
1738                     ; 323 }
1741  04cb 87            	retf
1768                     ; 325 void SWI2C_ToggleI2CMode(void)
1768                     ; 326 {
1769                     	switch	.text
1770  04cc               f_SWI2C_ToggleI2CMode:
1774                     ; 327 	if (Power_status)
1776  04cc 725d0009      	tnz	L11_Power_status
1777  04d0 273e          	jreq	L154
1778                     ; 329 		I2C_stop = !I2C_stop;
1780  04d2 725d000a      	tnz	L31_I2C_stop
1781  04d6 2604          	jrne	L05
1782  04d8 a601          	ld	a,#1
1783  04da 2001          	jra	L25
1784  04dc               L05:
1785  04dc 4f            	clr	a
1786  04dd               L25:
1787  04dd c7000a        	ld	L31_I2C_stop,a
1788                     ; 330 		if (I2C_stop)
1790  04e0 725d000a      	tnz	L31_I2C_stop
1791  04e4 2716          	jreq	L354
1792                     ; 332 			GPIO_WriteHigh(LED_R_PORT, LED_R_PIN);			
1794  04e6 4b01          	push	#1
1795  04e8 ae5014        	ldw	x,#20500
1796  04eb 8d000000      	callf	f_GPIO_WriteHigh
1798  04ef 84            	pop	a
1799                     ; 333 			GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
1801  04f0 4b08          	push	#8
1802  04f2 ae500f        	ldw	x,#20495
1803  04f5 8d000000      	callf	f_GPIO_WriteHigh
1805  04f9 84            	pop	a
1807  04fa 2014          	jra	L154
1808  04fc               L354:
1809                     ; 337 			GPIO_WriteLow(LED_R_PORT, LED_R_PIN);			
1811  04fc 4b01          	push	#1
1812  04fe ae5014        	ldw	x,#20500
1813  0501 8d000000      	callf	f_GPIO_WriteLow
1815  0505 84            	pop	a
1816                     ; 338 			GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
1818  0506 4b08          	push	#8
1819  0508 ae500f        	ldw	x,#20495
1820  050b 8d000000      	callf	f_GPIO_WriteHigh
1822  050f 84            	pop	a
1823  0510               L154:
1824                     ; 341 }
1827  0510 87            	retf
1852                     ; 343 void SWI2C_ProcessPower(void)
1852                     ; 344 {
1853                     	switch	.text
1854  0511               f_SWI2C_ProcessPower:
1858                     ; 345 	if (Power_status)
1860  0511 725d0009      	tnz	L11_Power_status
1861  0515 2706          	jreq	L764
1862                     ; 347 		SWI2C_SystemPowerDown();
1864  0517 8d8a048a      	callf	f_SWI2C_SystemPowerDown
1867  051b 2004          	jra	L174
1868  051d               L764:
1869                     ; 351 		SWI2C_SystemPowerUp();
1871  051d 8d160416      	callf	f_SWI2C_SystemPowerUp
1873  0521               L174:
1874                     ; 353 }
1877  0521 87            	retf
1879                     	switch	.data
1880  000b               L374_OnOff_3D:
1881  000b 00            	dc.b	0
1913                     ; 357 void SWI2C_Set3D(void)
1913                     ; 358 {
1914                     	switch	.text
1915  0522               f_SWI2C_Set3D:
1917  0522 88            	push	a
1918       00000001      OFST:	set	1
1921                     ; 362 	OnOff_3D = !OnOff_3D;
1923  0523 725d000b      	tnz	L374_OnOff_3D
1924  0527 2604          	jrne	L06
1925  0529 a601          	ld	a,#1
1926  052b 2001          	jra	L26
1927  052d               L06:
1928  052d 4f            	clr	a
1929  052e               L26:
1930  052e c7000b        	ld	L374_OnOff_3D,a
1931                     ; 363 	if (OnOff_3D)
1933  0531 725d000b      	tnz	L374_OnOff_3D
1934  0535 2706          	jreq	L115
1935                     ; 365 		reg_value = 0x80;
1937  0537 a680          	ld	a,#128
1938  0539 6b01          	ld	(OFST+0,sp),a
1940  053b 2002          	jra	L315
1941  053d               L115:
1942                     ; 369 		reg_value = 0x0;
1944  053d 0f01          	clr	(OFST+0,sp)
1945  053f               L315:
1946                     ; 371 	SWI2C_WriteByte(FPGA_ADDRESS, 0x57, reg_value);
1948  053f 7b01          	ld	a,(OFST+0,sp)
1949  0541 88            	push	a
1950  0542 ae0057        	ldw	x,#87
1951  0545 a6ba          	ld	a,#186
1952  0547 95            	ld	xh,a
1953  0548 8d3b023b      	callf	f_SWI2C_WriteByte
1955  054c 84            	pop	a
1956                     ; 372 }
1959  054d 84            	pop	a
1960  054e 87            	retf
1984                     ; 374 void FPGA_Init(void)
1984                     ; 375  {		
1985                     	switch	.text
1986  054f               f_FPGA_Init:
1990                     ; 376 	SWI2C_WriteByte(FPGA_ADDRESS, 0x0D, 0x26);
1992  054f 4b26          	push	#38
1993  0551 ae000d        	ldw	x,#13
1994  0554 a6ba          	ld	a,#186
1995  0556 95            	ld	xh,a
1996  0557 8d3b023b      	callf	f_SWI2C_WriteByte
1998  055b 84            	pop	a
1999                     ; 377 	SWI2C_WriteByte(FPGA_ADDRESS, 0x57, 0x80);
2001  055c 4b80          	push	#128
2002  055e ae0057        	ldw	x,#87
2003  0561 a6ba          	ld	a,#186
2004  0563 95            	ld	xh,a
2005  0564 8d3b023b      	callf	f_SWI2C_WriteByte
2007  0568 84            	pop	a
2008                     ; 378  	SWI2C_WriteByte(FPGA_ADDRESS, 0x58, 0x17);	
2010  0569 4b17          	push	#23
2011  056b ae0058        	ldw	x,#88
2012  056e a6ba          	ld	a,#186
2013  0570 95            	ld	xh,a
2014  0571 8d3b023b      	callf	f_SWI2C_WriteByte
2016  0575 84            	pop	a
2017                     ; 379  	SWI2C_WriteByte(FPGA_ADDRESS, 0x47, 0x10); 
2019  0576 4b10          	push	#16
2020  0578 ae0047        	ldw	x,#71
2021  057b a6ba          	ld	a,#186
2022  057d 95            	ld	xh,a
2023  057e 8d3b023b      	callf	f_SWI2C_WriteByte
2025  0582 84            	pop	a
2026                     ; 380 	SWI2C_WriteByte(FPGA_ADDRESS, 0x48, 0x01); 
2028  0583 4b01          	push	#1
2029  0585 ae0048        	ldw	x,#72
2030  0588 a6ba          	ld	a,#186
2031  058a 95            	ld	xh,a
2032  058b 8d3b023b      	callf	f_SWI2C_WriteByte
2034  058f 84            	pop	a
2035                     ; 382 	SWI2C_WriteByte(FPGA_ADDRESS, 0x49, 0x85);
2037  0590 4b85          	push	#133
2038  0592 ae0049        	ldw	x,#73
2039  0595 a6ba          	ld	a,#186
2040  0597 95            	ld	xh,a
2041  0598 8d3b023b      	callf	f_SWI2C_WriteByte
2043  059c 84            	pop	a
2044                     ; 384 	SWI2C_WriteByte(FPGA_ADDRESS, 0xc9, 0x05);
2046  059d 4b05          	push	#5
2047  059f ae00c9        	ldw	x,#201
2048  05a2 a6ba          	ld	a,#186
2049  05a4 95            	ld	xh,a
2050  05a5 8d3b023b      	callf	f_SWI2C_WriteByte
2052  05a9 84            	pop	a
2053                     ; 385 	SWI2C_WriteByte(FPGA_ADDRESS, 0xc8, 0x05);
2055  05aa 4b05          	push	#5
2056  05ac ae00c8        	ldw	x,#200
2057  05af a6ba          	ld	a,#186
2058  05b1 95            	ld	xh,a
2059  05b2 8d3b023b      	callf	f_SWI2C_WriteByte
2061  05b6 84            	pop	a
2062                     ; 386 	SWI2C_WriteByte(FPGA_ADDRESS, 0xcb, 0);
2064  05b7 4b00          	push	#0
2065  05b9 ae00cb        	ldw	x,#203
2066  05bc a6ba          	ld	a,#186
2067  05be 95            	ld	xh,a
2068  05bf 8d3b023b      	callf	f_SWI2C_WriteByte
2070  05c3 84            	pop	a
2071                     ; 387 	SWI2C_WriteByte(FPGA_ADDRESS, 0xca, 0x19);	
2073  05c4 4b19          	push	#25
2074  05c6 ae00ca        	ldw	x,#202
2075  05c9 a6ba          	ld	a,#186
2076  05cb 95            	ld	xh,a
2077  05cc 8d3b023b      	callf	f_SWI2C_WriteByte
2079  05d0 84            	pop	a
2080                     ; 389 	SWI2C_WriteByte(FPGA_ADDRESS, 0x59, 0x40);
2082  05d1 4b40          	push	#64
2083  05d3 ae0059        	ldw	x,#89
2084  05d6 a6ba          	ld	a,#186
2085  05d8 95            	ld	xh,a
2086  05d9 8d3b023b      	callf	f_SWI2C_WriteByte
2088  05dd 84            	pop	a
2089                     ; 390 	SWI2C_WriteByte(FPGA_ADDRESS, 0x5A, 0x80);
2091  05de 4b80          	push	#128
2092  05e0 ae005a        	ldw	x,#90
2093  05e3 a6ba          	ld	a,#186
2094  05e5 95            	ld	xh,a
2095  05e6 8d3b023b      	callf	f_SWI2C_WriteByte
2097  05ea 84            	pop	a
2098                     ; 391 	SWI2C_WriteByte(FPGA_ADDRESS, 0x5c, 0x80);
2100  05eb 4b80          	push	#128
2101  05ed ae005c        	ldw	x,#92
2102  05f0 a6ba          	ld	a,#186
2103  05f2 95            	ld	xh,a
2104  05f3 8d3b023b      	callf	f_SWI2C_WriteByte
2106  05f7 84            	pop	a
2107                     ; 393 	SWI2C_Set3D();	
2109  05f8 8d220522      	callf	f_SWI2C_Set3D
2111                     ; 394 }
2114  05fc 87            	retf
2147                     ; 396 void HDMI_HotPlug(u8 value)
2147                     ; 397 {
2148                     	switch	.text
2149  05fd               f_HDMI_HotPlug:
2153                     ; 398 	if (value)
2155  05fd 4d            	tnz	a
2156  05fe 270c          	jreq	L145
2157                     ; 400 		GPIO_WriteHigh(HDMI_HOTPLUG_PORT,HDMI_HOTPLUG_PIN);
2159  0600 4b40          	push	#64
2160  0602 ae5005        	ldw	x,#20485
2161  0605 8d000000      	callf	f_GPIO_WriteHigh
2163  0609 84            	pop	a
2165  060a 200a          	jra	L345
2166  060c               L145:
2167                     ; 404 		GPIO_WriteLow(HDMI_HOTPLUG_PORT,HDMI_HOTPLUG_PIN);
2169  060c 4b40          	push	#64
2170  060e ae5005        	ldw	x,#20485
2171  0611 8d000000      	callf	f_GPIO_WriteLow
2173  0615 84            	pop	a
2174  0616               L345:
2175                     ; 406 }
2178  0616 87            	retf
2180                     	switch	.const
2181  0004               L545_deep_value:
2182  0004 30            	dc.b	48
2183  0005 80            	dc.b	128
2184  0006 60            	dc.b	96
2185  0007 50            	dc.b	80
2186  0008 70            	dc.b	112
2187  0009 70            	dc.b	112
2188  000a 70            	dc.b	112
2189  000b 60            	dc.b	96
2190  000c 80            	dc.b	128
2191  000d 90            	dc.b	144
2192  000e 50            	dc.b	80
2193  000f 90            	dc.b	144
2194  0010 a0            	dc.b	160
2195  0011 40            	dc.b	64
2196  0012 a0            	dc.b	160
2197  0013 a8            	dc.b	168
2198  0014 30            	dc.b	48
2199  0015 a0            	dc.b	160
2231                     ; 418 void SWI2C_Set_deep(u8 deep)
2231                     ; 419 {
2232                     	switch	.text
2233  0617               f_SWI2C_Set_deep:
2235  0617 88            	push	a
2236       00000000      OFST:	set	0
2239                     ; 420 	SWI2C_WriteByte(FPGA_ADDRESS, 0x59, deep_value[deep][0]);
2241  0618 97            	ld	xl,a
2242  0619 a603          	ld	a,#3
2243  061b 42            	mul	x,a
2244  061c d60004        	ld	a,(L545_deep_value,x)
2245  061f 88            	push	a
2246  0620 ae0059        	ldw	x,#89
2247  0623 a6ba          	ld	a,#186
2248  0625 95            	ld	xh,a
2249  0626 8d3b023b      	callf	f_SWI2C_WriteByte
2251  062a 84            	pop	a
2252                     ; 421 	SWI2C_WriteByte(FPGA_ADDRESS, 0x5C, deep_value[deep][1]);
2254  062b 7b01          	ld	a,(OFST+1,sp)
2255  062d 97            	ld	xl,a
2256  062e a603          	ld	a,#3
2257  0630 42            	mul	x,a
2258  0631 d60005        	ld	a,(L545_deep_value+1,x)
2259  0634 88            	push	a
2260  0635 ae005c        	ldw	x,#92
2261  0638 a6ba          	ld	a,#186
2262  063a 95            	ld	xh,a
2263  063b 8d3b023b      	callf	f_SWI2C_WriteByte
2265  063f 84            	pop	a
2266                     ; 422 	SWI2C_WriteByte(FPGA_ADDRESS, 0x5A, deep_value[deep][2]);
2268  0640 7b01          	ld	a,(OFST+1,sp)
2269  0642 97            	ld	xl,a
2270  0643 a603          	ld	a,#3
2271  0645 42            	mul	x,a
2272  0646 d60006        	ld	a,(L545_deep_value+2,x)
2273  0649 88            	push	a
2274  064a ae005a        	ldw	x,#90
2275  064d a6ba          	ld	a,#186
2276  064f 95            	ld	xh,a
2277  0650 8d3b023b      	callf	f_SWI2C_WriteByte
2279  0654 84            	pop	a
2280                     ; 423 }
2283  0655 84            	pop	a
2284  0656 87            	retf
2308                     	switch	.const
2309  0016               L47:
2310  0016 00000002      	dc.l	2
2311                     ; 425 void SWI2C_UpdateTimer(void)
2311                     ; 426 {
2312                     	switch	.text
2313  0657               f_SWI2C_UpdateTimer:
2317                     ; 427 	if (frc_update_timer > TIMER_EXPIRED)
2319  0657 ae0000        	ldw	x,#L3_frc_update_timer
2320  065a 8d000000      	callf	d_ltor
2322  065e ae0016        	ldw	x,#L47
2323  0661 8d000000      	callf	d_lcmp
2325  0665 2509          	jrult	L375
2326                     ; 429 		frc_update_timer--;
2328  0667 ae0000        	ldw	x,#L3_frc_update_timer
2329  066a a601          	ld	a,#1
2330  066c 8d000000      	callf	d_lgsbc
2332  0670               L375:
2333                     ; 431 	if (Backlight_on_timer > TIMER_EXPIRED)
2335  0670 ae0004        	ldw	x,#L5_Backlight_on_timer
2336  0673 8d000000      	callf	d_ltor
2338  0677 ae0016        	ldw	x,#L47
2339  067a 8d000000      	callf	d_lcmp
2341  067e 2509          	jrult	L575
2342                     ; 433 		Backlight_on_timer--;
2344  0680 ae0004        	ldw	x,#L5_Backlight_on_timer
2345  0683 a601          	ld	a,#1
2346  0685 8d000000      	callf	d_lgsbc
2348  0689               L575:
2349                     ; 435 }
2352  0689 87            	retf
2419                     	xdef	f_SWI2C_TestDevice
2420                     	xref	f_IT6802_fsm
2421                     	xref	f_IT6802_fsm_init
2422                     	xdef	f_SWI2C_UpdateTimer
2423                     	xdef	f_SWI2C_Set_deep
2424                     	xdef	f_SWI2C_Set3D
2425                     	xdef	f_HDMI_HotPlug
2426                     	xdef	f_FPGA_Init
2427                     	xdef	f_SWI2C_Write2Byte
2428                     	xdef	f_SWI2C_WriteBytes
2429                     	xdef	f_SWI2C_WriteByte
2430                     	xdef	f_SWI2C_ReadBytes
2431                     	xdef	f_SWI2C_ReadByte
2432                     	xdef	f_SWI2C_ToggleI2CMode
2433                     	xdef	f_SWI2C_ProcessPower
2434                     	xdef	f_SWI2C_SystemPowerDown
2435                     	xdef	f_SWI2C_SystemPowerUp
2436                     	xdef	f_SWI2C_Update
2437                     	xdef	f_SWI2C_Init
2438                     	xref	f_IR_DelayNMiliseconds
2439                     	xref	f_TIM1_CtrlPWMOutputs
2440                     	xref	f_TIM1_Cmd
2441                     	xref	f_TIM1_OC1Init
2442                     	xref	f_TIM1_TimeBaseInit
2443                     	xref	f_GPIO_ReadInputPin
2444                     	xref	f_GPIO_WriteLow
2445                     	xref	f_GPIO_WriteHigh
2446                     	xref	f_GPIO_Init
2465                     	xref	d_lgsbc
2466                     	xref	d_lcmp
2467                     	xref	d_ltor
2468                     	end
