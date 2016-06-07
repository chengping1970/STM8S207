   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  15                     	switch	.data
  16  0000               L3_frc_update_timer:
  17  0000 00000001      	dc.l	1
  18  0004               L5_Backlight_on_timer:
  19  0004 00000000      	dc.l	0
  20  0008               L7_signal_detect_timer:
  21  0008 00000001      	dc.l	1
  22  000c               L11_LVDS_mode:
  23  000c 00            	dc.b	0
  24  000d               L31_Power_status:
  25  000d 00            	dc.b	0
  26  000e               L51_run_status:
  27  000e 00            	dc.b	0
  28  000f               L32_I2C_stop:
  29  000f 00            	dc.b	0
  67                     ; 157 static void _Delay_5us(void)
  67                     ; 158 {
  68                     	switch	.text
  69  0000               L72f__Delay_5us:
  71  0000 88            	push	a
  72       00000001      OFST:	set	1
  75                     ; 160    	for (i = 0;i < 10;i++);
  77  0001 0f01          	clr	(OFST+0,sp)
  78  0003               L35:
  82  0003 0c01          	inc	(OFST+0,sp)
  85  0005 7b01          	ld	a,(OFST+0,sp)
  86  0007 a10a          	cp	a,#10
  87  0009 25f8          	jrult	L35
  88                     ; 161 }
  91  000b 84            	pop	a
  92  000c 87            	retf
 117                     ; 163 static void _SWI2C_Start(void)
 117                     ; 164 {
 118                     	switch	.text
 119  000d               L16f__SWI2C_Start:
 123                     ; 165 	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
 125  000d 4b10          	push	#16
 126  000f ae5005        	ldw	x,#20485
 127  0012 8d000000      	callf	f_GPIO_WriteHigh
 129  0016 84            	pop	a
 130                     ; 166 	GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
 132  0017 4b20          	push	#32
 133  0019 ae5005        	ldw	x,#20485
 134  001c 8d000000      	callf	f_GPIO_WriteHigh
 136  0020 84            	pop	a
 137                     ; 167 	_Delay_5us();
 139  0021 8d000000      	callf	L72f__Delay_5us
 141                     ; 168 	GPIO_WriteLow(IIC_SDA_PORT,IIC_SDA_PIN);
 143  0025 4b20          	push	#32
 144  0027 ae5005        	ldw	x,#20485
 145  002a 8d000000      	callf	f_GPIO_WriteLow
 147  002e 84            	pop	a
 148                     ; 169 	_Delay_5us();
 150  002f 8d000000      	callf	L72f__Delay_5us
 152                     ; 170 	GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
 154  0033 4b10          	push	#16
 155  0035 ae5005        	ldw	x,#20485
 156  0038 8d000000      	callf	f_GPIO_WriteLow
 158  003c 84            	pop	a
 159                     ; 171 }
 162  003d 87            	retf
 187                     ; 173 static void _SWI2C_Stop(void)
 187                     ; 174 {
 188                     	switch	.text
 189  003e               L37f__SWI2C_Stop:
 193                     ; 175 	GPIO_WriteLow(IIC_SDA_PORT,IIC_SDA_PIN);
 195  003e 4b20          	push	#32
 196  0040 ae5005        	ldw	x,#20485
 197  0043 8d000000      	callf	f_GPIO_WriteLow
 199  0047 84            	pop	a
 200                     ; 176 	_Delay_5us();
 202  0048 8d000000      	callf	L72f__Delay_5us
 204                     ; 177 	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
 206  004c 4b10          	push	#16
 207  004e ae5005        	ldw	x,#20485
 208  0051 8d000000      	callf	f_GPIO_WriteHigh
 210  0055 84            	pop	a
 211                     ; 178 	_Delay_5us();
 213  0056 8d000000      	callf	L72f__Delay_5us
 215                     ; 179 	GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
 217  005a 4b20          	push	#32
 218  005c ae5005        	ldw	x,#20485
 219  005f 8d000000      	callf	f_GPIO_WriteHigh
 221  0063 84            	pop	a
 222                     ; 180 }
 225  0064 87            	retf
 268                     ; 182 static u8 _SWI2C_SendByte(u8 value)
 268                     ; 183 {
 269                     	switch	.text
 270  0065               L501f__SWI2C_SendByte:
 272  0065 88            	push	a
 273  0066 88            	push	a
 274       00000001      OFST:	set	1
 277                     ; 186 	for (count = 0;count < 8;count++)
 279  0067 0f01          	clr	(OFST+0,sp)
 280  0069               L521:
 281                     ; 188 		if (value&0x80)
 283  0069 7b02          	ld	a,(OFST+1,sp)
 284  006b a580          	bcp	a,#128
 285  006d 270c          	jreq	L331
 286                     ; 190 			GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
 288  006f 4b20          	push	#32
 289  0071 ae5005        	ldw	x,#20485
 290  0074 8d000000      	callf	f_GPIO_WriteHigh
 292  0078 84            	pop	a
 294  0079 200a          	jra	L531
 295  007b               L331:
 296                     ; 194 			GPIO_WriteLow(IIC_SDA_PORT,IIC_SDA_PIN);
 298  007b 4b20          	push	#32
 299  007d ae5005        	ldw	x,#20485
 300  0080 8d000000      	callf	f_GPIO_WriteLow
 302  0084 84            	pop	a
 303  0085               L531:
 304                     ; 196 		_Delay_5us();
 306  0085 8d000000      	callf	L72f__Delay_5us
 308                     ; 197 		GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
 310  0089 4b10          	push	#16
 311  008b ae5005        	ldw	x,#20485
 312  008e 8d000000      	callf	f_GPIO_WriteHigh
 314  0092 84            	pop	a
 315                     ; 198 		_Delay_5us();
 317  0093 8d000000      	callf	L72f__Delay_5us
 319                     ; 199 		GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
 321  0097 4b10          	push	#16
 322  0099 ae5005        	ldw	x,#20485
 323  009c 8d000000      	callf	f_GPIO_WriteLow
 325  00a0 84            	pop	a
 326                     ; 200 		value = value<<1;
 328  00a1 0802          	sll	(OFST+1,sp)
 329                     ; 186 	for (count = 0;count < 8;count++)
 331  00a3 0c01          	inc	(OFST+0,sp)
 334  00a5 7b01          	ld	a,(OFST+0,sp)
 335  00a7 a108          	cp	a,#8
 336  00a9 25be          	jrult	L521
 337                     ; 202 	GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
 339  00ab 4b20          	push	#32
 340  00ad ae5005        	ldw	x,#20485
 341  00b0 8d000000      	callf	f_GPIO_WriteHigh
 343  00b4 84            	pop	a
 344                     ; 203 	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_IN_FL_NO_IT);
 346  00b5 4b00          	push	#0
 347  00b7 4b20          	push	#32
 348  00b9 ae5005        	ldw	x,#20485
 349  00bc 8d000000      	callf	f_GPIO_Init
 351  00c0 85            	popw	x
 352                     ; 204 	_Delay_5us();
 354  00c1 8d000000      	callf	L72f__Delay_5us
 356                     ; 205 	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
 358  00c5 4b10          	push	#16
 359  00c7 ae5005        	ldw	x,#20485
 360  00ca 8d000000      	callf	f_GPIO_WriteHigh
 362  00ce 84            	pop	a
 363                     ; 206 	for (count = 0;count < IIC_ACK_TIMEOUT;count++)
 365  00cf 0f01          	clr	(OFST+0,sp)
 366  00d1               L731:
 367                     ; 208 		if (GPIO_ReadInputPin(IIC_SDA_PORT, IIC_SDA_PIN) == 0)
 369  00d1 4b20          	push	#32
 370  00d3 ae5005        	ldw	x,#20485
 371  00d6 8d000000      	callf	f_GPIO_ReadInputPin
 373  00da 5b01          	addw	sp,#1
 374  00dc 4d            	tnz	a
 375  00dd 261a          	jrne	L541
 376                     ; 210 			GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
 378  00df 4b10          	push	#16
 379  00e1 ae5005        	ldw	x,#20485
 380  00e4 8d000000      	callf	f_GPIO_WriteLow
 382  00e8 84            	pop	a
 383                     ; 211 			GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_OUT_OD_LOW_FAST);
 385  00e9 4ba0          	push	#160
 386  00eb 4b20          	push	#32
 387  00ed ae5005        	ldw	x,#20485
 388  00f0 8d000000      	callf	f_GPIO_Init
 390  00f4 85            	popw	x
 391                     ; 212 			return IIC_OK;
 393  00f5 a601          	ld	a,#1
 395  00f7 201f          	jra	L41
 396  00f9               L541:
 397                     ; 206 	for (count = 0;count < IIC_ACK_TIMEOUT;count++)
 399  00f9 0c01          	inc	(OFST+0,sp)
 402  00fb 7b01          	ld	a,(OFST+0,sp)
 403  00fd a132          	cp	a,#50
 404  00ff 25d0          	jrult	L731
 405                     ; 215 	GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
 407  0101 4b10          	push	#16
 408  0103 ae5005        	ldw	x,#20485
 409  0106 8d000000      	callf	f_GPIO_WriteLow
 411  010a 84            	pop	a
 412                     ; 216 	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
 414  010b 4bb0          	push	#176
 415  010d 4b20          	push	#32
 416  010f ae5005        	ldw	x,#20485
 417  0112 8d000000      	callf	f_GPIO_Init
 419  0116 85            	popw	x
 420                     ; 218 	return IIC_FAIL;
 422  0117 4f            	clr	a
 424  0118               L41:
 426  0118 85            	popw	x
 427  0119 87            	retf
 484                     ; 222 static u8 _SWI2C_ReceiveByte(u8 send_ack)
 484                     ; 223 {
 485                     	switch	.text
 486  011a               L741f__SWI2C_ReceiveByte:
 488  011a 88            	push	a
 489  011b 5203          	subw	sp,#3
 490       00000003      OFST:	set	3
 493                     ; 224 	u8 count, read, value = 0;
 495  011d 0f02          	clr	(OFST-1,sp)
 496                     ; 226 	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_IN_FL_NO_IT);
 498  011f 4b00          	push	#0
 499  0121 4b20          	push	#32
 500  0123 ae5005        	ldw	x,#20485
 501  0126 8d000000      	callf	f_GPIO_Init
 503  012a 85            	popw	x
 504                     ; 227 	for (count = 0;count < 8;count++)
 506  012b 0f01          	clr	(OFST-2,sp)
 507  012d               L371:
 508                     ; 229 		_Delay_5us();
 510  012d 8d000000      	callf	L72f__Delay_5us
 512                     ; 230 		GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
 514  0131 4b10          	push	#16
 515  0133 ae5005        	ldw	x,#20485
 516  0136 8d000000      	callf	f_GPIO_WriteHigh
 518  013a 84            	pop	a
 519                     ; 231 		if (GPIO_ReadInputPin(IIC_SDA_PORT, IIC_SDA_PIN))
 521  013b 4b20          	push	#32
 522  013d ae5005        	ldw	x,#20485
 523  0140 8d000000      	callf	f_GPIO_ReadInputPin
 525  0144 5b01          	addw	sp,#1
 526  0146 4d            	tnz	a
 527  0147 2706          	jreq	L102
 528                     ; 233 			read = 1;
 530  0149 a601          	ld	a,#1
 531  014b 6b03          	ld	(OFST+0,sp),a
 533  014d 2002          	jra	L302
 534  014f               L102:
 535                     ; 237 			read = 0;
 537  014f 0f03          	clr	(OFST+0,sp)
 538  0151               L302:
 539                     ; 239 		value = (value<<1)|read;
 541  0151 7b02          	ld	a,(OFST-1,sp)
 542  0153 48            	sll	a
 543  0154 1a03          	or	a,(OFST+0,sp)
 544  0156 6b02          	ld	(OFST-1,sp),a
 545                     ; 240 		_Delay_5us();
 547  0158 8d000000      	callf	L72f__Delay_5us
 549                     ; 241 		GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
 551  015c 4b10          	push	#16
 552  015e ae5005        	ldw	x,#20485
 553  0161 8d000000      	callf	f_GPIO_WriteLow
 555  0165 84            	pop	a
 556                     ; 227 	for (count = 0;count < 8;count++)
 558  0166 0c01          	inc	(OFST-2,sp)
 561  0168 7b01          	ld	a,(OFST-2,sp)
 562  016a a108          	cp	a,#8
 563  016c 25bf          	jrult	L371
 564                     ; 243 	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
 566  016e 4bb0          	push	#176
 567  0170 4b20          	push	#32
 568  0172 ae5005        	ldw	x,#20485
 569  0175 8d000000      	callf	f_GPIO_Init
 571  0179 85            	popw	x
 572                     ; 244 	if (send_ack)
 574  017a 0d04          	tnz	(OFST+1,sp)
 575  017c 270c          	jreq	L502
 576                     ; 246 		GPIO_WriteLow(IIC_SDA_PORT,IIC_SDA_PIN);
 578  017e 4b20          	push	#32
 579  0180 ae5005        	ldw	x,#20485
 580  0183 8d000000      	callf	f_GPIO_WriteLow
 582  0187 84            	pop	a
 584  0188 200a          	jra	L702
 585  018a               L502:
 586                     ; 250 		GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
 588  018a 4b20          	push	#32
 589  018c ae5005        	ldw	x,#20485
 590  018f 8d000000      	callf	f_GPIO_WriteHigh
 592  0193 84            	pop	a
 593  0194               L702:
 594                     ; 252 	_Delay_5us();
 596  0194 8d000000      	callf	L72f__Delay_5us
 598                     ; 253 	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
 600  0198 4b10          	push	#16
 601  019a ae5005        	ldw	x,#20485
 602  019d 8d000000      	callf	f_GPIO_WriteHigh
 604  01a1 84            	pop	a
 605                     ; 254 	_Delay_5us();
 607  01a2 8d000000      	callf	L72f__Delay_5us
 609                     ; 255 	GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
 611  01a6 4b10          	push	#16
 612  01a8 ae5005        	ldw	x,#20485
 613  01ab 8d000000      	callf	f_GPIO_WriteLow
 615  01af 84            	pop	a
 616                     ; 256 	_Delay_5us();
 618  01b0 8d000000      	callf	L72f__Delay_5us
 620                     ; 258 	return	value;		
 622  01b4 7b02          	ld	a,(OFST-1,sp)
 625  01b6 5b04          	addw	sp,#4
 626  01b8 87            	retf
 659                     ; 261 static u8 SWI2C_GetSignalStatus(void)
 659                     ; 262 {
 660                     	switch	.text
 661  01b9               L112f_SWI2C_GetSignalStatus:
 663  01b9 88            	push	a
 664       00000001      OFST:	set	1
 667                     ; 264 	SWI2C_ReadByte(0x90, 0x0A, &p0_status);
 669  01ba 96            	ldw	x,sp
 670  01bb 1c0001        	addw	x,#OFST+0
 671  01be 89            	pushw	x
 672  01bf ae000a        	ldw	x,#10
 673  01c2 a690          	ld	a,#144
 674  01c4 95            	ld	xh,a
 675  01c5 8d480248      	callf	f_SWI2C_ReadByte
 677  01c9 85            	popw	x
 678                     ; 265 	if (p0_status&0x0C)
 680  01ca 7b01          	ld	a,(OFST+0,sp)
 681  01cc a50c          	bcp	a,#12
 682  01ce 2705          	jreq	L722
 683                     ; 267 		return 1;
 685  01d0 a601          	ld	a,#1
 688  01d2 5b01          	addw	sp,#1
 689  01d4 87            	retf
 690  01d5               L722:
 691                     ; 271 		return 0;
 693  01d5 4f            	clr	a
 696  01d6 5b01          	addw	sp,#1
 697  01d8 87            	retf
 699                     .const:	section	.text
 700  0000               L332_wave_table:
 701  0000 00            	dc.b	0
 702  0001 00            	dc.b	0
 703  0002 00            	dc.b	0
 704  0003 00            	dc.b	0
 705  0004 08            	dc.b	8
 706  0005 01            	dc.b	1
 707  0006 00            	dc.b	0
 708  0007 00            	dc.b	0
 709  0008 00            	dc.b	0
 710  0009 07            	dc.b	7
 711  000a 02            	dc.b	2
 712  000b 00            	dc.b	0
 713  000c 00            	dc.b	0
 714  000d 00            	dc.b	0
 715  000e 06            	dc.b	6
 716  000f 03            	dc.b	3
 717  0010 00            	dc.b	0
 718  0011 00            	dc.b	0
 719  0012 00            	dc.b	0
 720  0013 05            	dc.b	5
 721  0014 03            	dc.b	3
 722  0015 00            	dc.b	0
 723  0016 00            	dc.b	0
 724  0017 00            	dc.b	0
 725  0018 05            	dc.b	5
 726  0019 04            	dc.b	4
 727  001a 00            	dc.b	0
 728  001b 00            	dc.b	0
 729  001c 00            	dc.b	0
 730  001d 04            	dc.b	4
 731  001e 05            	dc.b	5
 732  001f 00            	dc.b	0
 733  0020 00            	dc.b	0
 734  0021 00            	dc.b	0
 735  0022 03            	dc.b	3
 736  0023 06            	dc.b	6
 737  0024 00            	dc.b	0
 738  0025 00            	dc.b	0
 739  0026 00            	dc.b	0
 740  0027 02            	dc.b	2
 741  0028 06            	dc.b	6
 742  0029 00            	dc.b	0
 743  002a 00            	dc.b	0
 744  002b 00            	dc.b	0
 745  002c 02            	dc.b	2
 746  002d 07            	dc.b	7
 747  002e 00            	dc.b	0
 748  002f 00            	dc.b	0
 749  0030 00            	dc.b	0
 750  0031 01            	dc.b	1
 751  0032 08            	dc.b	8
 752  0033 00            	dc.b	0
 753  0034 00            	dc.b	0
 754  0035 00            	dc.b	0
 755  0036 00            	dc.b	0
 756  0037 07            	dc.b	7
 757  0038 10            	dc.b	16
 758  0039 00            	dc.b	0
 759  003a 00            	dc.b	0
 760  003b 00            	dc.b	0
 761  003c 07            	dc.b	7
 762  003d 10            	dc.b	16
 763  003e 00            	dc.b	0
 764  003f 00            	dc.b	0
 765  0040 00            	dc.b	0
 766  0041 06            	dc.b	6
 767  0042 20            	dc.b	32
 768  0043 00            	dc.b	0
 769  0044 00            	dc.b	0
 770  0045 00            	dc.b	0
 771  0046 05            	dc.b	5
 772  0047 30            	dc.b	48
 773  0048 00            	dc.b	0
 774  0049 00            	dc.b	0
 775  004a 00            	dc.b	0
 776  004b 04            	dc.b	4
 777  004c 40            	dc.b	64
 778  004d 00            	dc.b	0
 779  004e 00            	dc.b	0
 780  004f 00            	dc.b	0
 781  0050 04            	dc.b	4
 782  0051 40            	dc.b	64
 783  0052 00            	dc.b	0
 784  0053 00            	dc.b	0
 785  0054 00            	dc.b	0
 786  0055 03            	dc.b	3
 787  0056 50            	dc.b	80
 788  0057 00            	dc.b	0
 789  0058 00            	dc.b	0
 790  0059 00            	dc.b	0
 791  005a 02            	dc.b	2
 792  005b 60            	dc.b	96
 793  005c 00            	dc.b	0
 794  005d 00            	dc.b	0
 795  005e 00            	dc.b	0
 796  005f 01            	dc.b	1
 797  0060 70            	dc.b	112
 798  0061 00            	dc.b	0
 799  0062 00            	dc.b	0
 800  0063 00            	dc.b	0
 801  0064 01            	dc.b	1
 802  0065 70            	dc.b	112
 803  0066 00            	dc.b	0
 804  0067 00            	dc.b	0
 805  0068 00            	dc.b	0
 806  0069 00            	dc.b	0
 807  006a 80            	dc.b	128
 808  006b 00            	dc.b	0
 809  006c 00            	dc.b	0
 810  006d 00            	dc.b	0
 811  006e 00            	dc.b	0
 812  006f 71            	dc.b	113
 813  0070 00            	dc.b	0
 814  0071 00            	dc.b	0
 815  0072 00            	dc.b	0
 816  0073 00            	dc.b	0
 817  0074 62            	dc.b	98
 818  0075 00            	dc.b	0
 819  0076 00            	dc.b	0
 820  0077 00            	dc.b	0
 821  0078 00            	dc.b	0
 822  0079 62            	dc.b	98
 823  007a 00            	dc.b	0
 824  007b 00            	dc.b	0
 825  007c 00            	dc.b	0
 826  007d 00            	dc.b	0
 827  007e 53            	dc.b	83
 828  007f 00            	dc.b	0
 829  0080 00            	dc.b	0
 830  0081 00            	dc.b	0
 831  0082 00            	dc.b	0
 832  0083 44            	dc.b	68
 833  0084 00            	dc.b	0
 834  0085 00            	dc.b	0
 835  0086 00            	dc.b	0
 836  0087 00            	dc.b	0
 837  0088 35            	dc.b	53
 838  0089 00            	dc.b	0
 839  008a 00            	dc.b	0
 840  008b 00            	dc.b	0
 841  008c 00            	dc.b	0
 842  008d 35            	dc.b	53
 843  008e 00            	dc.b	0
 844  008f 00            	dc.b	0
 845  0090 00            	dc.b	0
 846  0091 00            	dc.b	0
 847  0092 26            	dc.b	38
 848  0093 00            	dc.b	0
 849  0094 00            	dc.b	0
 850  0095 00            	dc.b	0
 851  0096 00            	dc.b	0
 852  0097 17            	dc.b	23
 853  0098 00            	dc.b	0
 854  0099 00            	dc.b	0
 855  009a 00            	dc.b	0
 856  009b 00            	dc.b	0
 857  009c 08            	dc.b	8
 858  009d 00            	dc.b	0
 859  009e 00            	dc.b	0
 860  009f 00            	dc.b	0
 861  00a0 00            	dc.b	0
 862  00a1 08            	dc.b	8
 863  00a2 00            	dc.b	0
 864  00a3 00            	dc.b	0
 865  00a4 00            	dc.b	0
 866  00a5 00            	dc.b	0
 867  00a6 07            	dc.b	7
 868  00a7 10            	dc.b	16
 869  00a8 00            	dc.b	0
 870  00a9 00            	dc.b	0
 871  00aa 00            	dc.b	0
 872  00ab 06            	dc.b	6
 873  00ac 20            	dc.b	32
 874  00ad 00            	dc.b	0
 875  00ae 00            	dc.b	0
 876  00af 00            	dc.b	0
 877  00b0 05            	dc.b	5
 878  00b1 30            	dc.b	48
 879  00b2 00            	dc.b	0
 880  00b3 00            	dc.b	0
 881  00b4 00            	dc.b	0
 882  00b5 05            	dc.b	5
 883  00b6 30            	dc.b	48
 884  00b7 00            	dc.b	0
 885  00b8 00            	dc.b	0
 886  00b9 00            	dc.b	0
 887  00ba 04            	dc.b	4
 888  00bb 40            	dc.b	64
 889  00bc 00            	dc.b	0
 890  00bd 00            	dc.b	0
 891  00be 00            	dc.b	0
 892  00bf 03            	dc.b	3
 893  00c0 50            	dc.b	80
 894  00c1 00            	dc.b	0
 895  00c2 00            	dc.b	0
 896  00c3 00            	dc.b	0
 897  00c4 02            	dc.b	2
 898  00c5 60            	dc.b	96
 899  00c6 00            	dc.b	0
 900  00c7 00            	dc.b	0
 901  00c8 00            	dc.b	0
 902  00c9 02            	dc.b	2
 903  00ca 60            	dc.b	96
 904  00cb 00            	dc.b	0
 905  00cc 00            	dc.b	0
 906  00cd 00            	dc.b	0
 907  00ce 01            	dc.b	1
 908  00cf 70            	dc.b	112
 909  00d0 00            	dc.b	0
 910  00d1 00            	dc.b	0
 911  00d2 00            	dc.b	0
 912  00d3 00            	dc.b	0
 913  00d4 80            	dc.b	128
 914  00d5 00            	dc.b	0
 915  00d6 00            	dc.b	0
 916  00d7 00            	dc.b	0
 917  00d8 00            	dc.b	0
 918  00d9 80            	dc.b	128
 919  00da 00            	dc.b	0
 920  00db 00            	dc.b	0
 921  00dc 00            	dc.b	0
 922  00dd 01            	dc.b	1
 923  00de 70            	dc.b	112
 924  00df 00            	dc.b	0
 925  00e0 00            	dc.b	0
 926  00e1 00            	dc.b	0
 927  00e2 01            	dc.b	1
 928  00e3 70            	dc.b	112
 929  00e4 00            	dc.b	0
 930  00e5 00            	dc.b	0
 931  00e6 00            	dc.b	0
 932  00e7 01            	dc.b	1
 933  00e8 70            	dc.b	112
 934  00e9 00            	dc.b	0
 935  00ea 00            	dc.b	0
 936  00eb 00            	dc.b	0
 937  00ec 02            	dc.b	2
 938  00ed 60            	dc.b	96
 939  00ee 00            	dc.b	0
 940  00ef 00            	dc.b	0
 941  00f0 00            	dc.b	0
 942  00f1 02            	dc.b	2
 943  00f2 60            	dc.b	96
 944  00f3 00            	dc.b	0
 945  00f4 00            	dc.b	0
 946  00f5 00            	dc.b	0
 947  00f6 03            	dc.b	3
 948  00f7 50            	dc.b	80
 949  00f8 00            	dc.b	0
 950  00f9 00            	dc.b	0
 951  00fa 00            	dc.b	0
 952  00fb 03            	dc.b	3
 953  00fc 50            	dc.b	80
 954  00fd 00            	dc.b	0
 955  00fe 00            	dc.b	0
 956  00ff 00            	dc.b	0
 957  0100 03            	dc.b	3
 958  0101 50            	dc.b	80
 959  0102 00            	dc.b	0
 960  0103 00            	dc.b	0
 961  0104 00            	dc.b	0
 962  0105 04            	dc.b	4
 963  0106 40            	dc.b	64
 964  0107 00            	dc.b	0
 965  0108 00            	dc.b	0
 966  0109 00            	dc.b	0
 967  010a 04            	dc.b	4
 968  010b 40            	dc.b	64
 969  010c 00            	dc.b	0
 970  010d 00            	dc.b	0
 971  010e 00            	dc.b	0
 972  010f 04            	dc.b	4
 973  0110 40            	dc.b	64
 974  0111 00            	dc.b	0
 975  0112 00            	dc.b	0
 976  0113 00            	dc.b	0
 977  0114 05            	dc.b	5
 978  0115 30            	dc.b	48
 979  0116 00            	dc.b	0
 980  0117 00            	dc.b	0
 981  0118 00            	dc.b	0
 982  0119 05            	dc.b	5
 983  011a 30            	dc.b	48
 984  011b 00            	dc.b	0
 985  011c 00            	dc.b	0
 986  011d 00            	dc.b	0
 987  011e 06            	dc.b	6
 988  011f 20            	dc.b	32
 989  0120 00            	dc.b	0
 990  0121 00            	dc.b	0
 991  0122 00            	dc.b	0
 992  0123 06            	dc.b	6
 993  0124 20            	dc.b	32
 994  0125 00            	dc.b	0
 995  0126 00            	dc.b	0
 996  0127 00            	dc.b	0
 997  0128 06            	dc.b	6
 998  0129 20            	dc.b	32
 999  012a 00            	dc.b	0
1000  012b 00            	dc.b	0
1001  012c 00            	dc.b	0
1002  012d 07            	dc.b	7
1003  012e 10            	dc.b	16
1004  012f 00            	dc.b	0
1005  0130 00            	dc.b	0
1006  0131 00            	dc.b	0
1007  0132 07            	dc.b	7
1008  0133 10            	dc.b	16
1009  0134 00            	dc.b	0
1010  0135 00            	dc.b	0
1011  0136 00            	dc.b	0
1012  0137 07            	dc.b	7
1013  0138 10            	dc.b	16
1014  0139 00            	dc.b	0
1015  013a 00            	dc.b	0
1016  013b 00            	dc.b	0
1017  013c 08            	dc.b	8
1018  013d 00            	dc.b	0
1019  013e 00            	dc.b	0
1020  013f 00            	dc.b	0
1021  0140 00            	dc.b	0
1022  0141 08            	dc.b	8
1023  0142 00            	dc.b	0
1024  0143 00            	dc.b	0
1025  0144 00            	dc.b	0
1026  0145 00            	dc.b	0
1027  0146 17            	dc.b	23
1028  0147 00            	dc.b	0
1029  0148 00            	dc.b	0
1030  0149 00            	dc.b	0
1031  014a 00            	dc.b	0
1032  014b 17            	dc.b	23
1033  014c 00            	dc.b	0
1034  014d 00            	dc.b	0
1035  014e 00            	dc.b	0
1036  014f 00            	dc.b	0
1037  0150 17            	dc.b	23
1038  0151 00            	dc.b	0
1039  0152 00            	dc.b	0
1040  0153 00            	dc.b	0
1041  0154 00            	dc.b	0
1042  0155 26            	dc.b	38
1043  0156 00            	dc.b	0
1044  0157 00            	dc.b	0
1045  0158 00            	dc.b	0
1046  0159 00            	dc.b	0
1047  015a 26            	dc.b	38
1048  015b 00            	dc.b	0
1049  015c 00            	dc.b	0
1050  015d 00            	dc.b	0
1051  015e 00            	dc.b	0
1052  015f 26            	dc.b	38
1053  0160 00            	dc.b	0
1054  0161 00            	dc.b	0
1055  0162 00            	dc.b	0
1056  0163 00            	dc.b	0
1057  0164 35            	dc.b	53
1058  0165 00            	dc.b	0
1059  0166 00            	dc.b	0
1060  0167 00            	dc.b	0
1061  0168 00            	dc.b	0
1062  0169 35            	dc.b	53
1063  016a 00            	dc.b	0
1064  016b 00            	dc.b	0
1065  016c 00            	dc.b	0
1066  016d 00            	dc.b	0
1067  016e 44            	dc.b	68
1068  016f 00            	dc.b	0
1069  0170 00            	dc.b	0
1070  0171 00            	dc.b	0
1071  0172 00            	dc.b	0
1072  0173 44            	dc.b	68
1073  0174 00            	dc.b	0
1074  0175 00            	dc.b	0
1075  0176 00            	dc.b	0
1076  0177 00            	dc.b	0
1077  0178 44            	dc.b	68
1078  0179 00            	dc.b	0
1079  017a 00            	dc.b	0
1080  017b 00            	dc.b	0
1081  017c 00            	dc.b	0
1082  017d 53            	dc.b	83
1083  017e 00            	dc.b	0
1084  017f 00            	dc.b	0
1085  0180 00            	dc.b	0
1086  0181 00            	dc.b	0
1087  0182 53            	dc.b	83
1088  0183 00            	dc.b	0
1089  0184 00            	dc.b	0
1090  0185 00            	dc.b	0
1091  0186 00            	dc.b	0
1092  0187 53            	dc.b	83
1093  0188 00            	dc.b	0
1094  0189 00            	dc.b	0
1095  018a 00            	dc.b	0
1096  018b 00            	dc.b	0
1097  018c 62            	dc.b	98
1098  018d 00            	dc.b	0
1099  018e 00            	dc.b	0
1100  018f 00            	dc.b	0
1101  0190 00            	dc.b	0
1102  0191 62            	dc.b	98
1103  0192 00            	dc.b	0
1104  0193 00            	dc.b	0
1105  0194 00            	dc.b	0
1106  0195 00            	dc.b	0
1107  0196 71            	dc.b	113
1108  0197 00            	dc.b	0
1109  0198 00            	dc.b	0
1110  0199 00            	dc.b	0
1111  019a 00            	dc.b	0
1112  019b 71            	dc.b	113
1113  019c 00            	dc.b	0
1114  019d 00            	dc.b	0
1115  019e 00            	dc.b	0
1116  019f 00            	dc.b	0
1117  01a0 71            	dc.b	113
1118  01a1 00            	dc.b	0
1119  01a2 00            	dc.b	0
1120  01a3 00            	dc.b	0
1121  01a4 00            	dc.b	0
1122  01a5 80            	dc.b	128
1123  01a6 00            	dc.b	0
1124  01a7 00            	dc.b	0
1125  01a8 00            	dc.b	0
1126  01a9 00            	dc.b	0
1127  01aa 80            	dc.b	128
1128  01ab 00            	dc.b	0
1129  01ac 00            	dc.b	0
1130  01ad 00            	dc.b	0
1131  01ae 00            	dc.b	0
1132  01af 80            	dc.b	128
1133  01b0 00            	dc.b	0
1134  01b1 00            	dc.b	0
1135  01b2 00            	dc.b	0
1136  01b3 01            	dc.b	1
1137  01b4 70            	dc.b	112
1138  01b5 00            	dc.b	0
1139  01b6 00            	dc.b	0
1140  01b7 00            	dc.b	0
1141  01b8 01            	dc.b	1
1142  01b9 70            	dc.b	112
1143  01ba 00            	dc.b	0
1144  01bb 00            	dc.b	0
1145  01bc 00            	dc.b	0
1146  01bd 02            	dc.b	2
1147  01be 60            	dc.b	96
1148  01bf 00            	dc.b	0
1149  01c0 00            	dc.b	0
1150  01c1 00            	dc.b	0
1151  01c2 02            	dc.b	2
1152  01c3 60            	dc.b	96
1153  01c4 00            	dc.b	0
1154  01c5 00            	dc.b	0
1155  01c6 00            	dc.b	0
1156  01c7 02            	dc.b	2
1157  01c8 60            	dc.b	96
1158  01c9 00            	dc.b	0
1159  01ca 00            	dc.b	0
1160  01cb 00            	dc.b	0
1161  01cc 03            	dc.b	3
1162  01cd 50            	dc.b	80
1163  01ce 00            	dc.b	0
1164  01cf 00            	dc.b	0
1165  01d0 00            	dc.b	0
1166  01d1 03            	dc.b	3
1167  01d2 50            	dc.b	80
1168  01d3 00            	dc.b	0
1169  01d4 00            	dc.b	0
1170  01d5 00            	dc.b	0
1171  01d6 03            	dc.b	3
1172  01d7 50            	dc.b	80
1173  01d8 00            	dc.b	0
1174  01d9 00            	dc.b	0
1175  01da 00            	dc.b	0
1176  01db 04            	dc.b	4
1177  01dc 40            	dc.b	64
1178  01dd 00            	dc.b	0
1179  01de 00            	dc.b	0
1180  01df 00            	dc.b	0
1181  01e0 04            	dc.b	4
1182  01e1 40            	dc.b	64
1183  01e2 00            	dc.b	0
1184  01e3 00            	dc.b	0
1185  01e4 00            	dc.b	0
1186  01e5 05            	dc.b	5
1187  01e6 30            	dc.b	48
1188  01e7 00            	dc.b	0
1189  01e8 00            	dc.b	0
1190  01e9 00            	dc.b	0
1191  01ea 05            	dc.b	5
1192  01eb 30            	dc.b	48
1193  01ec 00            	dc.b	0
1194  01ed 00            	dc.b	0
1195  01ee 00            	dc.b	0
1196  01ef 05            	dc.b	5
1197  01f0 30            	dc.b	48
1198  01f1 00            	dc.b	0
1199  01f2 00            	dc.b	0
1200  01f3 00            	dc.b	0
1201  01f4 06            	dc.b	6
1202  01f5 20            	dc.b	32
1203  01f6 00            	dc.b	0
1204  01f7 00            	dc.b	0
1205  01f8 00            	dc.b	0
1206  01f9 06            	dc.b	6
1207  01fa 20            	dc.b	32
1208  01fb 00            	dc.b	0
1209  01fc 00            	dc.b	0
1210  01fd 00            	dc.b	0
1211  01fe 06            	dc.b	6
1212  01ff 20            	dc.b	32
1213  0200 00            	dc.b	0
1214  0201 00            	dc.b	0
1215  0202 00            	dc.b	0
1216  0203 07            	dc.b	7
1217  0204 10            	dc.b	16
1218  0205 00            	dc.b	0
1219  0206 00            	dc.b	0
1220  0207 00            	dc.b	0
1221  0208 07            	dc.b	7
1222  0209 10            	dc.b	16
1223  020a 00            	dc.b	0
1224  020b 00            	dc.b	0
1225  020c 00            	dc.b	0
1226  020d 08            	dc.b	8
1227  020e 00            	dc.b	0
1228  020f 00            	dc.b	0
1229  0210 00            	dc.b	0
1230  0211 00            	dc.b	0
1231  0212 08            	dc.b	8
1232  0213 00            	dc.b	0
1233  0214 00            	dc.b	0
1234  0215 00            	dc.b	0
1235  0216 00            	dc.b	0
1236  0217 08            	dc.b	8
1237  0218 00            	dc.b	0
1238  0219 00            	dc.b	0
1239  021a 00            	dc.b	0
1240  021b 00            	dc.b	0
1241  021c 07            	dc.b	7
1242  021d 00            	dc.b	0
1243  021e 00            	dc.b	0
1244  021f 00            	dc.b	0
1245  0220 01            	dc.b	1
1246  0221 07            	dc.b	7
1247  0222 00            	dc.b	0
1248  0223 00            	dc.b	0
1249  0224 00            	dc.b	0
1250  0225 01            	dc.b	1
1251  0226 07            	dc.b	7
1252  0227 00            	dc.b	0
1253  0228 00            	dc.b	0
1254  0229 00            	dc.b	0
1255  022a 01            	dc.b	1
1256  022b 06            	dc.b	6
1257  022c 00            	dc.b	0
1258  022d 00            	dc.b	0
1259  022e 00            	dc.b	0
1260  022f 02            	dc.b	2
1261  0230 06            	dc.b	6
1262  0231 00            	dc.b	0
1263  0232 00            	dc.b	0
1264  0233 00            	dc.b	0
1265  0234 02            	dc.b	2
1266  0235 05            	dc.b	5
1267  0236 00            	dc.b	0
1268  0237 00            	dc.b	0
1269  0238 00            	dc.b	0
1270  0239 03            	dc.b	3
1271  023a 05            	dc.b	5
1272  023b 00            	dc.b	0
1273  023c 00            	dc.b	0
1274  023d 00            	dc.b	0
1275  023e 03            	dc.b	3
1276  023f 05            	dc.b	5
1277  0240 00            	dc.b	0
1278  0241 00            	dc.b	0
1279  0242 00            	dc.b	0
1280  0243 03            	dc.b	3
1281  0244 04            	dc.b	4
1282  0245 00            	dc.b	0
1283  0246 00            	dc.b	0
1284  0247 00            	dc.b	0
1285  0248 04            	dc.b	4
1286  0249 04            	dc.b	4
1287  024a 00            	dc.b	0
1288  024b 00            	dc.b	0
1289  024c 00            	dc.b	0
1290  024d 04            	dc.b	4
1291  024e 04            	dc.b	4
1292  024f 00            	dc.b	0
1293  0250 00            	dc.b	0
1294  0251 00            	dc.b	0
1295  0252 04            	dc.b	4
1296  0253 03            	dc.b	3
1297  0254 00            	dc.b	0
1298  0255 00            	dc.b	0
1299  0256 00            	dc.b	0
1300  0257 05            	dc.b	5
1301  0258 03            	dc.b	3
1302  0259 00            	dc.b	0
1303  025a 00            	dc.b	0
1304  025b 00            	dc.b	0
1305  025c 05            	dc.b	5
1306  025d 02            	dc.b	2
1307  025e 00            	dc.b	0
1308  025f 00            	dc.b	0
1309  0260 00            	dc.b	0
1310  0261 06            	dc.b	6
1311  0262 02            	dc.b	2
1312  0263 00            	dc.b	0
1313  0264 00            	dc.b	0
1314  0265 00            	dc.b	0
1315  0266 06            	dc.b	6
1316  0267 02            	dc.b	2
1317  0268 00            	dc.b	0
1318  0269 00            	dc.b	0
1319  026a 00            	dc.b	0
1320  026b 06            	dc.b	6
1321  026c 01            	dc.b	1
1322  026d 00            	dc.b	0
1323  026e 00            	dc.b	0
1324  026f 00            	dc.b	0
1325  0270 07            	dc.b	7
1326  0271 01            	dc.b	1
1327  0272 00            	dc.b	0
1328  0273 00            	dc.b	0
1329  0274 00            	dc.b	0
1330  0275 07            	dc.b	7
1331  0276 01            	dc.b	1
1332  0277 00            	dc.b	0
1333  0278 00            	dc.b	0
1334  0279 00            	dc.b	0
1335  027a 07            	dc.b	7
1336  027b 00            	dc.b	0
1337  027c 00            	dc.b	0
1338  027d 00            	dc.b	0
1339  027e 00            	dc.b	0
1340  027f 08            	dc.b	8
1341  0280 00            	dc.b	0
1342  0281 00            	dc.b	0
1343  0282 00            	dc.b	0
1344  0283 00            	dc.b	0
1345  0284 08            	dc.b	8
1346  0285 00            	dc.b	0
1347  0286 00            	dc.b	0
1348  0287 00            	dc.b	0
1349  0288 00            	dc.b	0
1350  0289 17            	dc.b	23
1351  028a 00            	dc.b	0
1352  028b 00            	dc.b	0
1353  028c 00            	dc.b	0
1354  028d 00            	dc.b	0
1355  028e 17            	dc.b	23
1356  028f 00            	dc.b	0
1357  0290 00            	dc.b	0
1358  0291 00            	dc.b	0
1359  0292 00            	dc.b	0
1360  0293 17            	dc.b	23
1361  0294 00            	dc.b	0
1362  0295 00            	dc.b	0
1363  0296 00            	dc.b	0
1364  0297 00            	dc.b	0
1365  0298 26            	dc.b	38
1366  0299 00            	dc.b	0
1367  029a 00            	dc.b	0
1368  029b 00            	dc.b	0
1369  029c 00            	dc.b	0
1370  029d 26            	dc.b	38
1371  029e 00            	dc.b	0
1372  029f 00            	dc.b	0
1373  02a0 00            	dc.b	0
1374  02a1 00            	dc.b	0
1375  02a2 26            	dc.b	38
1376  02a3 00            	dc.b	0
1377  02a4 00            	dc.b	0
1378  02a5 00            	dc.b	0
1379  02a6 00            	dc.b	0
1380  02a7 35            	dc.b	53
1381  02a8 00            	dc.b	0
1382  02a9 00            	dc.b	0
1383  02aa 00            	dc.b	0
1384  02ab 00            	dc.b	0
1385  02ac 35            	dc.b	53
1386  02ad 00            	dc.b	0
1387  02ae 00            	dc.b	0
1388  02af 00            	dc.b	0
1389  02b0 00            	dc.b	0
1390  02b1 44            	dc.b	68
1391  02b2 00            	dc.b	0
1392  02b3 00            	dc.b	0
1393  02b4 00            	dc.b	0
1394  02b5 00            	dc.b	0
1395  02b6 44            	dc.b	68
1396  02b7 00            	dc.b	0
1397  02b8 00            	dc.b	0
1398  02b9 00            	dc.b	0
1399  02ba 00            	dc.b	0
1400  02bb 44            	dc.b	68
1401  02bc 00            	dc.b	0
1402  02bd 00            	dc.b	0
1403  02be 00            	dc.b	0
1404  02bf 00            	dc.b	0
1405  02c0 53            	dc.b	83
1406  02c1 00            	dc.b	0
1407  02c2 00            	dc.b	0
1408  02c3 00            	dc.b	0
1409  02c4 00            	dc.b	0
1410  02c5 53            	dc.b	83
1411  02c6 00            	dc.b	0
1412  02c7 00            	dc.b	0
1413  02c8 00            	dc.b	0
1414  02c9 00            	dc.b	0
1415  02ca 53            	dc.b	83
1416  02cb 00            	dc.b	0
1417  02cc 00            	dc.b	0
1418  02cd 00            	dc.b	0
1419  02ce 00            	dc.b	0
1420  02cf 62            	dc.b	98
1421  02d0 00            	dc.b	0
1422  02d1 00            	dc.b	0
1423  02d2 00            	dc.b	0
1424  02d3 00            	dc.b	0
1425  02d4 62            	dc.b	98
1426  02d5 00            	dc.b	0
1427  02d6 00            	dc.b	0
1428  02d7 00            	dc.b	0
1429  02d8 00            	dc.b	0
1430  02d9 71            	dc.b	113
1431  02da 00            	dc.b	0
1432  02db 00            	dc.b	0
1433  02dc 00            	dc.b	0
1434  02dd 00            	dc.b	0
1435  02de 71            	dc.b	113
1436  02df 00            	dc.b	0
1437  02e0 00            	dc.b	0
1438  02e1 00            	dc.b	0
1439  02e2 00            	dc.b	0
1440  02e3 71            	dc.b	113
1441  02e4 00            	dc.b	0
1442  02e5 00            	dc.b	0
1443  02e6 00            	dc.b	0
1444  02e7 00            	dc.b	0
1445  02e8 80            	dc.b	128
1446  02e9 00            	dc.b	0
1447  02ea 00            	dc.b	0
1448  02eb 00            	dc.b	0
1449  02ec 00            	dc.b	0
1450  02ed 80            	dc.b	128
1451  02ee 00            	dc.b	0
1452  02ef 00            	dc.b	0
1453  02f0 00            	dc.b	0
1454  02f1 00            	dc.b	0
1455  02f2 80            	dc.b	128
1456  02f3 00            	dc.b	0
1457  02f4 00            	dc.b	0
1458  02f5 00            	dc.b	0
1459  02f6 01            	dc.b	1
1460  02f7 70            	dc.b	112
1461  02f8 00            	dc.b	0
1462  02f9 00            	dc.b	0
1463  02fa 00            	dc.b	0
1464  02fb 01            	dc.b	1
1465  02fc 70            	dc.b	112
1466  02fd 00            	dc.b	0
1467  02fe 00            	dc.b	0
1468  02ff 00            	dc.b	0
1469  0300 02            	dc.b	2
1470  0301 60            	dc.b	96
1471  0302 00            	dc.b	0
1472  0303 00            	dc.b	0
1473  0304 00            	dc.b	0
1474  0305 02            	dc.b	2
1475  0306 60            	dc.b	96
1476  0307 00            	dc.b	0
1477  0308 00            	dc.b	0
1478  0309 00            	dc.b	0
1479  030a 02            	dc.b	2
1480  030b 60            	dc.b	96
1481  030c 00            	dc.b	0
1482  030d 00            	dc.b	0
1483  030e 00            	dc.b	0
1484  030f 03            	dc.b	3
1485  0310 50            	dc.b	80
1486  0311 00            	dc.b	0
1487  0312 00            	dc.b	0
1488  0313 00            	dc.b	0
1489  0314 03            	dc.b	3
1490  0315 50            	dc.b	80
1491  0316 00            	dc.b	0
1492  0317 00            	dc.b	0
1493  0318 00            	dc.b	0
1494  0319 03            	dc.b	3
1495  031a 50            	dc.b	80
1496  031b 00            	dc.b	0
1497  031c 00            	dc.b	0
1498  031d 00            	dc.b	0
1499  031e 04            	dc.b	4
1500  031f 40            	dc.b	64
1501  0320 00            	dc.b	0
1502  0321 00            	dc.b	0
1503  0322 00            	dc.b	0
1504  0323 04            	dc.b	4
1505  0324 40            	dc.b	64
1506  0325 00            	dc.b	0
1507  0326 00            	dc.b	0
1508  0327 00            	dc.b	0
1509  0328 05            	dc.b	5
1510  0329 30            	dc.b	48
1511  032a 00            	dc.b	0
1512  032b 00            	dc.b	0
1513  032c 00            	dc.b	0
1514  032d 05            	dc.b	5
1515  032e 30            	dc.b	48
1516  032f 00            	dc.b	0
1517  0330 00            	dc.b	0
1518  0331 00            	dc.b	0
1519  0332 05            	dc.b	5
1520  0333 30            	dc.b	48
1521  0334 00            	dc.b	0
1522  0335 00            	dc.b	0
1523  0336 00            	dc.b	0
1524  0337 06            	dc.b	6
1525  0338 20            	dc.b	32
1526  0339 00            	dc.b	0
1527  033a 00            	dc.b	0
1528  033b 00            	dc.b	0
1529  033c 06            	dc.b	6
1530  033d 20            	dc.b	32
1531  033e 00            	dc.b	0
1532  033f 00            	dc.b	0
1533  0340 00            	dc.b	0
1534  0341 06            	dc.b	6
1535  0342 20            	dc.b	32
1536  0343 00            	dc.b	0
1537  0344 00            	dc.b	0
1538  0345 00            	dc.b	0
1539  0346 07            	dc.b	7
1540  0347 10            	dc.b	16
1541  0348 00            	dc.b	0
1542  0349 00            	dc.b	0
1543  034a 00            	dc.b	0
1544  034b 07            	dc.b	7
1545  034c 10            	dc.b	16
1546  034d 00            	dc.b	0
1547  034e 00            	dc.b	0
1548  034f 00            	dc.b	0
1549  0350 08            	dc.b	8
1550  0351 00            	dc.b	0
1551  0352 00            	dc.b	0
1552  0353 00            	dc.b	0
1553  0354 00            	dc.b	0
1554  0355 08            	dc.b	8
1555  0356 00            	dc.b	0
1556  0357 00            	dc.b	0
1557  0358 00            	dc.b	0
1558  0359 00            	dc.b	0
1559  035a 08            	dc.b	8
1560  035b 00            	dc.b	0
1561  035c 00            	dc.b	0
1562  035d 00            	dc.b	0
1563  035e 00            	dc.b	0
1564  035f 07            	dc.b	7
1565  0360 00            	dc.b	0
1566  0361 00            	dc.b	0
1567  0362 00            	dc.b	0
1568  0363 00            	dc.b	0
1569  0364 17            	dc.b	23
1570  0365 00            	dc.b	0
1571  0366 00            	dc.b	0
1572  0367 00            	dc.b	0
1573  0368 00            	dc.b	0
1574  0369 17            	dc.b	23
1575  036a 00            	dc.b	0
1576  036b 00            	dc.b	0
1577  036c 00            	dc.b	0
1578  036d 00            	dc.b	0
1579  036e 26            	dc.b	38
1580  036f 00            	dc.b	0
1581  0370 00            	dc.b	0
1582  0371 00            	dc.b	0
1583  0372 00            	dc.b	0
1584  0373 26            	dc.b	38
1585  0374 00            	dc.b	0
1586  0375 00            	dc.b	0
1587  0376 00            	dc.b	0
1588  0377 00            	dc.b	0
1589  0378 35            	dc.b	53
1590  0379 00            	dc.b	0
1591  037a 00            	dc.b	0
1592  037b 00            	dc.b	0
1593  037c 00            	dc.b	0
1594  037d 35            	dc.b	53
1595  037e 00            	dc.b	0
1596  037f 00            	dc.b	0
1597  0380 00            	dc.b	0
1598  0381 00            	dc.b	0
1599  0382 35            	dc.b	53
1600  0383 00            	dc.b	0
1601  0384 00            	dc.b	0
1602  0385 00            	dc.b	0
1603  0386 00            	dc.b	0
1604  0387 44            	dc.b	68
1605  0388 00            	dc.b	0
1606  0389 00            	dc.b	0
1607  038a 00            	dc.b	0
1608  038b 00            	dc.b	0
1609  038c 44            	dc.b	68
1610  038d 00            	dc.b	0
1611  038e 00            	dc.b	0
1612  038f 00            	dc.b	0
1613  0390 00            	dc.b	0
1614  0391 44            	dc.b	68
1615  0392 00            	dc.b	0
1616  0393 00            	dc.b	0
1617  0394 00            	dc.b	0
1618  0395 00            	dc.b	0
1619  0396 53            	dc.b	83
1620  0397 00            	dc.b	0
1621  0398 00            	dc.b	0
1622  0399 00            	dc.b	0
1623  039a 00            	dc.b	0
1624  039b 53            	dc.b	83
1625  039c 00            	dc.b	0
1626  039d 00            	dc.b	0
1627  039e 00            	dc.b	0
1628  039f 00            	dc.b	0
1629  03a0 62            	dc.b	98
1630  03a1 00            	dc.b	0
1631  03a2 00            	dc.b	0
1632  03a3 00            	dc.b	0
1633  03a4 00            	dc.b	0
1634  03a5 62            	dc.b	98
1635  03a6 00            	dc.b	0
1636  03a7 00            	dc.b	0
1637  03a8 00            	dc.b	0
1638  03a9 00            	dc.b	0
1639  03aa 62            	dc.b	98
1640  03ab 00            	dc.b	0
1641  03ac 00            	dc.b	0
1642  03ad 00            	dc.b	0
1643  03ae 00            	dc.b	0
1644  03af 71            	dc.b	113
1645  03b0 00            	dc.b	0
1646  03b1 00            	dc.b	0
1647  03b2 00            	dc.b	0
1648  03b3 00            	dc.b	0
1649  03b4 71            	dc.b	113
1650  03b5 00            	dc.b	0
1651  03b6 00            	dc.b	0
1652  03b7 00            	dc.b	0
1653  03b8 00            	dc.b	0
1654  03b9 71            	dc.b	113
1655  03ba 00            	dc.b	0
1656  03bb 00            	dc.b	0
1657  03bc 00            	dc.b	0
1658  03bd 00            	dc.b	0
1659  03be 80            	dc.b	128
1660  03bf 00            	dc.b	0
1661  03c0 00            	dc.b	0
1662  03c1 00            	dc.b	0
1663  03c2 00            	dc.b	0
1664  03c3 80            	dc.b	128
1665  03c4 00            	dc.b	0
1666  03c5 00            	dc.b	0
1667  03c6 00            	dc.b	0
1668  03c7 01            	dc.b	1
1669  03c8 70            	dc.b	112
1670  03c9 00            	dc.b	0
1671  03ca 00            	dc.b	0
1672  03cb 00            	dc.b	0
1673  03cc 01            	dc.b	1
1674  03cd 70            	dc.b	112
1675  03ce 00            	dc.b	0
1676  03cf 00            	dc.b	0
1677  03d0 00            	dc.b	0
1678  03d1 01            	dc.b	1
1679  03d2 70            	dc.b	112
1680  03d3 00            	dc.b	0
1681  03d4 00            	dc.b	0
1682  03d5 00            	dc.b	0
1683  03d6 02            	dc.b	2
1684  03d7 60            	dc.b	96
1685  03d8 00            	dc.b	0
1686  03d9 00            	dc.b	0
1687  03da 00            	dc.b	0
1688  03db 02            	dc.b	2
1689  03dc 60            	dc.b	96
1690  03dd 00            	dc.b	0
1691  03de 00            	dc.b	0
1692  03df 00            	dc.b	0
1693  03e0 02            	dc.b	2
1694  03e1 60            	dc.b	96
1695  03e2 00            	dc.b	0
1696  03e3 00            	dc.b	0
1697  03e4 00            	dc.b	0
1698  03e5 03            	dc.b	3
1699  03e6 50            	dc.b	80
1700  03e7 00            	dc.b	0
1701  03e8 00            	dc.b	0
1702  03e9 00            	dc.b	0
1703  03ea 03            	dc.b	3
1704  03eb 50            	dc.b	80
1705  03ec 00            	dc.b	0
1706  03ed 00            	dc.b	0
1707  03ee 00            	dc.b	0
1708  03ef 04            	dc.b	4
1709  03f0 40            	dc.b	64
1710  03f1 00            	dc.b	0
1711  03f2 00            	dc.b	0
1712  03f3 00            	dc.b	0
1713  03f4 04            	dc.b	4
1714  03f5 40            	dc.b	64
1715  03f6 00            	dc.b	0
1716  03f7 00            	dc.b	0
1717  03f8 00            	dc.b	0
1718  03f9 04            	dc.b	4
1719  03fa 40            	dc.b	64
1720  03fb 00            	dc.b	0
1721  03fc 00            	dc.b	0
1722  03fd 00            	dc.b	0
1723  03fe 05            	dc.b	5
1724  03ff 30            	dc.b	48
1725  0400 00            	dc.b	0
1726  0401 00            	dc.b	0
1727  0402 00            	dc.b	0
1728  0403 05            	dc.b	5
1729  0404 30            	dc.b	48
1730  0405 00            	dc.b	0
1731  0406 00            	dc.b	0
1732  0407 00            	dc.b	0
1733  0408 05            	dc.b	5
1734  0409 30            	dc.b	48
1735  040a 00            	dc.b	0
1736  040b 00            	dc.b	0
1737  040c 00            	dc.b	0
1738  040d 06            	dc.b	6
1739  040e 20            	dc.b	32
1740  040f 00            	dc.b	0
1741  0410 00            	dc.b	0
1742  0411 00            	dc.b	0
1743  0412 06            	dc.b	6
1744  0413 20            	dc.b	32
1745  0414 00            	dc.b	0
1746  0415 00            	dc.b	0
1747  0416 00            	dc.b	0
1748  0417 07            	dc.b	7
1749  0418 10            	dc.b	16
1750  0419 00            	dc.b	0
1751  041a 00            	dc.b	0
1752  041b 00            	dc.b	0
1753  041c 07            	dc.b	7
1754  041d 10            	dc.b	16
1755  041e 00            	dc.b	0
1756  041f 00            	dc.b	0
1757  0420 00            	dc.b	0
1758  0421 07            	dc.b	7
1759  0422 10            	dc.b	16
1760  0423 00            	dc.b	0
1761  0424 00            	dc.b	0
1762  0425 00            	dc.b	0
1763  0426 08            	dc.b	8
1764  0427 00            	dc.b	0
1765  0428 00            	dc.b	0
1766  0429 00            	dc.b	0
1767  042a 00            	dc.b	0
1768  042b 08            	dc.b	8
1769  042c 00            	dc.b	0
1770  042d 00            	dc.b	0
1771  042e 00            	dc.b	0
1772  042f 00            	dc.b	0
1773  0430 07            	dc.b	7
1774  0431 10            	dc.b	16
1775  0432 00            	dc.b	0
1776  0433 00            	dc.b	0
1777  0434 00            	dc.b	0
1778  0435 06            	dc.b	6
1779  0436 20            	dc.b	32
1780  0437 00            	dc.b	0
1781  0438 00            	dc.b	0
1782  0439 00            	dc.b	0
1783  043a 06            	dc.b	6
1784  043b 20            	dc.b	32
1785  043c 00            	dc.b	0
1786  043d 00            	dc.b	0
1787  043e 00            	dc.b	0
1788  043f 05            	dc.b	5
1789  0440 30            	dc.b	48
1790  0441 00            	dc.b	0
1791  0442 00            	dc.b	0
1792  0443 00            	dc.b	0
1793  0444 04            	dc.b	4
1794  0445 40            	dc.b	64
1795  0446 00            	dc.b	0
1796  0447 00            	dc.b	0
1797  0448 00            	dc.b	0
1798  0449 03            	dc.b	3
1799  044a 50            	dc.b	80
1800  044b 00            	dc.b	0
1801  044c 00            	dc.b	0
1802  044d 00            	dc.b	0
1803  044e 03            	dc.b	3
1804  044f 50            	dc.b	80
1805  0450 00            	dc.b	0
1806  0451 00            	dc.b	0
1807  0452 00            	dc.b	0
1808  0453 02            	dc.b	2
1809  0454 60            	dc.b	96
1810  0455 00            	dc.b	0
1811  0456 00            	dc.b	0
1812  0457 00            	dc.b	0
1813  0458 01            	dc.b	1
1814  0459 70            	dc.b	112
1815  045a 00            	dc.b	0
1816  045b 00            	dc.b	0
1817  045c 00            	dc.b	0
1818  045d 00            	dc.b	0
1819  045e 80            	dc.b	128
1820  045f 00            	dc.b	0
1821  0460 00            	dc.b	0
1822  0461 00            	dc.b	0
1823  0462 00            	dc.b	0
1824  0463 80            	dc.b	128
1825  0464 00            	dc.b	0
1826  0465 00            	dc.b	0
1827  0466 00            	dc.b	0
1828  0467 00            	dc.b	0
1829  0468 71            	dc.b	113
1830  0469 00            	dc.b	0
1831  046a 00            	dc.b	0
1832  046b 00            	dc.b	0
1833  046c 00            	dc.b	0
1834  046d 62            	dc.b	98
1835  046e 00            	dc.b	0
1836  046f 00            	dc.b	0
1837  0470 00            	dc.b	0
1838  0471 00            	dc.b	0
1839  0472 53            	dc.b	83
1840  0473 00            	dc.b	0
1841  0474 00            	dc.b	0
1842  0475 00            	dc.b	0
1843  0476 00            	dc.b	0
1844  0477 53            	dc.b	83
1845  0478 00            	dc.b	0
1846  0479 00            	dc.b	0
1847  047a 00            	dc.b	0
1848  047b 00            	dc.b	0
1849  047c 44            	dc.b	68
1850  047d 00            	dc.b	0
1851  047e 00            	dc.b	0
1852  047f 00            	dc.b	0
1853  0480 00            	dc.b	0
1854  0481 35            	dc.b	53
1855  0482 00            	dc.b	0
1856  0483 00            	dc.b	0
1857  0484 00            	dc.b	0
1858  0485 00            	dc.b	0
1859  0486 26            	dc.b	38
1860  0487 00            	dc.b	0
1861  0488 00            	dc.b	0
1862  0489 00            	dc.b	0
1863  048a 00            	dc.b	0
1864  048b 26            	dc.b	38
1865  048c 00            	dc.b	0
1866  048d 00            	dc.b	0
1867  048e 00            	dc.b	0
1868  048f 00            	dc.b	0
1869  0490 17            	dc.b	23
1870  0491 00            	dc.b	0
1871  0492 00            	dc.b	0
1872  0493 00            	dc.b	0
1873  0494 00            	dc.b	0
1874  0495 08            	dc.b	8
1875  0496 00            	dc.b	0
1876  0497 00            	dc.b	0
1877  0498 00            	dc.b	0
1878  0499 00            	dc.b	0
1879  049a 07            	dc.b	7
1880  049b 10            	dc.b	16
1881  049c 00            	dc.b	0
1882  049d 00            	dc.b	0
1883  049e 00            	dc.b	0
1884  049f 07            	dc.b	7
1885  04a0 10            	dc.b	16
1886  04a1 00            	dc.b	0
1887  04a2 00            	dc.b	0
1888  04a3 00            	dc.b	0
1889  04a4 06            	dc.b	6
1890  04a5 20            	dc.b	32
1891  04a6 00            	dc.b	0
1892  04a7 00            	dc.b	0
1893  04a8 00            	dc.b	0
1894  04a9 05            	dc.b	5
1895  04aa 30            	dc.b	48
1896  04ab 00            	dc.b	0
1897  04ac 00            	dc.b	0
1898  04ad 00            	dc.b	0
1899  04ae 04            	dc.b	4
1900  04af 40            	dc.b	64
1901  04b0 00            	dc.b	0
1902  04b1 00            	dc.b	0
1903  04b2 00            	dc.b	0
1904  04b3 04            	dc.b	4
1905  04b4 40            	dc.b	64
1906  04b5 00            	dc.b	0
1907  04b6 00            	dc.b	0
1908  04b7 00            	dc.b	0
1909  04b8 03            	dc.b	3
1910  04b9 50            	dc.b	80
1911  04ba 00            	dc.b	0
1912  04bb 00            	dc.b	0
1913  04bc 00            	dc.b	0
1914  04bd 02            	dc.b	2
1915  04be 60            	dc.b	96
1916  04bf 00            	dc.b	0
1917  04c0 00            	dc.b	0
1918  04c1 00            	dc.b	0
1919  04c2 01            	dc.b	1
1920  04c3 70            	dc.b	112
1921  04c4 00            	dc.b	0
1922  04c5 00            	dc.b	0
1923  04c6 00            	dc.b	0
1924  04c7 01            	dc.b	1
1925  04c8 70            	dc.b	112
1926  04c9 00            	dc.b	0
1927  04ca 00            	dc.b	0
1928  04cb 00            	dc.b	0
1929  04cc 00            	dc.b	0
1930  04cd 80            	dc.b	128
1931  04ce 00            	dc.b	0
1932  04cf 00            	dc.b	0
1933  04d0 00            	dc.b	0
1934  04d1 00            	dc.b	0
1935  04d2 71            	dc.b	113
1936  04d3 00            	dc.b	0
1937  04d4 00            	dc.b	0
1938  04d5 00            	dc.b	0
1939  04d6 00            	dc.b	0
1940  04d7 62            	dc.b	98
1941  04d8 00            	dc.b	0
1942  04d9 00            	dc.b	0
1943  04da 00            	dc.b	0
1944  04db 00            	dc.b	0
1945  04dc 62            	dc.b	98
1946  04dd 00            	dc.b	0
1947  04de 00            	dc.b	0
1948  04df 00            	dc.b	0
1949  04e0 00            	dc.b	0
1950  04e1 53            	dc.b	83
1951  04e2 00            	dc.b	0
1952  04e3 00            	dc.b	0
1953  04e4 00            	dc.b	0
1954  04e5 00            	dc.b	0
1955  04e6 44            	dc.b	68
1956  04e7 00            	dc.b	0
1957  04e8 00            	dc.b	0
1958  04e9 00            	dc.b	0
1959  04ea 00            	dc.b	0
1960  04eb 35            	dc.b	53
1961  04ec 00            	dc.b	0
1962  04ed 00            	dc.b	0
1963  04ee 00            	dc.b	0
1964  04ef 00            	dc.b	0
1965  04f0 35            	dc.b	53
1966  04f1 00            	dc.b	0
1967  04f2 00            	dc.b	0
1968  04f3 00            	dc.b	0
1969  04f4 00            	dc.b	0
1970  04f5 26            	dc.b	38
1971  04f6 00            	dc.b	0
1972  04f7 00            	dc.b	0
1973  04f8 00            	dc.b	0
1974  04f9 00            	dc.b	0
1975  04fa 17            	dc.b	23
1976  04fb 00            	dc.b	0
1977  04fc 00            	dc.b	0
1978  04fd 00            	dc.b	0
1979  04fe 00            	dc.b	0
1980  04ff 08            	dc.b	8
2013                     ; 359 static void FPGA_WriteWaveTable(void)
2013                     ; 360 {
2014                     	switch	.text
2015  01d9               L532f_FPGA_WriteWaveTable:
2017  01d9 89            	pushw	x
2018       00000002      OFST:	set	2
2021                     ; 363 	SWI2C_WriteByte(FPGA_ADDRESS, 0x4A, 0x25);
2023  01da 4b25          	push	#37
2024  01dc ae004a        	ldw	x,#74
2025  01df a6ba          	ld	a,#186
2026  01e1 95            	ld	xh,a
2027  01e2 8dc402c4      	callf	f_SWI2C_WriteByte
2029  01e6 84            	pop	a
2030                     ; 364 	SWI2C_WriteByte(FPGA_ADDRESS, 0xC6, 0x01);
2032  01e7 4b01          	push	#1
2033  01e9 ae00c6        	ldw	x,#198
2034  01ec a6ba          	ld	a,#186
2035  01ee 95            	ld	xh,a
2036  01ef 8dc402c4      	callf	f_SWI2C_WriteByte
2038  01f3 84            	pop	a
2039                     ; 365 	for (i = 0; i < sizeof(wave_table); i++)
2041  01f4 5f            	clrw	x
2042  01f5 1f01          	ldw	(OFST-1,sp),x
2043  01f7               L352:
2044                     ; 367 		SWI2C_WriteByte(FPGA_ADDRESS, 0xC7, wave_table[i]);
2046  01f7 1e01          	ldw	x,(OFST-1,sp)
2047  01f9 d60000        	ld	a,(L332_wave_table,x)
2048  01fc 88            	push	a
2049  01fd ae00c7        	ldw	x,#199
2050  0200 a6ba          	ld	a,#186
2051  0202 95            	ld	xh,a
2052  0203 8dc402c4      	callf	f_SWI2C_WriteByte
2054  0207 84            	pop	a
2055                     ; 365 	for (i = 0; i < sizeof(wave_table); i++)
2057  0208 1e01          	ldw	x,(OFST-1,sp)
2058  020a 1c0001        	addw	x,#1
2059  020d 1f01          	ldw	(OFST-1,sp),x
2062  020f 1e01          	ldw	x,(OFST-1,sp)
2063  0211 a30500        	cpw	x,#1280
2064  0214 25e1          	jrult	L352
2065                     ; 369 	SWI2C_WriteByte(FPGA_ADDRESS, 0xC6, 0x02);
2067  0216 4b02          	push	#2
2068  0218 ae00c6        	ldw	x,#198
2069  021b a6ba          	ld	a,#186
2070  021d 95            	ld	xh,a
2071  021e 8dc402c4      	callf	f_SWI2C_WriteByte
2073  0222 84            	pop	a
2074                     ; 370 	SWI2C_WriteByte(FPGA_ADDRESS, 0xE0, 0x11);
2076  0223 4b11          	push	#17
2077  0225 ae00e0        	ldw	x,#224
2078  0228 a6ba          	ld	a,#186
2079  022a 95            	ld	xh,a
2080  022b 8dc402c4      	callf	f_SWI2C_WriteByte
2082  022f 84            	pop	a
2083                     ; 371 }
2086  0230 85            	popw	x
2087  0231 87            	retf
2128                     ; 374 u8 SWI2C_TestDevice(u8 addr)
2128                     ; 375 {
2129                     	switch	.text
2130  0232               f_SWI2C_TestDevice:
2132  0232 88            	push	a
2133  0233 88            	push	a
2134       00000001      OFST:	set	1
2137                     ; 377 	_SWI2C_Start();
2139  0234 8d0d000d      	callf	L16f__SWI2C_Start
2141                     ; 378 	result = _SWI2C_SendByte(addr);
2143  0238 7b02          	ld	a,(OFST+1,sp)
2144  023a 8d650065      	callf	L501f__SWI2C_SendByte
2146  023e 6b01          	ld	(OFST+0,sp),a
2147                     ; 379 	_SWI2C_Stop();
2149  0240 8d3e003e      	callf	L37f__SWI2C_Stop
2151                     ; 381 	return result;
2153  0244 7b01          	ld	a,(OFST+0,sp)
2156  0246 85            	popw	x
2157  0247 87            	retf
2206                     ; 384 u8 SWI2C_ReadByte(u8 addr, u8 subaddr, u8 * pValue)
2206                     ; 385 {
2207                     	switch	.text
2208  0248               f_SWI2C_ReadByte:
2210  0248 89            	pushw	x
2211       00000000      OFST:	set	0
2214                     ; 386 	return SWI2C_ReadBytes(addr, subaddr, 1, pValue);
2216  0249 1e06          	ldw	x,(OFST+6,sp)
2217  024b 89            	pushw	x
2218  024c 4b01          	push	#1
2219  024e 7b05          	ld	a,(OFST+5,sp)
2220  0250 97            	ld	xl,a
2221  0251 7b04          	ld	a,(OFST+4,sp)
2222  0253 95            	ld	xh,a
2223  0254 8d5c025c      	callf	f_SWI2C_ReadBytes
2225  0258 5b03          	addw	sp,#3
2228  025a 85            	popw	x
2229  025b 87            	retf
2295                     ; 389 u8 SWI2C_ReadBytes(u8 addr, u8 subaddr, u8 number, u8 * p_data)
2295                     ; 390 {	
2296                     	switch	.text
2297  025c               f_SWI2C_ReadBytes:
2299  025c 89            	pushw	x
2300  025d 88            	push	a
2301       00000001      OFST:	set	1
2304                     ; 392 	_SWI2C_Start();
2306  025e 8d0d000d      	callf	L16f__SWI2C_Start
2308                     ; 393 	result = _SWI2C_SendByte(addr);
2310  0262 7b02          	ld	a,(OFST+1,sp)
2311  0264 8d650065      	callf	L501f__SWI2C_SendByte
2313  0268 6b01          	ld	(OFST+0,sp),a
2314                     ; 394 	if (result == IIC_FAIL)
2316  026a 0d01          	tnz	(OFST+0,sp)
2317  026c 2608          	jrne	L743
2318                     ; 396 		_SWI2C_Stop();
2320  026e 8d3e003e      	callf	L37f__SWI2C_Stop
2322                     ; 397 		return result;
2324  0272 7b01          	ld	a,(OFST+0,sp)
2326  0274 2012          	jra	L23
2327  0276               L743:
2328                     ; 399 	result = _SWI2C_SendByte(subaddr);
2330  0276 7b03          	ld	a,(OFST+2,sp)
2331  0278 8d650065      	callf	L501f__SWI2C_SendByte
2333  027c 6b01          	ld	(OFST+0,sp),a
2334                     ; 400 	if (result == IIC_FAIL)
2336  027e 0d01          	tnz	(OFST+0,sp)
2337  0280 2609          	jrne	L153
2338                     ; 402 		_SWI2C_Stop();
2340  0282 8d3e003e      	callf	L37f__SWI2C_Stop
2342                     ; 403 		return result;
2344  0286 7b01          	ld	a,(OFST+0,sp)
2346  0288               L23:
2348  0288 5b03          	addw	sp,#3
2349  028a 87            	retf
2350  028b               L153:
2351                     ; 405 	_SWI2C_Start();
2353  028b 8d0d000d      	callf	L16f__SWI2C_Start
2355                     ; 406 	result = _SWI2C_SendByte(addr|0x01);
2357  028f 7b02          	ld	a,(OFST+1,sp)
2358  0291 aa01          	or	a,#1
2359  0293 8d650065      	callf	L501f__SWI2C_SendByte
2361  0297 6b01          	ld	(OFST+0,sp),a
2362                     ; 407 	if (result == IIC_FAIL)
2364  0299 0d01          	tnz	(OFST+0,sp)
2365  029b 2618          	jrne	L753
2366                     ; 409 		_SWI2C_Stop();
2368  029d 8d3e003e      	callf	L37f__SWI2C_Stop
2370                     ; 410 		return result;
2372  02a1 7b01          	ld	a,(OFST+0,sp)
2374  02a3 20e3          	jra	L23
2375  02a5               L553:
2376                     ; 414 		*p_data = _SWI2C_ReceiveByte(number);
2378  02a5 7b07          	ld	a,(OFST+6,sp)
2379  02a7 8d1a011a      	callf	L741f__SWI2C_ReceiveByte
2381  02ab 1e08          	ldw	x,(OFST+7,sp)
2382  02ad f7            	ld	(x),a
2383                     ; 415 		p_data++;
2385  02ae 1e08          	ldw	x,(OFST+7,sp)
2386  02b0 1c0001        	addw	x,#1
2387  02b3 1f08          	ldw	(OFST+7,sp),x
2388  02b5               L753:
2389                     ; 412 	while (number--)
2391  02b5 7b07          	ld	a,(OFST+6,sp)
2392  02b7 0a07          	dec	(OFST+6,sp)
2393  02b9 4d            	tnz	a
2394  02ba 26e9          	jrne	L553
2395                     ; 417 	_SWI2C_Stop();
2397  02bc 8d3e003e      	callf	L37f__SWI2C_Stop
2399                     ; 419 	return IIC_OK;
2401  02c0 a601          	ld	a,#1
2403  02c2 20c4          	jra	L23
2449                     ; 422 u8 SWI2C_WriteByte(u8 addr, u8 subaddr, u8 value)
2449                     ; 423 {	
2450                     	switch	.text
2451  02c4               f_SWI2C_WriteByte:
2453  02c4 89            	pushw	x
2454       00000000      OFST:	set	0
2457                     ; 424 	return SWI2C_WriteBytes(addr, subaddr, 1, &value);
2459  02c5 96            	ldw	x,sp
2460  02c6 1c0006        	addw	x,#OFST+6
2461  02c9 89            	pushw	x
2462  02ca 4b01          	push	#1
2463  02cc 7b05          	ld	a,(OFST+5,sp)
2464  02ce 97            	ld	xl,a
2465  02cf 7b04          	ld	a,(OFST+4,sp)
2466  02d1 95            	ld	xh,a
2467  02d2 8d390339      	callf	f_SWI2C_WriteBytes
2469  02d6 5b03          	addw	sp,#3
2472  02d8 85            	popw	x
2473  02d9 87            	retf
2528                     ; 427 u8 SWI2C_Write2Byte(u8 addr, u8 subaddr, u16 data) 
2528                     ; 428 {
2529                     	switch	.text
2530  02da               f_SWI2C_Write2Byte:
2532  02da 89            	pushw	x
2533  02db 88            	push	a
2534       00000001      OFST:	set	1
2537                     ; 430 	_SWI2C_Start();                              
2539  02dc 8d0d000d      	callf	L16f__SWI2C_Start
2541                     ; 431 	result = _SWI2C_SendByte(addr);  
2543  02e0 7b02          	ld	a,(OFST+1,sp)
2544  02e2 8d650065      	callf	L501f__SWI2C_SendByte
2546  02e6 6b01          	ld	(OFST+0,sp),a
2547                     ; 432 	if (result == IIC_FAIL)
2549  02e8 0d01          	tnz	(OFST+0,sp)
2550  02ea 2608          	jrne	L524
2551                     ; 434 		_SWI2C_Stop();
2553  02ec 8d3e003e      	callf	L37f__SWI2C_Stop
2555                     ; 435 		return result;
2557  02f0 7b01          	ld	a,(OFST+0,sp)
2559  02f2 2012          	jra	L04
2560  02f4               L524:
2561                     ; 437 	result = _SWI2C_SendByte(subaddr);     
2563  02f4 7b03          	ld	a,(OFST+2,sp)
2564  02f6 8d650065      	callf	L501f__SWI2C_SendByte
2566  02fa 6b01          	ld	(OFST+0,sp),a
2567                     ; 438 	if (result == IIC_FAIL)
2569  02fc 0d01          	tnz	(OFST+0,sp)
2570  02fe 2609          	jrne	L724
2571                     ; 440 		_SWI2C_Stop();
2573  0300 8d3e003e      	callf	L37f__SWI2C_Stop
2575                     ; 441 		return result;
2577  0304 7b01          	ld	a,(OFST+0,sp)
2579  0306               L04:
2581  0306 5b03          	addw	sp,#3
2582  0308 87            	retf
2583  0309               L724:
2584                     ; 443 	result = _SWI2C_SendByte(data>>8);     
2586  0309 7b07          	ld	a,(OFST+6,sp)
2587  030b 8d650065      	callf	L501f__SWI2C_SendByte
2589  030f 6b01          	ld	(OFST+0,sp),a
2590                     ; 444 	if (result == IIC_FAIL)
2592  0311 0d01          	tnz	(OFST+0,sp)
2593  0313 2608          	jrne	L134
2594                     ; 446 		_SWI2C_Stop();
2596  0315 8d3e003e      	callf	L37f__SWI2C_Stop
2598                     ; 447 		return result;
2600  0319 7b01          	ld	a,(OFST+0,sp)
2602  031b 20e9          	jra	L04
2603  031d               L134:
2604                     ; 449 	result = _SWI2C_SendByte(data);   
2606  031d 7b08          	ld	a,(OFST+7,sp)
2607  031f 8d650065      	callf	L501f__SWI2C_SendByte
2609  0323 6b01          	ld	(OFST+0,sp),a
2610                     ; 450 	if (result == IIC_FAIL)
2612  0325 0d01          	tnz	(OFST+0,sp)
2613  0327 2608          	jrne	L334
2614                     ; 452 		_SWI2C_Stop();
2616  0329 8d3e003e      	callf	L37f__SWI2C_Stop
2618                     ; 453 		return result;
2620  032d 7b01          	ld	a,(OFST+0,sp)
2622  032f 20d5          	jra	L04
2623  0331               L334:
2624                     ; 455 	_SWI2C_Stop();    
2626  0331 8d3e003e      	callf	L37f__SWI2C_Stop
2628                     ; 456 	return IIC_OK;
2630  0335 a601          	ld	a,#1
2632  0337 20cd          	jra	L04
2697                     ; 459 u8 SWI2C_WriteBytes(u8 addr, u8 subaddr, u8 number, u8 * p_data)
2697                     ; 460 {
2698                     	switch	.text
2699  0339               f_SWI2C_WriteBytes:
2701  0339 89            	pushw	x
2702  033a 88            	push	a
2703       00000001      OFST:	set	1
2706                     ; 462 	_SWI2C_Start();
2708  033b 8d0d000d      	callf	L16f__SWI2C_Start
2710                     ; 463 	result = _SWI2C_SendByte(addr);
2712  033f 7b02          	ld	a,(OFST+1,sp)
2713  0341 8d650065      	callf	L501f__SWI2C_SendByte
2715  0345 6b01          	ld	(OFST+0,sp),a
2716                     ; 464 	if (result == IIC_FAIL)
2718  0347 0d01          	tnz	(OFST+0,sp)
2719  0349 2608          	jrne	L364
2720                     ; 466 		_SWI2C_Stop();
2722  034b 8d3e003e      	callf	L37f__SWI2C_Stop
2724                     ; 467 		return result;
2726  034f 7b01          	ld	a,(OFST+0,sp)
2728  0351 2012          	jra	L44
2729  0353               L364:
2730                     ; 469 	result = _SWI2C_SendByte(subaddr);
2732  0353 7b03          	ld	a,(OFST+2,sp)
2733  0355 8d650065      	callf	L501f__SWI2C_SendByte
2735  0359 6b01          	ld	(OFST+0,sp),a
2736                     ; 470 	if (result == IIC_FAIL)
2738  035b 0d01          	tnz	(OFST+0,sp)
2739  035d 2625          	jrne	L174
2740                     ; 472 		_SWI2C_Stop();
2742  035f 8d3e003e      	callf	L37f__SWI2C_Stop
2744                     ; 473 		return result;
2746  0363 7b01          	ld	a,(OFST+0,sp)
2748  0365               L44:
2750  0365 5b03          	addw	sp,#3
2751  0367 87            	retf
2752  0368               L764:
2753                     ; 477 		result = _SWI2C_SendByte(*p_data);
2755  0368 1e08          	ldw	x,(OFST+7,sp)
2756  036a f6            	ld	a,(x)
2757  036b 8d650065      	callf	L501f__SWI2C_SendByte
2759  036f 6b01          	ld	(OFST+0,sp),a
2760                     ; 478 		if (result == IIC_FAIL)
2762  0371 0d01          	tnz	(OFST+0,sp)
2763  0373 2608          	jrne	L574
2764                     ; 480 		_SWI2C_Stop();
2766  0375 8d3e003e      	callf	L37f__SWI2C_Stop
2768                     ; 481 		return result;
2770  0379 7b01          	ld	a,(OFST+0,sp)
2772  037b 20e8          	jra	L44
2773  037d               L574:
2774                     ; 483 		p_data++;
2776  037d 1e08          	ldw	x,(OFST+7,sp)
2777  037f 1c0001        	addw	x,#1
2778  0382 1f08          	ldw	(OFST+7,sp),x
2779  0384               L174:
2780                     ; 475 	while (number--)
2782  0384 7b07          	ld	a,(OFST+6,sp)
2783  0386 0a07          	dec	(OFST+6,sp)
2784  0388 4d            	tnz	a
2785  0389 26dd          	jrne	L764
2786                     ; 485 	_SWI2C_Stop();
2788  038b 8d3e003e      	callf	L37f__SWI2C_Stop
2790                     ; 486 	return IIC_OK;
2792  038f a601          	ld	a,#1
2794  0391 20d2          	jra	L44
2822                     ; 489 void SWI2C_Init(void)
2822                     ; 490 {
2823                     	switch	.text
2824  0393               f_SWI2C_Init:
2828                     ; 491 	GPIO_Init(IIC_SCL_PORT, IIC_SCL_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
2830  0393 4bb0          	push	#176
2831  0395 4b10          	push	#16
2832  0397 ae5005        	ldw	x,#20485
2833  039a 8d000000      	callf	f_GPIO_Init
2835  039e 85            	popw	x
2836                     ; 492 	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
2838  039f 4bb0          	push	#176
2839  03a1 4b20          	push	#32
2840  03a3 ae5005        	ldw	x,#20485
2841  03a6 8d000000      	callf	f_GPIO_Init
2843  03aa 85            	popw	x
2844                     ; 493 	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
2846  03ab 4b10          	push	#16
2847  03ad ae5005        	ldw	x,#20485
2848  03b0 8d000000      	callf	f_GPIO_WriteHigh
2850  03b4 84            	pop	a
2851                     ; 494 	GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
2853  03b5 4b20          	push	#32
2854  03b7 ae5005        	ldw	x,#20485
2855  03ba 8d000000      	callf	f_GPIO_WriteHigh
2857  03be 84            	pop	a
2858                     ; 496 	GPIO_Init(POWER_ONOFF_PORT, POWER_ONOFF_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
2860  03bf 4bf0          	push	#240
2861  03c1 4b20          	push	#32
2862  03c3 ae500a        	ldw	x,#20490
2863  03c6 8d000000      	callf	f_GPIO_Init
2865  03ca 85            	popw	x
2866                     ; 498 	GPIO_Init(FPGA_RESET_PORT, FPGA_RESET_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
2868  03cb 4bf0          	push	#240
2869  03cd 4b10          	push	#16
2870  03cf ae500a        	ldw	x,#20490
2871  03d2 8d000000      	callf	f_GPIO_Init
2873  03d6 85            	popw	x
2874                     ; 499 	GPIO_Init(IT680X_RESET_PORT, IT680X_RESET_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
2876  03d7 4bf0          	push	#240
2877  03d9 4b01          	push	#1
2878  03db ae5005        	ldw	x,#20485
2879  03de 8d000000      	callf	f_GPIO_Init
2881  03e2 85            	popw	x
2882                     ; 501 	GPIO_Init(LED_R_PORT, LED_R_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);	
2884  03e3 4bf0          	push	#240
2885  03e5 4b01          	push	#1
2886  03e7 ae5014        	ldw	x,#20500
2887  03ea 8d000000      	callf	f_GPIO_Init
2889  03ee 85            	popw	x
2890                     ; 502 	GPIO_Init(LED_G_PORT, LED_G_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
2892  03ef 4be0          	push	#224
2893  03f1 4b08          	push	#8
2894  03f3 ae500f        	ldw	x,#20495
2895  03f6 8d000000      	callf	f_GPIO_Init
2897  03fa 85            	popw	x
2898                     ; 504 	GPIO_Init(HDMI_HOTPLUG_PORT, HDMI_HOTPLUG_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
2900  03fb 4bf0          	push	#240
2901  03fd 4b40          	push	#64
2902  03ff ae5005        	ldw	x,#20485
2903  0402 8d000000      	callf	f_GPIO_Init
2905  0406 85            	popw	x
2906                     ; 506 	GPIO_Init(BACKLIGHT_ONOFF_PORT, BACKLIGHT_ONOFF_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
2908  0407 4be0          	push	#224
2909  0409 4b80          	push	#128
2910  040b ae500a        	ldw	x,#20490
2911  040e 8d000000      	callf	f_GPIO_Init
2913  0412 85            	popw	x
2914                     ; 507 	GPIO_Init(BACKLIGHT_PWM_PORT, BACKLIGHT_PWM_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
2916  0413 4bf0          	push	#240
2917  0415 4b40          	push	#64
2918  0417 ae500a        	ldw	x,#20490
2919  041a 8d000000      	callf	f_GPIO_Init
2921  041e 85            	popw	x
2922                     ; 508 	GPIO_Init(VPANEL_ONOFF_PORT, VPANEL_ONOFF_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
2924  041f 4be0          	push	#224
2925  0421 4b01          	push	#1
2926  0423 ae501e        	ldw	x,#20510
2927  0426 8d000000      	callf	f_GPIO_Init
2929  042a 85            	popw	x
2930                     ; 510 	TIM1_TimeBaseInit(0, TIM1_COUNTERMODE_UP, 4095, 0);
2932  042b 4b00          	push	#0
2933  042d ae0fff        	ldw	x,#4095
2934  0430 89            	pushw	x
2935  0431 4b00          	push	#0
2936  0433 5f            	clrw	x
2937  0434 8d000000      	callf	f_TIM1_TimeBaseInit
2939  0438 5b04          	addw	sp,#4
2940                     ; 511 	TIM1_OC1Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE, TIM1_OUTPUTNSTATE_DISABLE,
2940                     ; 512 	           0, TIM1_OCPOLARITY_LOW, TIM1_OCNPOLARITY_HIGH, TIM1_OCIDLESTATE_SET,
2940                     ; 513 	           TIM1_OCNIDLESTATE_RESET);
2942  043a 4b00          	push	#0
2943  043c 4b55          	push	#85
2944  043e 4b00          	push	#0
2945  0440 4b22          	push	#34
2946  0442 5f            	clrw	x
2947  0443 89            	pushw	x
2948  0444 4b00          	push	#0
2949  0446 ae0011        	ldw	x,#17
2950  0449 a670          	ld	a,#112
2951  044b 95            	ld	xh,a
2952  044c 8d000000      	callf	f_TIM1_OC1Init
2954  0450 5b07          	addw	sp,#7
2955                     ; 514 	TIM1_Cmd(ENABLE);
2957  0452 a601          	ld	a,#1
2958  0454 8d000000      	callf	f_TIM1_Cmd
2960                     ; 515 	TIM1_CtrlPWMOutputs(ENABLE);
2962  0458 a601          	ld	a,#1
2963  045a 8d000000      	callf	f_TIM1_CtrlPWMOutputs
2965                     ; 516 }
2968  045e 87            	retf
3032                     	switch	.const
3033  0500               L25:
3034  0500 00000001      	dc.l	1
3035                     ; 518 void SWI2C_Update(void)
3035                     ; 519 {	
3036                     	switch	.text
3037  045f               f_SWI2C_Update:
3039  045f 89            	pushw	x
3040       00000002      OFST:	set	2
3043                     ; 520 	if (Backlight_on_timer == TIMER_EXPIRED)
3045  0460 ae0004        	ldw	x,#L5_Backlight_on_timer
3046  0463 8d000000      	callf	d_ltor
3048  0467 ae0500        	ldw	x,#L25
3049  046a 8d000000      	callf	d_lcmp
3051  046e 2639          	jrne	L725
3052                     ; 524 		singal_change_count = 0;
3054  0470 725f0001      	clr	L12_singal_change_count
3055                     ; 525 		if (SWI2C_GetSignalStatus())
3057  0474 8db901b9      	callf	L112f_SWI2C_GetSignalStatus
3059  0478 4d            	tnz	a
3060  0479 2710          	jreq	L135
3061                     ; 527 			SET_BACKLIGHT_ON();	
3063  047b 4b80          	push	#128
3064  047d ae500a        	ldw	x,#20490
3065  0480 8d000000      	callf	f_GPIO_WriteLow
3067  0484 84            	pop	a
3068                     ; 528 			signal_status = TRUE;
3070  0485 35010002      	mov	L71_signal_status,#1
3072  0489 200e          	jra	L335
3073  048b               L135:
3074                     ; 532 			SET_VPANEL_OFF();
3076  048b 4b01          	push	#1
3077  048d ae501e        	ldw	x,#20510
3078  0490 8d000000      	callf	f_GPIO_WriteLow
3080  0494 84            	pop	a
3081                     ; 533 			signal_status = FALSE;
3083  0495 725f0002      	clr	L71_signal_status
3084  0499               L335:
3085                     ; 535 		run_status = TRUE;
3087  0499 3501000e      	mov	L51_run_status,#1
3088                     ; 536 		Backlight_on_timer = TIMER_STOPPED;
3090  049d ae0000        	ldw	x,#0
3091  04a0 cf0006        	ldw	L5_Backlight_on_timer+2,x
3092  04a3 ae0000        	ldw	x,#0
3093  04a6 cf0004        	ldw	L5_Backlight_on_timer,x
3094  04a9               L725:
3095                     ; 539 	if (Power_status && !I2C_stop)
3097  04a9 725d000d      	tnz	L31_Power_status
3098  04ad 2779          	jreq	L535
3100  04af 725d000f      	tnz	L32_I2C_stop
3101  04b3 2673          	jrne	L535
3102                     ; 541 		IT6802_fsm();
3104  04b5 8d000000      	callf	f_IT6802_fsm
3106                     ; 543 		if (frc_update_timer == TIMER_EXPIRED && Have_FRC)
3108  04b9 ae0000        	ldw	x,#L3_frc_update_timer
3109  04bc 8d000000      	callf	d_ltor
3111  04c0 ae0500        	ldw	x,#L25
3112  04c3 8d000000      	callf	d_lcmp
3114  04c7 265f          	jrne	L535
3116  04c9 725d0000      	tnz	L52_Have_FRC
3117  04cd 2759          	jreq	L535
3118                     ; 546 			SWI2C_ReadByte(FRC_BOARD_ADDRESS, 0x18, &read_LVDS_mode);
3120  04cf 96            	ldw	x,sp
3121  04d0 1c0001        	addw	x,#OFST-1
3122  04d3 89            	pushw	x
3123  04d4 ae0018        	ldw	x,#24
3124  04d7 a622          	ld	a,#34
3125  04d9 95            	ld	xh,a
3126  04da 8d480248      	callf	f_SWI2C_ReadByte
3128  04de 85            	popw	x
3129                     ; 547 			if (read_LVDS_mode != LVDS_mode)
3131  04df 7b01          	ld	a,(OFST-1,sp)
3132  04e1 c1000c        	cp	a,L11_LVDS_mode
3133  04e4 270e          	jreq	L145
3134                     ; 549 				SWI2C_WriteByte(FRC_BOARD_ADDRESS, 0x18, LVDS_mode);
3136  04e6 3b000c        	push	L11_LVDS_mode
3137  04e9 ae0018        	ldw	x,#24
3138  04ec a622          	ld	a,#34
3139  04ee 95            	ld	xh,a
3140  04ef 8dc402c4      	callf	f_SWI2C_WriteByte
3142  04f3 84            	pop	a
3143  04f4               L145:
3144                     ; 551 			SWI2C_ReadByte(FRC_BOARD_ADDRESS, 0x0A, &read_MFC);
3146  04f4 96            	ldw	x,sp
3147  04f5 1c0002        	addw	x,#OFST+0
3148  04f8 89            	pushw	x
3149  04f9 ae000a        	ldw	x,#10
3150  04fc a622          	ld	a,#34
3151  04fe 95            	ld	xh,a
3152  04ff 8d480248      	callf	f_SWI2C_ReadByte
3154  0503 85            	popw	x
3155                     ; 552 			if (read_MFC != 0)
3157  0504 0d02          	tnz	(OFST+0,sp)
3158  0506 2714          	jreq	L345
3159                     ; 554 				IR_DelayNMiliseconds(50);
3161  0508 ae0032        	ldw	x,#50
3162  050b 8d000000      	callf	f_IR_DelayNMiliseconds
3164                     ; 555 				SWI2C_WriteByte(FRC_BOARD_ADDRESS, 0x0A, 0);
3166  050f 4b00          	push	#0
3167  0511 ae000a        	ldw	x,#10
3168  0514 a622          	ld	a,#34
3169  0516 95            	ld	xh,a
3170  0517 8dc402c4      	callf	f_SWI2C_WriteByte
3172  051b 84            	pop	a
3173  051c               L345:
3174                     ; 557 			frc_update_timer = FRC_UPDATE_TIME;
3176  051c ae01f5        	ldw	x,#501
3177  051f cf0002        	ldw	L3_frc_update_timer+2,x
3178  0522 ae0000        	ldw	x,#0
3179  0525 cf0000        	ldw	L3_frc_update_timer,x
3180  0528               L535:
3181                     ; 581 	if (run_status && !I2C_stop)
3183  0528 725d000e      	tnz	L51_run_status
3184  052c 2604          	jrne	L45
3185  052e aced05ed      	jpf	L545
3186  0532               L45:
3188  0532 725d000f      	tnz	L32_I2C_stop
3189  0536 2704          	jreq	L65
3190  0538 aced05ed      	jpf	L545
3191  053c               L65:
3192                     ; 583 		if (signal_detect_timer == TIMER_EXPIRED)
3194  053c ae0008        	ldw	x,#L7_signal_detect_timer
3195  053f 8d000000      	callf	d_ltor
3197  0543 ae0500        	ldw	x,#L25
3198  0546 8d000000      	callf	d_lcmp
3200  054a 2704          	jreq	L06
3201  054c aced05ed      	jpf	L545
3202  0550               L06:
3203                     ; 586 			u8 current_signal_status = SWI2C_GetSignalStatus();
3205  0550 8db901b9      	callf	L112f_SWI2C_GetSignalStatus
3207  0554 6b02          	ld	(OFST+0,sp),a
3208                     ; 588 			signal_detect_timer = SINGNAL_TETECT_TIME;
3210  0556 ae01f5        	ldw	x,#501
3211  0559 cf000a        	ldw	L7_signal_detect_timer+2,x
3212  055c ae0000        	ldw	x,#0
3213  055f cf0008        	ldw	L7_signal_detect_timer,x
3214                     ; 589 			if (current_signal_status != signal_status)
3216  0562 7b02          	ld	a,(OFST+0,sp)
3217  0564 c10002        	cp	a,L71_signal_status
3218  0567 2764          	jreq	L155
3219                     ; 591 				singal_change_count++;
3221  0569 725c0001      	inc	L12_singal_change_count
3222                     ; 592 				if (singal_change_count > 3)
3224  056d c60001        	ld	a,L12_singal_change_count
3225  0570 a104          	cp	a,#4
3226  0572 255d          	jrult	L165
3227                     ; 594 					signal_status = current_signal_status;
3229  0574 7b02          	ld	a,(OFST+0,sp)
3230  0576 c70002        	ld	L71_signal_status,a
3231                     ; 595 					if (signal_status)
3233  0579 725d0002      	tnz	L71_signal_status
3234  057d 2727          	jreq	L555
3235                     ; 597 						SET_VPANEL_ON();
3237  057f 4b01          	push	#1
3238  0581 ae501e        	ldw	x,#20510
3239  0584 8d000000      	callf	f_GPIO_WriteHigh
3241  0588 84            	pop	a
3242                     ; 598 						IR_DelayNMiliseconds(200);
3244  0589 ae00c8        	ldw	x,#200
3245  058c 8d000000      	callf	f_IR_DelayNMiliseconds
3247                     ; 599 						SET_BACKLIGHT_ON();
3249  0590 4b80          	push	#128
3250  0592 ae500a        	ldw	x,#20490
3251  0595 8d000000      	callf	f_GPIO_WriteLow
3253  0599 84            	pop	a
3254                     ; 600 						GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
3256  059a 4b08          	push	#8
3257  059c ae500f        	ldw	x,#20495
3258  059f 8d000000      	callf	f_GPIO_WriteHigh
3260  05a3 84            	pop	a
3262  05a4 202b          	jra	L165
3263  05a6               L555:
3264                     ; 604 						SET_BACKLIGHT_OFF();
3266  05a6 4b80          	push	#128
3267  05a8 ae500a        	ldw	x,#20490
3268  05ab 8d000000      	callf	f_GPIO_WriteHigh
3270  05af 84            	pop	a
3271                     ; 605 						IR_DelayNMiliseconds(200);
3273  05b0 ae00c8        	ldw	x,#200
3274  05b3 8d000000      	callf	f_IR_DelayNMiliseconds
3276                     ; 606 						SET_VPANEL_OFF();
3278  05b7 4b01          	push	#1
3279  05b9 ae501e        	ldw	x,#20510
3280  05bc 8d000000      	callf	f_GPIO_WriteLow
3282  05c0 84            	pop	a
3283                     ; 607 						GPIO_WriteLow(LED_G_PORT, LED_G_PIN);
3285  05c1 4b08          	push	#8
3286  05c3 ae500f        	ldw	x,#20495
3287  05c6 8d000000      	callf	f_GPIO_WriteLow
3289  05ca 84            	pop	a
3290  05cb 2004          	jra	L165
3291  05cd               L155:
3292                     ; 613 				singal_change_count = 0;
3294  05cd 725f0001      	clr	L12_singal_change_count
3295  05d1               L165:
3296                     ; 616 			if (signal_status)
3298  05d1 725d0002      	tnz	L71_signal_status
3299  05d5 270c          	jreq	L365
3300                     ; 618 				GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
3302  05d7 4b08          	push	#8
3303  05d9 ae500f        	ldw	x,#20495
3304  05dc 8d000000      	callf	f_GPIO_WriteHigh
3306  05e0 84            	pop	a
3308  05e1 200a          	jra	L545
3309  05e3               L365:
3310                     ; 622 				GPIO_WriteReverse(LED_G_PORT, LED_G_PIN);
3312  05e3 4b08          	push	#8
3313  05e5 ae500f        	ldw	x,#20495
3314  05e8 8d000000      	callf	f_GPIO_WriteReverse
3316  05ec 84            	pop	a
3317  05ed               L545:
3318                     ; 626 }
3321  05ed 85            	popw	x
3322  05ee 87            	retf
3355                     ; 628 void SWI2C_SystemPowerUp(void)
3355                     ; 629 {
3356                     	switch	.text
3357  05ef               f_SWI2C_SystemPowerUp:
3361                     ; 630 	GPIO_WriteLow(POWER_ONOFF_PORT, POWER_ONOFF_PIN);
3363  05ef 4b20          	push	#32
3364  05f1 ae500a        	ldw	x,#20490
3365  05f4 8d000000      	callf	f_GPIO_WriteLow
3367  05f8 84            	pop	a
3368                     ; 631 	GPIO_WriteLow(LED_R_PORT, LED_R_PIN);			
3370  05f9 4b01          	push	#1
3371  05fb ae5014        	ldw	x,#20500
3372  05fe 8d000000      	callf	f_GPIO_WriteLow
3374  0602 84            	pop	a
3375                     ; 632 	GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
3377  0603 4b08          	push	#8
3378  0605 ae500f        	ldw	x,#20495
3379  0608 8d000000      	callf	f_GPIO_WriteHigh
3381  060c 84            	pop	a
3382                     ; 633 	IR_DelayNMiliseconds(50);
3384  060d ae0032        	ldw	x,#50
3385  0610 8d000000      	callf	f_IR_DelayNMiliseconds
3387                     ; 634 	Power_status = TRUE;
3389  0614 3501000d      	mov	L31_Power_status,#1
3390                     ; 635 	GPIO_WriteLow(IT680X_RESET_PORT, IT680X_RESET_PIN);
3392  0618 4b01          	push	#1
3393  061a ae5005        	ldw	x,#20485
3394  061d 8d000000      	callf	f_GPIO_WriteLow
3396  0621 84            	pop	a
3397                     ; 636 	GPIO_WriteLow(FPGA_RESET_PORT, FPGA_RESET_PIN);
3399  0622 4b10          	push	#16
3400  0624 ae500a        	ldw	x,#20490
3401  0627 8d000000      	callf	f_GPIO_WriteLow
3403  062b 84            	pop	a
3404                     ; 637 	IR_DelayNMiliseconds(200);
3406  062c ae00c8        	ldw	x,#200
3407  062f 8d000000      	callf	f_IR_DelayNMiliseconds
3409                     ; 638 	GPIO_WriteHigh(IT680X_RESET_PORT, IT680X_RESET_PIN);
3411  0633 4b01          	push	#1
3412  0635 ae5005        	ldw	x,#20485
3413  0638 8d000000      	callf	f_GPIO_WriteHigh
3415  063c 84            	pop	a
3416                     ; 639 	GPIO_WriteHigh(FPGA_RESET_PORT, FPGA_RESET_PIN);
3418  063d 4b10          	push	#16
3419  063f ae500a        	ldw	x,#20490
3420  0642 8d000000      	callf	f_GPIO_WriteHigh
3422  0646 84            	pop	a
3423                     ; 640 	IR_DelayNMiliseconds(1000);
3425  0647 ae03e8        	ldw	x,#1000
3426  064a 8d000000      	callf	f_IR_DelayNMiliseconds
3428                     ; 641 	FPGA_Init();	
3430  064e 8d6a076a      	callf	f_FPGA_Init
3432                     ; 643 	FPGA_WriteWaveTable();
3434  0652 8dd901d9      	callf	L532f_FPGA_WriteWaveTable
3436                     ; 645 	IT6802_fsm_init();
3438  0656 8d000000      	callf	f_IT6802_fsm_init
3440                     ; 646 	Have_FRC = SWI2C_TestDevice(FRC_BOARD_ADDRESS);
3442  065a a622          	ld	a,#34
3443  065c 8d320232      	callf	f_SWI2C_TestDevice
3445  0660 c70000        	ld	L52_Have_FRC,a
3446                     ; 647 	SET_VPANEL_ON();
3448  0663 4b01          	push	#1
3449  0665 ae501e        	ldw	x,#20510
3450  0668 8d000000      	callf	f_GPIO_WriteHigh
3452  066c 84            	pop	a
3453                     ; 648 	Backlight_on_timer = BACKLIGHT_DELAY_TIME;
3455  066d ae1389        	ldw	x,#5001
3456  0670 cf0006        	ldw	L5_Backlight_on_timer+2,x
3457  0673 ae0000        	ldw	x,#0
3458  0676 cf0004        	ldw	L5_Backlight_on_timer,x
3459                     ; 649 }
3462  0679 87            	retf
3491                     ; 651 void SWI2C_SystemPowerDown(void)
3491                     ; 652 {
3492                     	switch	.text
3493  067a               f_SWI2C_SystemPowerDown:
3497                     ; 653 	SET_BACKLIGHT_OFF();
3499  067a 4b80          	push	#128
3500  067c ae500a        	ldw	x,#20490
3501  067f 8d000000      	callf	f_GPIO_WriteHigh
3503  0683 84            	pop	a
3504                     ; 654 	IR_DelayNMiliseconds(200);
3506  0684 ae00c8        	ldw	x,#200
3507  0687 8d000000      	callf	f_IR_DelayNMiliseconds
3509                     ; 655 	SET_VPANEL_OFF();
3511  068b 4b01          	push	#1
3512  068d ae501e        	ldw	x,#20510
3513  0690 8d000000      	callf	f_GPIO_WriteLow
3515  0694 84            	pop	a
3516                     ; 656 	GPIO_WriteHigh(POWER_ONOFF_PORT, POWER_ONOFF_PIN);
3518  0695 4b20          	push	#32
3519  0697 ae500a        	ldw	x,#20490
3520  069a 8d000000      	callf	f_GPIO_WriteHigh
3522  069e 84            	pop	a
3523                     ; 657 	GPIO_WriteHigh(LED_R_PORT, LED_R_PIN);			
3525  069f 4b01          	push	#1
3526  06a1 ae5014        	ldw	x,#20500
3527  06a4 8d000000      	callf	f_GPIO_WriteHigh
3529  06a8 84            	pop	a
3530                     ; 658 	GPIO_WriteLow(LED_G_PORT, LED_G_PIN);
3532  06a9 4b08          	push	#8
3533  06ab ae500f        	ldw	x,#20495
3534  06ae 8d000000      	callf	f_GPIO_WriteLow
3536  06b2 84            	pop	a
3537                     ; 659 	Power_status = FALSE;
3539  06b3 725f000d      	clr	L31_Power_status
3540                     ; 660 	run_status = FALSE;
3542  06b7 725f000e      	clr	L51_run_status
3543                     ; 661 	I2C_stop = FALSE;
3545  06bb 725f000f      	clr	L32_I2C_stop
3546                     ; 662 }
3549  06bf 87            	retf
3576                     ; 664 void SWI2C_ToggleI2CMode(void)
3576                     ; 665 {
3577                     	switch	.text
3578  06c0               f_SWI2C_ToggleI2CMode:
3582                     ; 666 	if (Power_status)
3584  06c0 725d000d      	tnz	L31_Power_status
3585  06c4 273e          	jreq	L716
3586                     ; 668 		I2C_stop = !I2C_stop;
3588  06c6 725d000f      	tnz	L32_I2C_stop
3589  06ca 2604          	jrne	L07
3590  06cc a601          	ld	a,#1
3591  06ce 2001          	jra	L27
3592  06d0               L07:
3593  06d0 4f            	clr	a
3594  06d1               L27:
3595  06d1 c7000f        	ld	L32_I2C_stop,a
3596                     ; 669 		if (I2C_stop)
3598  06d4 725d000f      	tnz	L32_I2C_stop
3599  06d8 2716          	jreq	L126
3600                     ; 671 			GPIO_WriteHigh(LED_R_PORT, LED_R_PIN);			
3602  06da 4b01          	push	#1
3603  06dc ae5014        	ldw	x,#20500
3604  06df 8d000000      	callf	f_GPIO_WriteHigh
3606  06e3 84            	pop	a
3607                     ; 672 			GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
3609  06e4 4b08          	push	#8
3610  06e6 ae500f        	ldw	x,#20495
3611  06e9 8d000000      	callf	f_GPIO_WriteHigh
3613  06ed 84            	pop	a
3615  06ee 2014          	jra	L716
3616  06f0               L126:
3617                     ; 676 			GPIO_WriteLow(LED_R_PORT, LED_R_PIN);			
3619  06f0 4b01          	push	#1
3620  06f2 ae5014        	ldw	x,#20500
3621  06f5 8d000000      	callf	f_GPIO_WriteLow
3623  06f9 84            	pop	a
3624                     ; 677 			GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
3626  06fa 4b08          	push	#8
3627  06fc ae500f        	ldw	x,#20495
3628  06ff 8d000000      	callf	f_GPIO_WriteHigh
3630  0703 84            	pop	a
3631  0704               L716:
3632                     ; 680 }
3635  0704 87            	retf
3660                     ; 682 void SWI2C_ProcessPower(void)
3660                     ; 683 {
3661                     	switch	.text
3662  0705               f_SWI2C_ProcessPower:
3666                     ; 684 	if (Power_status)
3668  0705 725d000d      	tnz	L31_Power_status
3669  0709 2706          	jreq	L536
3670                     ; 686 		SWI2C_SystemPowerDown();
3672  070b 8d7a067a      	callf	f_SWI2C_SystemPowerDown
3675  070f 2004          	jra	L736
3676  0711               L536:
3677                     ; 690 		SWI2C_SystemPowerUp();
3679  0711 8def05ef      	callf	f_SWI2C_SystemPowerUp
3681  0715               L736:
3682                     ; 692 }
3685  0715 87            	retf
3687                     	switch	.data
3688  0010               L146_Set3DOn:
3689  0010 00            	dc.b	0
3742                     ; 696 static void SWI2C_Set3DOnOff(u8 OnOff)
3742                     ; 697 {
3743                     	switch	.text
3744  0716               L346f_SWI2C_Set3DOnOff:
3746  0716 5203          	subw	sp,#3
3747       00000003      OFST:	set	3
3750                     ; 699 	if (OnOff)
3752  0718 4d            	tnz	a
3753  0719 2706          	jreq	L766
3754                     ; 701 		reg_value = 0x80;
3756  071b a680          	ld	a,#128
3757  071d 6b03          	ld	(OFST+0,sp),a
3759  071f 2002          	jra	L176
3760  0721               L766:
3761                     ; 705 		reg_value = 0x0;
3763  0721 0f03          	clr	(OFST+0,sp)
3764  0723               L176:
3765                     ; 707 	for (retry = 0; retry < 3; retry++)
3767  0723 0f02          	clr	(OFST-1,sp)
3768  0725               L376:
3769                     ; 710 		SWI2C_WriteByte(FPGA_ADDRESS, 0x57, reg_value);
3771  0725 7b03          	ld	a,(OFST+0,sp)
3772  0727 88            	push	a
3773  0728 ae0057        	ldw	x,#87
3774  072b a6ba          	ld	a,#186
3775  072d 95            	ld	xh,a
3776  072e 8dc402c4      	callf	f_SWI2C_WriteByte
3778  0732 84            	pop	a
3779                     ; 711 		SWI2C_ReadByte(FPGA_ADDRESS, 0x57, &value);
3781  0733 96            	ldw	x,sp
3782  0734 1c0001        	addw	x,#OFST-2
3783  0737 89            	pushw	x
3784  0738 ae0057        	ldw	x,#87
3785  073b a6ba          	ld	a,#186
3786  073d 95            	ld	xh,a
3787  073e 8d480248      	callf	f_SWI2C_ReadByte
3789  0742 85            	popw	x
3790                     ; 712 		if (value == reg_value)
3792  0743 7b01          	ld	a,(OFST-2,sp)
3793  0745 1103          	cp	a,(OFST+0,sp)
3794  0747 2708          	jreq	L776
3795                     ; 714 			break;
3797                     ; 707 	for (retry = 0; retry < 3; retry++)
3799  0749 0c02          	inc	(OFST-1,sp)
3802  074b 7b02          	ld	a,(OFST-1,sp)
3803  074d a103          	cp	a,#3
3804  074f 25d4          	jrult	L376
3805  0751               L776:
3806                     ; 717 }
3809  0751 5b03          	addw	sp,#3
3810  0753 87            	retf
3835                     ; 719 void SWI2C_Toggle3DOnOff(void)
3835                     ; 720 {	
3836                     	switch	.text
3837  0754               f_SWI2C_Toggle3DOnOff:
3841                     ; 721 	Set3DOn = !Set3DOn;
3843  0754 725d0010      	tnz	L146_Set3DOn
3844  0758 2604          	jrne	L201
3845  075a a601          	ld	a,#1
3846  075c 2001          	jra	L401
3847  075e               L201:
3848  075e 4f            	clr	a
3849  075f               L401:
3850  075f c70010        	ld	L146_Set3DOn,a
3851                     ; 722 	SWI2C_Set3DOnOff(Set3DOn);
3853  0762 c60010        	ld	a,L146_Set3DOn
3854  0765 8d160716      	callf	L346f_SWI2C_Set3DOnOff
3856                     ; 723 }
3859  0769 87            	retf
3896                     ; 728 void FPGA_Init(void)
3896                     ; 729  {	
3897                     	switch	.text
3898  076a               f_FPGA_Init:
3900  076a 88            	push	a
3901       00000001      OFST:	set	1
3904                     ; 731 	for (i = 0; i < table_size; i++)
3906  076b 0f01          	clr	(OFST+0,sp)
3908  076d 202a          	jra	L337
3909  076f               L727:
3910                     ; 733 		SWI2C_WriteByte(FPGA_ADDRESS, address_table[i], FLASH_ReadByte(EEPROM_START_ADDRESS + 1 + i));
3912  076f 7b01          	ld	a,(OFST+0,sp)
3913  0771 5f            	clrw	x
3914  0772 97            	ld	xl,a
3915  0773 1c4001        	addw	x,#16385
3916  0776 8d000000      	callf	d_itolx
3918  077a be02          	ldw	x,c_lreg+2
3919  077c 89            	pushw	x
3920  077d be00          	ldw	x,c_lreg
3921  077f 89            	pushw	x
3922  0780 8d000000      	callf	f_FLASH_ReadByte
3924  0784 5b04          	addw	sp,#4
3925  0786 88            	push	a
3926  0787 7b02          	ld	a,(OFST+1,sp)
3927  0789 5f            	clrw	x
3928  078a 97            	ld	xl,a
3929  078b d60000        	ld	a,(_address_table,x)
3930  078e 97            	ld	xl,a
3931  078f a6ba          	ld	a,#186
3932  0791 95            	ld	xh,a
3933  0792 8dc402c4      	callf	f_SWI2C_WriteByte
3935  0796 84            	pop	a
3936                     ; 731 	for (i = 0; i < table_size; i++)
3938  0797 0c01          	inc	(OFST+0,sp)
3939  0799               L337:
3942  0799 7b01          	ld	a,(OFST+0,sp)
3943  079b c10000        	cp	a,_table_size
3944  079e 25cf          	jrult	L727
3945                     ; 735 	if (FLASH_ReadByte(EEPROM_START_ADDRESS + 1))
3947  07a0 ae4001        	ldw	x,#16385
3948  07a3 89            	pushw	x
3949  07a4 ae0000        	ldw	x,#0
3950  07a7 89            	pushw	x
3951  07a8 8d000000      	callf	f_FLASH_ReadByte
3953  07ac 5b04          	addw	sp,#4
3954  07ae 4d            	tnz	a
3955  07af 2704          	jreq	L737
3956                     ; 737 		Set3DOn = TRUE;
3958  07b1 35010010      	mov	L146_Set3DOn,#1
3959  07b5               L737:
3960                     ; 739 	SWI2C_Set3DOnOff(Set3DOn);	
3962  07b5 c60010        	ld	a,L146_Set3DOn
3963  07b8 8d160716      	callf	L346f_SWI2C_Set3DOnOff
3965                     ; 740 }
3968  07bc 84            	pop	a
3969  07bd 87            	retf
4002                     ; 742 void HDMI_HotPlug(u8 value)
4002                     ; 743 {
4003                     	switch	.text
4004  07be               f_HDMI_HotPlug:
4008                     ; 744 	if (value)
4010  07be 4d            	tnz	a
4011  07bf 270c          	jreq	L557
4012                     ; 746 		GPIO_WriteHigh(HDMI_HOTPLUG_PORT,HDMI_HOTPLUG_PIN);
4014  07c1 4b40          	push	#64
4015  07c3 ae5005        	ldw	x,#20485
4016  07c6 8d000000      	callf	f_GPIO_WriteHigh
4018  07ca 84            	pop	a
4020  07cb 200a          	jra	L757
4021  07cd               L557:
4022                     ; 750 		GPIO_WriteLow(HDMI_HOTPLUG_PORT,HDMI_HOTPLUG_PIN);
4024  07cd 4b40          	push	#64
4025  07cf ae5005        	ldw	x,#20485
4026  07d2 8d000000      	callf	f_GPIO_WriteLow
4028  07d6 84            	pop	a
4029  07d7               L757:
4030                     ; 752 }
4033  07d7 87            	retf
4035                     	switch	.const
4036  0504               L167_deep_value:
4037  0504 30            	dc.b	48
4038  0505 80            	dc.b	128
4039  0506 60            	dc.b	96
4040  0507 50            	dc.b	80
4041  0508 70            	dc.b	112
4042  0509 70            	dc.b	112
4043  050a 70            	dc.b	112
4044  050b 60            	dc.b	96
4045  050c 80            	dc.b	128
4046  050d 90            	dc.b	144
4047  050e 50            	dc.b	80
4048  050f 90            	dc.b	144
4049  0510 a0            	dc.b	160
4050  0511 40            	dc.b	64
4051  0512 a0            	dc.b	160
4052  0513 a8            	dc.b	168
4053  0514 30            	dc.b	48
4054  0515 a0            	dc.b	160
4087                     ; 764 void SWI2C_Set_deep(u8 deep)
4087                     ; 765 {
4088                     	switch	.text
4089  07d8               f_SWI2C_Set_deep:
4091  07d8 88            	push	a
4092       00000000      OFST:	set	0
4095                     ; 766 	if (deep == 0)
4097  07d9 4d            	tnz	a
4098  07da 2650          	jrne	L777
4099                     ; 768 		SWI2C_WriteByte(FPGA_ADDRESS, 0x59, FLASH_ReadByte(0x4000 + REG_0x59 + 1));
4101  07dc ae400b        	ldw	x,#16395
4102  07df 89            	pushw	x
4103  07e0 ae0000        	ldw	x,#0
4104  07e3 89            	pushw	x
4105  07e4 8d000000      	callf	f_FLASH_ReadByte
4107  07e8 5b04          	addw	sp,#4
4108  07ea 88            	push	a
4109  07eb ae0059        	ldw	x,#89
4110  07ee a6ba          	ld	a,#186
4111  07f0 95            	ld	xh,a
4112  07f1 8dc402c4      	callf	f_SWI2C_WriteByte
4114  07f5 84            	pop	a
4115                     ; 769 		SWI2C_WriteByte(FPGA_ADDRESS, 0x5C, FLASH_ReadByte(0x4000 + REG_0x5C + 1));
4117  07f6 ae400d        	ldw	x,#16397
4118  07f9 89            	pushw	x
4119  07fa ae0000        	ldw	x,#0
4120  07fd 89            	pushw	x
4121  07fe 8d000000      	callf	f_FLASH_ReadByte
4123  0802 5b04          	addw	sp,#4
4124  0804 88            	push	a
4125  0805 ae005c        	ldw	x,#92
4126  0808 a6ba          	ld	a,#186
4127  080a 95            	ld	xh,a
4128  080b 8dc402c4      	callf	f_SWI2C_WriteByte
4130  080f 84            	pop	a
4131                     ; 770 		SWI2C_WriteByte(FPGA_ADDRESS, 0x5A, FLASH_ReadByte(0x4000 + REG_0x5A + 1));
4133  0810 ae400c        	ldw	x,#16396
4134  0813 89            	pushw	x
4135  0814 ae0000        	ldw	x,#0
4136  0817 89            	pushw	x
4137  0818 8d000000      	callf	f_FLASH_ReadByte
4139  081c 5b04          	addw	sp,#4
4140  081e 88            	push	a
4141  081f ae005a        	ldw	x,#90
4142  0822 a6ba          	ld	a,#186
4143  0824 95            	ld	xh,a
4144  0825 8dc402c4      	callf	f_SWI2C_WriteByte
4146  0829 84            	pop	a
4148  082a 203f          	jra	L1001
4149  082c               L777:
4150                     ; 774 		SWI2C_WriteByte(FPGA_ADDRESS, 0x59, deep_value[deep][0]);
4152  082c 7b01          	ld	a,(OFST+1,sp)
4153  082e 97            	ld	xl,a
4154  082f a603          	ld	a,#3
4155  0831 42            	mul	x,a
4156  0832 d60504        	ld	a,(L167_deep_value,x)
4157  0835 88            	push	a
4158  0836 ae0059        	ldw	x,#89
4159  0839 a6ba          	ld	a,#186
4160  083b 95            	ld	xh,a
4161  083c 8dc402c4      	callf	f_SWI2C_WriteByte
4163  0840 84            	pop	a
4164                     ; 775 		SWI2C_WriteByte(FPGA_ADDRESS, 0x5C, deep_value[deep][1]);
4166  0841 7b01          	ld	a,(OFST+1,sp)
4167  0843 97            	ld	xl,a
4168  0844 a603          	ld	a,#3
4169  0846 42            	mul	x,a
4170  0847 d60505        	ld	a,(L167_deep_value+1,x)
4171  084a 88            	push	a
4172  084b ae005c        	ldw	x,#92
4173  084e a6ba          	ld	a,#186
4174  0850 95            	ld	xh,a
4175  0851 8dc402c4      	callf	f_SWI2C_WriteByte
4177  0855 84            	pop	a
4178                     ; 776 		SWI2C_WriteByte(FPGA_ADDRESS, 0x5A, deep_value[deep][2]);
4180  0856 7b01          	ld	a,(OFST+1,sp)
4181  0858 97            	ld	xl,a
4182  0859 a603          	ld	a,#3
4183  085b 42            	mul	x,a
4184  085c d60506        	ld	a,(L167_deep_value+2,x)
4185  085f 88            	push	a
4186  0860 ae005a        	ldw	x,#90
4187  0863 a6ba          	ld	a,#186
4188  0865 95            	ld	xh,a
4189  0866 8dc402c4      	callf	f_SWI2C_WriteByte
4191  086a 84            	pop	a
4192  086b               L1001:
4193                     ; 778 }
4196  086b 84            	pop	a
4197  086c 87            	retf
4222                     	switch	.const
4223  0516               L611:
4224  0516 00000002      	dc.l	2
4225                     ; 780 void SWI2C_UpdateTimer(void)
4225                     ; 781 {
4226                     	switch	.text
4227  086d               f_SWI2C_UpdateTimer:
4231                     ; 782 	if (frc_update_timer > TIMER_EXPIRED)
4233  086d ae0000        	ldw	x,#L3_frc_update_timer
4234  0870 8d000000      	callf	d_ltor
4236  0874 ae0516        	ldw	x,#L611
4237  0877 8d000000      	callf	d_lcmp
4239  087b 2509          	jrult	L3101
4240                     ; 784 		frc_update_timer--;
4242  087d ae0000        	ldw	x,#L3_frc_update_timer
4243  0880 a601          	ld	a,#1
4244  0882 8d000000      	callf	d_lgsbc
4246  0886               L3101:
4247                     ; 787 	if (Backlight_on_timer > TIMER_EXPIRED)
4249  0886 ae0004        	ldw	x,#L5_Backlight_on_timer
4250  0889 8d000000      	callf	d_ltor
4252  088d ae0516        	ldw	x,#L611
4253  0890 8d000000      	callf	d_lcmp
4255  0894 2509          	jrult	L5101
4256                     ; 789 		Backlight_on_timer--;
4258  0896 ae0004        	ldw	x,#L5_Backlight_on_timer
4259  0899 a601          	ld	a,#1
4260  089b 8d000000      	callf	d_lgsbc
4262  089f               L5101:
4263                     ; 797 	if (signal_detect_timer > TIMER_EXPIRED)
4265  089f ae0008        	ldw	x,#L7_signal_detect_timer
4266  08a2 8d000000      	callf	d_ltor
4268  08a6 ae0516        	ldw	x,#L611
4269  08a9 8d000000      	callf	d_lcmp
4271  08ad 2509          	jrult	L7101
4272                     ; 799 		signal_detect_timer--;
4274  08af ae0008        	ldw	x,#L7_signal_detect_timer
4275  08b2 a601          	ld	a,#1
4276  08b4 8d000000      	callf	d_lgsbc
4278  08b8               L7101:
4279                     ; 801 }
4282  08b8 87            	retf
4396                     	xref	_table_size
4397                     	xref	_address_table
4398                     	switch	.bss
4399  0000               L52_Have_FRC:
4400  0000 00            	ds.b	1
4401  0001               L12_singal_change_count:
4402  0001 00            	ds.b	1
4403  0002               L71_signal_status:
4404  0002 00            	ds.b	1
4405                     	xref	f_IT6802_fsm
4406                     	xref	f_IT6802_fsm_init
4407                     	xdef	f_SWI2C_UpdateTimer
4408                     	xdef	f_SWI2C_Set_deep
4409                     	xdef	f_SWI2C_Toggle3DOnOff
4410                     	xdef	f_HDMI_HotPlug
4411                     	xdef	f_FPGA_Init
4412                     	xdef	f_SWI2C_TestDevice
4413                     	xdef	f_SWI2C_Write2Byte
4414                     	xdef	f_SWI2C_WriteBytes
4415                     	xdef	f_SWI2C_WriteByte
4416                     	xdef	f_SWI2C_ReadBytes
4417                     	xdef	f_SWI2C_ReadByte
4418                     	xdef	f_SWI2C_ToggleI2CMode
4419                     	xdef	f_SWI2C_ProcessPower
4420                     	xdef	f_SWI2C_SystemPowerDown
4421                     	xdef	f_SWI2C_SystemPowerUp
4422                     	xdef	f_SWI2C_Update
4423                     	xdef	f_SWI2C_Init
4424                     	xref	f_IR_DelayNMiliseconds
4425                     	xref	f_FLASH_ReadByte
4426                     	xref	f_TIM1_CtrlPWMOutputs
4427                     	xref	f_TIM1_Cmd
4428                     	xref	f_TIM1_OC1Init
4429                     	xref	f_TIM1_TimeBaseInit
4430                     	xref	f_GPIO_ReadInputPin
4431                     	xref	f_GPIO_WriteReverse
4432                     	xref	f_GPIO_WriteLow
4433                     	xref	f_GPIO_WriteHigh
4434                     	xref	f_GPIO_Init
4435                     	xref.b	c_lreg
4455                     	xref	d_lgsbc
4456                     	xref	d_itolx
4457                     	xref	d_lcmp
4458                     	xref	d_ltor
4459                     	end
