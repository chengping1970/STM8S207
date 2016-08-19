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
 705  01a6 aca602a6      	jpf	L713
 706  01aa               L03:
 707                     ; 207 		if (ir_process_timer == TIMER_EXPIRED)
 709  01aa ae0006        	ldw	x,#L52_ir_process_timer
 710  01ad 8d000000      	callf	d_ltor
 712  01b1 ae0000        	ldw	x,#L22
 713  01b4 8d000000      	callf	d_lcmp
 715  01b8 2704          	jreq	L23
 716  01ba aca602a6      	jpf	L713
 717  01be               L23:
 718                     ; 209 			u8 ir_key = _convert_IR();
 720  01be 8d100010      	callf	L36f__convert_IR
 722  01c2 6b01          	ld	(OFST+0,sp),a
 723                     ; 210 			switch (ir_key)
 725  01c4 7b01          	ld	a,(OFST+0,sp)
 727                     ; 259 				default:
 727                     ; 260 					break;
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
 741  01de 0098          	dc.w	L523-L62
 742  01e0 0098          	dc.w	L523-L62
 743  01e2 0098          	dc.w	L523-L62
 744  01e4 0098          	dc.w	L523-L62
 745  01e6 0098          	dc.w	L523-L62
 746  01e8 0098          	dc.w	L523-L62
 747  01ea 0098          	dc.w	L523-L62
 748  01ec 006f          	dc.w	L562-L62
 749  01ee 0075          	dc.w	L762-L62
 750  01f0 002e          	dc.w	L342-L62
 751  01f2 007b          	dc.w	L172-L62
 752  01f4 0082          	dc.w	L372-L62
 753  01f6 008a          	dc.w	L572-L62
 754  01f8 0092          	dc.w	L772-L62
 755  01fa               L42:
 756  01fa 206a          	jra	L523
 757  01fc               L342:
 758                     ; 212 				case KEY_DEBUG:
 758                     ; 213 					SWI2C_ToggleI2CMode();
 760  01fc 8d000000      	callf	f_SWI2C_ToggleI2CMode
 762                     ; 214 					break;
 764  0200 2064          	jra	L523
 765  0202               L542:
 766                     ; 215 				case KEY_ONOFF_3D:
 766                     ; 216 					SWI2C_Toggle3DOnOff();
 768  0202 8d000000      	callf	f_SWI2C_Toggle3DOnOff
 770                     ; 217 					break;
 772  0206 205e          	jra	L523
 773  0208               L742:
 774                     ; 218 				case KEY_DEEP_0:
 774                     ; 219 					SWI2C_Set_deep(0);
 776  0208 4f            	clr	a
 777  0209 8d000000      	callf	f_SWI2C_Set_deep
 779                     ; 220 					break;
 781  020d 2057          	jra	L523
 782  020f               L152:
 783                     ; 221 				case KEY_DEEP_1:
 783                     ; 222 					SWI2C_Set_deep(1);
 785  020f a601          	ld	a,#1
 786  0211 8d000000      	callf	f_SWI2C_Set_deep
 788                     ; 223 					break;
 790  0215 204f          	jra	L523
 791  0217               L352:
 792                     ; 224 				case KEY_DEEP_2:
 792                     ; 225 					SWI2C_Set_deep(2);
 794  0217 a602          	ld	a,#2
 795  0219 8d000000      	callf	f_SWI2C_Set_deep
 797                     ; 226 					break;
 799  021d 2047          	jra	L523
 800  021f               L552:
 801                     ; 227 				case KEY_DEEP_3:
 801                     ; 228 					SWI2C_Set_deep(3);
 803  021f a603          	ld	a,#3
 804  0221 8d000000      	callf	f_SWI2C_Set_deep
 806                     ; 229 					break;
 808  0225 203f          	jra	L523
 809  0227               L752:
 810                     ; 230 				case KEY_DEEP_4:
 810                     ; 231 					SWI2C_Set_deep(4);
 812  0227 a604          	ld	a,#4
 813  0229 8d000000      	callf	f_SWI2C_Set_deep
 815                     ; 232 					break;
 817  022d 2037          	jra	L523
 818  022f               L162:
 819                     ; 233 				case KEY_DEEP_5:
 819                     ; 234 					SWI2C_Set_deep(5);
 821  022f a605          	ld	a,#5
 822  0231 8d000000      	callf	f_SWI2C_Set_deep
 824                     ; 235 					break;
 826  0235 202f          	jra	L523
 827  0237               L362:
 828                     ; 236 				case KEY_POWER:
 828                     ; 237 					SWI2C_ProcessPower();
 830  0237 8d000000      	callf	f_SWI2C_ProcessPower
 832                     ; 238 					break;
 834  023b 2029          	jra	L523
 835  023d               L562:
 836                     ; 239 				case KEY_VERIFY_SECRET:
 836                     ; 240 					SWI2C_VerifyKey();
 838  023d 8d000000      	callf	f_SWI2C_VerifyKey
 840                     ; 241 					break;
 842  0241 2023          	jra	L523
 843  0243               L762:
 844                     ; 242 				case KEY_RESET_FPGA:
 844                     ; 243 					SWI2C_ResetFPGA();
 846  0243 8d000000      	callf	f_SWI2C_ResetFPGA
 848                     ; 244 					break;
 850  0247 201d          	jra	L523
 851  0249               L172:
 852                     ; 246 				case KEY_TEST0:
 852                     ; 247 					SWI2C_WriteWeavingTable(0);
 854  0249 4f            	clr	a
 855  024a 8d000000      	callf	f_SWI2C_WriteWeavingTable
 857                     ; 248 					break;
 859  024e 2016          	jra	L523
 860  0250               L372:
 861                     ; 249 				case KEY_TEST1:
 861                     ; 250 					SWI2C_WriteWeavingTable(1);
 863  0250 a601          	ld	a,#1
 864  0252 8d000000      	callf	f_SWI2C_WriteWeavingTable
 866                     ; 251 					break;
 868  0256 200e          	jra	L523
 869  0258               L572:
 870                     ; 252 				case KEY_TEST2:
 870                     ; 253 					SWI2C_WriteWeavingTable(2);
 872  0258 a602          	ld	a,#2
 873  025a 8d000000      	callf	f_SWI2C_WriteWeavingTable
 875                     ; 254 					break;
 877  025e 2006          	jra	L523
 878  0260               L772:
 879                     ; 255 				case KEY_TEST3:
 879                     ; 256 					SWI2C_WriteWeavingTable(3);
 881  0260 a603          	ld	a,#3
 882  0262 8d000000      	callf	f_SWI2C_WriteWeavingTable
 884                     ; 257 					break;
 886  0266               L103:
 887                     ; 259 				default:
 887                     ; 260 					break;
 889  0266               L523:
 890                     ; 262 			if (ir_key != KEY_VOLUME_PLUS && ir_key != KEY_VOLUME_MINUS && ir_key != KEY_LEFT &&ir_key != KEY_RIGHT)
 892  0266 7b01          	ld	a,(OFST+0,sp)
 893  0268 a10b          	cp	a,#11
 894  026a 2716          	jreq	L723
 896  026c 7b01          	ld	a,(OFST+0,sp)
 897  026e a10c          	cp	a,#12
 898  0270 2710          	jreq	L723
 900  0272 7b01          	ld	a,(OFST+0,sp)
 901  0274 a10d          	cp	a,#13
 902  0276 270a          	jreq	L723
 904  0278 7b01          	ld	a,(OFST+0,sp)
 905  027a a10e          	cp	a,#14
 906  027c 2704          	jreq	L723
 907                     ; 264 				receive_code = IRKEY_DUMY;
 909  027e 35ff0011      	mov	L31_receive_code,#255
 910  0282               L723:
 911                     ; 266 			if (ir_fisrt_process)
 913  0282 725d000f      	tnz	L71_ir_fisrt_process
 914  0286 2712          	jreq	L133
 915                     ; 268 				ir_fisrt_process = FALSE;
 917  0288 725f000f      	clr	L71_ir_fisrt_process
 918                     ; 269 				ir_process_timer = 500 + 1;
 920  028c ae01f5        	ldw	x,#501
 921  028f cf0008        	ldw	L52_ir_process_timer+2,x
 922  0292 ae0000        	ldw	x,#0
 923  0295 cf0006        	ldw	L52_ir_process_timer,x
 925  0298 200c          	jra	L713
 926  029a               L133:
 927                     ; 273 				ir_process_timer = 50 + 1;
 929  029a ae0033        	ldw	x,#51
 930  029d cf0008        	ldw	L52_ir_process_timer+2,x
 931  02a0 ae0000        	ldw	x,#0
 932  02a3 cf0006        	ldw	L52_ir_process_timer,x
 933  02a6               L713:
 934                     ; 278 	if (ir_release_timer == TIMER_EXPIRED)
 936  02a6 c6000e        	ld	a,L12_ir_release_timer
 937  02a9 a101          	cp	a,#1
 938  02ab 2614          	jrne	L533
 939                     ; 280 		ir_release_timer = TIMER_STOPPED;
 941  02ad 725f000e      	clr	L12_ir_release_timer
 942                     ; 281 		ir_process_timer = TIMER_STOPPED;
 944  02b1 ae0000        	ldw	x,#0
 945  02b4 cf0008        	ldw	L52_ir_process_timer+2,x
 946  02b7 ae0000        	ldw	x,#0
 947  02ba cf0006        	ldw	L52_ir_process_timer,x
 948                     ; 282 		ir_pressed = FALSE;	
 950  02bd 725f0010      	clr	L51_ir_pressed
 951  02c1               L533:
 952                     ; 285 	if (Key_detect_timer == TIMER_EXPIRED)
 954  02c1 ae0002        	ldw	x,#L72_Key_detect_timer
 955  02c4 8d000000      	callf	d_ltor
 957  02c8 ae0000        	ldw	x,#L22
 958  02cb 8d000000      	callf	d_lcmp
 960  02cf 2613          	jrne	L733
 961                     ; 287 		Conversion_Value = ADC2_GetConversionValue();
 963  02d1 8d000000      	callf	f_ADC2_GetConversionValue
 965  02d5 cf0000        	ldw	L13_Conversion_Value,x
 966                     ; 288 		Key_detect_timer = KEY_DETECT_TIME;
 968  02d8 ae0065        	ldw	x,#101
 969  02db cf0004        	ldw	L72_Key_detect_timer+2,x
 970  02de ae0000        	ldw	x,#0
 971  02e1 cf0002        	ldw	L72_Key_detect_timer,x
 972  02e4               L733:
 973                     ; 290 }
 976  02e4 84            	pop	a
 977  02e5 87            	retf
