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
 678                     ; 260 static u8 SWI2C_GetSignalStatus(void)
 678                     ; 261 {
 679                     	switch	.text
 680  01b9               L702f_SWI2C_GetSignalStatus:
 682  01b9 5208          	subw	sp,#8
 683       00000008      OFST:	set	8
 686                     ; 266 	SWI2C_ReadByte(0x90, 0x0A, &p0_status);
 688  01bb 96            	ldw	x,sp
 689  01bc 1c0003        	addw	x,#OFST-5
 690  01bf 89            	pushw	x
 691  01c0 ae000a        	ldw	x,#10
 692  01c3 a690          	ld	a,#144
 693  01c5 95            	ld	xh,a
 694  01c6 8d780278      	callf	f_SWI2C_ReadByte
 696  01ca 85            	popw	x
 697                     ; 267 	SWI2C_ReadByte(0x90, 0x9F, &val);
 699  01cb 96            	ldw	x,sp
 700  01cc 1c0008        	addw	x,#OFST+0
 701  01cf 89            	pushw	x
 702  01d0 ae009f        	ldw	x,#159
 703  01d3 a690          	ld	a,#144
 704  01d5 95            	ld	xh,a
 705  01d6 8d780278      	callf	f_SWI2C_ReadByte
 707  01da 85            	popw	x
 708                     ; 268 	HActive = val&0x3F;
 710  01db 7b08          	ld	a,(OFST+0,sp)
 711  01dd a43f          	and	a,#63
 712  01df 5f            	clrw	x
 713  01e0 97            	ld	xl,a
 714  01e1 1f04          	ldw	(OFST-4,sp),x
 715                     ; 269 	HActive = HActive<<8;
 717  01e3 7b05          	ld	a,(OFST-3,sp)
 718  01e5 6b04          	ld	(OFST-4,sp),a
 719  01e7 0f05          	clr	(OFST-3,sp)
 720                     ; 270 	SWI2C_ReadByte(0x90, 0x9E, &val);
 722  01e9 96            	ldw	x,sp
 723  01ea 1c0008        	addw	x,#OFST+0
 724  01ed 89            	pushw	x
 725  01ee ae009e        	ldw	x,#158
 726  01f1 a690          	ld	a,#144
 727  01f3 95            	ld	xh,a
 728  01f4 8d780278      	callf	f_SWI2C_ReadByte
 730  01f8 85            	popw	x
 731                     ; 271 	HActive += val;
 733  01f9 7b08          	ld	a,(OFST+0,sp)
 734  01fb 5f            	clrw	x
 735  01fc 97            	ld	xl,a
 736  01fd 1f01          	ldw	(OFST-7,sp),x
 737  01ff 1e04          	ldw	x,(OFST-4,sp)
 738  0201 72fb01        	addw	x,(OFST-7,sp)
 739  0204 1f04          	ldw	(OFST-4,sp),x
 740                     ; 272 	SWI2C_ReadByte(0x90, 0xA4, &val);
 742  0206 96            	ldw	x,sp
 743  0207 1c0008        	addw	x,#OFST+0
 744  020a 89            	pushw	x
 745  020b ae00a4        	ldw	x,#164
 746  020e a690          	ld	a,#144
 747  0210 95            	ld	xh,a
 748  0211 8d780278      	callf	f_SWI2C_ReadByte
 750  0215 85            	popw	x
 751                     ; 273 	VActive = val&0xF0;
 753  0216 7b08          	ld	a,(OFST+0,sp)
 754  0218 a4f0          	and	a,#240
 755  021a 5f            	clrw	x
 756  021b 97            	ld	xl,a
 757  021c 1f06          	ldw	(OFST-2,sp),x
 758                     ; 274 	VActive = VActive<<4;
 760  021e a604          	ld	a,#4
 761  0220               L22:
 762  0220 0807          	sll	(OFST-1,sp)
 763  0222 0906          	rlc	(OFST-2,sp)
 764  0224 4a            	dec	a
 765  0225 26f9          	jrne	L22
 766                     ; 275 	SWI2C_ReadByte(0x90, 0xA5, &val);
 768  0227 96            	ldw	x,sp
 769  0228 1c0008        	addw	x,#OFST+0
 770  022b 89            	pushw	x
 771  022c ae00a5        	ldw	x,#165
 772  022f a690          	ld	a,#144
 773  0231 95            	ld	xh,a
 774  0232 8d780278      	callf	f_SWI2C_ReadByte
 776  0236 85            	popw	x
 777                     ; 276 	VActive += val;
 779  0237 7b08          	ld	a,(OFST+0,sp)
 780  0239 5f            	clrw	x
 781  023a 97            	ld	xl,a
 782  023b 1f01          	ldw	(OFST-7,sp),x
 783  023d 1e06          	ldw	x,(OFST-2,sp)
 784  023f 72fb01        	addw	x,(OFST-7,sp)
 785  0242 1f06          	ldw	(OFST-2,sp),x
 786                     ; 278 	if ((p0_status&0x0C) == 0x0C)
 788  0244 7b03          	ld	a,(OFST-5,sp)
 789  0246 a40c          	and	a,#12
 790  0248 a10c          	cp	a,#12
 791  024a 2612          	jrne	L332
 792                     ; 281 		if (HActive == 3840 && VActive == 2160)
 794  024c 1e04          	ldw	x,(OFST-4,sp)
 795  024e a30f00        	cpw	x,#3840
 796  0251 260b          	jrne	L332
 798  0253 1e06          	ldw	x,(OFST-2,sp)
 799  0255 a30870        	cpw	x,#2160
 800  0258 2604          	jrne	L332
 801                     ; 284 			return 1;
 803  025a a601          	ld	a,#1
 805  025c 2001          	jra	L42
 806  025e               L332:
 807                     ; 288 	return 0;
 809  025e 4f            	clr	a
 811  025f               L42:
 813  025f 5b08          	addw	sp,#8
 814  0261 87            	retf
 855                     ; 345 u8 SWI2C_TestDevice(u8 addr)
 855                     ; 346 {
 856                     	switch	.text
 857  0262               f_SWI2C_TestDevice:
 859  0262 88            	push	a
 860  0263 88            	push	a
 861       00000001      OFST:	set	1
 864                     ; 348 	_SWI2C_Start();
 866  0264 8d0d000d      	callf	L75f__SWI2C_Start
 868                     ; 349 	result = _SWI2C_SendByte(addr);
 870  0268 7b02          	ld	a,(OFST+1,sp)
 871  026a 8d650065      	callf	L301f__SWI2C_SendByte
 873  026e 6b01          	ld	(OFST+0,sp),a
 874                     ; 350 	_SWI2C_Stop();
 876  0270 8d3e003e      	callf	L17f__SWI2C_Stop
 878                     ; 352 	return result;
 880  0274 7b01          	ld	a,(OFST+0,sp)
 883  0276 85            	popw	x
 884  0277 87            	retf
 933                     ; 355 u8 SWI2C_ReadByte(u8 addr, u8 subaddr, u8 * pValue)
 933                     ; 356 {
 934                     	switch	.text
 935  0278               f_SWI2C_ReadByte:
 937  0278 89            	pushw	x
 938       00000000      OFST:	set	0
 941                     ; 357 	return SWI2C_ReadBytes(addr, subaddr, 1, pValue);
 943  0279 1e06          	ldw	x,(OFST+6,sp)
 944  027b 89            	pushw	x
 945  027c 4b01          	push	#1
 946  027e 7b05          	ld	a,(OFST+5,sp)
 947  0280 97            	ld	xl,a
 948  0281 7b04          	ld	a,(OFST+4,sp)
 949  0283 95            	ld	xh,a
 950  0284 8d8c028c      	callf	f_SWI2C_ReadBytes
 952  0288 5b03          	addw	sp,#3
 955  028a 85            	popw	x
 956  028b 87            	retf
1022                     ; 360 u8 SWI2C_ReadBytes(u8 addr, u8 subaddr, u8 number, u8 * p_data)
1022                     ; 361 {	
1023                     	switch	.text
1024  028c               f_SWI2C_ReadBytes:
1026  028c 89            	pushw	x
1027  028d 88            	push	a
1028       00000001      OFST:	set	1
1031                     ; 363 	_SWI2C_Start();
1033  028e 8d0d000d      	callf	L75f__SWI2C_Start
1035                     ; 364 	result = _SWI2C_SendByte(addr);
1037  0292 7b02          	ld	a,(OFST+1,sp)
1038  0294 8d650065      	callf	L301f__SWI2C_SendByte
1040  0298 6b01          	ld	(OFST+0,sp),a
1041                     ; 365 	if (result == IIC_FAIL)
1043  029a 0d01          	tnz	(OFST+0,sp)
1044  029c 2608          	jrne	L523
1045                     ; 367 		_SWI2C_Stop();
1047  029e 8d3e003e      	callf	L17f__SWI2C_Stop
1049                     ; 368 		return result;
1051  02a2 7b01          	ld	a,(OFST+0,sp)
1053  02a4 2012          	jra	L43
1054  02a6               L523:
1055                     ; 370 	result = _SWI2C_SendByte(subaddr);
1057  02a6 7b03          	ld	a,(OFST+2,sp)
1058  02a8 8d650065      	callf	L301f__SWI2C_SendByte
1060  02ac 6b01          	ld	(OFST+0,sp),a
1061                     ; 371 	if (result == IIC_FAIL)
1063  02ae 0d01          	tnz	(OFST+0,sp)
1064  02b0 2609          	jrne	L723
1065                     ; 373 		_SWI2C_Stop();
1067  02b2 8d3e003e      	callf	L17f__SWI2C_Stop
1069                     ; 374 		return result;
1071  02b6 7b01          	ld	a,(OFST+0,sp)
1073  02b8               L43:
1075  02b8 5b03          	addw	sp,#3
1076  02ba 87            	retf
1077  02bb               L723:
1078                     ; 376 	_SWI2C_Start();
1080  02bb 8d0d000d      	callf	L75f__SWI2C_Start
1082                     ; 377 	result = _SWI2C_SendByte(addr|0x01);
1084  02bf 7b02          	ld	a,(OFST+1,sp)
1085  02c1 aa01          	or	a,#1
1086  02c3 8d650065      	callf	L301f__SWI2C_SendByte
1088  02c7 6b01          	ld	(OFST+0,sp),a
1089                     ; 378 	if (result == IIC_FAIL)
1091  02c9 0d01          	tnz	(OFST+0,sp)
1092  02cb 2618          	jrne	L533
1093                     ; 380 		_SWI2C_Stop();
1095  02cd 8d3e003e      	callf	L17f__SWI2C_Stop
1097                     ; 381 		return result;
1099  02d1 7b01          	ld	a,(OFST+0,sp)
1101  02d3 20e3          	jra	L43
1102  02d5               L333:
1103                     ; 385 		*p_data = _SWI2C_ReceiveByte(number);
1105  02d5 7b07          	ld	a,(OFST+6,sp)
1106  02d7 8d1a011a      	callf	L541f__SWI2C_ReceiveByte
1108  02db 1e08          	ldw	x,(OFST+7,sp)
1109  02dd f7            	ld	(x),a
1110                     ; 386 		p_data++;
1112  02de 1e08          	ldw	x,(OFST+7,sp)
1113  02e0 1c0001        	addw	x,#1
1114  02e3 1f08          	ldw	(OFST+7,sp),x
1115  02e5               L533:
1116                     ; 383 	while (number--)
1118  02e5 7b07          	ld	a,(OFST+6,sp)
1119  02e7 0a07          	dec	(OFST+6,sp)
1120  02e9 4d            	tnz	a
1121  02ea 26e9          	jrne	L333
1122                     ; 388 	_SWI2C_Stop();
1124  02ec 8d3e003e      	callf	L17f__SWI2C_Stop
1126                     ; 390 	return IIC_OK;
1128  02f0 a601          	ld	a,#1
1130  02f2 20c4          	jra	L43
1176                     ; 393 u8 SWI2C_WriteByte(u8 addr, u8 subaddr, u8 value)
1176                     ; 394 {	
1177                     	switch	.text
1178  02f4               f_SWI2C_WriteByte:
1180  02f4 89            	pushw	x
1181       00000000      OFST:	set	0
1184                     ; 395 	return SWI2C_WriteBytes(addr, subaddr, 1, &value);
1186  02f5 96            	ldw	x,sp
1187  02f6 1c0006        	addw	x,#OFST+6
1188  02f9 89            	pushw	x
1189  02fa 4b01          	push	#1
1190  02fc 7b05          	ld	a,(OFST+5,sp)
1191  02fe 97            	ld	xl,a
1192  02ff 7b04          	ld	a,(OFST+4,sp)
1193  0301 95            	ld	xh,a
1194  0302 8d690369      	callf	f_SWI2C_WriteBytes
1196  0306 5b03          	addw	sp,#3
1199  0308 85            	popw	x
1200  0309 87            	retf
1255                     ; 398 u8 SWI2C_Write2Byte(u8 addr, u8 subaddr, u16 data) 
1255                     ; 399 {
1256                     	switch	.text
1257  030a               f_SWI2C_Write2Byte:
1259  030a 89            	pushw	x
1260  030b 88            	push	a
1261       00000001      OFST:	set	1
1264                     ; 401 	_SWI2C_Start();                              
1266  030c 8d0d000d      	callf	L75f__SWI2C_Start
1268                     ; 402 	result = _SWI2C_SendByte(addr);  
1270  0310 7b02          	ld	a,(OFST+1,sp)
1271  0312 8d650065      	callf	L301f__SWI2C_SendByte
1273  0316 6b01          	ld	(OFST+0,sp),a
1274                     ; 403 	if (result == IIC_FAIL)
1276  0318 0d01          	tnz	(OFST+0,sp)
1277  031a 2608          	jrne	L304
1278                     ; 405 		_SWI2C_Stop();
1280  031c 8d3e003e      	callf	L17f__SWI2C_Stop
1282                     ; 406 		return result;
1284  0320 7b01          	ld	a,(OFST+0,sp)
1286  0322 2012          	jra	L24
1287  0324               L304:
1288                     ; 408 	result = _SWI2C_SendByte(subaddr);     
1290  0324 7b03          	ld	a,(OFST+2,sp)
1291  0326 8d650065      	callf	L301f__SWI2C_SendByte
1293  032a 6b01          	ld	(OFST+0,sp),a
1294                     ; 409 	if (result == IIC_FAIL)
1296  032c 0d01          	tnz	(OFST+0,sp)
1297  032e 2609          	jrne	L504
1298                     ; 411 		_SWI2C_Stop();
1300  0330 8d3e003e      	callf	L17f__SWI2C_Stop
1302                     ; 412 		return result;
1304  0334 7b01          	ld	a,(OFST+0,sp)
1306  0336               L24:
1308  0336 5b03          	addw	sp,#3
1309  0338 87            	retf
1310  0339               L504:
1311                     ; 414 	result = _SWI2C_SendByte(data>>8);     
1313  0339 7b07          	ld	a,(OFST+6,sp)
1314  033b 8d650065      	callf	L301f__SWI2C_SendByte
1316  033f 6b01          	ld	(OFST+0,sp),a
1317                     ; 415 	if (result == IIC_FAIL)
1319  0341 0d01          	tnz	(OFST+0,sp)
1320  0343 2608          	jrne	L704
1321                     ; 417 		_SWI2C_Stop();
1323  0345 8d3e003e      	callf	L17f__SWI2C_Stop
1325                     ; 418 		return result;
1327  0349 7b01          	ld	a,(OFST+0,sp)
1329  034b 20e9          	jra	L24
1330  034d               L704:
1331                     ; 420 	result = _SWI2C_SendByte(data);   
1333  034d 7b08          	ld	a,(OFST+7,sp)
1334  034f 8d650065      	callf	L301f__SWI2C_SendByte
1336  0353 6b01          	ld	(OFST+0,sp),a
1337                     ; 421 	if (result == IIC_FAIL)
1339  0355 0d01          	tnz	(OFST+0,sp)
1340  0357 2608          	jrne	L114
1341                     ; 423 		_SWI2C_Stop();
1343  0359 8d3e003e      	callf	L17f__SWI2C_Stop
1345                     ; 424 		return result;
1347  035d 7b01          	ld	a,(OFST+0,sp)
1349  035f 20d5          	jra	L24
1350  0361               L114:
1351                     ; 426 	_SWI2C_Stop();    
1353  0361 8d3e003e      	callf	L17f__SWI2C_Stop
1355                     ; 427 	return IIC_OK;
1357  0365 a601          	ld	a,#1
1359  0367 20cd          	jra	L24
1424                     ; 430 u8 SWI2C_WriteBytes(u8 addr, u8 subaddr, u8 number, u8 * p_data)
1424                     ; 431 {
1425                     	switch	.text
1426  0369               f_SWI2C_WriteBytes:
1428  0369 89            	pushw	x
1429  036a 88            	push	a
1430       00000001      OFST:	set	1
1433                     ; 433 	_SWI2C_Start();
1435  036b 8d0d000d      	callf	L75f__SWI2C_Start
1437                     ; 434 	result = _SWI2C_SendByte(addr);
1439  036f 7b02          	ld	a,(OFST+1,sp)
1440  0371 8d650065      	callf	L301f__SWI2C_SendByte
1442  0375 6b01          	ld	(OFST+0,sp),a
1443                     ; 435 	if (result == IIC_FAIL)
1445  0377 0d01          	tnz	(OFST+0,sp)
1446  0379 2608          	jrne	L144
1447                     ; 437 		_SWI2C_Stop();
1449  037b 8d3e003e      	callf	L17f__SWI2C_Stop
1451                     ; 438 		return result;
1453  037f 7b01          	ld	a,(OFST+0,sp)
1455  0381 2012          	jra	L64
1456  0383               L144:
1457                     ; 440 	result = _SWI2C_SendByte(subaddr);
1459  0383 7b03          	ld	a,(OFST+2,sp)
1460  0385 8d650065      	callf	L301f__SWI2C_SendByte
1462  0389 6b01          	ld	(OFST+0,sp),a
1463                     ; 441 	if (result == IIC_FAIL)
1465  038b 0d01          	tnz	(OFST+0,sp)
1466  038d 2625          	jrne	L744
1467                     ; 443 		_SWI2C_Stop();
1469  038f 8d3e003e      	callf	L17f__SWI2C_Stop
1471                     ; 444 		return result;
1473  0393 7b01          	ld	a,(OFST+0,sp)
1475  0395               L64:
1477  0395 5b03          	addw	sp,#3
1478  0397 87            	retf
1479  0398               L544:
1480                     ; 448 		result = _SWI2C_SendByte(*p_data);
1482  0398 1e08          	ldw	x,(OFST+7,sp)
1483  039a f6            	ld	a,(x)
1484  039b 8d650065      	callf	L301f__SWI2C_SendByte
1486  039f 6b01          	ld	(OFST+0,sp),a
1487                     ; 449 		if (result == IIC_FAIL)
1489  03a1 0d01          	tnz	(OFST+0,sp)
1490  03a3 2608          	jrne	L354
1491                     ; 451 		_SWI2C_Stop();
1493  03a5 8d3e003e      	callf	L17f__SWI2C_Stop
1495                     ; 452 		return result;
1497  03a9 7b01          	ld	a,(OFST+0,sp)
1499  03ab 20e8          	jra	L64
1500  03ad               L354:
1501                     ; 454 		p_data++;
1503  03ad 1e08          	ldw	x,(OFST+7,sp)
1504  03af 1c0001        	addw	x,#1
1505  03b2 1f08          	ldw	(OFST+7,sp),x
1506  03b4               L744:
1507                     ; 446 	while (number--)
1509  03b4 7b07          	ld	a,(OFST+6,sp)
1510  03b6 0a07          	dec	(OFST+6,sp)
1511  03b8 4d            	tnz	a
1512  03b9 26dd          	jrne	L544
1513                     ; 456 	_SWI2C_Stop();
1515  03bb 8d3e003e      	callf	L17f__SWI2C_Stop
1517                     ; 457 	return IIC_OK;
1519  03bf a601          	ld	a,#1
1521  03c1 20d2          	jra	L64
1549                     ; 460 void SWI2C_Init(void)
1549                     ; 461 {
1550                     	switch	.text
1551  03c3               f_SWI2C_Init:
1555                     ; 462 	GPIO_Init(IIC_SCL_PORT, IIC_SCL_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
1557  03c3 4bb0          	push	#176
1558  03c5 4b10          	push	#16
1559  03c7 ae5005        	ldw	x,#20485
1560  03ca 8d000000      	callf	f_GPIO_Init
1562  03ce 85            	popw	x
1563                     ; 463 	GPIO_Init(IIC_SDA_PORT, IIC_SDA_PIN, GPIO_MODE_OUT_OD_HIZ_FAST);
1565  03cf 4bb0          	push	#176
1566  03d1 4b20          	push	#32
1567  03d3 ae5005        	ldw	x,#20485
1568  03d6 8d000000      	callf	f_GPIO_Init
1570  03da 85            	popw	x
1571                     ; 464 	GPIO_WriteHigh(IIC_SCL_PORT,IIC_SCL_PIN);
1573  03db 4b10          	push	#16
1574  03dd ae5005        	ldw	x,#20485
1575  03e0 8d000000      	callf	f_GPIO_WriteHigh
1577  03e4 84            	pop	a
1578                     ; 465 	GPIO_WriteHigh(IIC_SDA_PORT,IIC_SDA_PIN);
1580  03e5 4b20          	push	#32
1581  03e7 ae5005        	ldw	x,#20485
1582  03ea 8d000000      	callf	f_GPIO_WriteHigh
1584  03ee 84            	pop	a
1585                     ; 467 	GPIO_Init(POWER_ONOFF_PORT, POWER_ONOFF_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
1587  03ef 4bf0          	push	#240
1588  03f1 4b20          	push	#32
1589  03f3 ae500a        	ldw	x,#20490
1590  03f6 8d000000      	callf	f_GPIO_Init
1592  03fa 85            	popw	x
1593                     ; 469 	GPIO_Init(FPGA_RESET_PORT, FPGA_RESET_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
1595  03fb 4bf0          	push	#240
1596  03fd 4b10          	push	#16
1597  03ff ae500a        	ldw	x,#20490
1598  0402 8d000000      	callf	f_GPIO_Init
1600  0406 85            	popw	x
1601                     ; 470 	GPIO_Init(IT680X_RESET_PORT, IT680X_RESET_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
1603  0407 4bf0          	push	#240
1604  0409 4b01          	push	#1
1605  040b ae5005        	ldw	x,#20485
1606  040e 8d000000      	callf	f_GPIO_Init
1608  0412 85            	popw	x
1609                     ; 472 	GPIO_Init(LED_R_PORT, LED_R_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);	
1611  0413 4bf0          	push	#240
1612  0415 4b01          	push	#1
1613  0417 ae5014        	ldw	x,#20500
1614  041a 8d000000      	callf	f_GPIO_Init
1616  041e 85            	popw	x
1617                     ; 473 	GPIO_Init(LED_G_PORT, LED_G_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
1619  041f 4be0          	push	#224
1620  0421 4b08          	push	#8
1621  0423 ae500f        	ldw	x,#20495
1622  0426 8d000000      	callf	f_GPIO_Init
1624  042a 85            	popw	x
1625                     ; 475 	GPIO_Init(HDMI_HOTPLUG_PORT, HDMI_HOTPLUG_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
1627  042b 4bf0          	push	#240
1628  042d 4b40          	push	#64
1629  042f ae5005        	ldw	x,#20485
1630  0432 8d000000      	callf	f_GPIO_Init
1632  0436 85            	popw	x
1633                     ; 477 	GPIO_Init(BACKLIGHT_ONOFF_PORT, BACKLIGHT_ONOFF_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
1635  0437 4bf0          	push	#240
1636  0439 4b80          	push	#128
1637  043b ae500a        	ldw	x,#20490
1638  043e 8d000000      	callf	f_GPIO_Init
1640  0442 85            	popw	x
1641                     ; 478 	GPIO_Init(BACKLIGHT_PWM_PORT, BACKLIGHT_PWM_PIN, GPIO_MODE_OUT_PP_HIGH_FAST);
1643  0443 4bf0          	push	#240
1644  0445 4b40          	push	#64
1645  0447 ae500a        	ldw	x,#20490
1646  044a 8d000000      	callf	f_GPIO_Init
1648  044e 85            	popw	x
1649                     ; 479 	GPIO_Init(VPANEL_ONOFF_PORT, VPANEL_ONOFF_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
1651  044f 4be0          	push	#224
1652  0451 4b01          	push	#1
1653  0453 ae501e        	ldw	x,#20510
1654  0456 8d000000      	callf	f_GPIO_Init
1656  045a 85            	popw	x
1657                     ; 481 	TIM1_TimeBaseInit(0, TIM1_COUNTERMODE_UP, 4095, 0);
1659  045b 4b00          	push	#0
1660  045d ae0fff        	ldw	x,#4095
1661  0460 89            	pushw	x
1662  0461 4b00          	push	#0
1663  0463 5f            	clrw	x
1664  0464 8d000000      	callf	f_TIM1_TimeBaseInit
1666  0468 5b04          	addw	sp,#4
1667                     ; 482 	TIM1_OC1Init(TIM1_OCMODE_PWM2, TIM1_OUTPUTSTATE_ENABLE, TIM1_OUTPUTNSTATE_DISABLE,
1667                     ; 483 	           0, TIM1_OCPOLARITY_LOW, TIM1_OCNPOLARITY_HIGH, TIM1_OCIDLESTATE_SET,
1667                     ; 484 	           TIM1_OCNIDLESTATE_RESET);
1669  046a 4b00          	push	#0
1670  046c 4b55          	push	#85
1671  046e 4b00          	push	#0
1672  0470 4b22          	push	#34
1673  0472 5f            	clrw	x
1674  0473 89            	pushw	x
1675  0474 4b00          	push	#0
1676  0476 ae0011        	ldw	x,#17
1677  0479 a670          	ld	a,#112
1678  047b 95            	ld	xh,a
1679  047c 8d000000      	callf	f_TIM1_OC1Init
1681  0480 5b07          	addw	sp,#7
1682                     ; 485 	TIM1_Cmd(ENABLE);
1684  0482 a601          	ld	a,#1
1685  0484 8d000000      	callf	f_TIM1_Cmd
1687                     ; 486 	TIM1_CtrlPWMOutputs(ENABLE);
1689  0488 a601          	ld	a,#1
1690  048a 8d000000      	callf	f_TIM1_CtrlPWMOutputs
1692                     ; 487 }
1695  048e 87            	retf
1759                     .const:	section	.text
1760  0000               L45:
1761  0000 00000001      	dc.l	1
1762                     ; 489 void SWI2C_Update(void)
1762                     ; 490 {	
1763                     	switch	.text
1764  048f               f_SWI2C_Update:
1766  048f 89            	pushw	x
1767       00000002      OFST:	set	2
1770                     ; 491 	if (Backlight_on_timer == TIMER_EXPIRED)
1772  0490 ae0004        	ldw	x,#L5_Backlight_on_timer
1773  0493 8d000000      	callf	d_ltor
1775  0497 ae0000        	ldw	x,#L45
1776  049a 8d000000      	callf	d_lcmp
1778  049e 2616          	jrne	L505
1779                     ; 493 		SET_BACKLIGHT_ON();
1781  04a0 4b80          	push	#128
1782  04a2 ae500a        	ldw	x,#20490
1783  04a5 8d000000      	callf	f_GPIO_WriteLow
1785  04a9 84            	pop	a
1786                     ; 494 		Backlight_on_timer = TIMER_STOPPED;
1788  04aa ae0000        	ldw	x,#0
1789  04ad cf0006        	ldw	L5_Backlight_on_timer+2,x
1790  04b0 ae0000        	ldw	x,#0
1791  04b3 cf0004        	ldw	L5_Backlight_on_timer,x
1792  04b6               L505:
1793                     ; 498 	if (Power_status && !I2C_stop)
1795  04b6 725d000d      	tnz	L31_Power_status
1796  04ba 2604          	jrne	L65
1797  04bc acfb05fb      	jpf	L705
1798  04c0               L65:
1800  04c0 725d000e      	tnz	L12_I2C_stop
1801  04c4 2704          	jreq	L06
1802  04c6 acfb05fb      	jpf	L705
1803  04ca               L06:
1804                     ; 500 		IT6802_fsm();
1806  04ca 8d000000      	callf	f_IT6802_fsm
1808                     ; 502 		if (frc_update_timer == TIMER_EXPIRED && Have_FRC)
1810  04ce ae0000        	ldw	x,#L3_frc_update_timer
1811  04d1 8d000000      	callf	d_ltor
1813  04d5 ae0000        	ldw	x,#L45
1814  04d8 8d000000      	callf	d_lcmp
1816  04dc 265f          	jrne	L115
1818  04de 725d0000      	tnz	L32_Have_FRC
1819  04e2 2759          	jreq	L115
1820                     ; 505 			SWI2C_ReadByte(FRC_BOARD_ADDRESS, 0x18, &read_LVDS_mode);
1822  04e4 96            	ldw	x,sp
1823  04e5 1c0001        	addw	x,#OFST-1
1824  04e8 89            	pushw	x
1825  04e9 ae0018        	ldw	x,#24
1826  04ec a622          	ld	a,#34
1827  04ee 95            	ld	xh,a
1828  04ef 8d780278      	callf	f_SWI2C_ReadByte
1830  04f3 85            	popw	x
1831                     ; 506 			if (read_LVDS_mode != LVDS_mode)
1833  04f4 7b01          	ld	a,(OFST-1,sp)
1834  04f6 c1000c        	cp	a,L11_LVDS_mode
1835  04f9 270e          	jreq	L315
1836                     ; 508 				SWI2C_WriteByte(FRC_BOARD_ADDRESS, 0x18, LVDS_mode);
1838  04fb 3b000c        	push	L11_LVDS_mode
1839  04fe ae0018        	ldw	x,#24
1840  0501 a622          	ld	a,#34
1841  0503 95            	ld	xh,a
1842  0504 8df402f4      	callf	f_SWI2C_WriteByte
1844  0508 84            	pop	a
1845  0509               L315:
1846                     ; 510 			SWI2C_ReadByte(FRC_BOARD_ADDRESS, 0x0A, &read_MFC);
1848  0509 96            	ldw	x,sp
1849  050a 1c0002        	addw	x,#OFST+0
1850  050d 89            	pushw	x
1851  050e ae000a        	ldw	x,#10
1852  0511 a622          	ld	a,#34
1853  0513 95            	ld	xh,a
1854  0514 8d780278      	callf	f_SWI2C_ReadByte
1856  0518 85            	popw	x
1857                     ; 511 			if (read_MFC != 0)
1859  0519 0d02          	tnz	(OFST+0,sp)
1860  051b 2714          	jreq	L515
1861                     ; 513 				IR_DelayNMiliseconds(50);
1863  051d ae0032        	ldw	x,#50
1864  0520 8d000000      	callf	f_IR_DelayNMiliseconds
1866                     ; 514 				SWI2C_WriteByte(FRC_BOARD_ADDRESS, 0x0A, 0);
1868  0524 4b00          	push	#0
1869  0526 ae000a        	ldw	x,#10
1870  0529 a622          	ld	a,#34
1871  052b 95            	ld	xh,a
1872  052c 8df402f4      	callf	f_SWI2C_WriteByte
1874  0530 84            	pop	a
1875  0531               L515:
1876                     ; 516 			frc_update_timer = FRC_UPDATE_TIME;
1878  0531 ae01f5        	ldw	x,#501
1879  0534 cf0002        	ldw	L3_frc_update_timer+2,x
1880  0537 ae0000        	ldw	x,#0
1881  053a cf0000        	ldw	L3_frc_update_timer,x
1882  053d               L115:
1883                     ; 539 		if (signal_detect_timer == TIMER_EXPIRED)
1885  053d ae0008        	ldw	x,#L7_signal_detect_timer
1886  0540 8d000000      	callf	d_ltor
1888  0544 ae0000        	ldw	x,#L45
1889  0547 8d000000      	callf	d_lcmp
1891  054b 2704          	jreq	L26
1892  054d acfb05fb      	jpf	L705
1893  0551               L26:
1894                     ; 544 			signal_detect_timer = SINGNAL_TETECT_TIME;
1896  0551 ae0097        	ldw	x,#151
1897  0554 cf000a        	ldw	L7_signal_detect_timer+2,x
1898  0557 ae0000        	ldw	x,#0
1899  055a cf0008        	ldw	L7_signal_detect_timer,x
1900                     ; 545 			current_signal_status = SWI2C_GetSignalStatus();
1902  055d 8db901b9      	callf	L702f_SWI2C_GetSignalStatus
1904  0561 6b02          	ld	(OFST+0,sp),a
1905                     ; 546 			if (current_signal_status != signal_status)
1907  0563 7b02          	ld	a,(OFST+0,sp)
1908  0565 c10002        	cp	a,L51_signal_status
1909  0568 2771          	jreq	L125
1910                     ; 548 				singal_change_count++;
1912  056a 725c0001      	inc	L71_singal_change_count
1913                     ; 549 				if (current_signal_status && singal_change_count > SIGNAL_STABLE_COUNT)
1915  056e 0d02          	tnz	(OFST+0,sp)
1916  0570 2731          	jreq	L325
1918  0572 c60001        	ld	a,L71_singal_change_count
1919  0575 a106          	cp	a,#6
1920  0577 252a          	jrult	L325
1921                     ; 551 					signal_status = TRUE;
1923  0579 35010002      	mov	L51_signal_status,#1
1924                     ; 552 					GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
1926  057d 4b08          	push	#8
1927  057f ae500f        	ldw	x,#20495
1928  0582 8d000000      	callf	f_GPIO_WriteHigh
1930  0586 84            	pop	a
1931                     ; 556 					SWI2C_ResetFPGA();
1933  0587 8d5e065e      	callf	f_SWI2C_ResetFPGA
1935                     ; 557 					SET_VPANEL_ON();
1937  058b 4b01          	push	#1
1938  058d ae501e        	ldw	x,#20510
1939  0590 8d000000      	callf	f_GPIO_WriteHigh
1941  0594 84            	pop	a
1942                     ; 558 					Backlight_on_timer = BACKLIGHT_DELAY_TIME;
1944  0595 ae1771        	ldw	x,#6001
1945  0598 cf0006        	ldw	L5_Backlight_on_timer+2,x
1946  059b ae0000        	ldw	x,#0
1947  059e cf0004        	ldw	L5_Backlight_on_timer,x
1949  05a1 203c          	jra	L135
1950  05a3               L325:
1951                     ; 560 				else if (!current_signal_status && singal_change_count > NO_SIGNAL_COUNT)
1953  05a3 0d02          	tnz	(OFST+0,sp)
1954  05a5 2638          	jrne	L135
1956  05a7 c60001        	ld	a,L71_singal_change_count
1957  05aa a103          	cp	a,#3
1958  05ac 2531          	jrult	L135
1959                     ; 562 					signal_status = FALSE;
1961  05ae 725f0002      	clr	L51_signal_status
1962                     ; 563 					Backlight_on_timer = TIMER_STOPPED;
1964  05b2 ae0000        	ldw	x,#0
1965  05b5 cf0006        	ldw	L5_Backlight_on_timer+2,x
1966  05b8 ae0000        	ldw	x,#0
1967  05bb cf0004        	ldw	L5_Backlight_on_timer,x
1968                     ; 564 					SET_BACKLIGHT_OFF();
1970  05be 4b80          	push	#128
1971  05c0 ae500a        	ldw	x,#20490
1972  05c3 8d000000      	callf	f_GPIO_WriteHigh
1974  05c7 84            	pop	a
1975                     ; 565 					IR_DelayNMiliseconds(200);
1977  05c8 ae00c8        	ldw	x,#200
1978  05cb 8d000000      	callf	f_IR_DelayNMiliseconds
1980                     ; 566 					SET_VPANEL_OFF();
1982  05cf 4b01          	push	#1
1983  05d1 ae501e        	ldw	x,#20510
1984  05d4 8d000000      	callf	f_GPIO_WriteLow
1986  05d8 84            	pop	a
1987  05d9 2004          	jra	L135
1988  05db               L125:
1989                     ; 571 				singal_change_count = 0;
1991  05db 725f0001      	clr	L71_singal_change_count
1992  05df               L135:
1993                     ; 574 			if (signal_status)
1995  05df 725d0002      	tnz	L51_signal_status
1996  05e3 270c          	jreq	L335
1997                     ; 576 				GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
1999  05e5 4b08          	push	#8
2000  05e7 ae500f        	ldw	x,#20495
2001  05ea 8d000000      	callf	f_GPIO_WriteHigh
2003  05ee 84            	pop	a
2005  05ef 200a          	jra	L705
2006  05f1               L335:
2007                     ; 580 				GPIO_WriteReverse(LED_G_PORT, LED_G_PIN);
2009  05f1 4b08          	push	#8
2010  05f3 ae500f        	ldw	x,#20495
2011  05f6 8d000000      	callf	f_GPIO_WriteReverse
2013  05fa 84            	pop	a
2014  05fb               L705:
2015                     ; 584 }
2018  05fb 85            	popw	x
2019  05fc 87            	retf
2051                     ; 586 void SWI2C_SystemPowerUp(void)
2051                     ; 587 {
2052                     	switch	.text
2053  05fd               f_SWI2C_SystemPowerUp:
2057                     ; 588 	GPIO_WriteLow(POWER_ONOFF_PORT, POWER_ONOFF_PIN);
2059  05fd 4b20          	push	#32
2060  05ff ae500a        	ldw	x,#20490
2061  0602 8d000000      	callf	f_GPIO_WriteLow
2063  0606 84            	pop	a
2064                     ; 589 	GPIO_WriteLow(LED_R_PORT, LED_R_PIN);			
2066  0607 4b01          	push	#1
2067  0609 ae5014        	ldw	x,#20500
2068  060c 8d000000      	callf	f_GPIO_WriteLow
2070  0610 84            	pop	a
2071                     ; 590 	GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
2073  0611 4b08          	push	#8
2074  0613 ae500f        	ldw	x,#20495
2075  0616 8d000000      	callf	f_GPIO_WriteHigh
2077  061a 84            	pop	a
2078                     ; 591 	IR_DelayNMiliseconds(50);
2080  061b ae0032        	ldw	x,#50
2081  061e 8d000000      	callf	f_IR_DelayNMiliseconds
2083                     ; 592 	Power_status = TRUE;
2085  0622 3501000d      	mov	L31_Power_status,#1
2086                     ; 593 	GPIO_WriteLow(IT680X_RESET_PORT, IT680X_RESET_PIN);
2088  0626 4b01          	push	#1
2089  0628 ae5005        	ldw	x,#20485
2090  062b 8d000000      	callf	f_GPIO_WriteLow
2092  062f 84            	pop	a
2093                     ; 595 	IR_DelayNMiliseconds(200);
2095  0630 ae00c8        	ldw	x,#200
2096  0633 8d000000      	callf	f_IR_DelayNMiliseconds
2098                     ; 596 	GPIO_WriteHigh(IT680X_RESET_PORT, IT680X_RESET_PIN);
2100  0637 4b01          	push	#1
2101  0639 ae5005        	ldw	x,#20485
2102  063c 8d000000      	callf	f_GPIO_WriteHigh
2104  0640 84            	pop	a
2105                     ; 598 	IR_DelayNMiliseconds(200);
2107  0641 ae00c8        	ldw	x,#200
2108  0644 8d000000      	callf	f_IR_DelayNMiliseconds
2110                     ; 599 	IT6802_fsm_init();
2112  0648 8d000000      	callf	f_IT6802_fsm_init
2114                     ; 600 	Have_FRC = SWI2C_TestDevice(FRC_BOARD_ADDRESS);
2116  064c a622          	ld	a,#34
2117  064e 8d620262      	callf	f_SWI2C_TestDevice
2119  0652 c70000        	ld	L32_Have_FRC,a
2120                     ; 601 	singal_change_count = 0;
2122  0655 725f0001      	clr	L71_singal_change_count
2123                     ; 602 	signal_status = FALSE;
2125  0659 725f0002      	clr	L51_signal_status
2126                     ; 603 }
2129  065d 87            	retf
2156                     ; 605 void SWI2C_ResetFPGA(void)
2156                     ; 606 {
2157                     	switch	.text
2158  065e               f_SWI2C_ResetFPGA:
2162                     ; 607 	if (Power_status)
2164  065e 725d000d      	tnz	L31_Power_status
2165  0662 2726          	jreq	L755
2166                     ; 609 		GPIO_WriteLow(FPGA_RESET_PORT, FPGA_RESET_PIN);
2168  0664 4b10          	push	#16
2169  0666 ae500a        	ldw	x,#20490
2170  0669 8d000000      	callf	f_GPIO_WriteLow
2172  066d 84            	pop	a
2173                     ; 610 		IR_DelayNMiliseconds(200);
2175  066e ae00c8        	ldw	x,#200
2176  0671 8d000000      	callf	f_IR_DelayNMiliseconds
2178                     ; 611 		GPIO_WriteHigh(FPGA_RESET_PORT, FPGA_RESET_PIN);
2180  0675 4b10          	push	#16
2181  0677 ae500a        	ldw	x,#20490
2182  067a 8d000000      	callf	f_GPIO_WriteHigh
2184  067e 84            	pop	a
2185                     ; 612 		IR_DelayNMiliseconds(1500);
2187  067f ae05dc        	ldw	x,#1500
2188  0682 8d000000      	callf	f_IR_DelayNMiliseconds
2190                     ; 616 		FPGA_Init();
2192  0686 8dcd07cd      	callf	f_FPGA_Init
2194  068a               L755:
2195                     ; 618 }
2198  068a 87            	retf
2225                     ; 620 void SWI2C_ResetHDMI(void)
2225                     ; 621 {
2226                     	switch	.text
2227  068b               f_SWI2C_ResetHDMI:
2231                     ; 622 	if (Power_status)
2233  068b 725d000d      	tnz	L31_Power_status
2234  068f 2743          	jreq	L175
2235                     ; 624 		GPIO_WriteLow(FPGA_RESET_PORT, FPGA_RESET_PIN);
2237  0691 4b10          	push	#16
2238  0693 ae500a        	ldw	x,#20490
2239  0696 8d000000      	callf	f_GPIO_WriteLow
2241  069a 84            	pop	a
2242                     ; 625 		IR_DelayNMiliseconds(200);
2244  069b ae00c8        	ldw	x,#200
2245  069e 8d000000      	callf	f_IR_DelayNMiliseconds
2247                     ; 626 		GPIO_WriteHigh(FPGA_RESET_PORT, FPGA_RESET_PIN);
2249  06a2 4b10          	push	#16
2250  06a4 ae500a        	ldw	x,#20490
2251  06a7 8d000000      	callf	f_GPIO_WriteHigh
2253  06ab 84            	pop	a
2254                     ; 627 		IR_DelayNMiliseconds(500);
2256  06ac ae01f4        	ldw	x,#500
2257  06af 8d000000      	callf	f_IR_DelayNMiliseconds
2259                     ; 628 		SWI2C_WriteByte(0x90, 0x14, 0xFF);
2261  06b3 4bff          	push	#255
2262  06b5 ae0014        	ldw	x,#20
2263  06b8 a690          	ld	a,#144
2264  06ba 95            	ld	xh,a
2265  06bb 8df402f4      	callf	f_SWI2C_WriteByte
2267  06bf 84            	pop	a
2268                     ; 629 		IR_DelayNMiliseconds(1000);
2270  06c0 ae03e8        	ldw	x,#1000
2271  06c3 8d000000      	callf	f_IR_DelayNMiliseconds
2273                     ; 630 		SWI2C_WriteByte(0x90, 0x14, 0x0);
2275  06c7 4b00          	push	#0
2276  06c9 ae0014        	ldw	x,#20
2277  06cc a690          	ld	a,#144
2278  06ce 95            	ld	xh,a
2279  06cf 8df402f4      	callf	f_SWI2C_WriteByte
2281  06d3 84            	pop	a
2282  06d4               L175:
2283                     ; 632 }
2286  06d4 87            	retf
2315                     ; 634 void SWI2C_SystemPowerDown(void)
2315                     ; 635 {
2316                     	switch	.text
2317  06d5               f_SWI2C_SystemPowerDown:
2321                     ; 636 	SET_BACKLIGHT_OFF();
2323  06d5 4b80          	push	#128
2324  06d7 ae500a        	ldw	x,#20490
2325  06da 8d000000      	callf	f_GPIO_WriteHigh
2327  06de 84            	pop	a
2328                     ; 637 	IR_DelayNMiliseconds(200);
2330  06df ae00c8        	ldw	x,#200
2331  06e2 8d000000      	callf	f_IR_DelayNMiliseconds
2333                     ; 638 	SET_VPANEL_OFF();
2335  06e6 4b01          	push	#1
2336  06e8 ae501e        	ldw	x,#20510
2337  06eb 8d000000      	callf	f_GPIO_WriteLow
2339  06ef 84            	pop	a
2340                     ; 639 	GPIO_WriteHigh(POWER_ONOFF_PORT, POWER_ONOFF_PIN);
2342  06f0 4b20          	push	#32
2343  06f2 ae500a        	ldw	x,#20490
2344  06f5 8d000000      	callf	f_GPIO_WriteHigh
2346  06f9 84            	pop	a
2347                     ; 640 	GPIO_WriteHigh(LED_R_PORT, LED_R_PIN);			
2349  06fa 4b01          	push	#1
2350  06fc ae5014        	ldw	x,#20500
2351  06ff 8d000000      	callf	f_GPIO_WriteHigh
2353  0703 84            	pop	a
2354                     ; 641 	GPIO_WriteLow(LED_G_PORT, LED_G_PIN);
2356  0704 4b08          	push	#8
2357  0706 ae500f        	ldw	x,#20495
2358  0709 8d000000      	callf	f_GPIO_WriteLow
2360  070d 84            	pop	a
2361                     ; 642 	Backlight_on_timer = TIMER_STOPPED;
2363  070e ae0000        	ldw	x,#0
2364  0711 cf0006        	ldw	L5_Backlight_on_timer+2,x
2365  0714 ae0000        	ldw	x,#0
2366  0717 cf0004        	ldw	L5_Backlight_on_timer,x
2367                     ; 643 	Power_status = FALSE;
2369  071a 725f000d      	clr	L31_Power_status
2370                     ; 644 	I2C_stop = FALSE;
2372  071e 725f000e      	clr	L12_I2C_stop
2373                     ; 645 }
2376  0722 87            	retf
2403                     ; 647 void SWI2C_ToggleI2CMode(void)
2403                     ; 648 {
2404                     	switch	.text
2405  0723               f_SWI2C_ToggleI2CMode:
2409                     ; 649 	if (Power_status)
2411  0723 725d000d      	tnz	L31_Power_status
2412  0727 273e          	jreq	L316
2413                     ; 651 		I2C_stop = !I2C_stop;
2415  0729 725d000e      	tnz	L12_I2C_stop
2416  072d 2604          	jrne	L67
2417  072f a601          	ld	a,#1
2418  0731 2001          	jra	L001
2419  0733               L67:
2420  0733 4f            	clr	a
2421  0734               L001:
2422  0734 c7000e        	ld	L12_I2C_stop,a
2423                     ; 652 		if (I2C_stop)
2425  0737 725d000e      	tnz	L12_I2C_stop
2426  073b 2716          	jreq	L516
2427                     ; 654 			GPIO_WriteHigh(LED_R_PORT, LED_R_PIN);			
2429  073d 4b01          	push	#1
2430  073f ae5014        	ldw	x,#20500
2431  0742 8d000000      	callf	f_GPIO_WriteHigh
2433  0746 84            	pop	a
2434                     ; 655 			GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
2436  0747 4b08          	push	#8
2437  0749 ae500f        	ldw	x,#20495
2438  074c 8d000000      	callf	f_GPIO_WriteHigh
2440  0750 84            	pop	a
2442  0751 2014          	jra	L316
2443  0753               L516:
2444                     ; 659 			GPIO_WriteLow(LED_R_PORT, LED_R_PIN);			
2446  0753 4b01          	push	#1
2447  0755 ae5014        	ldw	x,#20500
2448  0758 8d000000      	callf	f_GPIO_WriteLow
2450  075c 84            	pop	a
2451                     ; 660 			GPIO_WriteHigh(LED_G_PORT, LED_G_PIN);
2453  075d 4b08          	push	#8
2454  075f ae500f        	ldw	x,#20495
2455  0762 8d000000      	callf	f_GPIO_WriteHigh
2457  0766 84            	pop	a
2458  0767               L316:
2459                     ; 663 }
2462  0767 87            	retf
2487                     ; 665 void SWI2C_ProcessPower(void)
2487                     ; 666 {
2488                     	switch	.text
2489  0768               f_SWI2C_ProcessPower:
2493                     ; 667 	if (Power_status)
2495  0768 725d000d      	tnz	L31_Power_status
2496  076c 2706          	jreq	L136
2497                     ; 669 		SWI2C_SystemPowerDown();
2499  076e 8dd506d5      	callf	f_SWI2C_SystemPowerDown
2502  0772 2004          	jra	L336
2503  0774               L136:
2504                     ; 673 		SWI2C_SystemPowerUp();
2506  0774 8dfd05fd      	callf	f_SWI2C_SystemPowerUp
2508  0778               L336:
2509                     ; 675 }
2512  0778 87            	retf
2514                     	switch	.data
2515  000f               L536_Set3DOn:
2516  000f 00            	dc.b	0
2569                     ; 679 static void SWI2C_Set3DOnOff(u8 OnOff)
2569                     ; 680 {
2570                     	switch	.text
2571  0779               L736f_SWI2C_Set3DOnOff:
2573  0779 5203          	subw	sp,#3
2574       00000003      OFST:	set	3
2577                     ; 682 	if (OnOff)
2579  077b 4d            	tnz	a
2580  077c 2706          	jreq	L366
2581                     ; 684 		reg_value = 0x80;
2583  077e a680          	ld	a,#128
2584  0780 6b03          	ld	(OFST+0,sp),a
2586  0782 2002          	jra	L566
2587  0784               L366:
2588                     ; 688 		reg_value = 0x0;
2590  0784 0f03          	clr	(OFST+0,sp)
2591  0786               L566:
2592                     ; 690 	for (retry = 0; retry < 3; retry++)
2594  0786 0f02          	clr	(OFST-1,sp)
2595  0788               L766:
2596                     ; 693 		SWI2C_WriteByte(FPGA_ADDRESS, 0x57, reg_value);
2598  0788 7b03          	ld	a,(OFST+0,sp)
2599  078a 88            	push	a
2600  078b ae0057        	ldw	x,#87
2601  078e a6ba          	ld	a,#186
2602  0790 95            	ld	xh,a
2603  0791 8df402f4      	callf	f_SWI2C_WriteByte
2605  0795 84            	pop	a
2606                     ; 694 		SWI2C_ReadByte(FPGA_ADDRESS, 0x57, &value);
2608  0796 96            	ldw	x,sp
2609  0797 1c0001        	addw	x,#OFST-2
2610  079a 89            	pushw	x
2611  079b ae0057        	ldw	x,#87
2612  079e a6ba          	ld	a,#186
2613  07a0 95            	ld	xh,a
2614  07a1 8d780278      	callf	f_SWI2C_ReadByte
2616  07a5 85            	popw	x
2617                     ; 695 		if (value == reg_value)
2619  07a6 7b01          	ld	a,(OFST-2,sp)
2620  07a8 1103          	cp	a,(OFST+0,sp)
2621  07aa 2708          	jreq	L376
2622                     ; 697 			break;
2624                     ; 690 	for (retry = 0; retry < 3; retry++)
2626  07ac 0c02          	inc	(OFST-1,sp)
2629  07ae 7b02          	ld	a,(OFST-1,sp)
2630  07b0 a103          	cp	a,#3
2631  07b2 25d4          	jrult	L766
2632  07b4               L376:
2633                     ; 700 }
2636  07b4 5b03          	addw	sp,#3
2637  07b6 87            	retf
2662                     ; 702 void SWI2C_Toggle3DOnOff(void)
2662                     ; 703 {	
2663                     	switch	.text
2664  07b7               f_SWI2C_Toggle3DOnOff:
2668                     ; 704 	Set3DOn = !Set3DOn;
2670  07b7 725d000f      	tnz	L536_Set3DOn
2671  07bb 2604          	jrne	L011
2672  07bd a601          	ld	a,#1
2673  07bf 2001          	jra	L211
2674  07c1               L011:
2675  07c1 4f            	clr	a
2676  07c2               L211:
2677  07c2 c7000f        	ld	L536_Set3DOn,a
2678                     ; 705 	SWI2C_Set3DOnOff(Set3DOn);
2680  07c5 c6000f        	ld	a,L536_Set3DOn
2681  07c8 8d790779      	callf	L736f_SWI2C_Set3DOnOff
2683                     ; 706 }
2686  07cc 87            	retf
2723                     ; 711 void FPGA_Init(void)
2723                     ; 712  {	
2724                     	switch	.text
2725  07cd               f_FPGA_Init:
2727  07cd 88            	push	a
2728       00000001      OFST:	set	1
2731                     ; 714 	for (i = 0; i < table_size; i++)
2733  07ce 0f01          	clr	(OFST+0,sp)
2735  07d0 202a          	jra	L727
2736  07d2               L327:
2737                     ; 716 		SWI2C_WriteByte(FPGA_ADDRESS, address_table[i], FLASH_ReadByte(EEPROM_START_ADDRESS + 1 + i));
2739  07d2 7b01          	ld	a,(OFST+0,sp)
2740  07d4 5f            	clrw	x
2741  07d5 97            	ld	xl,a
2742  07d6 1c4001        	addw	x,#16385
2743  07d9 8d000000      	callf	d_itolx
2745  07dd be02          	ldw	x,c_lreg+2
2746  07df 89            	pushw	x
2747  07e0 be00          	ldw	x,c_lreg
2748  07e2 89            	pushw	x
2749  07e3 8d000000      	callf	f_FLASH_ReadByte
2751  07e7 5b04          	addw	sp,#4
2752  07e9 88            	push	a
2753  07ea 7b02          	ld	a,(OFST+1,sp)
2754  07ec 5f            	clrw	x
2755  07ed 97            	ld	xl,a
2756  07ee d60000        	ld	a,(_address_table,x)
2757  07f1 97            	ld	xl,a
2758  07f2 a6ba          	ld	a,#186
2759  07f4 95            	ld	xh,a
2760  07f5 8df402f4      	callf	f_SWI2C_WriteByte
2762  07f9 84            	pop	a
2763                     ; 714 	for (i = 0; i < table_size; i++)
2765  07fa 0c01          	inc	(OFST+0,sp)
2766  07fc               L727:
2769  07fc 7b01          	ld	a,(OFST+0,sp)
2770  07fe c10000        	cp	a,_table_size
2771  0801 25cf          	jrult	L327
2772                     ; 718 	if (FLASH_ReadByte(EEPROM_START_ADDRESS + 1))
2774  0803 ae4001        	ldw	x,#16385
2775  0806 89            	pushw	x
2776  0807 ae0000        	ldw	x,#0
2777  080a 89            	pushw	x
2778  080b 8d000000      	callf	f_FLASH_ReadByte
2780  080f 5b04          	addw	sp,#4
2781  0811 4d            	tnz	a
2782  0812 2704          	jreq	L337
2783                     ; 720 		Set3DOn = TRUE;
2785  0814 3501000f      	mov	L536_Set3DOn,#1
2786  0818               L337:
2787                     ; 722 	SWI2C_WriteByte(FPGA_ADDRESS, 0x19, 0x04);
2789  0818 4b04          	push	#4
2790  081a ae0019        	ldw	x,#25
2791  081d a6ba          	ld	a,#186
2792  081f 95            	ld	xh,a
2793  0820 8df402f4      	callf	f_SWI2C_WriteByte
2795  0824 84            	pop	a
2796                     ; 723 	SWI2C_Set3DOnOff(Set3DOn);	
2798  0825 c6000f        	ld	a,L536_Set3DOn
2799  0828 8d790779      	callf	L736f_SWI2C_Set3DOnOff
2801                     ; 724 }
2804  082c 84            	pop	a
2805  082d 87            	retf
2838                     ; 726 void HDMI_HotPlug(u8 value)
2838                     ; 727 {
2839                     	switch	.text
2840  082e               f_HDMI_HotPlug:
2844                     ; 728 	if (value)
2846  082e 4d            	tnz	a
2847  082f 270c          	jreq	L157
2848                     ; 730 		GPIO_WriteHigh(HDMI_HOTPLUG_PORT,HDMI_HOTPLUG_PIN);
2850  0831 4b40          	push	#64
2851  0833 ae5005        	ldw	x,#20485
2852  0836 8d000000      	callf	f_GPIO_WriteHigh
2854  083a 84            	pop	a
2856  083b 200a          	jra	L357
2857  083d               L157:
2858                     ; 734 		GPIO_WriteLow(HDMI_HOTPLUG_PORT,HDMI_HOTPLUG_PIN);
2860  083d 4b40          	push	#64
2861  083f ae5005        	ldw	x,#20485
2862  0842 8d000000      	callf	f_GPIO_WriteLow
2864  0846 84            	pop	a
2865  0847               L357:
2866                     ; 736 }
2869  0847 87            	retf
2871                     	switch	.const
2872  0004               L557_deep_value:
2873  0004 30            	dc.b	48
2874  0005 80            	dc.b	128
2875  0006 60            	dc.b	96
2876  0007 50            	dc.b	80
2877  0008 70            	dc.b	112
2878  0009 70            	dc.b	112
2879  000a 70            	dc.b	112
2880  000b 60            	dc.b	96
2881  000c 80            	dc.b	128
2882  000d 90            	dc.b	144
2883  000e 50            	dc.b	80
2884  000f 90            	dc.b	144
2885  0010 a0            	dc.b	160
2886  0011 40            	dc.b	64
2887  0012 a0            	dc.b	160
2888  0013 a8            	dc.b	168
2889  0014 30            	dc.b	48
2890  0015 a0            	dc.b	160
2923                     ; 748 void SWI2C_Set_deep(u8 deep)
2923                     ; 749 {
2924                     	switch	.text
2925  0848               f_SWI2C_Set_deep:
2927  0848 88            	push	a
2928       00000000      OFST:	set	0
2931                     ; 750 	if (deep == 0)
2933  0849 4d            	tnz	a
2934  084a 2650          	jrne	L377
2935                     ; 752 		SWI2C_WriteByte(FPGA_ADDRESS, 0x59, FLASH_ReadByte(0x4000 + REG_0x59 + 1));
2937  084c ae400b        	ldw	x,#16395
2938  084f 89            	pushw	x
2939  0850 ae0000        	ldw	x,#0
2940  0853 89            	pushw	x
2941  0854 8d000000      	callf	f_FLASH_ReadByte
2943  0858 5b04          	addw	sp,#4
2944  085a 88            	push	a
2945  085b ae0059        	ldw	x,#89
2946  085e a6ba          	ld	a,#186
2947  0860 95            	ld	xh,a
2948  0861 8df402f4      	callf	f_SWI2C_WriteByte
2950  0865 84            	pop	a
2951                     ; 753 		SWI2C_WriteByte(FPGA_ADDRESS, 0x5C, FLASH_ReadByte(0x4000 + REG_0x5C + 1));
2953  0866 ae400d        	ldw	x,#16397
2954  0869 89            	pushw	x
2955  086a ae0000        	ldw	x,#0
2956  086d 89            	pushw	x
2957  086e 8d000000      	callf	f_FLASH_ReadByte
2959  0872 5b04          	addw	sp,#4
2960  0874 88            	push	a
2961  0875 ae005c        	ldw	x,#92
2962  0878 a6ba          	ld	a,#186
2963  087a 95            	ld	xh,a
2964  087b 8df402f4      	callf	f_SWI2C_WriteByte
2966  087f 84            	pop	a
2967                     ; 754 		SWI2C_WriteByte(FPGA_ADDRESS, 0x5A, FLASH_ReadByte(0x4000 + REG_0x5A + 1));
2969  0880 ae400c        	ldw	x,#16396
2970  0883 89            	pushw	x
2971  0884 ae0000        	ldw	x,#0
2972  0887 89            	pushw	x
2973  0888 8d000000      	callf	f_FLASH_ReadByte
2975  088c 5b04          	addw	sp,#4
2976  088e 88            	push	a
2977  088f ae005a        	ldw	x,#90
2978  0892 a6ba          	ld	a,#186
2979  0894 95            	ld	xh,a
2980  0895 8df402f4      	callf	f_SWI2C_WriteByte
2982  0899 84            	pop	a
2984  089a 203f          	jra	L577
2985  089c               L377:
2986                     ; 758 		SWI2C_WriteByte(FPGA_ADDRESS, 0x59, deep_value[deep][0]);
2988  089c 7b01          	ld	a,(OFST+1,sp)
2989  089e 97            	ld	xl,a
2990  089f a603          	ld	a,#3
2991  08a1 42            	mul	x,a
2992  08a2 d60004        	ld	a,(L557_deep_value,x)
2993  08a5 88            	push	a
2994  08a6 ae0059        	ldw	x,#89
2995  08a9 a6ba          	ld	a,#186
2996  08ab 95            	ld	xh,a
2997  08ac 8df402f4      	callf	f_SWI2C_WriteByte
2999  08b0 84            	pop	a
3000                     ; 759 		SWI2C_WriteByte(FPGA_ADDRESS, 0x5C, deep_value[deep][1]);
3002  08b1 7b01          	ld	a,(OFST+1,sp)
3003  08b3 97            	ld	xl,a
3004  08b4 a603          	ld	a,#3
3005  08b6 42            	mul	x,a
3006  08b7 d60005        	ld	a,(L557_deep_value+1,x)
3007  08ba 88            	push	a
3008  08bb ae005c        	ldw	x,#92
3009  08be a6ba          	ld	a,#186
3010  08c0 95            	ld	xh,a
3011  08c1 8df402f4      	callf	f_SWI2C_WriteByte
3013  08c5 84            	pop	a
3014                     ; 760 		SWI2C_WriteByte(FPGA_ADDRESS, 0x5A, deep_value[deep][2]);
3016  08c6 7b01          	ld	a,(OFST+1,sp)
3017  08c8 97            	ld	xl,a
3018  08c9 a603          	ld	a,#3
3019  08cb 42            	mul	x,a
3020  08cc d60006        	ld	a,(L557_deep_value+2,x)
3021  08cf 88            	push	a
3022  08d0 ae005a        	ldw	x,#90
3023  08d3 a6ba          	ld	a,#186
3024  08d5 95            	ld	xh,a
3025  08d6 8df402f4      	callf	f_SWI2C_WriteByte
3027  08da 84            	pop	a
3028  08db               L577:
3029                     ; 762 }
3032  08db 84            	pop	a
3033  08dc 87            	retf
3058                     	switch	.const
3059  0016               L421:
3060  0016 00000002      	dc.l	2
3061                     ; 764 void SWI2C_UpdateTimer(void)
3061                     ; 765 {
3062                     	switch	.text
3063  08dd               f_SWI2C_UpdateTimer:
3067                     ; 766 	if (frc_update_timer > TIMER_EXPIRED)
3069  08dd ae0000        	ldw	x,#L3_frc_update_timer
3070  08e0 8d000000      	callf	d_ltor
3072  08e4 ae0016        	ldw	x,#L421
3073  08e7 8d000000      	callf	d_lcmp
3075  08eb 2509          	jrult	L7001
3076                     ; 768 		frc_update_timer--;
3078  08ed ae0000        	ldw	x,#L3_frc_update_timer
3079  08f0 a601          	ld	a,#1
3080  08f2 8d000000      	callf	d_lgsbc
3082  08f6               L7001:
3083                     ; 771 	if (Backlight_on_timer > TIMER_EXPIRED)
3085  08f6 ae0004        	ldw	x,#L5_Backlight_on_timer
3086  08f9 8d000000      	callf	d_ltor
3088  08fd ae0016        	ldw	x,#L421
3089  0900 8d000000      	callf	d_lcmp
3091  0904 2509          	jrult	L1101
3092                     ; 773 		Backlight_on_timer--;
3094  0906 ae0004        	ldw	x,#L5_Backlight_on_timer
3095  0909 a601          	ld	a,#1
3096  090b 8d000000      	callf	d_lgsbc
3098  090f               L1101:
3099                     ; 781 	if (signal_detect_timer > TIMER_EXPIRED)
3101  090f ae0008        	ldw	x,#L7_signal_detect_timer
3102  0912 8d000000      	callf	d_ltor
3104  0916 ae0016        	ldw	x,#L421
3105  0919 8d000000      	callf	d_lcmp
3107  091d 2509          	jrult	L3101
3108                     ; 783 		signal_detect_timer--;
3110  091f ae0008        	ldw	x,#L7_signal_detect_timer
3111  0922 a601          	ld	a,#1
3112  0924 8d000000      	callf	d_lgsbc
3114  0928               L3101:
3115                     ; 785 }
3118  0928 87            	retf
3215                     	xref	_table_size
3216                     	xref	_address_table
3217                     	switch	.bss
3218  0000               L32_Have_FRC:
3219  0000 00            	ds.b	1
3220  0001               L71_singal_change_count:
3221  0001 00            	ds.b	1
3222  0002               L51_signal_status:
3223  0002 00            	ds.b	1
3224                     	xref	f_IT6802_fsm
3225                     	xref	f_IT6802_fsm_init
3226                     	xdef	f_SWI2C_UpdateTimer
3227                     	xdef	f_SWI2C_Set_deep
3228                     	xdef	f_SWI2C_Toggle3DOnOff
3229                     	xdef	f_HDMI_HotPlug
3230                     	xdef	f_FPGA_Init
3231                     	xdef	f_SWI2C_TestDevice
3232                     	xdef	f_SWI2C_Write2Byte
3233                     	xdef	f_SWI2C_WriteBytes
3234                     	xdef	f_SWI2C_WriteByte
3235                     	xdef	f_SWI2C_ReadBytes
3236                     	xdef	f_SWI2C_ReadByte
3237                     	xdef	f_SWI2C_ResetHDMI
3238                     	xdef	f_SWI2C_ResetFPGA
3239                     	xdef	f_SWI2C_ToggleI2CMode
3240                     	xdef	f_SWI2C_ProcessPower
3241                     	xdef	f_SWI2C_SystemPowerDown
3242                     	xdef	f_SWI2C_SystemPowerUp
3243                     	xdef	f_SWI2C_Update
3244                     	xdef	f_SWI2C_Init
3245                     	xref	f_IR_DelayNMiliseconds
3246                     	xref	f_FLASH_ReadByte
3247                     	xref	f_TIM1_CtrlPWMOutputs
3248                     	xref	f_TIM1_Cmd
3249                     	xref	f_TIM1_OC1Init
3250                     	xref	f_TIM1_TimeBaseInit
3251                     	xref	f_GPIO_ReadInputPin
3252                     	xref	f_GPIO_WriteReverse
3253                     	xref	f_GPIO_WriteLow
3254                     	xref	f_GPIO_WriteHigh
3255                     	xref	f_GPIO_Init
3256                     	xref.b	c_lreg
3276                     	xref	d_lgsbc
3277                     	xref	d_itolx
3278                     	xref	d_lcmp
3279                     	xref	d_ltor
3280                     	end
