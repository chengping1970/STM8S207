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
  26  000e               L12_I2C_stop:
  27  000e 00            	dc.b	0
  65                     ; 156 static void _Delay_5us(void)
  65                     ; 157 {
  66                     	switch	.text
  67  0000               L52f__Delay_5us:
  69  0000 88            	push	a
  70       00000001      OFST:	set	1
  73                     ; 159    	for (i = 0;i < 10;i++);
  75  0001 0f01          	clr	(OFST+0,sp)
  76  0003               L15:
  80  0003 0c01          	inc	(OFST+0,sp)
  83  0005 7b01          	ld	a,(OFST+0,sp)
  84  0007 a10a          	cp	a,#10
  85  0009 25f8          	jrult	L15
  86                     ; 160 }
  89  000b 84            	pop	a
  90  000c 87            	retf
 115                     ; 162 static void _SWI2C_Start(void)
 115                     ; 163 {
 116                     	switch	.text
 117  000d               L75f__SWI2C_Start:
 121                     ; 164 	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
 123  000d 4b10          	push	#16
 124  000f ae5005        	ldw	x,#20485
 125  0012 8d000000      	callf	f_GPIO_WriteHigh
 127  0016 84            	pop	a
 128                     ; 165 	GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
 130  0017 4b20          	push	#32
 131  0019 ae5005        	ldw	x,#20485
 132  001c 8d000000      	callf	f_GPIO_WriteHigh
 134  0020 84            	pop	a
 135                     ; 166 	_Delay_5us();
 137  0021 8d000000      	callf	L52f__Delay_5us
 139                     ; 167 	GPIO_WriteLow(IIC_SDA_PORT,IIC_SDA_PIN);
 141  0025 4b20          	push	#32
 142  0027 ae5005        	ldw	x,#20485
 143  002a 8d000000      	callf	f_GPIO_WriteLow
 145  002e 84            	pop	a
 146                     ; 168 	_Delay_5us();
 148  002f 8d000000      	callf	L52f__Delay_5us
 150                     ; 169 	GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
 152  0033 4b10          	push	#16
 153  0035 ae5005        	ldw	x,#20485
 154  0038 8d000000      	callf	f_GPIO_WriteLow
 156  003c 84            	pop	a
 157                     ; 170 }
 160  003d 87            	retf
 185                     ; 172 static void _SWI2C_Stop(void)
 185                     ; 173 {
 186                     	switch	.text
 187  003e               L17f__SWI2C_Stop:
 191                     ; 174 	GPIO_WriteLow(IIC_SDA_PORT,IIC_SDA_PIN);
 193  003e 4b20          	push	#32
 194  0040 ae5005        	ldw	x,#20485
 195  0043 8d000000      	callf	f_GPIO_WriteLow
 197  0047 84            	pop	a
 198                     ; 175 	_Delay_5us();
 200  0048 8d000000      	callf	L52f__Delay_5us
 202                     ; 176 	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
 204  004c 4b10          	push	#16
 205  004e ae5005        	ldw	x,#20485
 206  0051 8d000000      	callf	f_GPIO_WriteHigh
 208  0055 84            	pop	a
 209                     ; 177 	_Delay_5us();
 211  0056 8d000000      	callf	L52f__Delay_5us
 213                     ; 178 	GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
 215  005a 4b20          	push	#32
 216  005c ae5005        	ldw	x,#20485
 217  005f 8d000000      	callf	f_GPIO_WriteHigh
 219  0063 84            	pop	a
 220                     ; 179 }
 223  0064 87            	retf
 266                     ; 181 static u8 _SWI2C_SendByte(u8 value)
 266                     ; 182 {
 267                     	switch	.text
 268  0065               L301f__SWI2C_SendByte:
 270  0065 88            	push	a
 271  0066 88            	push	a
 272       00000001      OFST:	set	1
 275                     ; 185 	for (count = 0;count < 8;count++)
 277  0067 0f01          	clr	(OFST+0,sp)
 278  0069               L321:
 279                     ; 187 		if (value&0x80)
 281  0069 7b02          	ld	a,(OFST+1,sp)
 282  006b a580          	bcp	a,#128
 283  006d 270c          	jreq	L131
 284                     ; 189 			GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
 286  006f 4b20          	push	#32
 287  0071 ae5005        	ldw	x,#20485
 288  0074 8d000000      	callf	f_GPIO_WriteHigh
 290  0078 84            	pop	a
 292  0079 200a          	jra	L331
 293  007b               L131:
 294                     ; 193 			GPIO_WriteLow(IIC_SDA_PORT,IIC_SDA_PIN);
 296  007b 4b20          	push	#32
 297  007d ae5005        	ldw	x,#20485
 298  0080 8d000000      	callf	f_GPIO_WriteLow
 300  0084 84            	pop	a
 301  0085               L331:
 302                     ; 195 		_Delay_5us();
 304  0085 8d000000      	callf	L52f__Delay_5us
 306                     ; 196 		GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
 308  0089 4b10          	push	#16
 309  008b ae5005        	ldw	x,#20485
 310  008e 8d000000      	callf	f_GPIO_WriteHigh
 312  0092 84            	pop	a
 313                     ; 197 		_Delay_5us();
 315  0093 8d000000      	callf	L52f__Delay_5us
 317                     ; 198 		GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
 319  0097 4b10          	push	#16
 320  0099 ae5005        	ldw	x,#20485
 321  009c 8d000000      	callf	f_GPIO_WriteLow
 323  00a0 84            	pop	a
 324                     ; 199 		value = value<<1;
 326  00a1 0802          	sll	(OFST+1,sp)
 327                     ; 185 	for (count = 0;count < 8;count++)
 329  00a3 0c01          	inc	(OFST+0,sp)
 332  00a5 7b01          	ld	a,(OFST+0,sp)
 333  00a7 a108          	cp	a,#8
 334  00a9 25be          	jrult	L321
 335                     ; 201 	GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
 337  00ab 4b20          	push	#32
 338  00ad ae5005        	ldw	x,#20485
 339  00b0 8d000000      	callf	f_GPIO_WriteHigh
 341  00b4 84            	pop	a
 342                     ; 202 	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_IN_FL_NO_IT);
 344  00b5 4b00          	push	#0
 345  00b7 4b20          	push	#32
 346  00b9 ae5005        	ldw	x,#20485
 347  00bc 8d000000      	callf	f_GPIO_Init
 349  00c0 85            	popw	x
 350                     ; 203 	_Delay_5us();
 352  00c1 8d000000      	callf	L52f__Delay_5us
 354                     ; 204 	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
 356  00c5 4b10          	push	#16
 357  00c7 ae5005        	ldw	x,#20485
 358  00ca 8d000000      	callf	f_GPIO_WriteHigh
 360  00ce 84            	pop	a
 361                     ; 205 	for (count = 0;count < IIC_ACK_TIMEOUT;count++)
 363  00cf 0f01          	clr	(OFST+0,sp)
 364  00d1               L531:
 365                     ; 207 		if (GPIO_ReadInputPin(IIC_SDA_PORT, IIC_SDA_PIN) == 0)
 367  00d1 4b20          	push	#32
 368  00d3 ae5005        	ldw	x,#20485
 369  00d6 8d000000      	callf	f_GPIO_ReadInputPin
 371  00da 5b01          	addw	sp,#1
 372  00dc 4d            	tnz	a
 373  00dd 261a          	jrne	L341
 374                     ; 209 			GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
 376  00df 4b10          	push	#16
 377  00e1 ae5005        	ldw	x,#20485
 378  00e4 8d000000      	callf	f_GPIO_WriteLow
 380  00e8 84            	pop	a
 381                     ; 210 			GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_OUT_OD_LOW_FAST);
 383  00e9 4ba0          	push	#160
 384  00eb 4b20          	push	#32
 385  00ed ae5005        	ldw	x,#20485
 386  00f0 8d000000      	callf	f_GPIO_Init
 388  00f4 85            	popw	x
 389                     ; 211 			return IIC_OK;
 391  00f5 a601          	ld	a,#1
 393  00f7 201f          	jra	L41
 394  00f9               L341:
 395                     ; 205 	for (count = 0;count < IIC_ACK_TIMEOUT;count++)
 397  00f9 0c01          	inc	(OFST+0,sp)
 400  00fb 7b01          	ld	a,(OFST+0,sp)
 401  00fd a132          	cp	a,#50
 402  00ff 25d0          	jrult	L531
 403                     ; 214 	GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
 405  0101 4b10          	push	#16
 406  0103 ae5005        	ldw	x,#20485
 407  0106 8d000000      	callf	f_GPIO_WriteLow
 409  010a 84            	pop	a
 410                     ; 215 	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
 412  010b 4bb0          	push	#176
 413  010d 4b20          	push	#32
 414  010f ae5005        	ldw	x,#20485
 415  0112 8d000000      	callf	f_GPIO_Init
 417  0116 85            	popw	x
 418                     ; 217 	return IIC_FAIL;
 420  0117 4f            	clr	a
 422  0118               L41:
 424  0118 85            	popw	x
 425  0119 87            	retf
 482                     ; 221 static u8 _SWI2C_ReceiveByte(u8 send_ack)
 482                     ; 222 {
 483                     	switch	.text
 484  011a               L541f__SWI2C_ReceiveByte:
 486  011a 88            	push	a
 487  011b 5203          	subw	sp,#3
 488       00000003      OFST:	set	3
 491                     ; 223 	u8 count, read, value = 0;
 493  011d 0f02          	clr	(OFST-1,sp)
 494                     ; 225 	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_IN_FL_NO_IT);
 496  011f 4b00          	push	#0
 497  0121 4b20          	push	#32
 498  0123 ae5005        	ldw	x,#20485
 499  0126 8d000000      	callf	f_GPIO_Init
 501  012a 85            	popw	x
 502                     ; 226 	for (count = 0;count < 8;count++)
 504  012b 0f01          	clr	(OFST-2,sp)
 505  012d               L171:
 506                     ; 228 		_Delay_5us();
 508  012d 8d000000      	callf	L52f__Delay_5us
 510                     ; 229 		GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
 512  0131 4b10          	push	#16
 513  0133 ae5005        	ldw	x,#20485
 514  0136 8d000000      	callf	f_GPIO_WriteHigh
 516  013a 84            	pop	a
 517                     ; 230 		if (GPIO_ReadInputPin(IIC_SDA_PORT, IIC_SDA_PIN))
 519  013b 4b20          	push	#32
 520  013d ae5005        	ldw	x,#20485
 521  0140 8d000000      	callf	f_GPIO_ReadInputPin
 523  0144 5b01          	addw	sp,#1
 524  0146 4d            	tnz	a
 525  0147 2706          	jreq	L771
 526                     ; 232 			read = 1;
 528  0149 a601          	ld	a,#1
 529  014b 6b03          	ld	(OFST+0,sp),a
 531  014d 2002          	jra	L102
 532  014f               L771:
 533                     ; 236 			read = 0;
 535  014f 0f03          	clr	(OFST+0,sp)
 536  0151               L102:
 537                     ; 238 		value = (value<<1)|read;
 539  0151 7b02          	ld	a,(OFST-1,sp)
 540  0153 48            	sll	a
 541  0154 1a03          	or	a,(OFST+0,sp)
 542  0156 6b02          	ld	(OFST-1,sp),a
 543                     ; 239 		_Delay_5us();
 545  0158 8d000000      	callf	L52f__Delay_5us
 547                     ; 240 		GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
 549  015c 4b10          	push	#16
 550  015e ae5005        	ldw	x,#20485
 551  0161 8d000000      	callf	f_GPIO_WriteLow
 553  0165 84            	pop	a
 554                     ; 226 	for (count = 0;count < 8;count++)
 556  0166 0c01          	inc	(OFST-2,sp)
 559  0168 7b01          	ld	a,(OFST-2,sp)
 560  016a a108          	cp	a,#8
 561  016c 25bf          	jrult	L171
 562                     ; 242 	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
 564  016e 4bb0          	push	#176
 565  0170 4b20          	push	#32
 566  0172 ae5005        	ldw	x,#20485
 567  0175 8d000000      	callf	f_GPIO_Init
 569  0179 85            	popw	x
 570                     ; 243 	if (send_ack)
 572  017a 0d04          	tnz	(OFST+1,sp)
 573  017c 270c          	jreq	L302
 574                     ; 245 		GPIO_WriteLow(IIC_SDA_PORT,IIC_SDA_PIN);
 576  017e 4b20          	push	#32
 577  0180 ae5005        	ldw	x,#20485
 578  0183 8d000000      	callf	f_GPIO_WriteLow
 580  0187 84            	pop	a
 582  0188 200a          	jra	L502
 583  018a               L302:
 584                     ; 249 		GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
 586  018a 4b20          	push	#32
 587  018c ae5005        	ldw	x,#20485
 588  018f 8d000000      	callf	f_GPIO_WriteHigh
 590  0193 84            	pop	a
 591  0194               L502:
 592                     ; 251 	_Delay_5us();
 594  0194 8d000000      	callf	L52f__Delay_5us
 596                     ; 252 	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
 598  0198 4b10          	push	#16
 599  019a ae5005        	ldw	x,#20485
 600  019d 8d000000      	callf	f_GPIO_WriteHigh
 602  01a1 84            	pop	a
 603                     ; 253 	_Delay_5us();
 605  01a2 8d000000      	callf	L52f__Delay_5us
 607                     ; 254 	GPIO_WriteLow(IIC_SCL_PORT,IIC_SCL_PIN);
 609  01a6 4b10          	push	#16
 610  01a8 ae5005        	ldw	x,#20485
 611  01ab 8d000000      	callf	f_GPIO_WriteLow
 613  01af 84            	pop	a
 614                     ; 255 	_Delay_5us();
 616  01b0 8d000000      	callf	L52f__Delay_5us
 618                     ; 257 	return	value;		
 620  01b4 7b02          	ld	a,(OFST-1,sp)
 623  01b6 5b04          	addw	sp,#4
 624  01b8 87            	retf
 657                     ; 260 static u8 SWI2C_GetSignalStatus(void)
 657                     ; 261 {
 658                     	switch	.text
 659  01b9               L702f_SWI2C_GetSignalStatus:
 661  01b9 88            	push	a
 662       00000001      OFST:	set	1
 665                     ; 263 	SWI2C_ReadByte(0x90, 0x0A, &p0_status);
 667  01ba 96            	ldw	x,sp
 668  01bb 1c0001        	addw	x,#OFST+0
 669  01be 89            	pushw	x
 670  01bf ae000a        	ldw	x,#10
 671  01c2 a690          	ld	a,#144
 672  01c4 95            	ld	xh,a
 673  01c5 8d170217      	callf	f_SWI2C_ReadByte
 675  01c9 85            	popw	x
 676                     ; 264 	if ((p0_status&0x0C) == 0x0C)
 678  01ca 7b01          	ld	a,(OFST+0,sp)
 679  01cc a40c          	and	a,#12
 680  01ce a10c          	cp	a,#12
 681  01d0 2605          	jrne	L522
 682                     ; 266 		return 1;
 684  01d2 a601          	ld	a,#1
 687  01d4 5b01          	addw	sp,#1
 688  01d6 87            	retf
 689  01d7               L522:
 690                     ; 270 		return 0;
 692  01d7 4f            	clr	a
 695  01d8 5b01          	addw	sp,#1
 696  01da 87            	retf
 698                     .const:	section	.text
 699  0000               L132_weaving_table:
 700  0000 8018          	dc.w	-32744
 701  0002 9017          	dc.w	-28649
 702  0004 9017          	dc.w	-28649
 703  0006 9016          	dc.w	-28650
 704  0008 9015          	dc.w	-28651
 705  000a 9014          	dc.w	-28652
 706  000c 912c          	dc.w	-28372
 707  000e 912b          	dc.w	-28373
 708  0010 912b          	dc.w	-28373
 709  0012 912a          	dc.w	-28374
 710  0014 9129          	dc.w	-28375
 711  0016 9128          	dc.w	-28376
 712  0018 9240          	dc.w	-28096
 713  001a 923f          	dc.w	-28097
 714  001c 923f          	dc.w	-28097
 715  001e 923e          	dc.w	-28098
 716  0020 923d          	dc.w	-28099
 717  0022 923c          	dc.w	-28100
 718  0024 9354          	dc.w	-27820
 719  0026 9353          	dc.w	-27821
 720  0028 9353          	dc.w	-27821
 721  002a 9352          	dc.w	-27822
 722  002c 9351          	dc.w	-27823
 723  002e 9350          	dc.w	-27824
 724  0030 9468          	dc.w	-27544
 725  0032 9467          	dc.w	-27545
 726  0034 9467          	dc.w	-27545
 727  0036 9466          	dc.w	-27546
 728  0038 9465          	dc.w	-27547
 729  003a 9464          	dc.w	-27548
 730  003c 957c          	dc.w	-27268
 731  003e 957b          	dc.w	-27269
 732  0040 957b          	dc.w	-27269
 733  0042 957a          	dc.w	-27270
 734  0044 9579          	dc.w	-27271
 735  0046 9578          	dc.w	-27272
 736  0048 9690          	dc.w	-26992
 737  004a 968f          	dc.w	-26993
 738  004c 968f          	dc.w	-26993
 739  004e 968e          	dc.w	-26994
 740  0050 968d          	dc.w	-26995
 741  0052 968c          	dc.w	-26996
 742  0054 97a4          	dc.w	-26716
 743  0056 97a3          	dc.w	-26717
 744  0058 97a3          	dc.w	-26717
 745  005a 97a2          	dc.w	-26718
 746  005c 97a1          	dc.w	-26719
 747  005e a7a0          	dc.w	-22624
 748  0060 102e          	dc.w	4142
 749  0062 200c          	dc.w	8204
 750  0064 3004          	dc.w	12292
 751  0066 4008          	dc.w	16392
 752  0068 502c          	dc.w	20524
 785                     ; 330 static void FPGA_WriteWeavingTable(void)
 785                     ; 331 {
 786                     	switch	.text
 787  01db               L332f_FPGA_WriteWeavingTable:
 789  01db 89            	pushw	x
 790       00000002      OFST:	set	2
 793                     ; 334 	for (i = 0; i < sizeof(weaving_table)/2; i++)
 795  01dc 5f            	clrw	x
 796  01dd 1f01          	ldw	(OFST-1,sp),x
 797  01df               L152:
 798                     ; 336 		SWI2C_Write2Byte(FPGA_ADDRESS, 0xC6, weaving_table[i]);
 800  01df 1e01          	ldw	x,(OFST-1,sp)
 801  01e1 58            	sllw	x
 802  01e2 de0000        	ldw	x,(L132_weaving_table,x)
 803  01e5 89            	pushw	x
 804  01e6 ae00c6        	ldw	x,#198
 805  01e9 a6ba          	ld	a,#186
 806  01eb 95            	ld	xh,a
 807  01ec 8da902a9      	callf	f_SWI2C_Write2Byte
 809  01f0 85            	popw	x
 810                     ; 334 	for (i = 0; i < sizeof(weaving_table)/2; i++)
 812  01f1 1e01          	ldw	x,(OFST-1,sp)
 813  01f3 1c0001        	addw	x,#1
 814  01f6 1f01          	ldw	(OFST-1,sp),x
 817  01f8 1e01          	ldw	x,(OFST-1,sp)
 818  01fa a30035        	cpw	x,#53
 819  01fd 25e0          	jrult	L152
 820                     ; 338 }
 823  01ff 85            	popw	x
 824  0200 87            	retf
 865                     ; 373 u8 SWI2C_TestDevice(u8 addr)
 865                     ; 374 {
 866                     	switch	.text
 867  0201               f_SWI2C_TestDevice:
 869  0201 88            	push	a
 870  0202 88            	push	a
 871       00000001      OFST:	set	1
 874                     ; 376 	_SWI2C_Start();
 876  0203 8d0d000d      	callf	L75f__SWI2C_Start
 878                     ; 377 	result = _SWI2C_SendByte(addr);
 880  0207 7b02          	ld	a,(OFST+1,sp)
 881  0209 8d650065      	callf	L301f__SWI2C_SendByte
 883  020d 6b01          	ld	(OFST+0,sp),a
 884                     ; 378 	_SWI2C_Stop();
 886  020f 8d3e003e      	callf	L17f__SWI2C_Stop
 888                     ; 380 	return result;
 890  0213 7b01          	ld	a,(OFST+0,sp)
 893  0215 85            	popw	x
 894  0216 87            	retf
 943                     ; 383 u8 SWI2C_ReadByte(u8 addr, u8 subaddr, u8 * pValue)
 943                     ; 384 {
 944                     	switch	.text
 945  0217               f_SWI2C_ReadByte:
 947  0217 89            	pushw	x
 948       00000000      OFST:	set	0
 951                     ; 385 	return SWI2C_ReadBytes(addr, subaddr, 1, pValue);
 953  0218 1e06          	ldw	x,(OFST+6,sp)
 954  021a 89            	pushw	x
 955  021b 4b01          	push	#1
 956  021d 7b05          	ld	a,(OFST+5,sp)
 957  021f 97            	ld	xl,a
 958  0220 7b04          	ld	a,(OFST+4,sp)
 959  0222 95            	ld	xh,a
 960  0223 8d2b022b      	callf	f_SWI2C_ReadBytes
 962  0227 5b03          	addw	sp,#3
 965  0229 85            	popw	x
 966  022a 87            	retf
1032                     ; 388 u8 SWI2C_ReadBytes(u8 addr, u8 subaddr, u8 number, u8 * p_data)
1032                     ; 389 {	
1033                     	switch	.text
1034  022b               f_SWI2C_ReadBytes:
1036  022b 89            	pushw	x
1037  022c 88            	push	a
1038       00000001      OFST:	set	1
1041                     ; 391 	_SWI2C_Start();
1043  022d 8d0d000d      	callf	L75f__SWI2C_Start
1045                     ; 392 	result = _SWI2C_SendByte(addr);
1047  0231 7b02          	ld	a,(OFST+1,sp)
1048  0233 8d650065      	callf	L301f__SWI2C_SendByte
1050  0237 6b01          	ld	(OFST+0,sp),a
1051                     ; 393 	if (result == IIC_FAIL)
1053  0239 0d01          	tnz	(OFST+0,sp)
1054  023b 2608          	jrne	L543
1055                     ; 395 		_SWI2C_Stop();
1057  023d 8d3e003e      	callf	L17f__SWI2C_Stop
1059                     ; 396 		return result;
1061  0241 7b01          	ld	a,(OFST+0,sp)
1063  0243 2012          	jra	L23
1064  0245               L543:
1065                     ; 398 	result = _SWI2C_SendByte(subaddr);
1067  0245 7b03          	ld	a,(OFST+2,sp)
1068  0247 8d650065      	callf	L301f__SWI2C_SendByte
1070  024b 6b01          	ld	(OFST+0,sp),a
1071                     ; 399 	if (result == IIC_FAIL)
1073  024d 0d01          	tnz	(OFST+0,sp)
1074  024f 2609          	jrne	L743
1075                     ; 401 		_SWI2C_Stop();
1077  0251 8d3e003e      	callf	L17f__SWI2C_Stop
1079                     ; 402 		return result;
1081  0255 7b01          	ld	a,(OFST+0,sp)
1083  0257               L23:
1085  0257 5b03          	addw	sp,#3
1086  0259 87            	retf
1087  025a               L743:
1088                     ; 404 	_SWI2C_Start();
1090  025a 8d0d000d      	callf	L75f__SWI2C_Start
1092                     ; 405 	result = _SWI2C_SendByte(addr|0x01);
1094  025e 7b02          	ld	a,(OFST+1,sp)
1095  0260 aa01          	or	a,#1
1096  0262 8d650065      	callf	L301f__SWI2C_SendByte
1098  0266 6b01          	ld	(OFST+0,sp),a
1099                     ; 406 	if (result == IIC_FAIL)
1101  0268 0d01          	tnz	(OFST+0,sp)
1102  026a 2618          	jrne	L553
1103                     ; 408 		_SWI2C_Stop();
1105  026c 8d3e003e      	callf	L17f__SWI2C_Stop
1107                     ; 409 		return result;
1109  0270 7b01          	ld	a,(OFST+0,sp)
1111  0272 20e3          	jra	L23
1112  0274               L353:
1113                     ; 413 		*p_data = _SWI2C_ReceiveByte(number);
1115  0274 7b07          	ld	a,(OFST+6,sp)
1116  0276 8d1a011a      	callf	L541f__SWI2C_ReceiveByte
1118  027a 1e08          	ldw	x,(OFST+7,sp)
1119  027c f7            	ld	(x),a
1120                     ; 414 		p_data++;
1122  027d 1e08          	ldw	x,(OFST+7,sp)
1123  027f 1c0001        	addw	x,#1
1124  0282 1f08          	ldw	(OFST+7,sp),x
1125  0284               L553:
1126                     ; 411 	while (number--)
1128  0284 7b07          	ld	a,(OFST+6,sp)
1129  0286 0a07          	dec	(OFST+6,sp)
1130  0288 4d            	tnz	a
1131  0289 26e9          	jrne	L353
1132                     ; 416 	_SWI2C_Stop();
1134  028b 8d3e003e      	callf	L17f__SWI2C_Stop
1136                     ; 418 	return IIC_OK;
1138  028f a601          	ld	a,#1
1140  0291 20c4          	jra	L23
1186                     ; 421 u8 SWI2C_WriteByte(u8 addr, u8 subaddr, u8 value)
1186                     ; 422 {	
1187                     	switch	.text
1188  0293               f_SWI2C_WriteByte:
1190  0293 89            	pushw	x
1191       00000000      OFST:	set	0
1194                     ; 423 	return SWI2C_WriteBytes(addr, subaddr, 1, &value);
1196  0294 96            	ldw	x,sp
1197  0295 1c0006        	addw	x,#OFST+6
1198  0298 89            	pushw	x
1199  0299 4b01          	push	#1
1200  029b 7b05          	ld	a,(OFST+5,sp)
1201  029d 97            	ld	xl,a
1202  029e 7b04          	ld	a,(OFST+4,sp)
1203  02a0 95            	ld	xh,a
1204  02a1 8d080308      	callf	f_SWI2C_WriteBytes
1206  02a5 5b03          	addw	sp,#3
1209  02a7 85            	popw	x
1210  02a8 87            	retf
1265                     ; 426 u8 SWI2C_Write2Byte(u8 addr, u8 subaddr, u16 data) 
1265                     ; 427 {
1266                     	switch	.text
1267  02a9               f_SWI2C_Write2Byte:
1269  02a9 89            	pushw	x
1270  02aa 88            	push	a
1271       00000001      OFST:	set	1
1274                     ; 429 	_SWI2C_Start();                              
1276  02ab 8d0d000d      	callf	L75f__SWI2C_Start
1278                     ; 430 	result = _SWI2C_SendByte(addr);  
1280  02af 7b02          	ld	a,(OFST+1,sp)
1281  02b1 8d650065      	callf	L301f__SWI2C_SendByte
1283  02b5 6b01          	ld	(OFST+0,sp),a
1284                     ; 431 	if (result == IIC_FAIL)
1286  02b7 0d01          	tnz	(OFST+0,sp)
1287  02b9 2608          	jrne	L324
1288                     ; 433 		_SWI2C_Stop();
1290  02bb 8d3e003e      	callf	L17f__SWI2C_Stop
1292                     ; 434 		return result;
1294  02bf 7b01          	ld	a,(OFST+0,sp)
1296  02c1 2012          	jra	L04
1297  02c3               L324:
1298                     ; 436 	result = _SWI2C_SendByte(subaddr);     
1300  02c3 7b03          	ld	a,(OFST+2,sp)
1301  02c5 8d650065      	callf	L301f__SWI2C_SendByte
1303  02c9 6b01          	ld	(OFST+0,sp),a
1304                     ; 437 	if (result == IIC_FAIL)
1306  02cb 0d01          	tnz	(OFST+0,sp)
1307  02cd 2609          	jrne	L524
1308                     ; 439 		_SWI2C_Stop();
1310  02cf 8d3e003e      	callf	L17f__SWI2C_Stop
1312                     ; 440 		return result;
1314  02d3 7b01          	ld	a,(OFST+0,sp)
1316  02d5               L04:
1318  02d5 5b03          	addw	sp,#3
1319  02d7 87            	retf
1320  02d8               L524:
1321                     ; 442 	result = _SWI2C_SendByte(data>>8);     
1323  02d8 7b07          	ld	a,(OFST+6,sp)
1324  02da 8d650065      	callf	L301f__SWI2C_SendByte
1326  02de 6b01          	ld	(OFST+0,sp),a
1327                     ; 443 	if (result == IIC_FAIL)
1329  02e0 0d01          	tnz	(OFST+0,sp)
1330  02e2 2608          	jrne	L724
1331                     ; 445 		_SWI2C_Stop();
1333  02e4 8d3e003e      	callf	L17f__SWI2C_Stop
1335                     ; 446 		return result;
1337  02e8 7b01          	ld	a,(OFST+0,sp)
1339  02ea 20e9          	jra	L04
1340  02ec               L724:
1341                     ; 448 	result = _SWI2C_SendByte(data);   
1343  02ec 7b08          	ld	a,(OFST+7,sp)
1344  02ee 8d650065      	callf	L301f__SWI2C_SendByte
1346  02f2 6b01          	ld	(OFST+0,sp),a
1347                     ; 449 	if (result == IIC_FAIL)
1349  02f4 0d01          	tnz	(OFST+0,sp)
1350  02f6 2608          	jrne	L134
1351                     ; 451 		_SWI2C_Stop();
1353  02f8 8d3e003e      	callf	L17f__SWI2C_Stop
1355                     ; 452 		return result;
1357  02fc 7b01          	ld	a,(OFST+0,sp)
1359  02fe 20d5          	jra	L04
1360  0300               L134:
1361                     ; 454 	_SWI2C_Stop();    
1363  0300 8d3e003e      	callf	L17f__SWI2C_Stop
1365                     ; 455 	return IIC_OK;
1367  0304 a601          	ld	a,#1
1369  0306 20cd          	jra	L04
1434                     ; 458 u8 SWI2C_WriteBytes(u8 addr, u8 subaddr, u8 number, u8 * p_data)
1434                     ; 459 {
1435                     	switch	.text
1436  0308               f_SWI2C_WriteBytes:
1438  0308 89            	pushw	x
1439  0309 88            	push	a
1440       00000001      OFST:	set	1
1443                     ; 461 	_SWI2C_Start();
1445  030a 8d0d000d      	callf	L75f__SWI2C_Start
1447                     ; 462 	result = _SWI2C_SendByte(addr);
1449  030e 7b02          	ld	a,(OFST+1,sp)
1450  0310 8d650065      	callf	L301f__SWI2C_SendByte
1452  0314 6b01          	ld	(OFST+0,sp),a
1453                     ; 463 	if (result == IIC_FAIL)
1455  0316 0d01          	tnz	(OFST+0,sp)
1456  0318 2608          	jrne	L164
1457                     ; 465 		_SWI2C_Stop();
1459  031a 8d3e003e      	callf	L17f__SWI2C_Stop
1461                     ; 466 		return result;
1463  031e 7b01          	ld	a,(OFST+0,sp)
1465  0320 2012          	jra	L44
1466  0322               L164:
1467                     ; 468 	result = _SWI2C_SendByte(subaddr);
1469  0322 7b03          	ld	a,(OFST+2,sp)
1470  0324 8d650065      	callf	L301f__SWI2C_SendByte
1472  0328 6b01          	ld	(OFST+0,sp),a
1473                     ; 469 	if (result == IIC_FAIL)
1475  032a 0d01          	tnz	(OFST+0,sp)
1476  032c 2625          	jrne	L764
1477                     ; 471 		_SWI2C_Stop();
1479  032e 8d3e003e      	callf	L17f__SWI2C_Stop
1481                     ; 472 		return result;
1483  0332 7b01          	ld	a,(OFST+0,sp)
1485  0334               L44:
1487  0334 5b03          	addw	sp,#3
1488  0336 87            	retf
1489  0337               L564:
1490                     ; 476 		result = _SWI2C_SendByte(*p_data);
1492  0337 1e08          	ldw	x,(OFST+7,sp)
1493  0339 f6            	ld	a,(x)
1494  033a 8d650065      	callf	L301f__SWI2C_SendByte
1496  033e 6b01          	ld	(OFST+0,sp),a
1497                     ; 477 		if (result == IIC_FAIL)
1499  0340 0d01          	tnz	(OFST+0,sp)
1500  0342 2608          	jrne	L374
1501                     ; 479 		_SWI2C_Stop();
1503  0344 8d3e003e      	callf	L17f__SWI2C_Stop
1505                     ; 480 		return result;
1507  0348 7b01          	ld	a,(OFST+0,sp)
1509  034a 20e8          	jra	L44
1510  034c               L374:
1511                     ; 482 		p_data++;
1513  034c 1e08          	ldw	x,(OFST+7,sp)
1514  034e 1c0001        	addw	x,#1
1515  0351 1f08          	ldw	(OFST+7,sp),x
1516  0353               L764:
1517                     ; 474 	while (number--)
1519  0353 7b07          	ld	a,(OFST+6,sp)
1520  0355 0a07          	dec	(OFST+6,sp)
1521  0357 4d            	tnz	a
1522  0358 26dd          	jrne	L564
1523                     ; 484 	_SWI2C_Stop();
1525  035a 8d3e003e      	callf	L17f__SWI2C_Stop
1527                     ; 485 	return IIC_OK;
1529  035e a601          	ld	a,#1
1531  0360 20d2          	jra	L44
1559                     ; 488 void SWI2C_Init(void)
1559                     ; 489 {
1560                     	switch	.text
1561  0362               f_SWI2C_Init:
1565                     ; 490 	GPIO_Init(IIC_SCL_PORT, IIC_SCL_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
1567  0362 4bb0          	push	#176
1568  0364 4b10          	push	#16
1569  0366 ae5005        	ldw	x,#20485
1570  0369 8d000000      	callf	f_GPIO_Init
1572  036d 85            	popw	x
1573                     ; 491 	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
1575  036e 4bb0          	push	#176
1576  0370 4b20          	push	#32
1577  0372 ae5005        	ldw	x,#20485
1578  0375 8d000000      	callf	f_GPIO_Init
1580  0379 85            	popw	x
1581                     ; 492 	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
1583  037a 4b10          	push	#16
1584  037c ae5005        	ldw	x,#20485
1585  037f 8d000000      	callf	f_GPIO_WriteHigh
1587  0383 84            	pop	a
1588                     ; 493 	GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
1590  0384 4b20          	push	#32
1591  0386 ae5005        	ldw	x,#20485
1592  0389 8d000000      	callf	f_GPIO_WriteHigh
1594  038d 84            	pop	a
1595                     ; 495 	GPIO_Init(POWER_ONOFF_PORT, POWER_ONOFF_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
1597  038e 4bf0          	push	#240
1598  0390 4b20          	push	#32
1599  0392 ae500a        	ldw	x,#20490
1600  0395 8d000000      	callf	f_GPIO_Init
1602  0399 85            	popw	x
1603                     ; 497 	GPIO_Init(FPGA_RESET_PORT, FPGA_RESET_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
1605  039a 4bf0          	push	#240
1606  039c 4b10          	push	#16
1607  039e ae500a        	ldw	x,#20490
1608  03a1 8d000000      	callf	f_GPIO_Init
1610  03a5 85            	popw	x
1611                     ; 498 	GPIO_Init(IT680X_RESET_PORT, IT680X_RESET_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
1613  03a6 4bf0          	push	#240
1614  03a8 4b01          	push	#1
1615  03aa ae5005        	ldw	x,#20485
1616  03ad 8d000000      	callf	f_GPIO_Init
1618  03b1 85            	popw	x
1619                     ; 500 	GPIO_Init(LED_R_PORT, LED_R_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);	
1621  03b2 4bf0          	push	#240
1622  03b4 4b01          	push	#1
1623  03b6 ae5014        	ldw	x,#20500
1624  03b9 8d000000      	callf	f_GPIO_Init
1626  03bd 85            	popw	x
1627                     ; 501 	GPIO_Init(LED_G_PORT, LED_G_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
1629  03be 4be0          	push	#224
1630  03c0 4b08          	push	#8
1631  03c2 ae500f        	ldw	x,#20495
1632  03c5 8d000000      	callf	f_GPIO_Init
1634  03c9 85            	popw	x
1635                     ; 503 	GPIO_Init(HDMI_HOTPLUG_PORT, HDMI_HOTPLUG_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
1637  03ca 4bf0          	push	#240
1638  03cc 4b40          	push	#64
1639  03ce ae5005        	ldw	x,#20485
1640  03d1 8d000000      	callf	f_GPIO_Init
1642  03d5 85            	popw	x
1643                     ; 505 	GPIO_Init(BACKLIGHT_ONOFF_PORT, BACKLIGHT_ONOFF_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
1645  03d6 4bf0          	push	#240
1646  03d8 4b80          	push	#128
1647  03da ae500a        	ldw	x,#20490
1648  03dd 8d000000      	callf	f_GPIO_Init
1650  03e1 85            	popw	x
1651                     ; 506 	GPIO_Init(BACKLIGHT_PWM_PORT, BACKLIGHT_PWM_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
1653  03e2 4bf0          	push	#240
1654  03e4 4b40          	push	#64
1655  03e6 ae500a        	ldw	x,#20490
1656  03e9 8d000000      	callf	f_GPIO_Init
1658  03ed 85            	popw	x
1659                     ; 507 	GPIO_Init(VPANEL_ONOFF_PORT, VPANEL_ONOFF_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
1661  03ee 4be0          	push	#224
1662  03f0 4b01          	push	#1
1663  03f2 ae501e        	ldw	x,#20510
1664  03f5 8d000000      	callf	f_GPIO_Init
1666  03f9 85            	popw	x
1667                     ; 509 	TIM1_TimeBaseInit(0, TIM1_COUNTERMODE_UP, 4095, 0);
1669  03fa 4b00          	push	#0
1670  03fc ae0fff        	ldw	x,#4095
1671  03ff 89            	pushw	x
1672  0400 4b00          	push	#0
1673  0402 5f            	clrw	x
1674  0403 8d000000      	callf	f_TIM1_TimeBaseInit
1676  0407 5b04          	addw	sp,#4
1677                     ; 510 	TIM1_OC1Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE, TIM1_OUTPUTNSTATE_DISABLE,
1677                     ; 511 	           0, TIM1_OCPOLARITY_LOW, TIM1_OCNPOLARITY_HIGH, TIM1_OCIDLESTATE_SET,
1677                     ; 512 	           TIM1_OCNIDLESTATE_RESET);
1679  0409 4b00          	push	#0
1680  040b 4b55          	push	#85
1681  040d 4b00          	push	#0
1682  040f 4b22          	push	#34
1683  0411 5f            	clrw	x
1684  0412 89            	pushw	x
1685  0413 4b00          	push	#0
1686  0415 ae0011        	ldw	x,#17
1687  0418 a670          	ld	a,#112
1688  041a 95            	ld	xh,a
1689  041b 8d000000      	callf	f_TIM1_OC1Init
1691  041f 5b07          	addw	sp,#7
1692                     ; 513 	TIM1_Cmd(ENABLE);
1694  0421 a601          	ld	a,#1
1695  0423 8d000000      	callf	f_TIM1_Cmd
1697                     ; 514 	TIM1_CtrlPWMOutputs(ENABLE);
1699  0427 a601          	ld	a,#1
1700  0429 8d000000      	callf	f_TIM1_CtrlPWMOutputs
1702                     ; 515 }
1705  042d 87            	retf
1769                     	switch	.const
1770  006a               L25:
1771  006a 00000001      	dc.l	1
1772                     ; 517 void SWI2C_Update(void)
1772                     ; 518 {	
1773                     	switch	.text
1774  042e               f_SWI2C_Update:
1776  042e 89            	pushw	x
1777       00000002      OFST:	set	2
1780                     ; 519 	if (Backlight_on_timer == TIMER_EXPIRED)
1782  042f ae0004        	ldw	x,#L5_Backlight_on_timer
1783  0432 8d000000      	callf	d_ltor
1785  0436 ae006a        	ldw	x,#L25
1786  0439 8d000000      	callf	d_lcmp
1788  043d 2616          	jrne	L525
1789                     ; 521 		SET_BACKLIGHT_ON();
1791  043f 4b80          	push	#128
1792  0441 ae500a        	ldw	x,#20490
1793  0444 8d000000      	callf	f_GPIO_WriteLow
1795  0448 84            	pop	a
1796                     ; 522 		Backlight_on_timer = TIMER_STOPPED;
1798  0449 ae0000        	ldw	x,#0
1799  044c cf0006        	ldw	L5_Backlight_on_timer+2,x
1800  044f ae0000        	ldw	x,#0
1801  0452 cf0004        	ldw	L5_Backlight_on_timer,x
1802  0455               L525:
1803                     ; 526 	if (Power_status && !I2C_stop)
1805  0455 725d000d      	tnz	L31_Power_status
1806  0459 2604          	jrne	L45
1807  045b ac9a059a      	jpf	L725
1808  045f               L45:
1810  045f 725d000e      	tnz	L12_I2C_stop
1811  0463 2704          	jreq	L65
1812  0465 ac9a059a      	jpf	L725
1813  0469               L65:
1814                     ; 528 		IT6802_fsm();
1816  0469 8d000000      	callf	f_IT6802_fsm
1818                     ; 530 		if (frc_update_timer == TIMER_EXPIRED && Have_FRC)
1820  046d ae0000        	ldw	x,#L3_frc_update_timer
1821  0470 8d000000      	callf	d_ltor
1823  0474 ae006a        	ldw	x,#L25
1824  0477 8d000000      	callf	d_lcmp
1826  047b 265f          	jrne	L135
1828  047d 725d0000      	tnz	L32_Have_FRC
1829  0481 2759          	jreq	L135
1830                     ; 533 			SWI2C_ReadByte(FRC_BOARD_ADDRESS, 0x18, &read_LVDS_mode);
1832  0483 96            	ldw	x,sp
1833  0484 1c0001        	addw	x,#OFST-1
1834  0487 89            	pushw	x
1835  0488 ae0018        	ldw	x,#24
1836  048b a622          	ld	a,#34
1837  048d 95            	ld	xh,a
1838  048e 8d170217      	callf	f_SWI2C_ReadByte
1840  0492 85            	popw	x
1841                     ; 534 			if (read_LVDS_mode != LVDS_mode)
1843  0493 7b01          	ld	a,(OFST-1,sp)
1844  0495 c1000c        	cp	a,L11_LVDS_mode
1845  0498 270e          	jreq	L335
1846                     ; 536 				SWI2C_WriteByte(FRC_BOARD_ADDRESS, 0x18, LVDS_mode);
1848  049a 3b000c        	push	L11_LVDS_mode
1849  049d ae0018        	ldw	x,#24
1850  04a0 a622          	ld	a,#34
1851  04a2 95            	ld	xh,a
1852  04a3 8d930293      	callf	f_SWI2C_WriteByte
1854  04a7 84            	pop	a
1855  04a8               L335:
1856                     ; 538 			SWI2C_ReadByte(FRC_BOARD_ADDRESS, 0x0A, &read_MFC);
1858  04a8 96            	ldw	x,sp
1859  04a9 1c0002        	addw	x,#OFST+0
1860  04ac 89            	pushw	x
1861  04ad ae000a        	ldw	x,#10
1862  04b0 a622          	ld	a,#34
1863  04b2 95            	ld	xh,a
1864  04b3 8d170217      	callf	f_SWI2C_ReadByte
1866  04b7 85            	popw	x
1867                     ; 539 			if (read_MFC != 0)
1869  04b8 0d02          	tnz	(OFST+0,sp)
1870  04ba 2714          	jreq	L535
1871                     ; 541 				IR_DelayNMiliseconds(50);
1873  04bc ae0032        	ldw	x,#50
1874  04bf 8d000000      	callf	f_IR_DelayNMiliseconds
1876                     ; 542 				SWI2C_WriteByte(FRC_BOARD_ADDRESS, 0x0A, 0);
1878  04c3 4b00          	push	#0
1879  04c5 ae000a        	ldw	x,#10
1880  04c8 a622          	ld	a,#34
1881  04ca 95            	ld	xh,a
1882  04cb 8d930293      	callf	f_SWI2C_WriteByte
1884  04cf 84            	pop	a
1885  04d0               L535:
1886                     ; 544 			frc_update_timer = FRC_UPDATE_TIME;
1888  04d0 ae01f5        	ldw	x,#501
1889  04d3 cf0002        	ldw	L3_frc_update_timer+2,x
1890  04d6 ae0000        	ldw	x,#0
1891  04d9 cf0000        	ldw	L3_frc_update_timer,x
1892  04dc               L135:
1893                     ; 567 		if (signal_detect_timer == TIMER_EXPIRED)
1895  04dc ae0008        	ldw	x,#L7_signal_detect_timer
1896  04df 8d000000      	callf	d_ltor
1898  04e3 ae006a        	ldw	x,#L25
1899  04e6 8d000000      	callf	d_lcmp
1901  04ea 2704          	jreq	L06
1902  04ec ac9a059a      	jpf	L725
1903  04f0               L06:
1904                     ; 572 			signal_detect_timer = SINGNAL_TETECT_TIME;
1906  04f0 ae0097        	ldw	x,#151
1907  04f3 cf000a        	ldw	L7_signal_detect_timer+2,x
1908  04f6 ae0000        	ldw	x,#0
1909  04f9 cf0008        	ldw	L7_signal_detect_timer,x
1910                     ; 573 			current_signal_status = SWI2C_GetSignalStatus();
1912  04fc 8db901b9      	callf	L702f_SWI2C_GetSignalStatus
1914  0500 6b02          	ld	(OFST+0,sp),a
1915                     ; 574 			if (current_signal_status != signal_status)
1917  0502 7b02          	ld	a,(OFST+0,sp)
1918  0504 c10002        	cp	a,L51_signal_status
1919  0507 2771          	jreq	L145
1920                     ; 576 				singal_change_count++;
1922  0509 725c0001      	inc	L71_singal_change_count
1923                     ; 577 				if (current_signal_status && singal_change_count > SIGNAL_STABLE_COUNT)
1925  050d 0d02          	tnz	(OFST+0,sp)
1926  050f 2731          	jreq	L345
1928  0511 c60001        	ld	a,L71_singal_change_count
1929  0514 a106          	cp	a,#6
1930  0516 252a          	jrult	L345
1931                     ; 579 					signal_status = TRUE;
1933  0518 35010002      	mov	L51_signal_status,#1
1934                     ; 580 					GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
1936  051c 4b08          	push	#8
1937  051e ae500f        	ldw	x,#20495
1938  0521 8d000000      	callf	f_GPIO_WriteHigh
1940  0525 84            	pop	a
1941                     ; 584 					SWI2C_ResetFPGA();
1943  0526 8dfd05fd      	callf	f_SWI2C_ResetFPGA
1945                     ; 585 					SET_VPANEL_ON();
1947  052a 4b01          	push	#1
1948  052c ae501e        	ldw	x,#20510
1949  052f 8d000000      	callf	f_GPIO_WriteHigh
1951  0533 84            	pop	a
1952                     ; 586 					Backlight_on_timer = BACKLIGHT_DELAY_TIME;
1954  0534 ae1771        	ldw	x,#6001
1955  0537 cf0006        	ldw	L5_Backlight_on_timer+2,x
1956  053a ae0000        	ldw	x,#0
1957  053d cf0004        	ldw	L5_Backlight_on_timer,x
1959  0540 203c          	jra	L155
1960  0542               L345:
1961                     ; 588 				else if (!current_signal_status && singal_change_count > NO_SIGNAL_COUNT)
1963  0542 0d02          	tnz	(OFST+0,sp)
1964  0544 2638          	jrne	L155
1966  0546 c60001        	ld	a,L71_singal_change_count
1967  0549 a103          	cp	a,#3
1968  054b 2531          	jrult	L155
1969                     ; 590 					signal_status = FALSE;
1971  054d 725f0002      	clr	L51_signal_status
1972                     ; 591 					Backlight_on_timer = TIMER_STOPPED;
1974  0551 ae0000        	ldw	x,#0
1975  0554 cf0006        	ldw	L5_Backlight_on_timer+2,x
1976  0557 ae0000        	ldw	x,#0
1977  055a cf0004        	ldw	L5_Backlight_on_timer,x
1978                     ; 592 					SET_BACKLIGHT_OFF();
1980  055d 4b80          	push	#128
1981  055f ae500a        	ldw	x,#20490
1982  0562 8d000000      	callf	f_GPIO_WriteHigh
1984  0566 84            	pop	a
1985                     ; 593 					IR_DelayNMiliseconds(200);
1987  0567 ae00c8        	ldw	x,#200
1988  056a 8d000000      	callf	f_IR_DelayNMiliseconds
1990                     ; 594 					SET_VPANEL_OFF();
1992  056e 4b01          	push	#1
1993  0570 ae501e        	ldw	x,#20510
1994  0573 8d000000      	callf	f_GPIO_WriteLow
1996  0577 84            	pop	a
1997  0578 2004          	jra	L155
1998  057a               L145:
1999                     ; 599 				singal_change_count = 0;
2001  057a 725f0001      	clr	L71_singal_change_count
2002  057e               L155:
2003                     ; 602 			if (signal_status)
2005  057e 725d0002      	tnz	L51_signal_status
2006  0582 270c          	jreq	L355
2007                     ; 604 				GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
2009  0584 4b08          	push	#8
2010  0586 ae500f        	ldw	x,#20495
2011  0589 8d000000      	callf	f_GPIO_WriteHigh
2013  058d 84            	pop	a
2015  058e 200a          	jra	L725
2016  0590               L355:
2017                     ; 608 				GPIO_WriteReverse(LED_G_PORT, LED_G_PIN);
2019  0590 4b08          	push	#8
2020  0592 ae500f        	ldw	x,#20495
2021  0595 8d000000      	callf	f_GPIO_WriteReverse
2023  0599 84            	pop	a
2024  059a               L725:
2025                     ; 612 }
2028  059a 85            	popw	x
2029  059b 87            	retf
2061                     ; 614 void SWI2C_SystemPowerUp(void)
2061                     ; 615 {
2062                     	switch	.text
2063  059c               f_SWI2C_SystemPowerUp:
2067                     ; 616 	GPIO_WriteLow(POWER_ONOFF_PORT, POWER_ONOFF_PIN);
2069  059c 4b20          	push	#32
2070  059e ae500a        	ldw	x,#20490
2071  05a1 8d000000      	callf	f_GPIO_WriteLow
2073  05a5 84            	pop	a
2074                     ; 617 	GPIO_WriteLow(LED_R_PORT, LED_R_PIN);			
2076  05a6 4b01          	push	#1
2077  05a8 ae5014        	ldw	x,#20500
2078  05ab 8d000000      	callf	f_GPIO_WriteLow
2080  05af 84            	pop	a
2081                     ; 618 	GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
2083  05b0 4b08          	push	#8
2084  05b2 ae500f        	ldw	x,#20495
2085  05b5 8d000000      	callf	f_GPIO_WriteHigh
2087  05b9 84            	pop	a
2088                     ; 619 	IR_DelayNMiliseconds(50);
2090  05ba ae0032        	ldw	x,#50
2091  05bd 8d000000      	callf	f_IR_DelayNMiliseconds
2093                     ; 620 	Power_status = TRUE;
2095  05c1 3501000d      	mov	L31_Power_status,#1
2096                     ; 621 	GPIO_WriteLow(IT680X_RESET_PORT, IT680X_RESET_PIN);
2098  05c5 4b01          	push	#1
2099  05c7 ae5005        	ldw	x,#20485
2100  05ca 8d000000      	callf	f_GPIO_WriteLow
2102  05ce 84            	pop	a
2103                     ; 623 	IR_DelayNMiliseconds(200);
2105  05cf ae00c8        	ldw	x,#200
2106  05d2 8d000000      	callf	f_IR_DelayNMiliseconds
2108                     ; 624 	GPIO_WriteHigh(IT680X_RESET_PORT, IT680X_RESET_PIN);
2110  05d6 4b01          	push	#1
2111  05d8 ae5005        	ldw	x,#20485
2112  05db 8d000000      	callf	f_GPIO_WriteHigh
2114  05df 84            	pop	a
2115                     ; 626 	IR_DelayNMiliseconds(200);
2117  05e0 ae00c8        	ldw	x,#200
2118  05e3 8d000000      	callf	f_IR_DelayNMiliseconds
2120                     ; 627 	IT6802_fsm_init();
2122  05e7 8d000000      	callf	f_IT6802_fsm_init
2124                     ; 628 	Have_FRC = SWI2C_TestDevice(FRC_BOARD_ADDRESS);
2126  05eb a622          	ld	a,#34
2127  05ed 8d010201      	callf	f_SWI2C_TestDevice
2129  05f1 c70000        	ld	L32_Have_FRC,a
2130                     ; 629 	singal_change_count = 0;
2132  05f4 725f0001      	clr	L71_singal_change_count
2133                     ; 630 	signal_status = FALSE;
2135  05f8 725f0002      	clr	L51_signal_status
2136                     ; 631 }
2139  05fc 87            	retf
2167                     ; 633 void SWI2C_ResetFPGA(void)
2167                     ; 634 {
2168                     	switch	.text
2169  05fd               f_SWI2C_ResetFPGA:
2173                     ; 635 	if (Power_status)
2175  05fd 725d000d      	tnz	L31_Power_status
2176  0601 272a          	jreq	L775
2177                     ; 637 		GPIO_WriteLow(FPGA_RESET_PORT, FPGA_RESET_PIN);
2179  0603 4b10          	push	#16
2180  0605 ae500a        	ldw	x,#20490
2181  0608 8d000000      	callf	f_GPIO_WriteLow
2183  060c 84            	pop	a
2184                     ; 638 		IR_DelayNMiliseconds(200);
2186  060d ae00c8        	ldw	x,#200
2187  0610 8d000000      	callf	f_IR_DelayNMiliseconds
2189                     ; 639 		GPIO_WriteHigh(FPGA_RESET_PORT, FPGA_RESET_PIN);
2191  0614 4b10          	push	#16
2192  0616 ae500a        	ldw	x,#20490
2193  0619 8d000000      	callf	f_GPIO_WriteHigh
2195  061d 84            	pop	a
2196                     ; 640 		IR_DelayNMiliseconds(1500);
2198  061e ae05dc        	ldw	x,#1500
2199  0621 8d000000      	callf	f_IR_DelayNMiliseconds
2201                     ; 641 		FPGA_WriteWeavingTable();
2203  0625 8ddb01db      	callf	L332f_FPGA_WriteWeavingTable
2205                     ; 642 		FPGA_Init();
2207  0629 8d720772      	callf	f_FPGA_Init
2209  062d               L775:
2210                     ; 644 }
2213  062d 87            	retf
2240                     ; 646 void SWI2C_ResetHDMI(void)
2240                     ; 647 {
2241                     	switch	.text
2242  062e               f_SWI2C_ResetHDMI:
2246                     ; 648 	if (Power_status)
2248  062e 725d000d      	tnz	L31_Power_status
2249  0632 2743          	jreq	L116
2250                     ; 650 		GPIO_WriteLow(FPGA_RESET_PORT, FPGA_RESET_PIN);
2252  0634 4b10          	push	#16
2253  0636 ae500a        	ldw	x,#20490
2254  0639 8d000000      	callf	f_GPIO_WriteLow
2256  063d 84            	pop	a
2257                     ; 651 		IR_DelayNMiliseconds(200);
2259  063e ae00c8        	ldw	x,#200
2260  0641 8d000000      	callf	f_IR_DelayNMiliseconds
2262                     ; 652 		GPIO_WriteHigh(FPGA_RESET_PORT, FPGA_RESET_PIN);
2264  0645 4b10          	push	#16
2265  0647 ae500a        	ldw	x,#20490
2266  064a 8d000000      	callf	f_GPIO_WriteHigh
2268  064e 84            	pop	a
2269                     ; 653 		IR_DelayNMiliseconds(500);
2271  064f ae01f4        	ldw	x,#500
2272  0652 8d000000      	callf	f_IR_DelayNMiliseconds
2274                     ; 654 		SWI2C_WriteByte(0x90, 0x14, 0xFF);
2276  0656 4bff          	push	#255
2277  0658 ae0014        	ldw	x,#20
2278  065b a690          	ld	a,#144
2279  065d 95            	ld	xh,a
2280  065e 8d930293      	callf	f_SWI2C_WriteByte
2282  0662 84            	pop	a
2283                     ; 655 		IR_DelayNMiliseconds(1000);
2285  0663 ae03e8        	ldw	x,#1000
2286  0666 8d000000      	callf	f_IR_DelayNMiliseconds
2288                     ; 656 		SWI2C_WriteByte(0x90, 0x14, 0x0);
2290  066a 4b00          	push	#0
2291  066c ae0014        	ldw	x,#20
2292  066f a690          	ld	a,#144
2293  0671 95            	ld	xh,a
2294  0672 8d930293      	callf	f_SWI2C_WriteByte
2296  0676 84            	pop	a
2297  0677               L116:
2298                     ; 658 }
2301  0677 87            	retf
2330                     ; 660 void SWI2C_SystemPowerDown(void)
2330                     ; 661 {
2331                     	switch	.text
2332  0678               f_SWI2C_SystemPowerDown:
2336                     ; 662 	SET_BACKLIGHT_OFF();
2338  0678 4b80          	push	#128
2339  067a ae500a        	ldw	x,#20490
2340  067d 8d000000      	callf	f_GPIO_WriteHigh
2342  0681 84            	pop	a
2343                     ; 663 	IR_DelayNMiliseconds(200);
2345  0682 ae00c8        	ldw	x,#200
2346  0685 8d000000      	callf	f_IR_DelayNMiliseconds
2348                     ; 664 	SET_VPANEL_OFF();
2350  0689 4b01          	push	#1
2351  068b ae501e        	ldw	x,#20510
2352  068e 8d000000      	callf	f_GPIO_WriteLow
2354  0692 84            	pop	a
2355                     ; 665 	GPIO_WriteHigh(POWER_ONOFF_PORT, POWER_ONOFF_PIN);
2357  0693 4b20          	push	#32
2358  0695 ae500a        	ldw	x,#20490
2359  0698 8d000000      	callf	f_GPIO_WriteHigh
2361  069c 84            	pop	a
2362                     ; 666 	GPIO_WriteHigh(LED_R_PORT, LED_R_PIN);			
2364  069d 4b01          	push	#1
2365  069f ae5014        	ldw	x,#20500
2366  06a2 8d000000      	callf	f_GPIO_WriteHigh
2368  06a6 84            	pop	a
2369                     ; 667 	GPIO_WriteLow(LED_G_PORT, LED_G_PIN);
2371  06a7 4b08          	push	#8
2372  06a9 ae500f        	ldw	x,#20495
2373  06ac 8d000000      	callf	f_GPIO_WriteLow
2375  06b0 84            	pop	a
2376                     ; 668 	Backlight_on_timer = TIMER_STOPPED;
2378  06b1 ae0000        	ldw	x,#0
2379  06b4 cf0006        	ldw	L5_Backlight_on_timer+2,x
2380  06b7 ae0000        	ldw	x,#0
2381  06ba cf0004        	ldw	L5_Backlight_on_timer,x
2382                     ; 669 	Power_status = FALSE;
2384  06bd 725f000d      	clr	L31_Power_status
2385                     ; 670 	I2C_stop = FALSE;
2387  06c1 725f000e      	clr	L12_I2C_stop
2388                     ; 671 }
2391  06c5 87            	retf
2418                     ; 673 void SWI2C_ToggleI2CMode(void)
2418                     ; 674 {
2419                     	switch	.text
2420  06c6               f_SWI2C_ToggleI2CMode:
2424                     ; 675 	if (Power_status)
2426  06c6 725d000d      	tnz	L31_Power_status
2427  06ca 273e          	jreq	L336
2428                     ; 677 		I2C_stop = !I2C_stop;
2430  06cc 725d000e      	tnz	L12_I2C_stop
2431  06d0 2604          	jrne	L47
2432  06d2 a601          	ld	a,#1
2433  06d4 2001          	jra	L67
2434  06d6               L47:
2435  06d6 4f            	clr	a
2436  06d7               L67:
2437  06d7 c7000e        	ld	L12_I2C_stop,a
2438                     ; 678 		if (I2C_stop)
2440  06da 725d000e      	tnz	L12_I2C_stop
2441  06de 2716          	jreq	L536
2442                     ; 680 			GPIO_WriteHigh(LED_R_PORT, LED_R_PIN);			
2444  06e0 4b01          	push	#1
2445  06e2 ae5014        	ldw	x,#20500
2446  06e5 8d000000      	callf	f_GPIO_WriteHigh
2448  06e9 84            	pop	a
2449                     ; 681 			GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
2451  06ea 4b08          	push	#8
2452  06ec ae500f        	ldw	x,#20495
2453  06ef 8d000000      	callf	f_GPIO_WriteHigh
2455  06f3 84            	pop	a
2457  06f4 2014          	jra	L336
2458  06f6               L536:
2459                     ; 685 			GPIO_WriteLow(LED_R_PORT, LED_R_PIN);			
2461  06f6 4b01          	push	#1
2462  06f8 ae5014        	ldw	x,#20500
2463  06fb 8d000000      	callf	f_GPIO_WriteLow
2465  06ff 84            	pop	a
2466                     ; 686 			GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
2468  0700 4b08          	push	#8
2469  0702 ae500f        	ldw	x,#20495
2470  0705 8d000000      	callf	f_GPIO_WriteHigh
2472  0709 84            	pop	a
2473  070a               L336:
2474                     ; 689 }
2477  070a 87            	retf
2502                     ; 691 void SWI2C_ProcessPower(void)
2502                     ; 692 {
2503                     	switch	.text
2504  070b               f_SWI2C_ProcessPower:
2508                     ; 693 	if (Power_status)
2510  070b 725d000d      	tnz	L31_Power_status
2511  070f 2706          	jreq	L156
2512                     ; 695 		SWI2C_SystemPowerDown();
2514  0711 8d780678      	callf	f_SWI2C_SystemPowerDown
2517  0715 2004          	jra	L356
2518  0717               L156:
2519                     ; 699 		SWI2C_SystemPowerUp();
2521  0717 8d9c059c      	callf	f_SWI2C_SystemPowerUp
2523  071b               L356:
2524                     ; 701 }
2527  071b 87            	retf
2529                     	switch	.data
2530  000f               L556_Set3DOn:
2531  000f 00            	dc.b	0
2584                     ; 705 static void SWI2C_Set3DOnOff(u8 OnOff)
2584                     ; 706 {
2585                     	switch	.text
2586  071c               L756f_SWI2C_Set3DOnOff:
2588  071c 5203          	subw	sp,#3
2589       00000003      OFST:	set	3
2592                     ; 708 	if (OnOff)
2594  071e 4d            	tnz	a
2595  071f 2706          	jreq	L307
2596                     ; 710 		reg_value = 0x40;
2598  0721 a640          	ld	a,#64
2599  0723 6b03          	ld	(OFST+0,sp),a
2601  0725 2004          	jra	L507
2602  0727               L307:
2603                     ; 714 		reg_value = 0x80;
2605  0727 a680          	ld	a,#128
2606  0729 6b03          	ld	(OFST+0,sp),a
2607  072b               L507:
2608                     ; 716 	for (retry = 0; retry < 3; retry++)
2610  072b 0f02          	clr	(OFST-1,sp)
2611  072d               L707:
2612                     ; 719 		SWI2C_WriteByte(FPGA_ADDRESS, 0x57, reg_value);
2614  072d 7b03          	ld	a,(OFST+0,sp)
2615  072f 88            	push	a
2616  0730 ae0057        	ldw	x,#87
2617  0733 a6ba          	ld	a,#186
2618  0735 95            	ld	xh,a
2619  0736 8d930293      	callf	f_SWI2C_WriteByte
2621  073a 84            	pop	a
2622                     ; 720 		SWI2C_ReadByte(FPGA_ADDRESS, 0x57, &value);
2624  073b 96            	ldw	x,sp
2625  073c 1c0001        	addw	x,#OFST-2
2626  073f 89            	pushw	x
2627  0740 ae0057        	ldw	x,#87
2628  0743 a6ba          	ld	a,#186
2629  0745 95            	ld	xh,a
2630  0746 8d170217      	callf	f_SWI2C_ReadByte
2632  074a 85            	popw	x
2633                     ; 721 		if (value == reg_value)
2635  074b 7b01          	ld	a,(OFST-2,sp)
2636  074d 1103          	cp	a,(OFST+0,sp)
2637  074f 2708          	jreq	L317
2638                     ; 723 			break;
2640                     ; 716 	for (retry = 0; retry < 3; retry++)
2642  0751 0c02          	inc	(OFST-1,sp)
2645  0753 7b02          	ld	a,(OFST-1,sp)
2646  0755 a103          	cp	a,#3
2647  0757 25d4          	jrult	L707
2648  0759               L317:
2649                     ; 726 }
2652  0759 5b03          	addw	sp,#3
2653  075b 87            	retf
2678                     ; 728 void SWI2C_Toggle3DOnOff(void)
2678                     ; 729 {	
2679                     	switch	.text
2680  075c               f_SWI2C_Toggle3DOnOff:
2684                     ; 730 	Set3DOn = !Set3DOn;
2686  075c 725d000f      	tnz	L556_Set3DOn
2687  0760 2604          	jrne	L601
2688  0762 a601          	ld	a,#1
2689  0764 2001          	jra	L011
2690  0766               L601:
2691  0766 4f            	clr	a
2692  0767               L011:
2693  0767 c7000f        	ld	L556_Set3DOn,a
2694                     ; 731 	SWI2C_Set3DOnOff(Set3DOn);
2696  076a c6000f        	ld	a,L556_Set3DOn
2697  076d 8d1c071c      	callf	L756f_SWI2C_Set3DOnOff
2699                     ; 732 }
2702  0771 87            	retf
2739                     ; 737 void FPGA_Init(void)
2739                     ; 738  {	
2740                     	switch	.text
2741  0772               f_FPGA_Init:
2743  0772 88            	push	a
2744       00000001      OFST:	set	1
2747                     ; 740 	for (i = 0; i < table_size; i++)
2749  0773 0f01          	clr	(OFST+0,sp)
2751  0775 202a          	jra	L747
2752  0777               L347:
2753                     ; 742 		SWI2C_WriteByte(FPGA_ADDRESS, address_table[i], FLASH_ReadByte(EEPROM_START_ADDRESS + 1 + i));
2755  0777 7b01          	ld	a,(OFST+0,sp)
2756  0779 5f            	clrw	x
2757  077a 97            	ld	xl,a
2758  077b 1c4001        	addw	x,#16385
2759  077e 8d000000      	callf	d_itolx
2761  0782 be02          	ldw	x,c_lreg+2
2762  0784 89            	pushw	x
2763  0785 be00          	ldw	x,c_lreg
2764  0787 89            	pushw	x
2765  0788 8d000000      	callf	f_FLASH_ReadByte
2767  078c 5b04          	addw	sp,#4
2768  078e 88            	push	a
2769  078f 7b02          	ld	a,(OFST+1,sp)
2770  0791 5f            	clrw	x
2771  0792 97            	ld	xl,a
2772  0793 d60000        	ld	a,(_address_table,x)
2773  0796 97            	ld	xl,a
2774  0797 a6ba          	ld	a,#186
2775  0799 95            	ld	xh,a
2776  079a 8d930293      	callf	f_SWI2C_WriteByte
2778  079e 84            	pop	a
2779                     ; 740 	for (i = 0; i < table_size; i++)
2781  079f 0c01          	inc	(OFST+0,sp)
2782  07a1               L747:
2785  07a1 7b01          	ld	a,(OFST+0,sp)
2786  07a3 c10000        	cp	a,_table_size
2787  07a6 25cf          	jrult	L347
2788                     ; 744 	if (FLASH_ReadByte(EEPROM_START_ADDRESS + 1))
2790  07a8 ae4001        	ldw	x,#16385
2791  07ab 89            	pushw	x
2792  07ac ae0000        	ldw	x,#0
2793  07af 89            	pushw	x
2794  07b0 8d000000      	callf	f_FLASH_ReadByte
2796  07b4 5b04          	addw	sp,#4
2797  07b6 4d            	tnz	a
2798  07b7 2704          	jreq	L357
2799                     ; 746 		Set3DOn = TRUE;
2801  07b9 3501000f      	mov	L556_Set3DOn,#1
2802  07bd               L357:
2803                     ; 748 	SWI2C_WriteByte(FPGA_ADDRESS, 0x19, 0x04);
2805  07bd 4b04          	push	#4
2806  07bf ae0019        	ldw	x,#25
2807  07c2 a6ba          	ld	a,#186
2808  07c4 95            	ld	xh,a
2809  07c5 8d930293      	callf	f_SWI2C_WriteByte
2811  07c9 84            	pop	a
2812                     ; 749 	SWI2C_Set3DOnOff(Set3DOn);	
2814  07ca c6000f        	ld	a,L556_Set3DOn
2815  07cd 8d1c071c      	callf	L756f_SWI2C_Set3DOnOff
2817                     ; 750 }
2820  07d1 84            	pop	a
2821  07d2 87            	retf
2854                     ; 752 void HDMI_HotPlug(u8 value)
2854                     ; 753 {
2855                     	switch	.text
2856  07d3               f_HDMI_HotPlug:
2860                     ; 754 	if (value)
2862  07d3 4d            	tnz	a
2863  07d4 270c          	jreq	L177
2864                     ; 756 		GPIO_WriteHigh(HDMI_HOTPLUG_PORT,HDMI_HOTPLUG_PIN);
2866  07d6 4b40          	push	#64
2867  07d8 ae5005        	ldw	x,#20485
2868  07db 8d000000      	callf	f_GPIO_WriteHigh
2870  07df 84            	pop	a
2872  07e0 200a          	jra	L377
2873  07e2               L177:
2874                     ; 760 		GPIO_WriteLow(HDMI_HOTPLUG_PORT,HDMI_HOTPLUG_PIN);
2876  07e2 4b40          	push	#64
2877  07e4 ae5005        	ldw	x,#20485
2878  07e7 8d000000      	callf	f_GPIO_WriteLow
2880  07eb 84            	pop	a
2881  07ec               L377:
2882                     ; 762 }
2885  07ec 87            	retf
2887                     	switch	.const
2888  006e               L577_deep_value:
2889  006e 30            	dc.b	48
2890  006f 80            	dc.b	128
2891  0070 60            	dc.b	96
2892  0071 50            	dc.b	80
2893  0072 70            	dc.b	112
2894  0073 70            	dc.b	112
2895  0074 70            	dc.b	112
2896  0075 60            	dc.b	96
2897  0076 80            	dc.b	128
2898  0077 90            	dc.b	144
2899  0078 50            	dc.b	80
2900  0079 90            	dc.b	144
2901  007a a0            	dc.b	160
2902  007b 40            	dc.b	64
2903  007c a0            	dc.b	160
2904  007d a8            	dc.b	168
2905  007e 30            	dc.b	48
2906  007f a0            	dc.b	160
2939                     ; 774 void SWI2C_Set_deep(u8 deep)
2939                     ; 775 {
2940                     	switch	.text
2941  07ed               f_SWI2C_Set_deep:
2943  07ed 88            	push	a
2944       00000000      OFST:	set	0
2947                     ; 776 	if (deep == 0)
2949  07ee 4d            	tnz	a
2950  07ef 2650          	jrne	L3101
2951                     ; 778 		SWI2C_WriteByte(FPGA_ADDRESS, 0x59, FLASH_ReadByte(0x4000 + REG_0x59 + 1));
2953  07f1 ae400b        	ldw	x,#16395
2954  07f4 89            	pushw	x
2955  07f5 ae0000        	ldw	x,#0
2956  07f8 89            	pushw	x
2957  07f9 8d000000      	callf	f_FLASH_ReadByte
2959  07fd 5b04          	addw	sp,#4
2960  07ff 88            	push	a
2961  0800 ae0059        	ldw	x,#89
2962  0803 a6ba          	ld	a,#186
2963  0805 95            	ld	xh,a
2964  0806 8d930293      	callf	f_SWI2C_WriteByte
2966  080a 84            	pop	a
2967                     ; 779 		SWI2C_WriteByte(FPGA_ADDRESS, 0x5C, FLASH_ReadByte(0x4000 + REG_0x5C + 1));
2969  080b ae400d        	ldw	x,#16397
2970  080e 89            	pushw	x
2971  080f ae0000        	ldw	x,#0
2972  0812 89            	pushw	x
2973  0813 8d000000      	callf	f_FLASH_ReadByte
2975  0817 5b04          	addw	sp,#4
2976  0819 88            	push	a
2977  081a ae005c        	ldw	x,#92
2978  081d a6ba          	ld	a,#186
2979  081f 95            	ld	xh,a
2980  0820 8d930293      	callf	f_SWI2C_WriteByte
2982  0824 84            	pop	a
2983                     ; 780 		SWI2C_WriteByte(FPGA_ADDRESS, 0x5A, FLASH_ReadByte(0x4000 + REG_0x5A + 1));
2985  0825 ae400c        	ldw	x,#16396
2986  0828 89            	pushw	x
2987  0829 ae0000        	ldw	x,#0
2988  082c 89            	pushw	x
2989  082d 8d000000      	callf	f_FLASH_ReadByte
2991  0831 5b04          	addw	sp,#4
2992  0833 88            	push	a
2993  0834 ae005a        	ldw	x,#90
2994  0837 a6ba          	ld	a,#186
2995  0839 95            	ld	xh,a
2996  083a 8d930293      	callf	f_SWI2C_WriteByte
2998  083e 84            	pop	a
3000  083f 203f          	jra	L5101
3001  0841               L3101:
3002                     ; 784 		SWI2C_WriteByte(FPGA_ADDRESS, 0x59, deep_value[deep][0]);
3004  0841 7b01          	ld	a,(OFST+1,sp)
3005  0843 97            	ld	xl,a
3006  0844 a603          	ld	a,#3
3007  0846 42            	mul	x,a
3008  0847 d6006e        	ld	a,(L577_deep_value,x)
3009  084a 88            	push	a
3010  084b ae0059        	ldw	x,#89
3011  084e a6ba          	ld	a,#186
3012  0850 95            	ld	xh,a
3013  0851 8d930293      	callf	f_SWI2C_WriteByte
3015  0855 84            	pop	a
3016                     ; 785 		SWI2C_WriteByte(FPGA_ADDRESS, 0x5C, deep_value[deep][1]);
3018  0856 7b01          	ld	a,(OFST+1,sp)
3019  0858 97            	ld	xl,a
3020  0859 a603          	ld	a,#3
3021  085b 42            	mul	x,a
3022  085c d6006f        	ld	a,(L577_deep_value+1,x)
3023  085f 88            	push	a
3024  0860 ae005c        	ldw	x,#92
3025  0863 a6ba          	ld	a,#186
3026  0865 95            	ld	xh,a
3027  0866 8d930293      	callf	f_SWI2C_WriteByte
3029  086a 84            	pop	a
3030                     ; 786 		SWI2C_WriteByte(FPGA_ADDRESS, 0x5A, deep_value[deep][2]);
3032  086b 7b01          	ld	a,(OFST+1,sp)
3033  086d 97            	ld	xl,a
3034  086e a603          	ld	a,#3
3035  0870 42            	mul	x,a
3036  0871 d60070        	ld	a,(L577_deep_value+2,x)
3037  0874 88            	push	a
3038  0875 ae005a        	ldw	x,#90
3039  0878 a6ba          	ld	a,#186
3040  087a 95            	ld	xh,a
3041  087b 8d930293      	callf	f_SWI2C_WriteByte
3043  087f 84            	pop	a
3044  0880               L5101:
3045                     ; 788 }
3048  0880 84            	pop	a
3049  0881 87            	retf
3074                     	switch	.const
3075  0080               L221:
3076  0080 00000002      	dc.l	2
3077                     ; 790 void SWI2C_UpdateTimer(void)
3077                     ; 791 {
3078                     	switch	.text
3079  0882               f_SWI2C_UpdateTimer:
3083                     ; 792 	if (frc_update_timer > TIMER_EXPIRED)
3085  0882 ae0000        	ldw	x,#L3_frc_update_timer
3086  0885 8d000000      	callf	d_ltor
3088  0889 ae0080        	ldw	x,#L221
3089  088c 8d000000      	callf	d_lcmp
3091  0890 2509          	jrult	L7201
3092                     ; 794 		frc_update_timer--;
3094  0892 ae0000        	ldw	x,#L3_frc_update_timer
3095  0895 a601          	ld	a,#1
3096  0897 8d000000      	callf	d_lgsbc
3098  089b               L7201:
3099                     ; 797 	if (Backlight_on_timer > TIMER_EXPIRED)
3101  089b ae0004        	ldw	x,#L5_Backlight_on_timer
3102  089e 8d000000      	callf	d_ltor
3104  08a2 ae0080        	ldw	x,#L221
3105  08a5 8d000000      	callf	d_lcmp
3107  08a9 2509          	jrult	L1301
3108                     ; 799 		Backlight_on_timer--;
3110  08ab ae0004        	ldw	x,#L5_Backlight_on_timer
3111  08ae a601          	ld	a,#1
3112  08b0 8d000000      	callf	d_lgsbc
3114  08b4               L1301:
3115                     ; 807 	if (signal_detect_timer > TIMER_EXPIRED)
3117  08b4 ae0008        	ldw	x,#L7_signal_detect_timer
3118  08b7 8d000000      	callf	d_ltor
3120  08bb ae0080        	ldw	x,#L221
3121  08be 8d000000      	callf	d_lcmp
3123  08c2 2509          	jrult	L3301
3124                     ; 809 		signal_detect_timer--;
3126  08c4 ae0008        	ldw	x,#L7_signal_detect_timer
3127  08c7 a601          	ld	a,#1
3128  08c9 8d000000      	callf	d_lgsbc
3130  08cd               L3301:
3131                     ; 811 }
3134  08cd 87            	retf
3241                     	xref	_table_size
3242                     	xref	_address_table
3243                     	switch	.bss
3244  0000               L32_Have_FRC:
3245  0000 00            	ds.b	1
3246  0001               L71_singal_change_count:
3247  0001 00            	ds.b	1
3248  0002               L51_signal_status:
3249  0002 00            	ds.b	1
3250                     	xref	f_IT6802_fsm
3251                     	xref	f_IT6802_fsm_init
3252                     	xdef	f_SWI2C_UpdateTimer
3253                     	xdef	f_SWI2C_Set_deep
3254                     	xdef	f_SWI2C_Toggle3DOnOff
3255                     	xdef	f_HDMI_HotPlug
3256                     	xdef	f_FPGA_Init
3257                     	xdef	f_SWI2C_TestDevice
3258                     	xdef	f_SWI2C_Write2Byte
3259                     	xdef	f_SWI2C_WriteBytes
3260                     	xdef	f_SWI2C_WriteByte
3261                     	xdef	f_SWI2C_ReadBytes
3262                     	xdef	f_SWI2C_ReadByte
3263                     	xdef	f_SWI2C_ResetHDMI
3264                     	xdef	f_SWI2C_ResetFPGA
3265                     	xdef	f_SWI2C_ToggleI2CMode
3266                     	xdef	f_SWI2C_ProcessPower
3267                     	xdef	f_SWI2C_SystemPowerDown
3268                     	xdef	f_SWI2C_SystemPowerUp
3269                     	xdef	f_SWI2C_Update
3270                     	xdef	f_SWI2C_Init
3271                     	xref	f_IR_DelayNMiliseconds
3272                     	xref	f_FLASH_ReadByte
3273                     	xref	f_TIM1_CtrlPWMOutputs
3274                     	xref	f_TIM1_Cmd
3275                     	xref	f_TIM1_OC1Init
3276                     	xref	f_TIM1_TimeBaseInit
3277                     	xref	f_GPIO_ReadInputPin
3278                     	xref	f_GPIO_WriteReverse
3279                     	xref	f_GPIO_WriteLow
3280                     	xref	f_GPIO_WriteHigh
3281                     	xref	f_GPIO_Init
3282                     	xref.b	c_lreg
3302                     	xref	d_lgsbc
3303                     	xref	d_itolx
3304                     	xref	d_lcmp
3305                     	xref	d_ltor
3306                     	end