1029                     ; 292 INTERRUPT_HANDLER(IR_IN_ISR, 3)
1029                     ; 293 {
1030                     	switch	.text
1031  02e6               f_IR_IN_ISR:
1033       00000003      OFST:	set	3
1034  02e6 3b0002        	push	c_x+2
1035  02e9 be00          	ldw	x,c_x
1036  02eb 89            	pushw	x
1037  02ec 3b0002        	push	c_y+2
1038  02ef be00          	ldw	x,c_y
1039  02f1 89            	pushw	x
1040  02f2 5203          	subw	sp,#3
1043                     ; 295 	u8 fault = FALSE;
1045  02f4 0f01          	clr	(OFST-2,sp)
1046                     ; 297 	TIM2_Cmd(DISABLE);
1048  02f6 4f            	clr	a
1049  02f7 8d000000      	callf	f_TIM2_Cmd
1051                     ; 298 	TIM2_ClearFlag(TIM2_FLAG_UPDATE);
1053  02fb ae0001        	ldw	x,#1
1054  02fe 8d000000      	callf	f_TIM2_ClearFlag
1056                     ; 299 	count = TIM2_GetCounter();
1058  0302 8d000000      	callf	f_TIM2_GetCounter
1060  0306 1f02          	ldw	(OFST-1,sp),x
1061                     ; 300 	TIM2_SetCounter(0);			
1063  0308 5f            	clrw	x
1064  0309 8d000000      	callf	f_TIM2_SetCounter
1066                     ; 301 	TIM2_Cmd(ENABLE);
1068  030d a601          	ld	a,#1
1069  030f 8d000000      	callf	f_TIM2_Cmd
1071                     ; 303 	if (count > LEADER_UPPER_LIMIT)
1073  0313 1e02          	ldw	x,(OFST-1,sp)
1074  0315 a33c8d        	cpw	x,#15501
1075  0318 2506          	jrult	L563
1076                     ; 305 		fault = TRUE;
1078  031a a601          	ld	a,#1
1079  031c 6b01          	ld	(OFST-2,sp),a
1081  031e 2043          	jra	L763
1082  0320               L563:
1083                     ; 309 		switch (ir_state)
1085  0320 c60018        	ld	a,L3_ir_state
1087                     ; 365 			default:
1087                     ; 366 				break;
1088  0323 4d            	tnz	a
1089  0324 2705          	jreq	L143
1090  0326 4a            	dec	a
1091  0327 274a          	jreq	L343
1092  0329 2038          	jra	L763
1093  032b               L143:
1094                     ; 311 			case IR_RECEIVE_HEAD:
1094                     ; 312 				if (_Compare_Count(count, LEADER_UPPER_LIMIT, LEADER_LOWER_LIMIT))
1096  032b ae30d4        	ldw	x,#12500
1097  032e 89            	pushw	x
1098  032f ae3c8c        	ldw	x,#15500
1099  0332 89            	pushw	x
1100  0333 1e06          	ldw	x,(OFST+3,sp)
1101  0335 8d000000      	callf	L33f__Compare_Count
1103  0339 5b04          	addw	sp,#4
1104  033b 4d            	tnz	a
1105  033c 270a          	jreq	L573
1106                     ; 314 					ir_release_timer = IR_RELEASE_TIME;
1108  033e 3581000e      	mov	L12_ir_release_timer,#129
1109                     ; 315 					ir_state = IR_RECEIVE_CODE;
1111  0342 35010018      	mov	L3_ir_state,#1
1113  0346 2017          	jra	L773
1114  0348               L573:
1115                     ; 317 				else if (_Compare_Count(count, REPEAT_UPPER_LIMIT, REPEAT_LOWER_LIMIT))
1117  0348 ae280a        	ldw	x,#10250
1118  034b 89            	pushw	x
1119  034c ae2fda        	ldw	x,#12250
1120  034f 89            	pushw	x
1121  0350 1e06          	ldw	x,(OFST+3,sp)
1122  0352 8d000000      	callf	L33f__Compare_Count
1124  0356 5b04          	addw	sp,#4
1125  0358 4d            	tnz	a
1126  0359 2704          	jreq	L773
1127                     ; 319 					ir_release_timer = IR_RELEASE_TIME;
1129  035b 3581000e      	mov	L12_ir_release_timer,#129
1130  035f               L773:
1131                     ; 321 				ir_bit_number = 0;
1133  035f 725f0017      	clr	L5_ir_bit_number
1134                     ; 322 				break;
1135  0363               L763:
1136                     ; 369 	if (fault)
1138  0363 0d01          	tnz	(OFST-2,sp)
1139  0365 2604          	jrne	L63
1140  0367 ac520452      	jpf	L334
1141  036b               L63:
1142                     ; 371 		ir_state = IR_RECEIVE_HEAD;
1144  036b 725f0018      	clr	L3_ir_state
1145  036f ac520452      	jpf	L334
1146  0373               L343:
1147                     ; 323 			case IR_RECEIVE_CODE:
1147                     ; 324 				if (_Compare_Count(count, HIGH_UPPER_LIMIT, HIGH_LOWER_LIMIT))
1149  0373 ae06a4        	ldw	x,#1700
1150  0376 89            	pushw	x
1151  0377 ae0af0        	ldw	x,#2800
1152  037a 89            	pushw	x
1153  037b 1e06          	ldw	x,(OFST+3,sp)
1154  037d 8d000000      	callf	L33f__Compare_Count
1156  0381 5b04          	addw	sp,#4
1157  0383 4d            	tnz	a
1158  0384 271e          	jreq	L304
1159                     ; 326 					ir_code[ir_bit_number/8] = (ir_code[ir_bit_number/8]>>1)|0x80;
1161  0386 c60017        	ld	a,L5_ir_bit_number
1162  0389 44            	srl	a
1163  038a 44            	srl	a
1164  038b 44            	srl	a
1165  038c 5f            	clrw	x
1166  038d 97            	ld	xl,a
1167  038e c60017        	ld	a,L5_ir_bit_number
1168  0391 44            	srl	a
1169  0392 44            	srl	a
1170  0393 44            	srl	a
1171  0394 905f          	clrw	y
1172  0396 9097          	ld	yl,a
1173  0398 90d60013      	ld	a,(L7_ir_code,y)
1174  039c 44            	srl	a
1175  039d aa80          	or	a,#128
1176  039f d70013        	ld	(L7_ir_code,x),a
1178  03a2 2025          	jra	L504
1179  03a4               L304:
1180                     ; 328 				else if (_Compare_Count(count, LOW_UPPER_LIMIT, LOW_LOWER_LIMIT))
1182  03a4 ae0320        	ldw	x,#800
1183  03a7 89            	pushw	x
1184  03a8 ae05aa        	ldw	x,#1450
1185  03ab 89            	pushw	x
1186  03ac 1e06          	ldw	x,(OFST+3,sp)
1187  03ae 8d000000      	callf	L33f__Compare_Count
1189  03b2 5b04          	addw	sp,#4
1190  03b4 4d            	tnz	a
1191  03b5 270e          	jreq	L704
1192                     ; 330 					ir_code[ir_bit_number/8] = ir_code[ir_bit_number/8]>>1;
1194  03b7 c60017        	ld	a,L5_ir_bit_number
1195  03ba 44            	srl	a
1196  03bb 44            	srl	a
1197  03bc 44            	srl	a
1198  03bd 5f            	clrw	x
1199  03be 97            	ld	xl,a
1200  03bf 72440013      	srl	(L7_ir_code,x)
1202  03c3 2004          	jra	L504
1203  03c5               L704:
1204                     ; 334 					fault = TRUE;
1206  03c5 a601          	ld	a,#1
1207  03c7 6b01          	ld	(OFST-2,sp),a
1208  03c9               L504:
1209                     ; 336 				ir_bit_number++;
1211  03c9 725c0017      	inc	L5_ir_bit_number
1212                     ; 337 				if (ir_bit_number == 32 && !fault)
1214  03cd c60017        	ld	a,L5_ir_bit_number
1215  03d0 a120          	cp	a,#32
1216  03d2 268f          	jrne	L763
1218  03d4 0d01          	tnz	(OFST-2,sp)
1219  03d6 268b          	jrne	L763
1220                     ; 339 					ir_state = IR_RECEIVE_HEAD;
1222  03d8 725f0018      	clr	L3_ir_state
1223                     ; 340 					if (((ir_code[0] == 0x0 && ir_code[1] == 0xDF) || (ir_code[0] == 0x4F && ir_code[1] == 0x50)) 
1223                     ; 341 					&& ((ir_code[2]^ir_code[3]) == 0xFF))
1225  03dc 725d0013      	tnz	L7_ir_code
1226  03e0 2607          	jrne	L124
1228  03e2 c60014        	ld	a,L7_ir_code+1
1229  03e5 a1df          	cp	a,#223
1230  03e7 270e          	jreq	L714
1231  03e9               L124:
1233  03e9 c60013        	ld	a,L7_ir_code
1234  03ec a14f          	cp	a,#79
1235  03ee 2652          	jrne	L514
1237  03f0 c60014        	ld	a,L7_ir_code+1
1238  03f3 a150          	cp	a,#80
1239  03f5 264b          	jrne	L514
1240  03f7               L714:
1242  03f7 c60015        	ld	a,L7_ir_code+2
1243  03fa c80016        	xor	a,L7_ir_code+3
1244  03fd a1ff          	cp	a,#255
1245  03ff 2641          	jrne	L514
1246                     ; 343 						if (!ir_pressed)
1248  0401 725d0010      	tnz	L51_ir_pressed
1249  0405 2704          	jreq	L04
1250  0407 ac630363      	jpf	L763
1251  040b               L04:
1252                     ; 345 							receive_code = ir_code[2];						
1254  040b 5500150011    	mov	L31_receive_code,L7_ir_code+2
1255                     ; 346 							ir_pressed = TRUE;
1257  0410 35010010      	mov	L51_ir_pressed,#1
1258                     ; 347 							ir_fisrt_process = TRUE;
1260  0414 3501000f      	mov	L71_ir_fisrt_process,#1
1261                     ; 348 							ir_process_timer = TIMER_EXPIRED;
1263  0418 ae0001        	ldw	x,#1
1264  041b cf0008        	ldw	L52_ir_process_timer+2,x
1265  041e ae0000        	ldw	x,#0
1266  0421 cf0006        	ldw	L52_ir_process_timer,x
1267                     ; 349 							if (ir_code[0] == 0x4F && ir_code[1] == 0x50)
1269  0424 c60013        	ld	a,L7_ir_code
1270  0427 a14f          	cp	a,#79
1271  0429 260f          	jrne	L524
1273  042b c60014        	ld	a,L7_ir_code+1
1274  042e a150          	cp	a,#80
1275  0430 2608          	jrne	L524
1276                     ; 351 								head_type = 1;
1278  0432 35010012      	mov	L11_head_type,#1
1280  0436 ac630363      	jpf	L763
1281  043a               L524:
1282                     ; 355 								head_type = 0;
1284  043a 725f0012      	clr	L11_head_type
1285  043e ac630363      	jpf	L763
1286  0442               L514:
1287                     ; 361 						fault = TRUE;
1289  0442 a601          	ld	a,#1
1290  0444 6b01          	ld	(OFST-2,sp),a
1291  0446 ac630363      	jpf	L763
1292  044a               L543:
1293                     ; 365 			default:
1293                     ; 366 				break;
1295  044a ac630363      	jpf	L763
1296  044e               L373:
1297  044e ac630363      	jpf	L763
1298  0452               L334:
1299                     ; 373 }
1302  0452 5b03          	addw	sp,#3
1303  0454 85            	popw	x
1304  0455 bf00          	ldw	c_y,x
1305  0457 320002        	pop	c_y+2
1306  045a 85            	popw	x
1307  045b bf00          	ldw	c_x,x
1308  045d 320002        	pop	c_x+2
1309  0460 80            	iret
1350                     	switch	.const
1351  0004               L44:
1352  0004 00000002      	dc.l	2
1353                     ; 375 INTERRUPT_HANDLER(TIMER4_ISR, 23)
1353                     ; 376 {		
1354                     	switch	.text
1355  0461               f_TIMER4_ISR:
1357  0461 3b0002        	push	c_x+2
1358  0464 be00          	ldw	x,c_x
1359  0466 89            	pushw	x
1360  0467 3b0002        	push	c_y+2
1361  046a be00          	ldw	x,c_y
1362  046c 89            	pushw	x
1363  046d be02          	ldw	x,c_lreg+2
1364  046f 89            	pushw	x
1365  0470 be00          	ldw	x,c_lreg
1366  0472 89            	pushw	x
1369                     ; 377 	TIM4_Cmd(DISABLE);
1371  0473 4f            	clr	a
1372  0474 8d000000      	callf	f_TIM4_Cmd
1374                     ; 378 	TIM4_ClearFlag(TIM4_IT_UPDATE);
1376  0478 a601          	ld	a,#1
1377  047a 8d000000      	callf	f_TIM4_ClearFlag
1379                     ; 379 	nop();
1382  047e 9d            nop
1384                     ; 380 	nop();
1388  047f 9d            nop
1390                     ; 381 	nop();
1394  0480 9d            nop
1396                     ; 382 	nop();
1400  0481 9d            nop
1402                     ; 383 	nop();
1406  0482 9d            nop
1408                     ; 384 	nop();
1412  0483 9d            nop
1414                     ; 385 	nop();
1418  0484 9d            nop
1420                     ; 386 	nop();
1424  0485 9d            nop
1426                     ; 387 	nop();
1430  0486 9d            nop
1432                     ; 388 	nop();
1436  0487 9d            nop
1438                     ; 389 	nop();
1442  0488 9d            nop
1444                     ; 390 	TIM4_Cmd(ENABLE);
1447  0489 a601          	ld	a,#1
1448  048b 8d000000      	callf	f_TIM4_Cmd
1450                     ; 392 	if (ir_release_timer > TIMER_EXPIRED)
1452  048f c6000e        	ld	a,L12_ir_release_timer
1453  0492 a102          	cp	a,#2
1454  0494 2504          	jrult	L544
1455                     ; 394 		ir_release_timer--;
1457  0496 725a000e      	dec	L12_ir_release_timer
1458  049a               L544:
1459                     ; 396 	if (delay_timer > TIMER_EXPIRED)
1461  049a ae000a        	ldw	x,#L32_delay_timer
1462  049d 8d000000      	callf	d_ltor
1464  04a1 ae0004        	ldw	x,#L44
1465  04a4 8d000000      	callf	d_lcmp
1467  04a8 2509          	jrult	L744
1468                     ; 398 		delay_timer--;
1470  04aa ae000a        	ldw	x,#L32_delay_timer
1471  04ad a601          	ld	a,#1
1472  04af 8d000000      	callf	d_lgsbc
1474  04b3               L744:
1475                     ; 400 	if (ir_process_timer > TIMER_EXPIRED)
1477  04b3 ae0006        	ldw	x,#L52_ir_process_timer
1478  04b6 8d000000      	callf	d_ltor
1480  04ba ae0004        	ldw	x,#L44
1481  04bd 8d000000      	callf	d_lcmp
1483  04c1 2509          	jrult	L154
1484                     ; 402 		ir_process_timer--;
1486  04c3 ae0006        	ldw	x,#L52_ir_process_timer
1487  04c6 a601          	ld	a,#1
1488  04c8 8d000000      	callf	d_lgsbc
1490  04cc               L154:
1491                     ; 404 	if (Key_detect_timer > TIMER_EXPIRED)
1493  04cc ae0002        	ldw	x,#L72_Key_detect_timer
1494  04cf 8d000000      	callf	d_ltor
1496  04d3 ae0004        	ldw	x,#L44
1497  04d6 8d000000      	callf	d_lcmp
1499  04da 2509          	jrult	L354
1500                     ; 406 		Key_detect_timer--;
1502  04dc ae0002        	ldw	x,#L72_Key_detect_timer
1503  04df a601          	ld	a,#1
1504  04e1 8d000000      	callf	d_lgsbc
1506  04e5               L354:
1507                     ; 408 	SWI2C_UpdateTimer();
1509  04e5 8d000000      	callf	f_SWI2C_UpdateTimer
1511                     ; 409 	System_Clock++;
1513  04e9 ae0000        	ldw	x,#_System_Clock
1514  04ec a601          	ld	a,#1
1515  04ee 8d000000      	callf	d_lgadc
1517                     ; 410 }
1520  04f2 85            	popw	x
1521  04f3 bf00          	ldw	c_lreg,x
1522  04f5 85            	popw	x
1523  04f6 bf02          	ldw	c_lreg+2,x
1524  04f8 85            	popw	x
1525  04f9 bf00          	ldw	c_y,x
1526  04fb 320002        	pop	c_y+2
1527  04fe 85            	popw	x
1528  04ff bf00          	ldw	c_x,x
1529  0501 320002        	pop	c_x+2
1530  0504 80            	iret
1563                     ; 412 void IR_DelayNMiliseconds(u16 delay)
1563                     ; 413 {
1564                     	switch	.text
1565  0505               f_IR_DelayNMiliseconds:
1569                     ; 414 	delay_timer = delay;
1571  0505 8d000000      	callf	d_uitolx
1573  0509 ae000a        	ldw	x,#L32_delay_timer
1574  050c 8d000000      	callf	d_rtol
1577  0510               L574:
1578                     ; 415 	while (delay_timer > TIMER_EXPIRED);
1580  0510 ae000a        	ldw	x,#L32_delay_timer
1581  0513 8d000000      	callf	d_ltor
1583  0517 ae0004        	ldw	x,#L44
1584  051a 8d000000      	callf	d_lcmp
1586  051e 24f0          	jruge	L574
1587                     ; 416 	delay_timer = TIMER_STOPPED;
1589  0520 ae0000        	ldw	x,#0
1590  0523 cf000c        	ldw	L32_delay_timer+2,x
1591  0526 ae0000        	ldw	x,#0
1592  0529 cf000a        	ldw	L32_delay_timer,x
1593                     ; 417 }
1596  052c 87            	retf
1713                     	switch	.bss
1714  0000               L13_Conversion_Value:
1715  0000 0000          	ds.b	2
1716  0002               L72_Key_detect_timer:
1717  0002 00000000      	ds.b	4
1718  0006               L52_ir_process_timer:
1719  0006 00000000      	ds.b	4
1720  000a               L32_delay_timer:
1721  000a 00000000      	ds.b	4
1722  000e               L12_ir_release_timer:
1723  000e 00            	ds.b	1
1724  000f               L71_ir_fisrt_process:
1725  000f 00            	ds.b	1
1726  0010               L51_ir_pressed:
1727  0010 00            	ds.b	1
1728  0011               L31_receive_code:
1729  0011 00            	ds.b	1
1730  0012               L11_head_type:
1731  0012 00            	ds.b	1
1732  0013               L7_ir_code:
1733  0013 00000000      	ds.b	4
1734  0017               L5_ir_bit_number:
1735  0017 00            	ds.b	1
1736  0018               L3_ir_state:
1737  0018 00            	ds.b	1
1738                     	xref	f_SWI2C_UpdateTimer
1739                     	xref	f_SWI2C_Set_deep
1740                     	xref	f_SWI2C_Toggle3DOnOff
1741                     	xref	f_SWI2C_WriteWeavingTable
1742                     	xref	f_SWI2C_VerifyKey
1743                     	xref	f_SWI2C_ResetFPGA
1744                     	xref	f_SWI2C_ToggleI2CMode
1745                     	xref	f_SWI2C_ProcessPower
1746                     	xdef	_System_Clock
1747                     	xdef	f_TIMER4_ISR
1748                     	xdef	f_IR_IN_ISR
1749                     	xdef	f_IR_DelayNMiliseconds
1750                     	xdef	f_IR_Update
1751                     	xdef	f_Timer_Init
1752                     	xdef	f_IR_IN_Init
1753                     	xref	f_ADC2_GetConversionValue
1754                     	xref	f_ADC2_StartConversion
1755                     	xref	f_ADC2_Init
1756                     	xref	f_TIM4_ClearFlag
1757                     	xref	f_TIM4_ITConfig
1758                     	xref	f_TIM4_Cmd
1759                     	xref	f_TIM4_TimeBaseInit
1760                     	xref	f_TIM2_ClearFlag
1761                     	xref	f_TIM2_GetCounter
1762                     	xref	f_TIM2_SetCounter
1763                     	xref	f_TIM2_Cmd
1764                     	xref	f_TIM2_TimeBaseInit
1765                     	xref	f_EXTI_SetExtIntSensitivity
1766                     	xref	f_GPIO_Init
1767                     	xref.b	c_lreg
1768                     	xref.b	c_x
1769                     	xref.b	c_y
1789                     	xref	d_rtol
1790                     	xref	d_uitolx
1791                     	xref	d_lgadc
1792                     	xref	d_lgsbc
1793                     	xref	d_jctab
1794                     	xref	d_lcmp
1795                     	xref	d_ltor
1796                     	end
