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
  63                     ; 60 static void _Delay_5us(void)
  63                     ; 61 {
  64                     	switch	.text
  65  0000               L71f__Delay_5us:
  67  0000 88            	push	a
  68       00000001      OFST:	set	1
  71                     ; 63    	for (i = 0;i < 10;i++);
  73  0001 0f01          	clr	(OFST+0,sp)
  74  0003               L34:
  78  0003 0c01          	inc	(OFST+0,sp)
  81  0005 7b01          	ld	a,(OFST+0,sp)
  82  0007 a10a          	cp	a,#10
  83  0009 25f8          	jrult	L34
  84                     ; 64 }
  87  000b 84            	pop	a
  88  000c 87            	retf
 113                     ; 66 static void _SWI2C_Start(void)
 113                     ; 67 {
 114                     	switch	.text
 115  000d               L15f__SWI2C_Start:
 119                     ; 68 	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
 121  000d 4b10          	push	#16
 122  000f ae5005        	ldw	x,#20485
 123  0012 8d000000      	callf	f_GPIO_WriteHigh
 125  0016 84            	pop	a
 126                     ; 69 	GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
 128  0017 4b20          	push	#32
 129  0019 ae5005        	ldw	x,#20485
 130  001c 8d000000      	callf	f_GPIO_WriteHigh
 132  0020 84            	pop	a
 133                     ; 70 	_Delay_5us();
 135  0021 8d000000      	callf	L71f__Delay_5us
 137                     ; 71 	GPIO_WriteLow(IIC_SDA_PORT,IIC_SDA_PIN);
 139  0025 4b20          	push	#32
 140  0027 ae5005        	ldw	x,#20485
 141  002a 8d000000      	callf	f_GPIO_WriteLow
 143  002e 84            	pop	a
 144                     ; 72 	_Delay_5us();
 146  002f 8d000000      	callf	L71f__Delay_5us
 148                     ; 73 	GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
 150  0033 4b10          	push	#16
 151  0035 ae5005        	ldw	x,#20485
 152  0038 8d000000      	callf	f_GPIO_WriteLow
 154  003c 84            	pop	a
 155                     ; 74 }
 158  003d 87            	retf
 183                     ; 76 static void _SWI2C_Stop(void)
 183                     ; 77 {
 184                     	switch	.text
 185  003e               L36f__SWI2C_Stop:
 189                     ; 78 	GPIO_WriteLow(IIC_SDA_PORT,IIC_SDA_PIN);
 191  003e 4b20          	push	#32
 192  0040 ae5005        	ldw	x,#20485
 193  0043 8d000000      	callf	f_GPIO_WriteLow
 195  0047 84            	pop	a
 196                     ; 79 	_Delay_5us();
 198  0048 8d000000      	callf	L71f__Delay_5us
 200                     ; 80 	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
 202  004c 4b10          	push	#16
 203  004e ae5005        	ldw	x,#20485
 204  0051 8d000000      	callf	f_GPIO_WriteHigh
 206  0055 84            	pop	a
 207                     ; 81 	_Delay_5us();
 209  0056 8d000000      	callf	L71f__Delay_5us
 211                     ; 82 	GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
 213  005a 4b20          	push	#32
 214  005c ae5005        	ldw	x,#20485
 215  005f 8d000000      	callf	f_GPIO_WriteHigh
 217  0063 84            	pop	a
 218                     ; 83 }
 221  0064 87            	retf
 264                     ; 85 static u8 _SWI2C_SendByte(u8 value)
 264                     ; 86 {
 265                     	switch	.text
 266  0065               L57f__SWI2C_SendByte:
 268  0065 88            	push	a
 269  0066 88            	push	a
 270       00000001      OFST:	set	1
 273                     ; 89 	for (count = 0;count < 8;count++)
 275  0067 0f01          	clr	(OFST+0,sp)
 276  0069               L511:
 277                     ; 91 		if (value&0x80)
 279  0069 7b02          	ld	a,(OFST+1,sp)
 280  006b a580          	bcp	a,#128
 281  006d 270c          	jreq	L321
 282                     ; 93 			GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
 284  006f 4b20          	push	#32
 285  0071 ae5005        	ldw	x,#20485
 286  0074 8d000000      	callf	f_GPIO_WriteHigh
 288  0078 84            	pop	a
 290  0079 200a          	jra	L521
 291  007b               L321:
 292                     ; 97 			GPIO_WriteLow(IIC_SDA_PORT,IIC_SDA_PIN);
 294  007b 4b20          	push	#32
 295  007d ae5005        	ldw	x,#20485
 296  0080 8d000000      	callf	f_GPIO_WriteLow
 298  0084 84            	pop	a
 299  0085               L521:
 300                     ; 99 		_Delay_5us();
 302  0085 8d000000      	callf	L71f__Delay_5us
 304                     ; 100 		GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
 306  0089 4b10          	push	#16
 307  008b ae5005        	ldw	x,#20485
 308  008e 8d000000      	callf	f_GPIO_WriteHigh
 310  0092 84            	pop	a
 311                     ; 101 		_Delay_5us();
 313  0093 8d000000      	callf	L71f__Delay_5us
 315                     ; 102 		GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
 317  0097 4b10          	push	#16
 318  0099 ae5005        	ldw	x,#20485
 319  009c 8d000000      	callf	f_GPIO_WriteLow
 321  00a0 84            	pop	a
 322                     ; 103 		value = value<<1;
 324  00a1 0802          	sll	(OFST+1,sp)
 325                     ; 89 	for (count = 0;count < 8;count++)
 327  00a3 0c01          	inc	(OFST+0,sp)
 330  00a5 7b01          	ld	a,(OFST+0,sp)
 331  00a7 a108          	cp	a,#8
 332  00a9 25be          	jrult	L511
 333                     ; 105 	GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
 335  00ab 4b20          	push	#32
 336  00ad ae5005        	ldw	x,#20485
 337  00b0 8d000000      	callf	f_GPIO_WriteHigh
 339  00b4 84            	pop	a
 340                     ; 106 	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_IN_FL_NO_IT);
 342  00b5 4b00          	push	#0
 343  00b7 4b20          	push	#32
 344  00b9 ae5005        	ldw	x,#20485
 345  00bc 8d000000      	callf	f_GPIO_Init
 347  00c0 85            	popw	x
 348                     ; 107 	_Delay_5us();
 350  00c1 8d000000      	callf	L71f__Delay_5us
 352                     ; 108 	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
 354  00c5 4b10          	push	#16
 355  00c7 ae5005        	ldw	x,#20485
 356  00ca 8d000000      	callf	f_GPIO_WriteHigh
 358  00ce 84            	pop	a
 359                     ; 109 	for (count = 0;count < IIC_ACK_TIMEOUT;count++)
 361  00cf 0f01          	clr	(OFST+0,sp)
 362  00d1               L721:
 363                     ; 111 		if (GPIO_ReadInputPin(IIC_SDA_PORT, IIC_SDA_PIN) == 0)
 365  00d1 4b20          	push	#32
 366  00d3 ae5005        	ldw	x,#20485
 367  00d6 8d000000      	callf	f_GPIO_ReadInputPin
 369  00da 5b01          	addw	sp,#1
 370  00dc 4d            	tnz	a
 371  00dd 261a          	jrne	L531
 372                     ; 113 			GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
 374  00df 4b10          	push	#16
 375  00e1 ae5005        	ldw	x,#20485
 376  00e4 8d000000      	callf	f_GPIO_WriteLow
 378  00e8 84            	pop	a
 379                     ; 114 			GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_OUT_OD_LOW_FAST);
 381  00e9 4ba0          	push	#160
 382  00eb 4b20          	push	#32
 383  00ed ae5005        	ldw	x,#20485
 384  00f0 8d000000      	callf	f_GPIO_Init
 386  00f4 85            	popw	x
 387                     ; 115 			return IIC_OK;
 389  00f5 a601          	ld	a,#1
 391  00f7 201f          	jra	L41
 392  00f9               L531:
 393                     ; 109 	for (count = 0;count < IIC_ACK_TIMEOUT;count++)
 395  00f9 0c01          	inc	(OFST+0,sp)
 398  00fb 7b01          	ld	a,(OFST+0,sp)
 399  00fd a132          	cp	a,#50
 400  00ff 25d0          	jrult	L721
 401                     ; 118 	GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
 403  0101 4b10          	push	#16
 404  0103 ae5005        	ldw	x,#20485
 405  0106 8d000000      	callf	f_GPIO_WriteLow
 407  010a 84            	pop	a
 408                     ; 119 	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
 410  010b 4bb0          	push	#176
 411  010d 4b20          	push	#32
 412  010f ae5005        	ldw	x,#20485
 413  0112 8d000000      	callf	f_GPIO_Init
 415  0116 85            	popw	x
 416                     ; 121 	return IIC_FAIL;
 418  0117 4f            	clr	a
 420  0118               L41:
 422  0118 85            	popw	x
 423  0119 87            	retf
 480                     ; 125 static u8 _SWI2C_ReceiveByte(u8 send_ack)
 480                     ; 126 {
 481                     	switch	.text
 482  011a               L731f__SWI2C_ReceiveByte:
 484  011a 88            	push	a
 485  011b 5203          	subw	sp,#3
 486       00000003      OFST:	set	3
 489                     ; 127 	u8 count, read, value = 0;
 491  011d 0f02          	clr	(OFST-1,sp)
 492                     ; 129 	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_IN_FL_NO_IT);
 494  011f 4b00          	push	#0
 495  0121 4b20          	push	#32
 496  0123 ae5005        	ldw	x,#20485
 497  0126 8d000000      	callf	f_GPIO_Init
 499  012a 85            	popw	x
 500                     ; 130 	for (count = 0;count < 8;count++)
 502  012b 0f01          	clr	(OFST-2,sp)
 503  012d               L361:
 504                     ; 132 		_Delay_5us();
 506  012d 8d000000      	callf	L71f__Delay_5us
 508                     ; 133 		GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
 510  0131 4b10          	push	#16
 511  0133 ae5005        	ldw	x,#20485
 512  0136 8d000000      	callf	f_GPIO_WriteHigh
 514  013a 84            	pop	a
 515                     ; 134 		if (GPIO_ReadInputPin(IIC_SDA_PORT, IIC_SDA_PIN))
 517  013b 4b20          	push	#32
 518  013d ae5005        	ldw	x,#20485
 519  0140 8d000000      	callf	f_GPIO_ReadInputPin
 521  0144 5b01          	addw	sp,#1
 522  0146 4d            	tnz	a
 523  0147 2706          	jreq	L171
 524                     ; 136 			read = 1;
 526  0149 a601          	ld	a,#1
 527  014b 6b03          	ld	(OFST+0,sp),a
 529  014d 2002          	jra	L371
 530  014f               L171:
 531                     ; 140 			read = 0;
 533  014f 0f03          	clr	(OFST+0,sp)
 534  0151               L371:
 535                     ; 142 		value = (value<<1)|read;
 537  0151 7b02          	ld	a,(OFST-1,sp)
 538  0153 48            	sll	a
 539  0154 1a03          	or	a,(OFST+0,sp)
 540  0156 6b02          	ld	(OFST-1,sp),a
 541                     ; 143 		_Delay_5us();
 543  0158 8d000000      	callf	L71f__Delay_5us
 545                     ; 144 		GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
 547  015c 4b10          	push	#16
 548  015e ae5005        	ldw	x,#20485
 549  0161 8d000000      	callf	f_GPIO_WriteLow
 551  0165 84            	pop	a
 552                     ; 130 	for (count = 0;count < 8;count++)
 554  0166 0c01          	inc	(OFST-2,sp)
 557  0168 7b01          	ld	a,(OFST-2,sp)
 558  016a a108          	cp	a,#8
 559  016c 25bf          	jrult	L361
 560                     ; 146 	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
 562  016e 4bb0          	push	#176
 563  0170 4b20          	push	#32
 564  0172 ae5005        	ldw	x,#20485
 565  0175 8d000000      	callf	f_GPIO_Init
 567  0179 85            	popw	x
 568                     ; 147 	if (send_ack)
 570  017a 0d04          	tnz	(OFST+1,sp)
 571  017c 270c          	jreq	L571
 572                     ; 149 		GPIO_WriteLow(IIC_SDA_PORT,IIC_SDA_PIN);
 574  017e 4b20          	push	#32
 575  0180 ae5005        	ldw	x,#20485
 576  0183 8d000000      	callf	f_GPIO_WriteLow
 578  0187 84            	pop	a
 580  0188 200a          	jra	L771
 581  018a               L571:
 582                     ; 153 		GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
 584  018a 4b20          	push	#32
 585  018c ae5005        	ldw	x,#20485
 586  018f 8d000000      	callf	f_GPIO_WriteHigh
 588  0193 84            	pop	a
 589  0194               L771:
 590                     ; 155 	_Delay_5us();
 592  0194 8d000000      	callf	L71f__Delay_5us
 594                     ; 156 	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
 596  0198 4b10          	push	#16
 597  019a ae5005        	ldw	x,#20485
 598  019d 8d000000      	callf	f_GPIO_WriteHigh
 600  01a1 84            	pop	a
 601                     ; 157 	_Delay_5us();
 603  01a2 8d000000      	callf	L71f__Delay_5us
 605                     ; 158 	GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
 607  01a6 4b10          	push	#16
 608  01a8 ae5005        	ldw	x,#20485
 609  01ab 8d000000      	callf	f_GPIO_WriteLow
 611  01af 84            	pop	a
 612                     ; 159 	_Delay_5us();
 614  01b0 8d000000      	callf	L71f__Delay_5us
 616                     ; 161 	return	value;		
 618  01b4 7b02          	ld	a,(OFST-1,sp)
 621  01b6 5b04          	addw	sp,#4
 622  01b8 87            	retf
 663                     ; 164 u8 SWI2C_TestDevice(u8 addr)
 663                     ; 165 {
 664                     	switch	.text
 665  01b9               f_SWI2C_TestDevice:
 667  01b9 88            	push	a
 668  01ba 88            	push	a
 669       00000001      OFST:	set	1
 672                     ; 167 	_SWI2C_Start();
 674  01bb 8d0d000d      	callf	L15f__SWI2C_Start
 676                     ; 168 	result = _SWI2C_SendByte(addr);
 678  01bf 7b02          	ld	a,(OFST+1,sp)
 679  01c1 8d650065      	callf	L57f__SWI2C_SendByte
 681  01c5 6b01          	ld	(OFST+0,sp),a
 682                     ; 169 	_SWI2C_Stop();
 684  01c7 8d3e003e      	callf	L36f__SWI2C_Stop
 686                     ; 171 	return result;
 688  01cb 7b01          	ld	a,(OFST+0,sp)
 691  01cd 85            	popw	x
 692  01ce 87            	retf
 741                     ; 174 u8 SWI2C_ReadByte(u8 addr, u8 subaddr, u8 * pValue)
 741                     ; 175 {
 742                     	switch	.text
 743  01cf               f_SWI2C_ReadByte:
 745  01cf 89            	pushw	x
 746       00000000      OFST:	set	0
 749                     ; 176 	return SWI2C_ReadBytes(addr, subaddr, 1, pValue);
 751  01d0 1e06          	ldw	x,(OFST+6,sp)
 752  01d2 89            	pushw	x
 753  01d3 4b01          	push	#1
 754  01d5 7b05          	ld	a,(OFST+5,sp)
 755  01d7 97            	ld	xl,a
 756  01d8 7b04          	ld	a,(OFST+4,sp)
 757  01da 95            	ld	xh,a
 758  01db 8de301e3      	callf	f_SWI2C_ReadBytes
 760  01df 5b03          	addw	sp,#3
 763  01e1 85            	popw	x
 764  01e2 87            	retf
 830                     ; 179 u8 SWI2C_ReadBytes(u8 addr, u8 subaddr, u8 number, u8 * p_data)
 830                     ; 180 {	
 831                     	switch	.text
 832  01e3               f_SWI2C_ReadBytes:
 834  01e3 89            	pushw	x
 835  01e4 88            	push	a
 836       00000001      OFST:	set	1
 839                     ; 182 	_SWI2C_Start();
 841  01e5 8d0d000d      	callf	L15f__SWI2C_Start
 843                     ; 183 	result = _SWI2C_SendByte(addr);
 845  01e9 7b02          	ld	a,(OFST+1,sp)
 846  01eb 8d650065      	callf	L57f__SWI2C_SendByte
 848  01ef 6b01          	ld	(OFST+0,sp),a
 849                     ; 184 	if (result == IIC_FAIL)
 851  01f1 0d01          	tnz	(OFST+0,sp)
 852  01f3 2608          	jrne	L762
 853                     ; 186 		_SWI2C_Stop();
 855  01f5 8d3e003e      	callf	L36f__SWI2C_Stop
 857                     ; 187 		return result;
 859  01f9 7b01          	ld	a,(OFST+0,sp)
 861  01fb 2012          	jra	L62
 862  01fd               L762:
 863                     ; 189 	result = _SWI2C_SendByte(subaddr);
 865  01fd 7b03          	ld	a,(OFST+2,sp)
 866  01ff 8d650065      	callf	L57f__SWI2C_SendByte
 868  0203 6b01          	ld	(OFST+0,sp),a
 869                     ; 190 	if (result == IIC_FAIL)
 871  0205 0d01          	tnz	(OFST+0,sp)
 872  0207 2609          	jrne	L172
 873                     ; 192 		_SWI2C_Stop();
 875  0209 8d3e003e      	callf	L36f__SWI2C_Stop
 877                     ; 193 		return result;
 879  020d 7b01          	ld	a,(OFST+0,sp)
 881  020f               L62:
 883  020f 5b03          	addw	sp,#3
 884  0211 87            	retf
 885  0212               L172:
 886                     ; 195 	_SWI2C_Start();
 888  0212 8d0d000d      	callf	L15f__SWI2C_Start
 890                     ; 196 	result = _SWI2C_SendByte(addr|0x01);
 892  0216 7b02          	ld	a,(OFST+1,sp)
 893  0218 aa01          	or	a,#1
 894  021a 8d650065      	callf	L57f__SWI2C_SendByte
 896  021e 6b01          	ld	(OFST+0,sp),a
 897                     ; 197 	if (result == IIC_FAIL)
 899  0220 0d01          	tnz	(OFST+0,sp)
 900  0222 2618          	jrne	L772
 901                     ; 199 		_SWI2C_Stop();
 903  0224 8d3e003e      	callf	L36f__SWI2C_Stop
 905                     ; 200 		return result;
 907  0228 7b01          	ld	a,(OFST+0,sp)
 909  022a 20e3          	jra	L62
 910  022c               L572:
 911                     ; 204 		*p_data = _SWI2C_ReceiveByte(number);
 913  022c 7b07          	ld	a,(OFST+6,sp)
 914  022e 8d1a011a      	callf	L731f__SWI2C_ReceiveByte
 916  0232 1e08          	ldw	x,(OFST+7,sp)
 917  0234 f7            	ld	(x),a
 918                     ; 205 		p_data++;
 920  0235 1e08          	ldw	x,(OFST+7,sp)
 921  0237 1c0001        	addw	x,#1
 922  023a 1f08          	ldw	(OFST+7,sp),x
 923  023c               L772:
 924                     ; 202 	while (number--)
 926  023c 7b07          	ld	a,(OFST+6,sp)
 927  023e 0a07          	dec	(OFST+6,sp)
 928  0240 4d            	tnz	a
 929  0241 26e9          	jrne	L572
 930                     ; 207 	_SWI2C_Stop();
 932  0243 8d3e003e      	callf	L36f__SWI2C_Stop
 934                     ; 209 	return IIC_OK;
 936  0247 a601          	ld	a,#1
 938  0249 20c4          	jra	L62
 984                     ; 212 u8 SWI2C_WriteByte(u8 addr, u8 subaddr, u8 value)
 984                     ; 213 {	
 985                     	switch	.text
 986  024b               f_SWI2C_WriteByte:
 988  024b 89            	pushw	x
 989       00000000      OFST:	set	0
 992                     ; 214 	return SWI2C_WriteBytes(addr, subaddr, 1, &value);
 994  024c 96            	ldw	x,sp
 995  024d 1c0006        	addw	x,#OFST+6
 996  0250 89            	pushw	x
 997  0251 4b01          	push	#1
 998  0253 7b05          	ld	a,(OFST+5,sp)
 999  0255 97            	ld	xl,a
1000  0256 7b04          	ld	a,(OFST+4,sp)
1001  0258 95            	ld	xh,a
1002  0259 8dc002c0      	callf	f_SWI2C_WriteBytes
1004  025d 5b03          	addw	sp,#3
1007  025f 85            	popw	x
1008  0260 87            	retf
1063                     ; 217 u8 SWI2C_Write2Byte(u8 addr, u8 subaddr, u16 data) 
1063                     ; 218 {
1064                     	switch	.text
1065  0261               f_SWI2C_Write2Byte:
1067  0261 89            	pushw	x
1068  0262 88            	push	a
1069       00000001      OFST:	set	1
1072                     ; 220 	_SWI2C_Start();                              
1074  0263 8d0d000d      	callf	L15f__SWI2C_Start
1076                     ; 221 	result = _SWI2C_SendByte(addr);  
1078  0267 7b02          	ld	a,(OFST+1,sp)
1079  0269 8d650065      	callf	L57f__SWI2C_SendByte
1081  026d 6b01          	ld	(OFST+0,sp),a
1082                     ; 222 	if (result == IIC_FAIL)
1084  026f 0d01          	tnz	(OFST+0,sp)
1085  0271 2608          	jrne	L543
1086                     ; 224 		_SWI2C_Stop();
1088  0273 8d3e003e      	callf	L36f__SWI2C_Stop
1090                     ; 225 		return result;
1092  0277 7b01          	ld	a,(OFST+0,sp)
1094  0279 2012          	jra	L43
1095  027b               L543:
1096                     ; 227 	result = _SWI2C_SendByte(subaddr);     
1098  027b 7b03          	ld	a,(OFST+2,sp)
1099  027d 8d650065      	callf	L57f__SWI2C_SendByte
1101  0281 6b01          	ld	(OFST+0,sp),a
1102                     ; 228 	if (result == IIC_FAIL)
1104  0283 0d01          	tnz	(OFST+0,sp)
1105  0285 2609          	jrne	L743
1106                     ; 230 		_SWI2C_Stop();
1108  0287 8d3e003e      	callf	L36f__SWI2C_Stop
1110                     ; 231 		return result;
1112  028b 7b01          	ld	a,(OFST+0,sp)
1114  028d               L43:
1116  028d 5b03          	addw	sp,#3
1117  028f 87            	retf
1118  0290               L743:
1119                     ; 233 	result = _SWI2C_SendByte(data>>8);     
1121  0290 7b07          	ld	a,(OFST+6,sp)
1122  0292 8d650065      	callf	L57f__SWI2C_SendByte
1124  0296 6b01          	ld	(OFST+0,sp),a
1125                     ; 234 	if (result == IIC_FAIL)
1127  0298 0d01          	tnz	(OFST+0,sp)
1128  029a 2608          	jrne	L153
1129                     ; 236 		_SWI2C_Stop();
1131  029c 8d3e003e      	callf	L36f__SWI2C_Stop
1133                     ; 237 		return result;
1135  02a0 7b01          	ld	a,(OFST+0,sp)
1137  02a2 20e9          	jra	L43
1138  02a4               L153:
1139                     ; 239 	result = _SWI2C_SendByte(data);   
1141  02a4 7b08          	ld	a,(OFST+7,sp)
1142  02a6 8d650065      	callf	L57f__SWI2C_SendByte
1144  02aa 6b01          	ld	(OFST+0,sp),a
1145                     ; 240 	if (result == IIC_FAIL)
1147  02ac 0d01          	tnz	(OFST+0,sp)
1148  02ae 2608          	jrne	L353
1149                     ; 242 		_SWI2C_Stop();
1151  02b0 8d3e003e      	callf	L36f__SWI2C_Stop
1153                     ; 243 		return result;
1155  02b4 7b01          	ld	a,(OFST+0,sp)
1157  02b6 20d5          	jra	L43
1158  02b8               L353:
1159                     ; 245 	_SWI2C_Stop();    
1161  02b8 8d3e003e      	callf	L36f__SWI2C_Stop
1163                     ; 246 	return IIC_OK;
1165  02bc a601          	ld	a,#1
1167  02be 20cd          	jra	L43
1232                     ; 249 u8 SWI2C_WriteBytes(u8 addr, u8 subaddr, u8 number, u8 * p_data)
1232                     ; 250 {
1233                     	switch	.text
1234  02c0               f_SWI2C_WriteBytes:
1236  02c0 89            	pushw	x
1237  02c1 88            	push	a
1238       00000001      OFST:	set	1
1241                     ; 252 	_SWI2C_Start();
1243  02c2 8d0d000d      	callf	L15f__SWI2C_Start
1245                     ; 253 	result = _SWI2C_SendByte(addr);
1247  02c6 7b02          	ld	a,(OFST+1,sp)
1248  02c8 8d650065      	callf	L57f__SWI2C_SendByte
1250  02cc 6b01          	ld	(OFST+0,sp),a
1251                     ; 254 	if (result == IIC_FAIL)
1253  02ce 0d01          	tnz	(OFST+0,sp)
1254  02d0 2608          	jrne	L304
1255                     ; 256 		_SWI2C_Stop();
1257  02d2 8d3e003e      	callf	L36f__SWI2C_Stop
1259                     ; 257 		return result;
1261  02d6 7b01          	ld	a,(OFST+0,sp)
1263  02d8 2012          	jra	L04
1264  02da               L304:
1265                     ; 259 	result = _SWI2C_SendByte(subaddr);
1267  02da 7b03          	ld	a,(OFST+2,sp)
1268  02dc 8d650065      	callf	L57f__SWI2C_SendByte
1270  02e0 6b01          	ld	(OFST+0,sp),a
1271                     ; 260 	if (result == IIC_FAIL)
1273  02e2 0d01          	tnz	(OFST+0,sp)
1274  02e4 2625          	jrne	L114
1275                     ; 262 		_SWI2C_Stop();
1277  02e6 8d3e003e      	callf	L36f__SWI2C_Stop
1279                     ; 263 		return result;
1281  02ea 7b01          	ld	a,(OFST+0,sp)
1283  02ec               L04:
1285  02ec 5b03          	addw	sp,#3
1286  02ee 87            	retf
1287  02ef               L704:
1288                     ; 267 		result = _SWI2C_SendByte(*p_data);
1290  02ef 1e08          	ldw	x,(OFST+7,sp)
1291  02f1 f6            	ld	a,(x)
1292  02f2 8d650065      	callf	L57f__SWI2C_SendByte
1294  02f6 6b01          	ld	(OFST+0,sp),a
1295                     ; 268 		if (result == IIC_FAIL)
1297  02f8 0d01          	tnz	(OFST+0,sp)
1298  02fa 2608          	jrne	L514
1299                     ; 270 		_SWI2C_Stop();
1301  02fc 8d3e003e      	callf	L36f__SWI2C_Stop
1303                     ; 271 		return result;
1305  0300 7b01          	ld	a,(OFST+0,sp)
1307  0302 20e8          	jra	L04
1308  0304               L514:
1309                     ; 273 		p_data++;
1311  0304 1e08          	ldw	x,(OFST+7,sp)
1312  0306 1c0001        	addw	x,#1
1313  0309 1f08          	ldw	(OFST+7,sp),x
1314  030b               L114:
1315                     ; 265 	while (number--)
1317  030b 7b07          	ld	a,(OFST+6,sp)
1318  030d 0a07          	dec	(OFST+6,sp)
1319  030f 4d            	tnz	a
1320  0310 26dd          	jrne	L704
1321                     ; 275 	_SWI2C_Stop();
1323  0312 8d3e003e      	callf	L36f__SWI2C_Stop
1325                     ; 276 	return IIC_OK;
1327  0316 a601          	ld	a,#1
1329  0318 20d2          	jra	L04
1357                     ; 279 void SWI2C_Init(void)
1357                     ; 280 {
1358                     	switch	.text
1359  031a               f_SWI2C_Init:
1363                     ; 281 	GPIO_Init(IIC_SCL_PORT, IIC_SCL_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
1365  031a 4bb0          	push	#176
1366  031c 4b10          	push	#16
1367  031e ae5005        	ldw	x,#20485
1368  0321 8d000000      	callf	f_GPIO_Init
1370  0325 85            	popw	x
1371                     ; 282 	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
1373  0326 4bb0          	push	#176
1374  0328 4b20          	push	#32
1375  032a ae5005        	ldw	x,#20485
1376  032d 8d000000      	callf	f_GPIO_Init
1378  0331 85            	popw	x
1379                     ; 283 	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
1381  0332 4b10          	push	#16
1382  0334 ae5005        	ldw	x,#20485
1383  0337 8d000000      	callf	f_GPIO_WriteHigh
1385  033b 84            	pop	a
1386                     ; 284 	GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
1388  033c 4b20          	push	#32
1389  033e ae5005        	ldw	x,#20485
1390  0341 8d000000      	callf	f_GPIO_WriteHigh
1392  0345 84            	pop	a
1393                     ; 286 	GPIO_Init(POWER_ONOFF_PORT, POWER_ONOFF_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
1395  0346 4bf0          	push	#240
1396  0348 4b20          	push	#32
1397  034a ae500a        	ldw	x,#20490
1398  034d 8d000000      	callf	f_GPIO_Init
1400  0351 85            	popw	x
1401                     ; 288 	GPIO_Init(FPGA_RESET_PORT, FPGA_RESET_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
1403  0352 4bf0          	push	#240
1404  0354 4b10          	push	#16
1405  0356 ae500a        	ldw	x,#20490
1406  0359 8d000000      	callf	f_GPIO_Init
1408  035d 85            	popw	x
1409                     ; 289 	GPIO_Init(IT680X_RESET_PORT, IT680X_RESET_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
1411  035e 4bf0          	push	#240
1412  0360 4b01          	push	#1
1413  0362 ae5005        	ldw	x,#20485
1414  0365 8d000000      	callf	f_GPIO_Init
1416  0369 85            	popw	x
1417                     ; 291 	GPIO_Init(LED_R_PORT, LED_R_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);	
1419  036a 4bf0          	push	#240
1420  036c 4b01          	push	#1
1421  036e ae5014        	ldw	x,#20500
1422  0371 8d000000      	callf	f_GPIO_Init
1424  0375 85            	popw	x
1425                     ; 292 	GPIO_Init(LED_G_PORT, LED_G_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
1427  0376 4be0          	push	#224
1428  0378 4b08          	push	#8
1429  037a ae500f        	ldw	x,#20495
1430  037d 8d000000      	callf	f_GPIO_Init
1432  0381 85            	popw	x
1433                     ; 294 	GPIO_Init(HDMI_HOTPLUG_PORT, HDMI_HOTPLUG_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
1435  0382 4bf0          	push	#240
1436  0384 4b40          	push	#64
1437  0386 ae5005        	ldw	x,#20485
1438  0389 8d000000      	callf	f_GPIO_Init
1440  038d 85            	popw	x
1441                     ; 296 	GPIO_Init(BACKLIGHT_ONOFF_PORT, BACKLIGHT_ONOFF_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
1443  038e 4be0          	push	#224
1444  0390 4b80          	push	#128
1445  0392 ae500a        	ldw	x,#20490
1446  0395 8d000000      	callf	f_GPIO_Init
1448  0399 85            	popw	x
1449                     ; 297 	GPIO_Init(BACKLIGHT_PWM_PORT, BACKLIGHT_PWM_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
1451  039a 4bf0          	push	#240
1452  039c 4b40          	push	#64
1453  039e ae500a        	ldw	x,#20490
1454  03a1 8d000000      	callf	f_GPIO_Init
1456  03a5 85            	popw	x
1457                     ; 298 	GPIO_Init(VPANEL_ONOFF_PORT, VPANEL_ONOFF_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
1459  03a6 4be0          	push	#224
1460  03a8 4b01          	push	#1
1461  03aa ae501e        	ldw	x,#20510
1462  03ad 8d000000      	callf	f_GPIO_Init
1464  03b1 85            	popw	x
1465                     ; 300 	TIM1_TimeBaseInit(0, TIM1_COUNTERMODE_UP, 4095, 0);
1467  03b2 4b00          	push	#0
1468  03b4 ae0fff        	ldw	x,#4095
1469  03b7 89            	pushw	x
1470  03b8 4b00          	push	#0
1471  03ba 5f            	clrw	x
1472  03bb 8d000000      	callf	f_TIM1_TimeBaseInit
1474  03bf 5b04          	addw	sp,#4
1475                     ; 301 	TIM1_OC1Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE, TIM1_OUTPUTNSTATE_DISABLE,
1475                     ; 302 	           0, TIM1_OCPOLARITY_LOW, TIM1_OCNPOLARITY_HIGH, TIM1_OCIDLESTATE_SET,
1475                     ; 303 	           TIM1_OCNIDLESTATE_RESET);
1477  03c1 4b00          	push	#0
1478  03c3 4b55          	push	#85
1479  03c5 4b00          	push	#0
1480  03c7 4b22          	push	#34
1481  03c9 5f            	clrw	x
1482  03ca 89            	pushw	x
1483  03cb 4b00          	push	#0
1484  03cd ae0011        	ldw	x,#17
1485  03d0 a670          	ld	a,#112
1486  03d2 95            	ld	xh,a
1487  03d3 8d000000      	callf	f_TIM1_OC1Init
1489  03d7 5b07          	addw	sp,#7
1490                     ; 304 	TIM1_Cmd(ENABLE);
1492  03d9 a601          	ld	a,#1
1493  03db 8d000000      	callf	f_TIM1_Cmd
1495                     ; 305 	TIM1_CtrlPWMOutputs(ENABLE);
1497  03df a601          	ld	a,#1
1498  03e1 8d000000      	callf	f_TIM1_CtrlPWMOutputs
1500                     ; 306 }
1503  03e5 87            	retf
1552                     .const:	section	.text
1553  0000               L64:
1554  0000 00000001      	dc.l	1
1555                     ; 308 void SWI2C_Update(void)
1555                     ; 309 {	
1556                     	switch	.text
1557  03e6               f_SWI2C_Update:
1559  03e6 89            	pushw	x
1560       00000002      OFST:	set	2
1563                     ; 310 	if (Backlight_on_timer == TIMER_EXPIRED)
1565  03e7 ae0004        	ldw	x,#L5_Backlight_on_timer
1566  03ea 8d000000      	callf	d_ltor
1568  03ee ae0000        	ldw	x,#L64
1569  03f1 8d000000      	callf	d_lcmp
1571  03f5 2616          	jrne	L544
1572                     ; 314 		GPIO_WriteLow(BACKLIGHT_ONOFF_PORT, BACKLIGHT_ONOFF_PIN);	
1574  03f7 4b80          	push	#128
1575  03f9 ae500a        	ldw	x,#20490
1576  03fc 8d000000      	callf	f_GPIO_WriteLow
1578  0400 84            	pop	a
1579                     ; 315 		Backlight_on_timer = TIMER_STOPPED;
1581  0401 ae0000        	ldw	x,#0
1582  0404 cf0006        	ldw	L5_Backlight_on_timer+2,x
1583  0407 ae0000        	ldw	x,#0
1584  040a cf0004        	ldw	L5_Backlight_on_timer,x
1585  040d               L544:
1586                     ; 318 	if (Power_status && !I2C_stop)
1588  040d 725d0009      	tnz	L11_Power_status
1589  0411 276d          	jreq	L744
1591  0413 725d000a      	tnz	L31_I2C_stop
1592  0417 2667          	jrne	L744
1593                     ; 320 		IT6802_fsm();
1595  0419 8d000000      	callf	f_IT6802_fsm
1597                     ; 322 		if (frc_update_timer == TIMER_EXPIRED && Have_FRC)
1599  041d ae0000        	ldw	x,#L3_frc_update_timer
1600  0420 8d000000      	callf	d_ltor
1602  0424 ae0000        	ldw	x,#L64
1603  0427 8d000000      	callf	d_lcmp
1605  042b 2653          	jrne	L744
1607  042d 725d0000      	tnz	L51_Have_FRC
1608  0431 274d          	jreq	L744
1609                     ; 325 			SWI2C_ReadByte(FRC_BOARD_ADDRESS, 0x18, &read_LVDS_mode);
1611  0433 96            	ldw	x,sp
1612  0434 1c0001        	addw	x,#OFST-1
1613  0437 89            	pushw	x
1614  0438 ae0018        	ldw	x,#24
1615  043b a622          	ld	a,#34
1616  043d 95            	ld	xh,a
1617  043e 8dcf01cf      	callf	f_SWI2C_ReadByte
1619  0442 85            	popw	x
1620                     ; 326 			if (read_LVDS_mode != LVDS_mode)
1622  0443 7b01          	ld	a,(OFST-1,sp)
1623  0445 c10008        	cp	a,L7_LVDS_mode
1624  0448 270e          	jreq	L354
1625                     ; 328 				SWI2C_WriteByte(FRC_BOARD_ADDRESS, 0x18, LVDS_mode);
1627  044a 3b0008        	push	L7_LVDS_mode
1628  044d ae0018        	ldw	x,#24
1629  0450 a622          	ld	a,#34
1630  0452 95            	ld	xh,a
1631  0453 8d4b024b      	callf	f_SWI2C_WriteByte
1633  0457 84            	pop	a
1634  0458               L354:
1635                     ; 330 			SWI2C_ReadByte(FRC_BOARD_ADDRESS, 0x0A, &read_MFC);
1637  0458 96            	ldw	x,sp
1638  0459 1c0002        	addw	x,#OFST+0
1639  045c 89            	pushw	x
1640  045d ae000a        	ldw	x,#10
1641  0460 a622          	ld	a,#34
1642  0462 95            	ld	xh,a
1643  0463 8dcf01cf      	callf	f_SWI2C_ReadByte
1645  0467 85            	popw	x
1646                     ; 331 			if (read_MFC != 0)
1648  0468 0d02          	tnz	(OFST+0,sp)
1649  046a 2714          	jreq	L744
1650                     ; 333 				IR_DelayNMiliseconds(50);
1652  046c ae0032        	ldw	x,#50
1653  046f 8d000000      	callf	f_IR_DelayNMiliseconds
1655                     ; 334 				SWI2C_WriteByte(FRC_BOARD_ADDRESS, 0x0A, 0);
1657  0473 4b00          	push	#0
1658  0475 ae000a        	ldw	x,#10
1659  0478 a622          	ld	a,#34
1660  047a 95            	ld	xh,a
1661  047b 8d4b024b      	callf	f_SWI2C_WriteByte
1663  047f 84            	pop	a
1664  0480               L744:
1665                     ; 338 }
1668  0480 85            	popw	x
1669  0481 87            	retf
1701                     ; 340 void SWI2C_SystemPowerUp(void)
1701                     ; 341 {
1702                     	switch	.text
1703  0482               f_SWI2C_SystemPowerUp:
1707                     ; 342 	GPIO_WriteLow(POWER_ONOFF_PORT, POWER_ONOFF_PIN);
1709  0482 4b20          	push	#32
1710  0484 ae500a        	ldw	x,#20490
1711  0487 8d000000      	callf	f_GPIO_WriteLow
1713  048b 84            	pop	a
1714                     ; 343 	GPIO_WriteLow(LED_R_PORT, LED_R_PIN);			
1716  048c 4b01          	push	#1
1717  048e ae5014        	ldw	x,#20500
1718  0491 8d000000      	callf	f_GPIO_WriteLow
1720  0495 84            	pop	a
1721                     ; 344 	GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
1723  0496 4b08          	push	#8
1724  0498 ae500f        	ldw	x,#20495
1725  049b 8d000000      	callf	f_GPIO_WriteHigh
1727  049f 84            	pop	a
1728                     ; 345 	IR_DelayNMiliseconds(50);
1730  04a0 ae0032        	ldw	x,#50
1731  04a3 8d000000      	callf	f_IR_DelayNMiliseconds
1733                     ; 346 	Power_status = TRUE;
1735  04a7 35010009      	mov	L11_Power_status,#1
1736                     ; 347 	GPIO_WriteLow(IT680X_RESET_PORT, IT680X_RESET_PIN);
1738  04ab 4b01          	push	#1
1739  04ad ae5005        	ldw	x,#20485
1740  04b0 8d000000      	callf	f_GPIO_WriteLow
1742  04b4 84            	pop	a
1743                     ; 348 	GPIO_WriteLow(FPGA_RESET_PORT, FPGA_RESET_PIN);
1745  04b5 4b10          	push	#16
1746  04b7 ae500a        	ldw	x,#20490
1747  04ba 8d000000      	callf	f_GPIO_WriteLow
1749  04be 84            	pop	a
1750                     ; 349 	IR_DelayNMiliseconds(200);
1752  04bf ae00c8        	ldw	x,#200
1753  04c2 8d000000      	callf	f_IR_DelayNMiliseconds
1755                     ; 350 	GPIO_WriteHigh(IT680X_RESET_PORT, IT680X_RESET_PIN);
1757  04c6 4b01          	push	#1
1758  04c8 ae5005        	ldw	x,#20485
1759  04cb 8d000000      	callf	f_GPIO_WriteHigh
1761  04cf 84            	pop	a
1762                     ; 351 	GPIO_WriteHigh(FPGA_RESET_PORT, FPGA_RESET_PIN);
1764  04d0 4b10          	push	#16
1765  04d2 ae500a        	ldw	x,#20490
1766  04d5 8d000000      	callf	f_GPIO_WriteHigh
1768  04d9 84            	pop	a
1769                     ; 352 	IR_DelayNMiliseconds(1000);
1771  04da ae03e8        	ldw	x,#1000
1772  04dd 8d000000      	callf	f_IR_DelayNMiliseconds
1774                     ; 353 	FPGA_Init();	
1776  04e1 8df505f5      	callf	f_FPGA_Init
1778                     ; 354 	IT6802_fsm_init();
1780  04e5 8d000000      	callf	f_IT6802_fsm_init
1782                     ; 355 	Have_FRC = SWI2C_TestDevice(FRC_BOARD_ADDRESS);
1784  04e9 a622          	ld	a,#34
1785  04eb 8db901b9      	callf	f_SWI2C_TestDevice
1787  04ef c70000        	ld	L51_Have_FRC,a
1788                     ; 356 	GPIO_WriteHigh(VPANEL_ONOFF_PORT, VPANEL_ONOFF_PIN);
1790  04f2 4b01          	push	#1
1791  04f4 ae501e        	ldw	x,#20510
1792  04f7 8d000000      	callf	f_GPIO_WriteHigh
1794  04fb 84            	pop	a
1795                     ; 357 	Backlight_on_timer = BACKLIGHT_DELAY_TIME;
1797  04fc ae1389        	ldw	x,#5001
1798  04ff cf0006        	ldw	L5_Backlight_on_timer+2,x
1799  0502 ae0000        	ldw	x,#0
1800  0505 cf0004        	ldw	L5_Backlight_on_timer,x
1801                     ; 358 }
1804  0508 87            	retf
1832                     ; 360 void SWI2C_SystemPowerDown(void)
1832                     ; 361 {
1833                     	switch	.text
1834  0509               f_SWI2C_SystemPowerDown:
1838                     ; 362 	GPIO_WriteHigh(BACKLIGHT_ONOFF_PORT, BACKLIGHT_ONOFF_PIN);
1840  0509 4b80          	push	#128
1841  050b ae500a        	ldw	x,#20490
1842  050e 8d000000      	callf	f_GPIO_WriteHigh
1844  0512 84            	pop	a
1845                     ; 363 	IR_DelayNMiliseconds(200);
1847  0513 ae00c8        	ldw	x,#200
1848  0516 8d000000      	callf	f_IR_DelayNMiliseconds
1850                     ; 364 	GPIO_WriteLow(VPANEL_ONOFF_PORT, VPANEL_ONOFF_PIN);
1852  051a 4b01          	push	#1
1853  051c ae501e        	ldw	x,#20510
1854  051f 8d000000      	callf	f_GPIO_WriteLow
1856  0523 84            	pop	a
1857                     ; 365 	GPIO_WriteHigh(POWER_ONOFF_PORT, POWER_ONOFF_PIN);
1859  0524 4b20          	push	#32
1860  0526 ae500a        	ldw	x,#20490
1861  0529 8d000000      	callf	f_GPIO_WriteHigh
1863  052d 84            	pop	a
1864                     ; 366 	GPIO_WriteHigh(LED_R_PORT, LED_R_PIN);			
1866  052e 4b01          	push	#1
1867  0530 ae5014        	ldw	x,#20500
1868  0533 8d000000      	callf	f_GPIO_WriteHigh
1870  0537 84            	pop	a
1871                     ; 367 	GPIO_WriteLow(LED_G_PORT, LED_G_PIN);
1873  0538 4b08          	push	#8
1874  053a ae500f        	ldw	x,#20495
1875  053d 8d000000      	callf	f_GPIO_WriteLow
1877  0541 84            	pop	a
1878                     ; 368 	Power_status = FALSE;
1880  0542 725f0009      	clr	L11_Power_status
1881                     ; 369 	I2C_stop = FALSE;
1883  0546 725f000a      	clr	L31_I2C_stop
1884                     ; 370 }
1887  054a 87            	retf
1914                     ; 372 void SWI2C_ToggleI2CMode(void)
1914                     ; 373 {
1915                     	switch	.text
1916  054b               f_SWI2C_ToggleI2CMode:
1920                     ; 374 	if (Power_status)
1922  054b 725d0009      	tnz	L11_Power_status
1923  054f 273e          	jreq	L705
1924                     ; 376 		I2C_stop = !I2C_stop;
1926  0551 725d000a      	tnz	L31_I2C_stop
1927  0555 2604          	jrne	L65
1928  0557 a601          	ld	a,#1
1929  0559 2001          	jra	L06
1930  055b               L65:
1931  055b 4f            	clr	a
1932  055c               L06:
1933  055c c7000a        	ld	L31_I2C_stop,a
1934                     ; 377 		if (I2C_stop)
1936  055f 725d000a      	tnz	L31_I2C_stop
1937  0563 2716          	jreq	L115
1938                     ; 379 			GPIO_WriteHigh(LED_R_PORT, LED_R_PIN);			
1940  0565 4b01          	push	#1
1941  0567 ae5014        	ldw	x,#20500
1942  056a 8d000000      	callf	f_GPIO_WriteHigh
1944  056e 84            	pop	a
1945                     ; 380 			GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
1947  056f 4b08          	push	#8
1948  0571 ae500f        	ldw	x,#20495
1949  0574 8d000000      	callf	f_GPIO_WriteHigh
1951  0578 84            	pop	a
1953  0579 2014          	jra	L705
1954  057b               L115:
1955                     ; 384 			GPIO_WriteLow(LED_R_PORT, LED_R_PIN);			
1957  057b 4b01          	push	#1
1958  057d ae5014        	ldw	x,#20500
1959  0580 8d000000      	callf	f_GPIO_WriteLow
1961  0584 84            	pop	a
1962                     ; 385 			GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
1964  0585 4b08          	push	#8
1965  0587 ae500f        	ldw	x,#20495
1966  058a 8d000000      	callf	f_GPIO_WriteHigh
1968  058e 84            	pop	a
1969  058f               L705:
1970                     ; 388 }
1973  058f 87            	retf
1998                     ; 390 void SWI2C_ProcessPower(void)
1998                     ; 391 {
1999                     	switch	.text
2000  0590               f_SWI2C_ProcessPower:
2004                     ; 392 	if (Power_status)
2006  0590 725d0009      	tnz	L11_Power_status
2007  0594 2706          	jreq	L525
2008                     ; 394 		SWI2C_SystemPowerDown();
2010  0596 8d090509      	callf	f_SWI2C_SystemPowerDown
2013  059a 2004          	jra	L725
2014  059c               L525:
2015                     ; 398 		SWI2C_SystemPowerUp();
2017  059c 8d820482      	callf	f_SWI2C_SystemPowerUp
2019  05a0               L725:
2020                     ; 400 }
2023  05a0 87            	retf
2025                     	switch	.data
2026  000b               L135_Set3DOn:
2027  000b 01            	dc.b	1
2080                     ; 404 static void SWI2C_Set3DOnOff(u8 OnOff)
2080                     ; 405 {
2081                     	switch	.text
2082  05a1               L335f_SWI2C_Set3DOnOff:
2084  05a1 5203          	subw	sp,#3
2085       00000003      OFST:	set	3
2088                     ; 407 	if (OnOff)
2090  05a3 4d            	tnz	a
2091  05a4 2706          	jreq	L755
2092                     ; 409 		reg_value = 0x80;
2094  05a6 a680          	ld	a,#128
2095  05a8 6b03          	ld	(OFST+0,sp),a
2097  05aa 2002          	jra	L165
2098  05ac               L755:
2099                     ; 413 		reg_value = 0x0;
2101  05ac 0f03          	clr	(OFST+0,sp)
2102  05ae               L165:
2103                     ; 415 	for (retry = 0; retry < 3; retry++)
2105  05ae 0f02          	clr	(OFST-1,sp)
2106  05b0               L365:
2107                     ; 418 		SWI2C_WriteByte(FPGA_ADDRESS, 0x57, reg_value);
2109  05b0 7b03          	ld	a,(OFST+0,sp)
2110  05b2 88            	push	a
2111  05b3 ae0057        	ldw	x,#87
2112  05b6 a6ba          	ld	a,#186
2113  05b8 95            	ld	xh,a
2114  05b9 8d4b024b      	callf	f_SWI2C_WriteByte
2116  05bd 84            	pop	a
2117                     ; 419 		SWI2C_ReadByte(FPGA_ADDRESS, 0x57, &value);
2119  05be 96            	ldw	x,sp
2120  05bf 1c0001        	addw	x,#OFST-2
2121  05c2 89            	pushw	x
2122  05c3 ae0057        	ldw	x,#87
2123  05c6 a6ba          	ld	a,#186
2124  05c8 95            	ld	xh,a
2125  05c9 8dcf01cf      	callf	f_SWI2C_ReadByte
2127  05cd 85            	popw	x
2128                     ; 420 		if (value == reg_value)
2130  05ce 7b01          	ld	a,(OFST-2,sp)
2131  05d0 1103          	cp	a,(OFST+0,sp)
2132  05d2 2708          	jreq	L765
2133                     ; 422 			break;
2135                     ; 415 	for (retry = 0; retry < 3; retry++)
2137  05d4 0c02          	inc	(OFST-1,sp)
2140  05d6 7b02          	ld	a,(OFST-1,sp)
2141  05d8 a103          	cp	a,#3
2142  05da 25d4          	jrult	L365
2143  05dc               L765:
2144                     ; 425 }
2147  05dc 5b03          	addw	sp,#3
2148  05de 87            	retf
2173                     ; 427 void SWI2C_Toggle3DOnOff(void)
2173                     ; 428 {	
2174                     	switch	.text
2175  05df               f_SWI2C_Toggle3DOnOff:
2179                     ; 429 	Set3DOn = !Set3DOn;
2181  05df 725d000b      	tnz	L135_Set3DOn
2182  05e3 2604          	jrne	L07
2183  05e5 a601          	ld	a,#1
2184  05e7 2001          	jra	L27
2185  05e9               L07:
2186  05e9 4f            	clr	a
2187  05ea               L27:
2188  05ea c7000b        	ld	L135_Set3DOn,a
2189                     ; 430 	SWI2C_Set3DOnOff(Set3DOn);
2191  05ed c6000b        	ld	a,L135_Set3DOn
2192  05f0 8da105a1      	callf	L335f_SWI2C_Set3DOnOff
2194                     ; 431 }
2197  05f4 87            	retf
2222                     ; 433 void FPGA_Init(void)
2222                     ; 434  {		
2223                     	switch	.text
2224  05f5               f_FPGA_Init:
2228                     ; 435 	SWI2C_WriteByte(FPGA_ADDRESS, 0x0D, 0x26);
2230  05f5 4b26          	push	#38
2231  05f7 ae000d        	ldw	x,#13
2232  05fa a6ba          	ld	a,#186
2233  05fc 95            	ld	xh,a
2234  05fd 8d4b024b      	callf	f_SWI2C_WriteByte
2236  0601 84            	pop	a
2237                     ; 436 	SWI2C_WriteByte(FPGA_ADDRESS, 0x57, 0x80);
2239  0602 4b80          	push	#128
2240  0604 ae0057        	ldw	x,#87
2241  0607 a6ba          	ld	a,#186
2242  0609 95            	ld	xh,a
2243  060a 8d4b024b      	callf	f_SWI2C_WriteByte
2245  060e 84            	pop	a
2246                     ; 437  	SWI2C_WriteByte(FPGA_ADDRESS, 0x58, 0x17);	
2248  060f 4b17          	push	#23
2249  0611 ae0058        	ldw	x,#88
2250  0614 a6ba          	ld	a,#186
2251  0616 95            	ld	xh,a
2252  0617 8d4b024b      	callf	f_SWI2C_WriteByte
2254  061b 84            	pop	a
2255                     ; 438  	SWI2C_WriteByte(FPGA_ADDRESS, 0x47, 0x10); 
2257  061c 4b10          	push	#16
2258  061e ae0047        	ldw	x,#71
2259  0621 a6ba          	ld	a,#186
2260  0623 95            	ld	xh,a
2261  0624 8d4b024b      	callf	f_SWI2C_WriteByte
2263  0628 84            	pop	a
2264                     ; 439 	SWI2C_WriteByte(FPGA_ADDRESS, 0x48, 0x01); 
2266  0629 4b01          	push	#1
2267  062b ae0048        	ldw	x,#72
2268  062e a6ba          	ld	a,#186
2269  0630 95            	ld	xh,a
2270  0631 8d4b024b      	callf	f_SWI2C_WriteByte
2272  0635 84            	pop	a
2273                     ; 441 	SWI2C_WriteByte(FPGA_ADDRESS, 0x49, 0x85);
2275  0636 4b85          	push	#133
2276  0638 ae0049        	ldw	x,#73
2277  063b a6ba          	ld	a,#186
2278  063d 95            	ld	xh,a
2279  063e 8d4b024b      	callf	f_SWI2C_WriteByte
2281  0642 84            	pop	a
2282                     ; 443 	SWI2C_WriteByte(FPGA_ADDRESS, 0xc9, 0x05);
2284  0643 4b05          	push	#5
2285  0645 ae00c9        	ldw	x,#201
2286  0648 a6ba          	ld	a,#186
2287  064a 95            	ld	xh,a
2288  064b 8d4b024b      	callf	f_SWI2C_WriteByte
2290  064f 84            	pop	a
2291                     ; 444 	SWI2C_WriteByte(FPGA_ADDRESS, 0xc8, 0x05);
2293  0650 4b05          	push	#5
2294  0652 ae00c8        	ldw	x,#200
2295  0655 a6ba          	ld	a,#186
2296  0657 95            	ld	xh,a
2297  0658 8d4b024b      	callf	f_SWI2C_WriteByte
2299  065c 84            	pop	a
2300                     ; 445 	SWI2C_WriteByte(FPGA_ADDRESS, 0xcb, 0);
2302  065d 4b00          	push	#0
2303  065f ae00cb        	ldw	x,#203
2304  0662 a6ba          	ld	a,#186
2305  0664 95            	ld	xh,a
2306  0665 8d4b024b      	callf	f_SWI2C_WriteByte
2308  0669 84            	pop	a
2309                     ; 446 	SWI2C_WriteByte(FPGA_ADDRESS, 0xca, 0x19);	
2311  066a 4b19          	push	#25
2312  066c ae00ca        	ldw	x,#202
2313  066f a6ba          	ld	a,#186
2314  0671 95            	ld	xh,a
2315  0672 8d4b024b      	callf	f_SWI2C_WriteByte
2317  0676 84            	pop	a
2318                     ; 448 	SWI2C_WriteByte(FPGA_ADDRESS, 0x59, 0x40);
2320  0677 4b40          	push	#64
2321  0679 ae0059        	ldw	x,#89
2322  067c a6ba          	ld	a,#186
2323  067e 95            	ld	xh,a
2324  067f 8d4b024b      	callf	f_SWI2C_WriteByte
2326  0683 84            	pop	a
2327                     ; 449 	SWI2C_WriteByte(FPGA_ADDRESS, 0x5A, 0x80);
2329  0684 4b80          	push	#128
2330  0686 ae005a        	ldw	x,#90
2331  0689 a6ba          	ld	a,#186
2332  068b 95            	ld	xh,a
2333  068c 8d4b024b      	callf	f_SWI2C_WriteByte
2335  0690 84            	pop	a
2336                     ; 450 	SWI2C_WriteByte(FPGA_ADDRESS, 0x5c, 0x80);
2338  0691 4b80          	push	#128
2339  0693 ae005c        	ldw	x,#92
2340  0696 a6ba          	ld	a,#186
2341  0698 95            	ld	xh,a
2342  0699 8d4b024b      	callf	f_SWI2C_WriteByte
2344  069d 84            	pop	a
2345                     ; 453 	SWI2C_Set3DOnOff(Set3DOn);	
2347  069e c6000b        	ld	a,L135_Set3DOn
2348  06a1 8da105a1      	callf	L335f_SWI2C_Set3DOnOff
2350                     ; 454 }
2353  06a5 87            	retf
2386                     ; 456 void HDMI_HotPlug(u8 value)
2386                     ; 457 {
2387                     	switch	.text
2388  06a6               f_HDMI_HotPlug:
2392                     ; 458 	if (value)
2394  06a6 4d            	tnz	a
2395  06a7 270c          	jreq	L726
2396                     ; 460 		GPIO_WriteHigh(HDMI_HOTPLUG_PORT,HDMI_HOTPLUG_PIN);
2398  06a9 4b40          	push	#64
2399  06ab ae5005        	ldw	x,#20485
2400  06ae 8d000000      	callf	f_GPIO_WriteHigh
2402  06b2 84            	pop	a
2404  06b3 200a          	jra	L136
2405  06b5               L726:
2406                     ; 464 		GPIO_WriteLow(HDMI_HOTPLUG_PORT,HDMI_HOTPLUG_PIN);
2408  06b5 4b40          	push	#64
2409  06b7 ae5005        	ldw	x,#20485
2410  06ba 8d000000      	callf	f_GPIO_WriteLow
2412  06be 84            	pop	a
2413  06bf               L136:
2414                     ; 466 }
2417  06bf 87            	retf
2419                     	switch	.const
2420  0004               L336_deep_value:
2421  0004 30            	dc.b	48
2422  0005 80            	dc.b	128
2423  0006 60            	dc.b	96
2424  0007 50            	dc.b	80
2425  0008 70            	dc.b	112
2426  0009 70            	dc.b	112
2427  000a 70            	dc.b	112
2428  000b 60            	dc.b	96
2429  000c 80            	dc.b	128
2430  000d 90            	dc.b	144
2431  000e 50            	dc.b	80
2432  000f 90            	dc.b	144
2433  0010 a0            	dc.b	160
2434  0011 40            	dc.b	64
2435  0012 a0            	dc.b	160
2436  0013 a8            	dc.b	168
2437  0014 30            	dc.b	48
2438  0015 a0            	dc.b	160
2470                     ; 478 void SWI2C_Set_deep(u8 deep)
2470                     ; 479 {
2471                     	switch	.text
2472  06c0               f_SWI2C_Set_deep:
2474  06c0 88            	push	a
2475       00000000      OFST:	set	0
2478                     ; 480 	SWI2C_WriteByte(FPGA_ADDRESS, 0x59, deep_value[deep][0]);
2480  06c1 97            	ld	xl,a
2481  06c2 a603          	ld	a,#3
2482  06c4 42            	mul	x,a
2483  06c5 d60004        	ld	a,(L336_deep_value,x)
2484  06c8 88            	push	a
2485  06c9 ae0059        	ldw	x,#89
2486  06cc a6ba          	ld	a,#186
2487  06ce 95            	ld	xh,a
2488  06cf 8d4b024b      	callf	f_SWI2C_WriteByte
2490  06d3 84            	pop	a
2491                     ; 481 	SWI2C_WriteByte(FPGA_ADDRESS, 0x5C, deep_value[deep][1]);
2493  06d4 7b01          	ld	a,(OFST+1,sp)
2494  06d6 97            	ld	xl,a
2495  06d7 a603          	ld	a,#3
2496  06d9 42            	mul	x,a
2497  06da d60005        	ld	a,(L336_deep_value+1,x)
2498  06dd 88            	push	a
2499  06de ae005c        	ldw	x,#92
2500  06e1 a6ba          	ld	a,#186
2501  06e3 95            	ld	xh,a
2502  06e4 8d4b024b      	callf	f_SWI2C_WriteByte
2504  06e8 84            	pop	a
2505                     ; 482 	SWI2C_WriteByte(FPGA_ADDRESS, 0x5A, deep_value[deep][2]);
2507  06e9 7b01          	ld	a,(OFST+1,sp)
2508  06eb 97            	ld	xl,a
2509  06ec a603          	ld	a,#3
2510  06ee 42            	mul	x,a
2511  06ef d60006        	ld	a,(L336_deep_value+2,x)
2512  06f2 88            	push	a
2513  06f3 ae005a        	ldw	x,#90
2514  06f6 a6ba          	ld	a,#186
2515  06f8 95            	ld	xh,a
2516  06f9 8d4b024b      	callf	f_SWI2C_WriteByte
2518  06fd 84            	pop	a
2519                     ; 483 }
2522  06fe 84            	pop	a
2523  06ff 87            	retf
2547                     	switch	.const
2548  0016               L401:
2549  0016 00000002      	dc.l	2
2550                     ; 485 void SWI2C_UpdateTimer(void)
2550                     ; 486 {
2551                     	switch	.text
2552  0700               f_SWI2C_UpdateTimer:
2556                     ; 487 	if (frc_update_timer > TIMER_EXPIRED)
2558  0700 ae0000        	ldw	x,#L3_frc_update_timer
2559  0703 8d000000      	callf	d_ltor
2561  0707 ae0016        	ldw	x,#L401
2562  070a 8d000000      	callf	d_lcmp
2564  070e 2509          	jrult	L166
2565                     ; 489 		frc_update_timer--;
2567  0710 ae0000        	ldw	x,#L3_frc_update_timer
2568  0713 a601          	ld	a,#1
2569  0715 8d000000      	callf	d_lgsbc
2571  0719               L166:
2572                     ; 491 	if (Backlight_on_timer > TIMER_EXPIRED)
2574  0719 ae0004        	ldw	x,#L5_Backlight_on_timer
2575  071c 8d000000      	callf	d_ltor
2577  0720 ae0016        	ldw	x,#L401
2578  0723 8d000000      	callf	d_lcmp
2580  0727 2509          	jrult	L366
2581                     ; 493 		Backlight_on_timer--;
2583  0729 ae0004        	ldw	x,#L5_Backlight_on_timer
2584  072c a601          	ld	a,#1
2585  072e 8d000000      	callf	d_lgsbc
2587  0732               L366:
2588                     ; 495 }
2591  0732 87            	retf
2665                     	switch	.bss
2666  0000               L51_Have_FRC:
2667  0000 00            	ds.b	1
2668                     	xref	f_IT6802_fsm
2669                     	xref	f_IT6802_fsm_init
2670                     	xdef	f_SWI2C_UpdateTimer
2671                     	xdef	f_SWI2C_Set_deep
2672                     	xdef	f_SWI2C_Toggle3DOnOff
2673                     	xdef	f_HDMI_HotPlug
2674                     	xdef	f_FPGA_Init
2675                     	xdef	f_SWI2C_TestDevice
2676                     	xdef	f_SWI2C_Write2Byte
2677                     	xdef	f_SWI2C_WriteBytes
2678                     	xdef	f_SWI2C_WriteByte
2679                     	xdef	f_SWI2C_ReadBytes
2680                     	xdef	f_SWI2C_ReadByte
2681                     	xdef	f_SWI2C_ToggleI2CMode
2682                     	xdef	f_SWI2C_ProcessPower
2683                     	xdef	f_SWI2C_SystemPowerDown
2684                     	xdef	f_SWI2C_SystemPowerUp
2685                     	xdef	f_SWI2C_Update
2686                     	xdef	f_SWI2C_Init
2687                     	xref	f_IR_DelayNMiliseconds
2688                     	xref	f_TIM1_CtrlPWMOutputs
2689                     	xref	f_TIM1_Cmd
2690                     	xref	f_TIM1_OC1Init
2691                     	xref	f_TIM1_TimeBaseInit
2692                     	xref	f_GPIO_ReadInputPin
2693                     	xref	f_GPIO_WriteLow
2694                     	xref	f_GPIO_WriteHigh
2695                     	xref	f_GPIO_Init
2715                     	xref	d_lgsbc
2716                     	xref	d_lcmp
2717                     	xref	d_ltor
2718                     	end
