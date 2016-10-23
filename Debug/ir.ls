   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  15                     	switch	.data
  16  0000               _System_Clock:
  17  0000 00000000      	dc.l	0
  69                     ; 101 static u8 _Compare_Count(u16 a, u16 max, u16 min)
  69                     ; 102 {
  70                     	switch	.text
  71  0000               L33f__Compare_Count:
  73  0000 89            	pushw	x
  74       00000000      OFST:	set	0
  77                     ; 103 	return (a < max && a > min);
  79  0001 1306          	cpw	x,(OFST+6,sp)
  80  0003 2408          	jruge	L6
  81  0005 1308          	cpw	x,(OFST+8,sp)
  82  0007 2304          	jrule	L6
  83  0009 a601          	ld	a,#1
  84  000b 2001          	jra	L01
  85  000d               L6:
  86  000d 4f            	clr	a
  87  000e               L01:
  90  000e 85            	popw	x
  91  000f 87            	retf
 115                     ; 106 static u8 _convert_IR(void)
 115                     ; 107 {
 116                     	switch	.text
 117  0010               L36f__convert_IR:
 121                     ; 108 	if (head_type)
 123  0010 725d0012      	tnz	L11_head_type
 124  0014 2771          	jreq	L502
 125                     ; 110 		switch (receive_code)
 127  0016 c60011        	ld	a,L31_receive_code
 129                     ; 131 			default:
 129                     ; 132 				return KEY_DUMMY;
 130  0019 4d            	tnz	a
 131  001a 2739          	jreq	L56
 132  001c 4a            	dec	a
 133  001d 2738          	jreq	L76
 134  001f 4a            	dec	a
 135  0020 2738          	jreq	L17
 136  0022 4a            	dec	a
 137  0023 2738          	jreq	L37
 138  0025 4a            	dec	a
 139  0026 2738          	jreq	L57
 140  0028 4a            	dec	a
 141  0029 2738          	jreq	L77
 142  002b a04b          	sub	a,#75
 143  002d 274c          	jreq	L711
 144  002f 4a            	dec	a
 145  0030 274c          	jreq	L121
 146  0032 4a            	dec	a
 147  0033 274c          	jreq	L321
 148  0035 4a            	dec	a
 149  0036 274c          	jreq	L521
 150  0038 a005          	sub	a,#5
 151  003a 273c          	jreq	L511
 152  003c a01d          	sub	a,#29
 153  003e 272f          	jreq	L701
 154  0040 a04b          	sub	a,#75
 155  0042 2725          	jreq	L301
 156  0044 4a            	dec	a
 157  0045 272b          	jreq	L111
 158  0047 a002          	sub	a,#2
 159  0049 2721          	jreq	L501
 160  004b 4a            	dec	a
 161  004c 2727          	jreq	L311
 162  004e a003          	sub	a,#3
 163  0050 2714          	jreq	L101
 164  0052               L721:
 167  0052 a6ff          	ld	a,#255
 170  0054 87            	retf
 171  0055               L56:
 172                     ; 112 			case 0x0: 		return KEY_DEEP_0;
 174  0055 4f            	clr	a
 177  0056 87            	retf
 178  0057               L76:
 179                     ; 113 			case 0x1: 		return KEY_DEEP_1;
 181  0057 a601          	ld	a,#1
 184  0059 87            	retf
 185  005a               L17:
 186                     ; 114 			case 0x2: 		return KEY_DEEP_2;
 188  005a a602          	ld	a,#2
 191  005c 87            	retf
 192  005d               L37:
 193                     ; 115 			case 0x3: 		return KEY_DEEP_3;
 195  005d a603          	ld	a,#3
 198  005f 87            	retf
 199  0060               L57:
 200                     ; 116 			case 0x4: 		return KEY_DEEP_4;
 202  0060 a604          	ld	a,#4
 205  0062 87            	retf
 206  0063               L77:
 207                     ; 117 			case 0x5: 		return KEY_DEEP_5;
 209  0063 a605          	ld	a,#5
 212  0065 87            	retf
 213  0066               L101:
 214                     ; 118 			case 0xC7:		return KEY_POWER;
 216  0066 a606          	ld	a,#6
 219  0068 87            	retf
 220  0069               L301:
 221                     ; 119 			case 0xC0: 		return KEY_PC;
 223  0069 a609          	ld	a,#9
 226  006b 87            	retf
 227  006c               L501:
 228                     ; 120 			case 0xC3: 		return KEY_HDMI;
 230  006c a60a          	ld	a,#10
 233  006e 87            	retf
 234  006f               L701:
 235                     ; 121 			case 0x75: 		return KEY_ONOFF_3D;
 237  006f a607          	ld	a,#7
 240  0071 87            	retf
 241  0072               L111:
 242                     ; 122 			case 0xC1: 		return KEY_DEBUG;
 244  0072 a611          	ld	a,#17
 247  0074 87            	retf
 248  0075               L311:
 249                     ; 123 			case 0xC4:		return KEY_VERIFY_SECRET;
 251  0075 a60f          	ld	a,#15
 254  0077 87            	retf
 255  0078               L511:
 256                     ; 124 			case 0x58:		return KEY_RESET_FPGA;
 258  0078 a610          	ld	a,#16
 261  007a 87            	retf
 262  007b               L711:
 263                     ; 126 			case 0x50:		return KEY_TEST0;
 265  007b a612          	ld	a,#18
 268  007d 87            	retf
 269  007e               L121:
 270                     ; 127 			case 0x51:		return KEY_TEST1;
 272  007e a613          	ld	a,#19
 275  0080 87            	retf
 276  0081               L321:
 277                     ; 128 			case 0x52:		return KEY_TEST2;
 279  0081 a614          	ld	a,#20
 282  0083 87            	retf
 283  0084               L521:
 284                     ; 129 			case 0x53:		return KEY_TEST3;
 286  0084 a615          	ld	a,#21
 289  0086 87            	retf
 290  0087               L502:
 291                     ; 137 		switch (receive_code)
 293  0087 c60011        	ld	a,L31_receive_code
 295                     ; 158 			default:
 295                     ; 159 				return KEY_DUMMY;
 296  008a 4a            	dec	a
 297  008b 275b          	jreq	L551
 298  008d a007          	sub	a,#7
 299  008f 275a          	jreq	L751
 300  0091 a008          	sub	a,#8
 301  0093 2736          	jreq	L131
 302  0095 a002          	sub	a,#2
 303  0097 2740          	jreq	L341
 304  0099 a003          	sub	a,#3
 305  009b 2736          	jreq	L731
 306  009d 4a            	dec	a
 307  009e 2730          	jreq	L531
 308  00a0 a006          	sub	a,#6
 309  00a2 2738          	jreq	L541
 310  00a4 a003          	sub	a,#3
 311  00a6 2746          	jreq	L161
 312  00a8 a031          	sub	a,#49
 313  00aa 272a          	jreq	L141
 314  00ac a002          	sub	a,#2
 315  00ae 2744          	jreq	L561
 316  00b0 a002          	sub	a,#2
 317  00b2 2719          	jreq	L331
 318  00b4 a002          	sub	a,#2
 319  00b6 2727          	jreq	L741
 320  00b8 4a            	dec	a
 321  00b9 2727          	jreq	L151
 322  00bb a003          	sub	a,#3
 323  00bd 2732          	jreq	L361
 324  00bf 4a            	dec	a
 325  00c0 2723          	jreq	L351
 326  00c2 4a            	dec	a
 327  00c3 2735          	jreq	L171
 328  00c5 4a            	dec	a
 329  00c6 272f          	jreq	L761
 330  00c8               L371:
 333  00c8 a6ff          	ld	a,#255
 336  00ca 87            	retf
 337  00cb               L131:
 338                     ; 139 			case 0x10: 		return KEY_DEEP_0;
 340  00cb 4f            	clr	a
 343  00cc 87            	retf
 344  00cd               L331:
 345                     ; 140 			case 0x54: 		return KEY_DEEP_1;
 347  00cd a601          	ld	a,#1
 350  00cf 87            	retf
 351  00d0               L531:
 352                     ; 141 			case 0x16: 		return KEY_DEEP_2;
 354  00d0 a602          	ld	a,#2
 357  00d2 87            	retf
 358  00d3               L731:
 359                     ; 142 			case 0x15: 		return KEY_DEEP_3;
 361  00d3 a603          	ld	a,#3
 364  00d5 87            	retf
 365  00d6               L141:
 366                     ; 143 			case 0x50: 		return KEY_DEEP_4;
 368  00d6 a604          	ld	a,#4
 371  00d8 87            	retf
 372  00d9               L341:
 373                     ; 144 			case 0x12: 		return KEY_DEEP_5;
 375  00d9 a605          	ld	a,#5
 378  00db 87            	retf
 379  00dc               L541:
 380                     ; 145 			case 0x1C: 		return KEY_POWER;
 382  00dc a606          	ld	a,#6
 385  00de 87            	retf
 386  00df               L741:
 387                     ; 146 			case 0x56: 		return KEY_PC;
 389  00df a609          	ld	a,#9
 392  00e1 87            	retf
 393  00e2               L151:
 394                     ; 147 			case 0x57: 		return KEY_HDMI;
 396  00e2 a60a          	ld	a,#10
 399  00e4 87            	retf
 400  00e5               L351:
 401                     ; 148 			case 0x5B: 		return KEY_ONOFF_3D;
 403  00e5 a607          	ld	a,#7
 406  00e7 87            	retf
 407  00e8               L551:
 408                     ; 149 			case 0x01: 		return KEY_DEBUG;		
 410  00e8 a611          	ld	a,#17
 413  00ea 87            	retf
 414  00eb               L751:
 415                     ; 150 			case 0x08:		return KEY_VERIFY_SECRET;
 417  00eb a60f          	ld	a,#15
 420  00ed 87            	retf
 421  00ee               L161:
 422                     ; 151 			case 0x1F:		return KEY_RESET_FPGA;
 424  00ee a610          	ld	a,#16
 427  00f0 87            	retf
 428  00f1               L361:
 429                     ; 153 			case 0x5A:		return KEY_TEST0;
 431  00f1 a612          	ld	a,#18
 434  00f3 87            	retf
 435  00f4               L561:
 436                     ; 154 			case 0x52:		return KEY_TEST1;
 438  00f4 a613          	ld	a,#19
 441  00f6 87            	retf
 442  00f7               L761:
 443                     ; 155 			case 0x5D:		return KEY_TEST2;
 445  00f7 a614          	ld	a,#20
 448  00f9 87            	retf
 449  00fa               L171:
 450                     ; 156 			case 0x5C:		return KEY_TEST3;
 452  00fa a615          	ld	a,#21
 455  00fc 87            	retf
 487                     ; 164 void IR_IN_Init(void)
 487                     ; 165 {	
 488                     	switch	.text
 489  00fd               f_IR_IN_Init:
 493                     ; 166 	GPIO_Init(IR_IN_PORT, IR_IN_PIN, GPIO_MODE_IN_FL_IT);
 495  00fd 4b20          	push	#32
 496  00ff 4b40          	push	#64
 497  0101 ae5000        	ldw	x,#20480
 498  0104 8d000000      	callf	f_GPIO_Init
 500  0108 85            	popw	x
 501                     ; 167 	EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOA, EXTI_SENSITIVITY_FALL_ONLY);
 503  0109 ae0002        	ldw	x,#2
 504  010c 4f            	clr	a
 505  010d 95            	ld	xh,a
 506  010e 8d000000      	callf	f_EXTI_SetExtIntSensitivity
 508                     ; 169 	TIM2_TimeBaseInit(TIM2_PRESCALER_16, 0xffff);
 510  0112 aeffff        	ldw	x,#65535
 511  0115 89            	pushw	x
 512  0116 a604          	ld	a,#4
 513  0118 8d000000      	callf	f_TIM2_TimeBaseInit
 515  011c 85            	popw	x
 516                     ; 170 	TIM2_Cmd(ENABLE); 
 518  011d a601          	ld	a,#1
 519  011f 8d000000      	callf	f_TIM2_Cmd
 521                     ; 172 	GPIO_Init(KEY_IN_PORT, KEY_IN_PIN, GPIO_MODE_IN_FL_NO_IT);
 523  0123 4b00          	push	#0
 524  0125 4b80          	push	#128
 525  0127 ae5005        	ldw	x,#20485
 526  012a 8d000000      	callf	f_GPIO_Init
 528  012e 85            	popw	x
 529                     ; 173 	ADC2_Init(ADC2_CONVERSIONMODE_CONTINUOUS, ADC2_CHANNEL_7, ADC2_PRESSEL_FCPU_D2,\
 529                     ; 174 					ADC2_EXTTRIG_TIM, DISABLE, ADC2_ALIGN_RIGHT, ADC2_SCHMITTTRIG_CHANNEL7, DISABLE);
 531  012f 4b00          	push	#0
 532  0131 4b07          	push	#7
 533  0133 4b08          	push	#8
 534  0135 4b00          	push	#0
 535  0137 4b00          	push	#0
 536  0139 4b00          	push	#0
 537  013b ae0007        	ldw	x,#7
 538  013e a601          	ld	a,#1
 539  0140 95            	ld	xh,a
 540  0141 8d000000      	callf	f_ADC2_Init
 542  0145 5b06          	addw	sp,#6
 543                     ; 176 	ADC2_StartConversion();
 545  0147 8d000000      	callf	f_ADC2_StartConversion
 547                     ; 178 	ir_state = IR_RECEIVE_HEAD;
 549  014b 725f0018      	clr	L3_ir_state
 550                     ; 179 	ir_pressed = FALSE;	
 552  014f 725f0010      	clr	L51_ir_pressed
 553                     ; 180 	ir_fisrt_process = FALSE;
 555  0153 725f000f      	clr	L71_ir_fisrt_process
 556                     ; 181 	receive_code = IRKEY_DUMY;	
 558  0157 35ff0011      	mov	L31_receive_code,#255
 559                     ; 188 }
 562  015b 87            	retf
 591                     ; 190 void Timer_Init(void)
 591                     ; 191 {
 592                     	switch	.text
 593  015c               f_Timer_Init:
 597                     ; 192 	TIM4_TimeBaseInit(TIM4_PRESCALER_128, 125);
 599  015c ae007d        	ldw	x,#125
 600  015f a607          	ld	a,#7
 601  0161 95            	ld	xh,a
 602  0162 8d000000      	callf	f_TIM4_TimeBaseInit
 604                     ; 193 	TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
 606  0166 ae0001        	ldw	x,#1
 607  0169 a601          	ld	a,#1
 608  016b 95            	ld	xh,a
 609  016c 8d000000      	callf	f_TIM4_ITConfig
 611                     ; 194 	TIM4_Cmd(ENABLE); 
 613  0170 a601          	ld	a,#1
 614  0172 8d000000      	callf	f_TIM4_Cmd
 616                     ; 196 	ir_release_timer = TIMER_STOPPED;
 618  0176 725f000e      	clr	L12_ir_release_timer
 619                     ; 197 	delay_timer = TIMER_STOPPED;
 621  017a ae0000        	ldw	x,#0
 622  017d cf000c        	ldw	L32_delay_timer+2,x
 623  0180 ae0000        	ldw	x,#0
 624  0183 cf000a        	ldw	L32_delay_timer,x
 625                     ; 198 	ir_process_timer = TIMER_STOPPED;
 627  0186 ae0000        	ldw	x,#0
 628  0189 cf0008        	ldw	L52_ir_process_timer+2,x
 629  018c ae0000        	ldw	x,#0
 630  018f cf0006        	ldw	L52_ir_process_timer,x
 631                     ; 199 	Key_detect_timer = TIMER_EXPIRED;
 633  0192 ae0001        	ldw	x,#1
 634  0195 cf0004        	ldw	L72_Key_detect_timer+2,x
 635  0198 ae0000        	ldw	x,#0
 636  019b cf0002        	ldw	L72_Key_detect_timer,x
 637                     ; 200 }
 640  019e 87            	retf
 642                     	switch	.data
 643  0004               L142_value_debug:
 644  0004 00            	dc.b	0
 690                     .const:	section	.text
 691  0000               L22:
 692  0000 00000001      	dc.l	1
 693                     ; 203 void IR_Update(void)
 693                     ; 204 {
 694                     	switch	.text
 695  019f               f_IR_Update:
 697  019f 88            	push	a
 698       00000001      OFST:	set	1
 701                     ; 205 	if (ir_pressed)
 703  01a0 725d0010      	tnz	L51_ir_pressed
 704  01a4 2604          	jrne	L03
 705  01a6 acb002b0      	jpf	L123
 706  01aa               L03:
 707                     ; 207 		if (ir_process_timer == TIMER_EXPIRED)
 709  01aa ae0006        	ldw	x,#L52_ir_process_timer
 710  01ad 8d000000      	callf	d_ltor
 712  01b1 ae0000        	ldw	x,#L22
 713  01b4 8d000000      	callf	d_lcmp
 715  01b8 2704          	jreq	L23
 716  01ba acb002b0      	jpf	L123
 717  01be               L23:
 718                     ; 209 			u8 ir_key = _convert_IR();
 720  01be 8d100010      	callf	L36f__convert_IR
 722  01c2 6b01          	ld	(OFST+0,sp),a
 723                     ; 210 			switch (ir_key)
 725  01c4 7b01          	ld	a,(OFST+0,sp)
 727                     ; 265 				default:
 727                     ; 266 					break;
 728  01c6 a116          	cp	a,#22
 729  01c8 2430          	jruge	L42
 730  01ca 8d000000      	callf	d_jctab
 732  01ce               L62:
 733  01ce 003a          	dc.w	L742-L62
 734  01d0 0041          	dc.w	L152-L62
 735  01d2 0049          	dc.w	L352-L62
 736  01d4 0051          	dc.w	L552-L62
 737  01d6 0059          	dc.w	L752-L62
 738  01d8 0061          	dc.w	L162-L62
 739  01da 0069          	dc.w	L362-L62
 740  01dc 0034          	dc.w	L542-L62
 741  01de 00a2          	dc.w	L723-L62
 742  01e0 007b          	dc.w	L172-L62
 743  01e2 00a2          	dc.w	L723-L62
 744  01e4 00a2          	dc.w	L723-L62
 745  01e6 00a2          	dc.w	L723-L62
 746  01e8 00a2          	dc.w	L723-L62
 747  01ea 00a2          	dc.w	L723-L62
 748  01ec 006f          	dc.w	L562-L62
 749  01ee 0075          	dc.w	L762-L62
 750  01f0 002e          	dc.w	L342-L62
 751  01f2 0085          	dc.w	L372-L62
 752  01f4 008c          	dc.w	L572-L62
 753  01f6 0094          	dc.w	L772-L62
 754  01f8 009c          	dc.w	L103-L62
 755  01fa               L42:
 756  01fa 2074          	jra	L723
 757  01fc               L342:
 758                     ; 212 				case KEY_DEBUG:
 758                     ; 213 					SWI2C_ToggleI2CMode();
 760  01fc 8d000000      	callf	f_SWI2C_ToggleI2CMode
 762                     ; 214 					break;
 764  0200 206e          	jra	L723
 765  0202               L542:
 766                     ; 215 				case KEY_ONOFF_3D:
 766                     ; 216 					SWI2C_Toggle3DOnOff();
 768  0202 8d000000      	callf	f_SWI2C_Toggle3DOnOff
 770                     ; 217 					break;
 772  0206 2068          	jra	L723
 773  0208               L742:
 774                     ; 218 				case KEY_DEEP_0:
 774                     ; 219 					SWI2C_Set_deep(0);
 776  0208 4f            	clr	a
 777  0209 8d000000      	callf	f_SWI2C_Set_deep
 779                     ; 220 					break;
 781  020d 2061          	jra	L723
 782  020f               L152:
 783                     ; 221 				case KEY_DEEP_1:
 783                     ; 222 					SWI2C_Set_deep(1);
 785  020f a601          	ld	a,#1
 786  0211 8d000000      	callf	f_SWI2C_Set_deep
 788                     ; 223 					break;
 790  0215 2059          	jra	L723
 791  0217               L352:
 792                     ; 224 				case KEY_DEEP_2:
 792                     ; 225 					SWI2C_Set_deep(2);
 794  0217 a602          	ld	a,#2
 795  0219 8d000000      	callf	f_SWI2C_Set_deep
 797                     ; 226 					break;
 799  021d 2051          	jra	L723
 800  021f               L552:
 801                     ; 227 				case KEY_DEEP_3:
 801                     ; 228 					SWI2C_Set_deep(3);
 803  021f a603          	ld	a,#3
 804  0221 8d000000      	callf	f_SWI2C_Set_deep
 806                     ; 229 					break;
 808  0225 2049          	jra	L723
 809  0227               L752:
 810                     ; 230 				case KEY_DEEP_4:
 810                     ; 231 					SWI2C_Set_deep(4);
 812  0227 a604          	ld	a,#4
 813  0229 8d000000      	callf	f_SWI2C_Set_deep
 815                     ; 232 					break;
 817  022d 2041          	jra	L723
 818  022f               L162:
 819                     ; 233 				case KEY_DEEP_5:
 819                     ; 234 					SWI2C_Set_deep(5);
 821  022f a605          	ld	a,#5
 822  0231 8d000000      	callf	f_SWI2C_Set_deep
 824                     ; 235 					break;
 826  0235 2039          	jra	L723
 827  0237               L362:
 828                     ; 236 				case KEY_POWER:
 828                     ; 237 					SWI2C_ProcessPower();
 830  0237 8d000000      	callf	f_SWI2C_ProcessPower
 832                     ; 238 					break;
 834  023b 2033          	jra	L723
 835  023d               L562:
 836                     ; 239 				case KEY_VERIFY_SECRET:
 836                     ; 240 					SWI2C_VerifyKey();
 838  023d 8d000000      	callf	f_SWI2C_VerifyKey
 840                     ; 241 					break;
 842  0241 202d          	jra	L723
 843  0243               L762:
 844                     ; 242 				case KEY_RESET_FPGA:
 844                     ; 243 					SWI2C_ResetFPGA();
 846  0243 8d000000      	callf	f_SWI2C_ResetFPGA
 848                     ; 244 					break;
 850  0247 2027          	jra	L723
 851  0249               L172:
 852                     ; 247 						WWDG->CR |= 0x80;
 854  0249 721e50d1      	bset	20689,#7
 855                     ; 248 						WWDG->CR &= ~0x40;
 857  024d 721d50d1      	bres	20689,#6
 858                     ; 250 					break;
 860  0251 201d          	jra	L723
 861  0253               L372:
 862                     ; 252 				case KEY_TEST0:
 862                     ; 253 					SWI2C_WriteWeavingTable(0);
 864  0253 4f            	clr	a
 865  0254 8d000000      	callf	f_SWI2C_WriteWeavingTable
 867                     ; 254 					break;
 869  0258 2016          	jra	L723
 870  025a               L572:
 871                     ; 255 				case KEY_TEST1:
 871                     ; 256 					SWI2C_WriteWeavingTable(1);
 873  025a a601          	ld	a,#1
 874  025c 8d000000      	callf	f_SWI2C_WriteWeavingTable
 876                     ; 257 					break;
 878  0260 200e          	jra	L723
 879  0262               L772:
 880                     ; 258 				case KEY_TEST2:
 880                     ; 259 					SWI2C_WriteWeavingTable(2);
 882  0262 a602          	ld	a,#2
 883  0264 8d000000      	callf	f_SWI2C_WriteWeavingTable
 885                     ; 260 					break;
 887  0268 2006          	jra	L723
 888  026a               L103:
 889                     ; 261 				case KEY_TEST3:
 889                     ; 262 					SWI2C_WriteWeavingTable(3);
 891  026a a603          	ld	a,#3
 892  026c 8d000000      	callf	f_SWI2C_WriteWeavingTable
 894                     ; 263 					break;
 896  0270               L303:
 897                     ; 265 				default:
 897                     ; 266 					break;
 899  0270               L723:
 900                     ; 268 			if (ir_key != KEY_VOLUME_PLUS && ir_key != KEY_VOLUME_MINUS && ir_key != KEY_LEFT &&ir_key != KEY_RIGHT)
 902  0270 7b01          	ld	a,(OFST+0,sp)
 903  0272 a10b          	cp	a,#11
 904  0274 2716          	jreq	L133
 906  0276 7b01          	ld	a,(OFST+0,sp)
 907  0278 a10c          	cp	a,#12
 908  027a 2710          	jreq	L133
 910  027c 7b01          	ld	a,(OFST+0,sp)
 911  027e a10d          	cp	a,#13
 912  0280 270a          	jreq	L133
 914  0282 7b01          	ld	a,(OFST+0,sp)
 915  0284 a10e          	cp	a,#14
 916  0286 2704          	jreq	L133
 917                     ; 270 				receive_code = IRKEY_DUMY;
 919  0288 35ff0011      	mov	L31_receive_code,#255
 920  028c               L133:
 921                     ; 272 			if (ir_fisrt_process)
 923  028c 725d000f      	tnz	L71_ir_fisrt_process
 924  0290 2712          	jreq	L333
 925                     ; 274 				ir_fisrt_process = FALSE;
 927  0292 725f000f      	clr	L71_ir_fisrt_process
 928                     ; 275 				ir_process_timer = 500 + 1;
 930  0296 ae01f5        	ldw	x,#501
 931  0299 cf0008        	ldw	L52_ir_process_timer+2,x
 932  029c ae0000        	ldw	x,#0
 933  029f cf0006        	ldw	L52_ir_process_timer,x
 935  02a2 200c          	jra	L123
 936  02a4               L333:
 937                     ; 279 				ir_process_timer = 50 + 1;
 939  02a4 ae0033        	ldw	x,#51
 940  02a7 cf0008        	ldw	L52_ir_process_timer+2,x
 941  02aa ae0000        	ldw	x,#0
 942  02ad cf0006        	ldw	L52_ir_process_timer,x
 943  02b0               L123:
 944                     ; 284 	if (ir_release_timer == TIMER_EXPIRED)
 946  02b0 c6000e        	ld	a,L12_ir_release_timer
 947  02b3 a101          	cp	a,#1
 948  02b5 2614          	jrne	L733
 949                     ; 286 		ir_release_timer = TIMER_STOPPED;
 951  02b7 725f000e      	clr	L12_ir_release_timer
 952                     ; 287 		ir_process_timer = TIMER_STOPPED;
 954  02bb ae0000        	ldw	x,#0
 955  02be cf0008        	ldw	L52_ir_process_timer+2,x
 956  02c1 ae0000        	ldw	x,#0
 957  02c4 cf0006        	ldw	L52_ir_process_timer,x
 958                     ; 288 		ir_pressed = FALSE;	
 960  02c7 725f0010      	clr	L51_ir_pressed
 961  02cb               L733:
 962                     ; 291 	if (Key_detect_timer == TIMER_EXPIRED)
 964  02cb ae0002        	ldw	x,#L72_Key_detect_timer
 965  02ce 8d000000      	callf	d_ltor
 967  02d2 ae0000        	ldw	x,#L22
 968  02d5 8d000000      	callf	d_lcmp
 970  02d9 2613          	jrne	L143
 971                     ; 293 		Conversion_Value = ADC2_GetConversionValue();
 973  02db 8d000000      	callf	f_ADC2_GetConversionValue
 975  02df cf0000        	ldw	L13_Conversion_Value,x
 976                     ; 294 		Key_detect_timer = KEY_DETECT_TIME;
 978  02e2 ae0065        	ldw	x,#101
 979  02e5 cf0004        	ldw	L72_Key_detect_timer+2,x
 980  02e8 ae0000        	ldw	x,#0
 981  02eb cf0002        	ldw	L72_Key_detect_timer,x
 982  02ee               L143:
 983                     ; 296 }
 986  02ee 84            	pop	a
 987  02ef 87            	retf
1039                     ; 298 INTERRUPT_HANDLER(IR_IN_ISR, 3)
1039                     ; 299 {
1040                     	switch	.text
1041  02f0               f_IR_IN_ISR:
1043       00000003      OFST:	set	3
1044  02f0 3b0002        	push	c_x+2
1045  02f3 be00          	ldw	x,c_x
1046  02f5 89            	pushw	x
1047  02f6 3b0002        	push	c_y+2
1048  02f9 be00          	ldw	x,c_y
1049  02fb 89            	pushw	x
1050  02fc 5203          	subw	sp,#3
1053                     ; 301 	u8 fault = FALSE;
1055  02fe 0f01          	clr	(OFST-2,sp)
1056                     ; 303 	TIM2_Cmd(DISABLE);
1058  0300 4f            	clr	a
1059  0301 8d000000      	callf	f_TIM2_Cmd
1061                     ; 304 	TIM2_ClearFlag(TIM2_FLAG_UPDATE);
1063  0305 ae0001        	ldw	x,#1
1064  0308 8d000000      	callf	f_TIM2_ClearFlag
1066                     ; 305 	count = TIM2_GetCounter();
1068  030c 8d000000      	callf	f_TIM2_GetCounter
1070  0310 1f02          	ldw	(OFST-1,sp),x
1071                     ; 306 	TIM2_SetCounter(0);			
1073  0312 5f            	clrw	x
1074  0313 8d000000      	callf	f_TIM2_SetCounter
1076                     ; 307 	TIM2_Cmd(ENABLE);
1078  0317 a601          	ld	a,#1
1079  0319 8d000000      	callf	f_TIM2_Cmd
1081                     ; 309 	if (count > LEADER_UPPER_LIMIT)
1083  031d 1e02          	ldw	x,(OFST-1,sp)
1084  031f a33c8d        	cpw	x,#15501
1085  0322 2506          	jrult	L763
1086                     ; 311 		fault = TRUE;
1088  0324 a601          	ld	a,#1
1089  0326 6b01          	ld	(OFST-2,sp),a
1091  0328 2043          	jra	L173
1092  032a               L763:
1093                     ; 315 		switch (ir_state)
1095  032a c60018        	ld	a,L3_ir_state
1097                     ; 371 			default:
1097                     ; 372 				break;
1098  032d 4d            	tnz	a
1099  032e 2705          	jreq	L343
1100  0330 4a            	dec	a
1101  0331 274a          	jreq	L543
1102  0333 2038          	jra	L173
1103  0335               L343:
1104                     ; 317 			case IR_RECEIVE_HEAD:
1104                     ; 318 				if (_Compare_Count(count, LEADER_UPPER_LIMIT, LEADER_LOWER_LIMIT))
1106  0335 ae30d4        	ldw	x,#12500
1107  0338 89            	pushw	x
1108  0339 ae3c8c        	ldw	x,#15500
1109  033c 89            	pushw	x
1110  033d 1e06          	ldw	x,(OFST+3,sp)
1111  033f 8d000000      	callf	L33f__Compare_Count
1113  0343 5b04          	addw	sp,#4
1114  0345 4d            	tnz	a
1115  0346 270a          	jreq	L773
1116                     ; 320 					ir_release_timer = IR_RELEASE_TIME;
1118  0348 3581000e      	mov	L12_ir_release_timer,#129
1119                     ; 321 					ir_state = IR_RECEIVE_CODE;
1121  034c 35010018      	mov	L3_ir_state,#1
1123  0350 2017          	jra	L104
1124  0352               L773:
1125                     ; 323 				else if (_Compare_Count(count, REPEAT_UPPER_LIMIT, REPEAT_LOWER_LIMIT))
1127  0352 ae280a        	ldw	x,#10250
1128  0355 89            	pushw	x
1129  0356 ae2fda        	ldw	x,#12250
1130  0359 89            	pushw	x
1131  035a 1e06          	ldw	x,(OFST+3,sp)
1132  035c 8d000000      	callf	L33f__Compare_Count
1134  0360 5b04          	addw	sp,#4
1135  0362 4d            	tnz	a
1136  0363 2704          	jreq	L104
1137                     ; 325 					ir_release_timer = IR_RELEASE_TIME;
1139  0365 3581000e      	mov	L12_ir_release_timer,#129
1140  0369               L104:
1141                     ; 327 				ir_bit_number = 0;
1143  0369 725f0017      	clr	L5_ir_bit_number
1144                     ; 328 				break;
1145  036d               L173:
1146                     ; 375 	if (fault)
1148  036d 0d01          	tnz	(OFST-2,sp)
1149  036f 2604          	jrne	L63
1150  0371 ac5c045c      	jpf	L534
1151  0375               L63:
1152                     ; 377 		ir_state = IR_RECEIVE_HEAD;
1154  0375 725f0018      	clr	L3_ir_state
1155  0379 ac5c045c      	jpf	L534
1156  037d               L543:
1157                     ; 329 			case IR_RECEIVE_CODE:
1157                     ; 330 				if (_Compare_Count(count, HIGH_UPPER_LIMIT, HIGH_LOWER_LIMIT))
1159  037d ae06a4        	ldw	x,#1700
1160  0380 89            	pushw	x
1161  0381 ae0af0        	ldw	x,#2800
1162  0384 89            	pushw	x
1163  0385 1e06          	ldw	x,(OFST+3,sp)
1164  0387 8d000000      	callf	L33f__Compare_Count
1166  038b 5b04          	addw	sp,#4
1167  038d 4d            	tnz	a
1168  038e 271e          	jreq	L504
1169                     ; 332 					ir_code[ir_bit_number/8] = (ir_code[ir_bit_number/8]>>1)|0x80;
1171  0390 c60017        	ld	a,L5_ir_bit_number
1172  0393 44            	srl	a
1173  0394 44            	srl	a
1174  0395 44            	srl	a
1175  0396 5f            	clrw	x
1176  0397 97            	ld	xl,a
1177  0398 c60017        	ld	a,L5_ir_bit_number
1178  039b 44            	srl	a
1179  039c 44            	srl	a
1180  039d 44            	srl	a
1181  039e 905f          	clrw	y
1182  03a0 9097          	ld	yl,a
1183  03a2 90d60013      	ld	a,(L7_ir_code,y)
1184  03a6 44            	srl	a
1185  03a7 aa80          	or	a,#128
1186  03a9 d70013        	ld	(L7_ir_code,x),a
1188  03ac 2025          	jra	L704
1189  03ae               L504:
1190                     ; 334 				else if (_Compare_Count(count, LOW_UPPER_LIMIT, LOW_LOWER_LIMIT))
1192  03ae ae0320        	ldw	x,#800
1193  03b1 89            	pushw	x
1194  03b2 ae05aa        	ldw	x,#1450
1195  03b5 89            	pushw	x
1196  03b6 1e06          	ldw	x,(OFST+3,sp)
1197  03b8 8d000000      	callf	L33f__Compare_Count
1199  03bc 5b04          	addw	sp,#4
1200  03be 4d            	tnz	a
1201  03bf 270e          	jreq	L114
1202                     ; 336 					ir_code[ir_bit_number/8] = ir_code[ir_bit_number/8]>>1;
1204  03c1 c60017        	ld	a,L5_ir_bit_number
1205  03c4 44            	srl	a
1206  03c5 44            	srl	a
1207  03c6 44            	srl	a
1208  03c7 5f            	clrw	x
1209  03c8 97            	ld	xl,a
1210  03c9 72440013      	srl	(L7_ir_code,x)
1212  03cd 2004          	jra	L704
1213  03cf               L114:
1214                     ; 340 					fault = TRUE;
1216  03cf a601          	ld	a,#1
1217  03d1 6b01          	ld	(OFST-2,sp),a
1218  03d3               L704:
1219                     ; 342 				ir_bit_number++;
1221  03d3 725c0017      	inc	L5_ir_bit_number
1222                     ; 343 				if (ir_bit_number == 32 && !fault)
1224  03d7 c60017        	ld	a,L5_ir_bit_number
1225  03da a120          	cp	a,#32
1226  03dc 268f          	jrne	L173
1228  03de 0d01          	tnz	(OFST-2,sp)
1229  03e0 268b          	jrne	L173
1230                     ; 345 					ir_state = IR_RECEIVE_HEAD;
1232  03e2 725f0018      	clr	L3_ir_state
1233                     ; 346 					if (((ir_code[0] == 0x0 && ir_code[1] == 0xDF) || (ir_code[0] == 0x4F && ir_code[1] == 0x50)) 
1233                     ; 347 					&& ((ir_code[2]^ir_code[3]) == 0xFF))
1235  03e6 725d0013      	tnz	L7_ir_code
1236  03ea 2607          	jrne	L324
1238  03ec c60014        	ld	a,L7_ir_code+1
1239  03ef a1df          	cp	a,#223
1240  03f1 270e          	jreq	L124
1241  03f3               L324:
1243  03f3 c60013        	ld	a,L7_ir_code
1244  03f6 a14f          	cp	a,#79
1245  03f8 2652          	jrne	L714
1247  03fa c60014        	ld	a,L7_ir_code+1
1248  03fd a150          	cp	a,#80
1249  03ff 264b          	jrne	L714
1250  0401               L124:
1252  0401 c60015        	ld	a,L7_ir_code+2
1253  0404 c80016        	xor	a,L7_ir_code+3
1254  0407 a1ff          	cp	a,#255
1255  0409 2641          	jrne	L714
1256                     ; 349 						if (!ir_pressed)
1258  040b 725d0010      	tnz	L51_ir_pressed
1259  040f 2704          	jreq	L04
1260  0411 ac6d036d      	jpf	L173
1261  0415               L04:
1262                     ; 351 							receive_code = ir_code[2];						
1264  0415 5500150011    	mov	L31_receive_code,L7_ir_code+2
1265                     ; 352 							ir_pressed = TRUE;
1267  041a 35010010      	mov	L51_ir_pressed,#1
1268                     ; 353 							ir_fisrt_process = TRUE;
1270  041e 3501000f      	mov	L71_ir_fisrt_process,#1
1271                     ; 354 							ir_process_timer = TIMER_EXPIRED;
1273  0422 ae0001        	ldw	x,#1
1274  0425 cf0008        	ldw	L52_ir_process_timer+2,x
1275  0428 ae0000        	ldw	x,#0
1276  042b cf0006        	ldw	L52_ir_process_timer,x
1277                     ; 355 							if (ir_code[0] == 0x4F && ir_code[1] == 0x50)
1279  042e c60013        	ld	a,L7_ir_code
1280  0431 a14f          	cp	a,#79
1281  0433 260f          	jrne	L724
1283  0435 c60014        	ld	a,L7_ir_code+1
1284  0438 a150          	cp	a,#80
1285  043a 2608          	jrne	L724
1286                     ; 357 								head_type = 1;
1288  043c 35010012      	mov	L11_head_type,#1
1290  0440 ac6d036d      	jpf	L173
1291  0444               L724:
1292                     ; 361 								head_type = 0;
1294  0444 725f0012      	clr	L11_head_type
1295  0448 ac6d036d      	jpf	L173
1296  044c               L714:
1297                     ; 367 						fault = TRUE;
1299  044c a601          	ld	a,#1
1300  044e 6b01          	ld	(OFST-2,sp),a
1301  0450 ac6d036d      	jpf	L173
1302  0454               L743:
1303                     ; 371 			default:
1303                     ; 372 				break;
1305  0454 ac6d036d      	jpf	L173
1306  0458               L573:
1307  0458 ac6d036d      	jpf	L173
1308  045c               L534:
1309                     ; 379 }
1312  045c 5b03          	addw	sp,#3
1313  045e 85            	popw	x
1314  045f bf00          	ldw	c_y,x
1315  0461 320002        	pop	c_y+2
1316  0464 85            	popw	x
1317  0465 bf00          	ldw	c_x,x
1318  0467 320002        	pop	c_x+2
1319  046a 80            	iret
1360                     	switch	.const
1361  0004               L44:
1362  0004 00000002      	dc.l	2
1363                     ; 381 INTERRUPT_HANDLER(TIMER4_ISR, 23)
1363                     ; 382 {		
1364                     	switch	.text
1365  046b               f_TIMER4_ISR:
1367  046b 3b0002        	push	c_x+2
1368  046e be00          	ldw	x,c_x
1369  0470 89            	pushw	x
1370  0471 3b0002        	push	c_y+2
1371  0474 be00          	ldw	x,c_y
1372  0476 89            	pushw	x
1373  0477 be02          	ldw	x,c_lreg+2
1374  0479 89            	pushw	x
1375  047a be00          	ldw	x,c_lreg
1376  047c 89            	pushw	x
1379                     ; 383 	TIM4_Cmd(DISABLE);
1381  047d 4f            	clr	a
1382  047e 8d000000      	callf	f_TIM4_Cmd
1384                     ; 384 	TIM4_ClearFlag(TIM4_IT_UPDATE);
1386  0482 a601          	ld	a,#1
1387  0484 8d000000      	callf	f_TIM4_ClearFlag
1389                     ; 385 	nop();
1392  0488 9d            nop
1394                     ; 386 	nop();
1398  0489 9d            nop
1400                     ; 387 	nop();
1404  048a 9d            nop
1406                     ; 388 	nop();
1410  048b 9d            nop
1412                     ; 389 	nop();
1416  048c 9d            nop
1418                     ; 390 	nop();
1422  048d 9d            nop
1424                     ; 391 	nop();
1428  048e 9d            nop
1430                     ; 392 	nop();
1434  048f 9d            nop
1436                     ; 393 	nop();
1440  0490 9d            nop
1442                     ; 394 	nop();
1446  0491 9d            nop
1448                     ; 395 	nop();
1452  0492 9d            nop
1454                     ; 396 	TIM4_Cmd(ENABLE);
1457  0493 a601          	ld	a,#1
1458  0495 8d000000      	callf	f_TIM4_Cmd
1460                     ; 398 	if (ir_release_timer > TIMER_EXPIRED)
1462  0499 c6000e        	ld	a,L12_ir_release_timer
1463  049c a102          	cp	a,#2
1464  049e 2504          	jrult	L744
1465                     ; 400 		ir_release_timer--;
1467  04a0 725a000e      	dec	L12_ir_release_timer
1468  04a4               L744:
1469                     ; 402 	if (delay_timer > TIMER_EXPIRED)
1471  04a4 ae000a        	ldw	x,#L32_delay_timer
1472  04a7 8d000000      	callf	d_ltor
1474  04ab ae0004        	ldw	x,#L44
1475  04ae 8d000000      	callf	d_lcmp
1477  04b2 2509          	jrult	L154
1478                     ; 404 		delay_timer--;
1480  04b4 ae000a        	ldw	x,#L32_delay_timer
1481  04b7 a601          	ld	a,#1
1482  04b9 8d000000      	callf	d_lgsbc
1484  04bd               L154:
1485                     ; 406 	if (ir_process_timer > TIMER_EXPIRED)
1487  04bd ae0006        	ldw	x,#L52_ir_process_timer
1488  04c0 8d000000      	callf	d_ltor
1490  04c4 ae0004        	ldw	x,#L44
1491  04c7 8d000000      	callf	d_lcmp
1493  04cb 2509          	jrult	L354
1494                     ; 408 		ir_process_timer--;
1496  04cd ae0006        	ldw	x,#L52_ir_process_timer
1497  04d0 a601          	ld	a,#1
1498  04d2 8d000000      	callf	d_lgsbc
1500  04d6               L354:
1501                     ; 410 	if (Key_detect_timer > TIMER_EXPIRED)
1503  04d6 ae0002        	ldw	x,#L72_Key_detect_timer
1504  04d9 8d000000      	callf	d_ltor
1506  04dd ae0004        	ldw	x,#L44
1507  04e0 8d000000      	callf	d_lcmp
1509  04e4 2509          	jrult	L554
1510                     ; 412 		Key_detect_timer--;
1512  04e6 ae0002        	ldw	x,#L72_Key_detect_timer
1513  04e9 a601          	ld	a,#1
1514  04eb 8d000000      	callf	d_lgsbc
1516  04ef               L554:
1517                     ; 414 	SWI2C_UpdateTimer();
1519  04ef 8d000000      	callf	f_SWI2C_UpdateTimer
1521                     ; 415 	System_Clock++;
1523  04f3 ae0000        	ldw	x,#_System_Clock
1524  04f6 a601          	ld	a,#1
1525  04f8 8d000000      	callf	d_lgadc
1527                     ; 416 }
1530  04fc 85            	popw	x
1531  04fd bf00          	ldw	c_lreg,x
1532  04ff 85            	popw	x
1533  0500 bf02          	ldw	c_lreg+2,x
1534  0502 85            	popw	x
1535  0503 bf00          	ldw	c_y,x
1536  0505 320002        	pop	c_y+2
1537  0508 85            	popw	x
1538  0509 bf00          	ldw	c_x,x
1539  050b 320002        	pop	c_x+2
1540  050e 80            	iret
1573                     ; 418 void IR_DelayNMiliseconds(u16 delay)
1573                     ; 419 {
1574                     	switch	.text
1575  050f               f_IR_DelayNMiliseconds:
1579                     ; 420 	delay_timer = delay;
1581  050f 8d000000      	callf	d_uitolx
1583  0513 ae000a        	ldw	x,#L32_delay_timer
1584  0516 8d000000      	callf	d_rtol
1587  051a               L774:
1588                     ; 421 	while (delay_timer > TIMER_EXPIRED);
1590  051a ae000a        	ldw	x,#L32_delay_timer
1591  051d 8d000000      	callf	d_ltor
1593  0521 ae0004        	ldw	x,#L44
1594  0524 8d000000      	callf	d_lcmp
1596  0528 24f0          	jruge	L774
1597                     ; 422 	delay_timer = TIMER_STOPPED;
1599  052a ae0000        	ldw	x,#0
1600  052d cf000c        	ldw	L32_delay_timer+2,x
1601  0530 ae0000        	ldw	x,#0
1602  0533 cf000a        	ldw	L32_delay_timer,x
1603                     ; 423 }
1606  0536 87            	retf
1723                     	switch	.bss
1724  0000               L13_Conversion_Value:
1725  0000 0000          	ds.b	2
1726  0002               L72_Key_detect_timer:
1727  0002 00000000      	ds.b	4
1728  0006               L52_ir_process_timer:
1729  0006 00000000      	ds.b	4
1730  000a               L32_delay_timer:
1731  000a 00000000      	ds.b	4
1732  000e               L12_ir_release_timer:
1733  000e 00            	ds.b	1
1734  000f               L71_ir_fisrt_process:
1735  000f 00            	ds.b	1
1736  0010               L51_ir_pressed:
1737  0010 00            	ds.b	1
1738  0011               L31_receive_code:
1739  0011 00            	ds.b	1
1740  0012               L11_head_type:
1741  0012 00            	ds.b	1
1742  0013               L7_ir_code:
1743  0013 00000000      	ds.b	4
1744  0017               L5_ir_bit_number:
1745  0017 00            	ds.b	1
1746  0018               L3_ir_state:
1747  0018 00            	ds.b	1
1748                     	xref	f_SWI2C_UpdateTimer
1749                     	xref	f_SWI2C_Set_deep
1750                     	xref	f_SWI2C_Toggle3DOnOff
1751                     	xref	f_SWI2C_WriteWeavingTable
1752                     	xref	f_SWI2C_VerifyKey
1753                     	xref	f_SWI2C_ResetFPGA
1754                     	xref	f_SWI2C_ToggleI2CMode
1755                     	xref	f_SWI2C_ProcessPower
1756                     	xdef	_System_Clock
1757                     	xdef	f_TIMER4_ISR
1758                     	xdef	f_IR_IN_ISR
1759                     	xdef	f_IR_DelayNMiliseconds
1760                     	xdef	f_IR_Update
1761                     	xdef	f_Timer_Init
1762                     	xdef	f_IR_IN_Init
1763                     	xref	f_ADC2_GetConversionValue
1764                     	xref	f_ADC2_StartConversion
1765                     	xref	f_ADC2_Init
1766                     	xref	f_TIM4_ClearFlag
1767                     	xref	f_TIM4_ITConfig
1768                     	xref	f_TIM4_Cmd
1769                     	xref	f_TIM4_TimeBaseInit
1770                     	xref	f_TIM2_ClearFlag
1771                     	xref	f_TIM2_GetCounter
1772                     	xref	f_TIM2_SetCounter
1773                     	xref	f_TIM2_Cmd
1774                     	xref	f_TIM2_TimeBaseInit
1775                     	xref	f_EXTI_SetExtIntSensitivity
1776                     	xref	f_GPIO_Init
1777                     	xref.b	c_lreg
1778                     	xref.b	c_x
1779                     	xref.b	c_y
1799                     	xref	d_rtol
1800                     	xref	d_uitolx
1801                     	xref	d_lgadc
1802                     	xref	d_lgsbc
1803                     	xref	d_jctab
1804                     	xref	d_lcmp
1805                     	xref	d_ltor
1806                     	end
