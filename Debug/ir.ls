   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  15                     	switch	.data
  16  0000               _System_Clock:
  17  0000 00000000      	dc.l	0
  69                     ; 94 static u8 _Compare_Count(u16 a, u16 max, u16 min)
  69                     ; 95 {
  70                     	switch	.text
  71  0000               L33f__Compare_Count:
  73  0000 89            	pushw	x
  74       00000000      OFST:	set	0
  77                     ; 96 	return (a < max && a > min);
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
 115                     ; 99 static u8 _convert_IR(void)
 115                     ; 100 {
 116                     	switch	.text
 117  0010               L36f__convert_IR:
 121                     ; 101 	if (head_type)
 123  0010 725d0012      	tnz	L11_head_type
 124  0014 274b          	jreq	L551
 125                     ; 103 		switch (receive_code)
 127  0016 c60011        	ld	a,L31_receive_code
 129                     ; 116 			default:
 129                     ; 117 				return KEY_DUMMY;
 130  0019 4d            	tnz	a
 131  001a 2725          	jreq	L56
 132  001c 4a            	dec	a
 133  001d 2724          	jreq	L76
 134  001f 4a            	dec	a
 135  0020 2724          	jreq	L17
 136  0022 4a            	dec	a
 137  0023 2724          	jreq	L37
 138  0025 4a            	dec	a
 139  0026 2724          	jreq	L57
 140  0028 4a            	dec	a
 141  0029 2724          	jreq	L77
 142  002b a070          	sub	a,#112
 143  002d 272c          	jreq	L701
 144  002f a04b          	sub	a,#75
 145  0031 2722          	jreq	L301
 146  0033 4a            	dec	a
 147  0034 2728          	jreq	L111
 148  0036 a002          	sub	a,#2
 149  0038 271e          	jreq	L501
 150  003a a004          	sub	a,#4
 151  003c 2714          	jreq	L101
 152  003e               L311:
 155  003e a6ff          	ld	a,#255
 158  0040 87            	retf
 159  0041               L56:
 160                     ; 105 			case 0x0: 		return KEY_DEEP_0;
 162  0041 4f            	clr	a
 165  0042 87            	retf
 166  0043               L76:
 167                     ; 106 			case 0x1: 		return KEY_DEEP_1;
 169  0043 a601          	ld	a,#1
 172  0045 87            	retf
 173  0046               L17:
 174                     ; 107 			case 0x2: 		return KEY_DEEP_2;
 176  0046 a602          	ld	a,#2
 179  0048 87            	retf
 180  0049               L37:
 181                     ; 108 			case 0x3: 		return KEY_DEEP_3;
 183  0049 a603          	ld	a,#3
 186  004b 87            	retf
 187  004c               L57:
 188                     ; 109 			case 0x4: 		return KEY_DEEP_4;
 190  004c a604          	ld	a,#4
 193  004e 87            	retf
 194  004f               L77:
 195                     ; 110 			case 0x5: 		return KEY_DEEP_5;
 197  004f a605          	ld	a,#5
 200  0051 87            	retf
 201  0052               L101:
 202                     ; 111 			case 0xC7:		return KEY_POWER;
 204  0052 a606          	ld	a,#6
 207  0054 87            	retf
 208  0055               L301:
 209                     ; 112 			case 0xC0: 		return KEY_PC;
 211  0055 a609          	ld	a,#9
 214  0057 87            	retf
 215  0058               L501:
 216                     ; 113 			case 0xC3: 		return KEY_HDMI;
 218  0058 a60a          	ld	a,#10
 221  005a 87            	retf
 222  005b               L701:
 223                     ; 114 			case 0x75: 		return KEY_ONOFF_3D;
 225  005b a607          	ld	a,#7
 228  005d 87            	retf
 229  005e               L111:
 230                     ; 115 			case 0xC1: 		return KEY_DEBUG;
 232  005e a60f          	ld	a,#15
 235  0060 87            	retf
 236  0061               L551:
 237                     ; 122 		switch (receive_code)
 239  0061 c60011        	ld	a,L31_receive_code
 241                     ; 135 			default:
 241                     ; 136 				return KEY_DUMMY;
 242  0064 4a            	dec	a
 243  0065 2746          	jreq	L141
 244  0067 a00f          	sub	a,#15
 245  0069 2725          	jreq	L511
 246  006b a002          	sub	a,#2
 247  006d 272f          	jreq	L721
 248  006f a003          	sub	a,#3
 249  0071 2725          	jreq	L321
 250  0073 4a            	dec	a
 251  0074 271f          	jreq	L121
 252  0076 a006          	sub	a,#6
 253  0078 2727          	jreq	L131
 254  007a a034          	sub	a,#52
 255  007c 271d          	jreq	L521
 256  007e a004          	sub	a,#4
 257  0080 2710          	jreq	L711
 258  0082 a002          	sub	a,#2
 259  0084 271e          	jreq	L331
 260  0086 4a            	dec	a
 261  0087 271e          	jreq	L531
 262  0089 a004          	sub	a,#4
 263  008b 271d          	jreq	L731
 264  008d               L341:
 267  008d a6ff          	ld	a,#255
 270  008f 87            	retf
 271  0090               L511:
 272                     ; 124 			case 0x10: 		return KEY_DEEP_0;
 274  0090 4f            	clr	a
 277  0091 87            	retf
 278  0092               L711:
 279                     ; 125 			case 0x54: 		return KEY_DEEP_1;
 281  0092 a601          	ld	a,#1
 284  0094 87            	retf
 285  0095               L121:
 286                     ; 126 			case 0x16: 		return KEY_DEEP_2;
 288  0095 a602          	ld	a,#2
 291  0097 87            	retf
 292  0098               L321:
 293                     ; 127 			case 0x15: 		return KEY_DEEP_3;
 295  0098 a603          	ld	a,#3
 298  009a 87            	retf
 299  009b               L521:
 300                     ; 128 			case 0x50: 		return KEY_DEEP_4;
 302  009b a604          	ld	a,#4
 305  009d 87            	retf
 306  009e               L721:
 307                     ; 129 			case 0x12: 		return KEY_DEEP_5;
 309  009e a605          	ld	a,#5
 312  00a0 87            	retf
 313  00a1               L131:
 314                     ; 130 			case 0x1C: 		return KEY_POWER;
 316  00a1 a606          	ld	a,#6
 319  00a3 87            	retf
 320  00a4               L331:
 321                     ; 131 			case 0x56: 		return KEY_PC;
 323  00a4 a609          	ld	a,#9
 326  00a6 87            	retf
 327  00a7               L531:
 328                     ; 132 			case 0x57: 		return KEY_HDMI;
 330  00a7 a60a          	ld	a,#10
 333  00a9 87            	retf
 334  00aa               L731:
 335                     ; 133 			case 0x5B: 		return KEY_ONOFF_3D;
 337  00aa a607          	ld	a,#7
 340  00ac 87            	retf
 341  00ad               L141:
 342                     ; 134 			case 0x01: 		return KEY_DEBUG;
 344  00ad a60f          	ld	a,#15
 347  00af 87            	retf
 379                     ; 141 void IR_IN_Init(void)
 379                     ; 142 {	
 380                     	switch	.text
 381  00b0               f_IR_IN_Init:
 385                     ; 143 	GPIO_Init(IR_IN_PORT, IR_IN_PIN, GPIO_MODE_IN_FL_IT);
 387  00b0 4b20          	push	#32
 388  00b2 4b40          	push	#64
 389  00b4 ae5000        	ldw	x,#20480
 390  00b7 8d000000      	callf	f_GPIO_Init
 392  00bb 85            	popw	x
 393                     ; 144 	EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOA, EXTI_SENSITIVITY_FALL_ONLY);
 395  00bc ae0002        	ldw	x,#2
 396  00bf 4f            	clr	a
 397  00c0 95            	ld	xh,a
 398  00c1 8d000000      	callf	f_EXTI_SetExtIntSensitivity
 400                     ; 146 	TIM2_TimeBaseInit(TIM2_PRESCALER_16, 0xffff);
 402  00c5 aeffff        	ldw	x,#65535
 403  00c8 89            	pushw	x
 404  00c9 a604          	ld	a,#4
 405  00cb 8d000000      	callf	f_TIM2_TimeBaseInit
 407  00cf 85            	popw	x
 408                     ; 147 	TIM2_Cmd(ENABLE); 
 410  00d0 a601          	ld	a,#1
 411  00d2 8d000000      	callf	f_TIM2_Cmd
 413                     ; 149 	GPIO_Init(KEY_IN_PORT, KEY_IN_PIN, GPIO_MODE_IN_FL_NO_IT);
 415  00d6 4b00          	push	#0
 416  00d8 4b80          	push	#128
 417  00da ae5005        	ldw	x,#20485
 418  00dd 8d000000      	callf	f_GPIO_Init
 420  00e1 85            	popw	x
 421                     ; 150 	ADC2_Init(ADC2_CONVERSIONMODE_CONTINUOUS, ADC2_CHANNEL_7, ADC2_PRESSEL_FCPU_D2,\
 421                     ; 151 					ADC2_EXTTRIG_TIM, DISABLE, ADC2_ALIGN_RIGHT, ADC2_SCHMITTTRIG_CHANNEL7, DISABLE);
 423  00e2 4b00          	push	#0
 424  00e4 4b07          	push	#7
 425  00e6 4b08          	push	#8
 426  00e8 4b00          	push	#0
 427  00ea 4b00          	push	#0
 428  00ec 4b00          	push	#0
 429  00ee ae0007        	ldw	x,#7
 430  00f1 a601          	ld	a,#1
 431  00f3 95            	ld	xh,a
 432  00f4 8d000000      	callf	f_ADC2_Init
 434  00f8 5b06          	addw	sp,#6
 435                     ; 153 	ADC2_StartConversion();
 437  00fa 8d000000      	callf	f_ADC2_StartConversion
 439                     ; 155 	ir_state = IR_RECEIVE_HEAD;
 441  00fe 725f0018      	clr	L3_ir_state
 442                     ; 156 	ir_pressed = FALSE;	
 444  0102 725f0010      	clr	L51_ir_pressed
 445                     ; 157 	ir_fisrt_process = FALSE;
 447  0106 725f000f      	clr	L71_ir_fisrt_process
 448                     ; 158 	receive_code = IRKEY_DUMY;	
 450  010a 35ff0011      	mov	L31_receive_code,#255
 451                     ; 165 }
 454  010e 87            	retf
 483                     ; 167 void Timer_Init(void)
 483                     ; 168 {
 484                     	switch	.text
 485  010f               f_Timer_Init:
 489                     ; 169 	TIM4_TimeBaseInit(TIM4_PRESCALER_128, 125);
 491  010f ae007d        	ldw	x,#125
 492  0112 a607          	ld	a,#7
 493  0114 95            	ld	xh,a
 494  0115 8d000000      	callf	f_TIM4_TimeBaseInit
 496                     ; 170 	TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
 498  0119 ae0001        	ldw	x,#1
 499  011c a601          	ld	a,#1
 500  011e 95            	ld	xh,a
 501  011f 8d000000      	callf	f_TIM4_ITConfig
 503                     ; 171 	TIM4_Cmd(ENABLE); 
 505  0123 a601          	ld	a,#1
 506  0125 8d000000      	callf	f_TIM4_Cmd
 508                     ; 173 	ir_release_timer = TIMER_STOPPED;
 510  0129 725f000e      	clr	L12_ir_release_timer
 511                     ; 174 	delay_timer = TIMER_STOPPED;
 513  012d ae0000        	ldw	x,#0
 514  0130 cf000c        	ldw	L32_delay_timer+2,x
 515  0133 ae0000        	ldw	x,#0
 516  0136 cf000a        	ldw	L32_delay_timer,x
 517                     ; 175 	ir_process_timer = TIMER_STOPPED;
 519  0139 ae0000        	ldw	x,#0
 520  013c cf0008        	ldw	L52_ir_process_timer+2,x
 521  013f ae0000        	ldw	x,#0
 522  0142 cf0006        	ldw	L52_ir_process_timer,x
 523                     ; 176 	Key_detect_timer = TIMER_EXPIRED;
 525  0145 ae0001        	ldw	x,#1
 526  0148 cf0004        	ldw	L72_Key_detect_timer+2,x
 527  014b ae0000        	ldw	x,#0
 528  014e cf0002        	ldw	L72_Key_detect_timer,x
 529                     ; 177 }
 532  0151 87            	retf
 534                     	switch	.data
 535  0004               L112_value_debug:
 536  0004 00            	dc.b	0
 579                     .const:	section	.text
 580  0000               L22:
 581  0000 00000001      	dc.l	1
 582                     ; 180 void IR_Update(void)
 582                     ; 181 {
 583                     	switch	.text
 584  0152               f_IR_Update:
 586  0152 88            	push	a
 587       00000001      OFST:	set	1
 590                     ; 182 	if (ir_pressed)
 592  0153 725d0010      	tnz	L51_ir_pressed
 593  0157 2604          	jrne	L42
 594  0159 ac140214      	jpf	L352
 595  015d               L42:
 596                     ; 184 		if (ir_process_timer == TIMER_EXPIRED)
 598  015d ae0006        	ldw	x,#L52_ir_process_timer
 599  0160 8d000000      	callf	d_ltor
 601  0164 ae0000        	ldw	x,#L22
 602  0167 8d000000      	callf	d_lcmp
 604  016b 2704          	jreq	L62
 605  016d ac140214      	jpf	L352
 606  0171               L62:
 607                     ; 186 			u8 ir_key = _convert_IR();
 609  0171 8d100010      	callf	L36f__convert_IR
 611  0175 6b01          	ld	(OFST+0,sp),a
 612                     ; 187 			switch (ir_key)
 614  0177 7b01          	ld	a,(OFST+0,sp)
 616                     ; 216 				default:
 616                     ; 217 					break;
 617  0179 4d            	tnz	a
 618  017a 2725          	jreq	L712
 619  017c 4a            	dec	a
 620  017d 2729          	jreq	L122
 621  017f 4a            	dec	a
 622  0180 272e          	jreq	L322
 623  0182 4a            	dec	a
 624  0183 2733          	jreq	L522
 625  0185 4a            	dec	a
 626  0186 2738          	jreq	L722
 627  0188 4a            	dec	a
 628  0189 273d          	jreq	L132
 629  018b 4a            	dec	a
 630  018c 2742          	jreq	L332
 631  018e 4a            	dec	a
 632  018f 270a          	jreq	L512
 633  0191 a008          	sub	a,#8
 634  0193 263f          	jrne	L162
 635                     ; 189 				case KEY_DEBUG:
 635                     ; 190 					SWI2C_ToggleI2CMode();
 637  0195 8d000000      	callf	f_SWI2C_ToggleI2CMode
 639                     ; 191 					break;
 641  0199 2039          	jra	L162
 642  019b               L512:
 643                     ; 192 				case KEY_ONOFF_3D:
 643                     ; 193 					SWI2C_Toggle3DOnOff();
 645  019b 8d000000      	callf	f_SWI2C_Toggle3DOnOff
 647                     ; 194 					break;
 649  019f 2033          	jra	L162
 650  01a1               L712:
 651                     ; 195 				case KEY_DEEP_0:
 651                     ; 196 					SWI2C_Set_deep(0);
 653  01a1 4f            	clr	a
 654  01a2 8d000000      	callf	f_SWI2C_Set_deep
 656                     ; 197 					break;
 658  01a6 202c          	jra	L162
 659  01a8               L122:
 660                     ; 198 				case KEY_DEEP_1:
 660                     ; 199 					SWI2C_Set_deep(1);
 662  01a8 a601          	ld	a,#1
 663  01aa 8d000000      	callf	f_SWI2C_Set_deep
 665                     ; 200 					break;
 667  01ae 2024          	jra	L162
 668  01b0               L322:
 669                     ; 201 				case KEY_DEEP_2:
 669                     ; 202 					SWI2C_Set_deep(2);
 671  01b0 a602          	ld	a,#2
 672  01b2 8d000000      	callf	f_SWI2C_Set_deep
 674                     ; 203 					break;
 676  01b6 201c          	jra	L162
 677  01b8               L522:
 678                     ; 204 				case KEY_DEEP_3:
 678                     ; 205 					SWI2C_Set_deep(3);
 680  01b8 a603          	ld	a,#3
 681  01ba 8d000000      	callf	f_SWI2C_Set_deep
 683                     ; 206 					break;
 685  01be 2014          	jra	L162
 686  01c0               L722:
 687                     ; 207 				case KEY_DEEP_4:
 687                     ; 208 					SWI2C_Set_deep(4);
 689  01c0 a604          	ld	a,#4
 690  01c2 8d000000      	callf	f_SWI2C_Set_deep
 692                     ; 209 					break;
 694  01c6 200c          	jra	L162
 695  01c8               L132:
 696                     ; 210 				case KEY_DEEP_5:
 696                     ; 211 					SWI2C_Set_deep(5);
 698  01c8 a605          	ld	a,#5
 699  01ca 8d000000      	callf	f_SWI2C_Set_deep
 701                     ; 212 					break;
 703  01ce 2004          	jra	L162
 704  01d0               L332:
 705                     ; 213 				case KEY_POWER:
 705                     ; 214 					SWI2C_ProcessPower();
 707  01d0 8d000000      	callf	f_SWI2C_ProcessPower
 709                     ; 215 					break;
 711  01d4               L532:
 712                     ; 216 				default:
 712                     ; 217 					break;
 714  01d4               L162:
 715                     ; 219 			if (ir_key != KEY_VOLUME_PLUS && ir_key != KEY_VOLUME_MINUS && ir_key != KEY_LEFT &&ir_key != KEY_RIGHT)
 717  01d4 7b01          	ld	a,(OFST+0,sp)
 718  01d6 a10b          	cp	a,#11
 719  01d8 2716          	jreq	L362
 721  01da 7b01          	ld	a,(OFST+0,sp)
 722  01dc a10c          	cp	a,#12
 723  01de 2710          	jreq	L362
 725  01e0 7b01          	ld	a,(OFST+0,sp)
 726  01e2 a10d          	cp	a,#13
 727  01e4 270a          	jreq	L362
 729  01e6 7b01          	ld	a,(OFST+0,sp)
 730  01e8 a10e          	cp	a,#14
 731  01ea 2704          	jreq	L362
 732                     ; 221 				receive_code = IRKEY_DUMY;
 734  01ec 35ff0011      	mov	L31_receive_code,#255
 735  01f0               L362:
 736                     ; 223 			if (ir_fisrt_process)
 738  01f0 725d000f      	tnz	L71_ir_fisrt_process
 739  01f4 2712          	jreq	L562
 740                     ; 225 				ir_fisrt_process = FALSE;
 742  01f6 725f000f      	clr	L71_ir_fisrt_process
 743                     ; 226 				ir_process_timer = 500 + 1;
 745  01fa ae01f5        	ldw	x,#501
 746  01fd cf0008        	ldw	L52_ir_process_timer+2,x
 747  0200 ae0000        	ldw	x,#0
 748  0203 cf0006        	ldw	L52_ir_process_timer,x
 750  0206 200c          	jra	L352
 751  0208               L562:
 752                     ; 230 				ir_process_timer = 50 + 1;
 754  0208 ae0033        	ldw	x,#51
 755  020b cf0008        	ldw	L52_ir_process_timer+2,x
 756  020e ae0000        	ldw	x,#0
 757  0211 cf0006        	ldw	L52_ir_process_timer,x
 758  0214               L352:
 759                     ; 235 	if (ir_release_timer == TIMER_EXPIRED)
 761  0214 c6000e        	ld	a,L12_ir_release_timer
 762  0217 a101          	cp	a,#1
 763  0219 2614          	jrne	L172
 764                     ; 237 		ir_release_timer = TIMER_STOPPED;
 766  021b 725f000e      	clr	L12_ir_release_timer
 767                     ; 238 		ir_process_timer = TIMER_STOPPED;
 769  021f ae0000        	ldw	x,#0
 770  0222 cf0008        	ldw	L52_ir_process_timer+2,x
 771  0225 ae0000        	ldw	x,#0
 772  0228 cf0006        	ldw	L52_ir_process_timer,x
 773                     ; 239 		ir_pressed = FALSE;	
 775  022b 725f0010      	clr	L51_ir_pressed
 776  022f               L172:
 777                     ; 242 	if (Key_detect_timer == TIMER_EXPIRED)
 779  022f ae0002        	ldw	x,#L72_Key_detect_timer
 780  0232 8d000000      	callf	d_ltor
 782  0236 ae0000        	ldw	x,#L22
 783  0239 8d000000      	callf	d_lcmp
 785  023d 2613          	jrne	L372
 786                     ; 244 		Conversion_Value = ADC2_GetConversionValue();
 788  023f 8d000000      	callf	f_ADC2_GetConversionValue
 790  0243 cf0000        	ldw	L13_Conversion_Value,x
 791                     ; 245 		Key_detect_timer = KEY_DETECT_TIME;
 793  0246 ae0065        	ldw	x,#101
 794  0249 cf0004        	ldw	L72_Key_detect_timer+2,x
 795  024c ae0000        	ldw	x,#0
 796  024f cf0002        	ldw	L72_Key_detect_timer,x
 797  0252               L372:
 798                     ; 247 }
 801  0252 84            	pop	a
 802  0253 87            	retf
 854                     ; 249 INTERRUPT_HANDLER(IR_IN_ISR, 3)
 854                     ; 250 {
 855                     	switch	.text
 856  0254               f_IR_IN_ISR:
 858       00000003      OFST:	set	3
 859  0254 3b0002        	push	c_x+2
 860  0257 be00          	ldw	x,c_x
 861  0259 89            	pushw	x
 862  025a 3b0002        	push	c_y+2
 863  025d be00          	ldw	x,c_y
 864  025f 89            	pushw	x
 865  0260 5203          	subw	sp,#3
 868                     ; 252 	u8 fault = FALSE;
 870  0262 0f01          	clr	(OFST-2,sp)
 871                     ; 254 	TIM2_Cmd(DISABLE);
 873  0264 4f            	clr	a
 874  0265 8d000000      	callf	f_TIM2_Cmd
 876                     ; 255 	TIM2_ClearFlag(TIM2_FLAG_UPDATE);
 878  0269 ae0001        	ldw	x,#1
 879  026c 8d000000      	callf	f_TIM2_ClearFlag
 881                     ; 256 	count = TIM2_GetCounter();
 883  0270 8d000000      	callf	f_TIM2_GetCounter
 885  0274 1f02          	ldw	(OFST-1,sp),x
 886                     ; 257 	TIM2_SetCounter(0);			
 888  0276 5f            	clrw	x
 889  0277 8d000000      	callf	f_TIM2_SetCounter
 891                     ; 258 	TIM2_Cmd(ENABLE);
 893  027b a601          	ld	a,#1
 894  027d 8d000000      	callf	f_TIM2_Cmd
 896                     ; 260 	if (count > LEADER_UPPER_LIMIT)
 898  0281 1e02          	ldw	x,(OFST-1,sp)
 899  0283 a33c8d        	cpw	x,#15501
 900  0286 2506          	jrult	L123
 901                     ; 262 		fault = TRUE;
 903  0288 a601          	ld	a,#1
 904  028a 6b01          	ld	(OFST-2,sp),a
 906  028c 2043          	jra	L323
 907  028e               L123:
 908                     ; 266 		switch (ir_state)
 910  028e c60018        	ld	a,L3_ir_state
 912                     ; 322 			default:
 912                     ; 323 				break;
 913  0291 4d            	tnz	a
 914  0292 2705          	jreq	L572
 915  0294 4a            	dec	a
 916  0295 274a          	jreq	L772
 917  0297 2038          	jra	L323
 918  0299               L572:
 919                     ; 268 			case IR_RECEIVE_HEAD:
 919                     ; 269 				if (_Compare_Count(count, LEADER_UPPER_LIMIT, LEADER_LOWER_LIMIT))
 921  0299 ae30d4        	ldw	x,#12500
 922  029c 89            	pushw	x
 923  029d ae3c8c        	ldw	x,#15500
 924  02a0 89            	pushw	x
 925  02a1 1e06          	ldw	x,(OFST+3,sp)
 926  02a3 8d000000      	callf	L33f__Compare_Count
 928  02a7 5b04          	addw	sp,#4
 929  02a9 4d            	tnz	a
 930  02aa 270a          	jreq	L133
 931                     ; 271 					ir_release_timer = IR_RELEASE_TIME;
 933  02ac 3581000e      	mov	L12_ir_release_timer,#129
 934                     ; 272 					ir_state = IR_RECEIVE_CODE;
 936  02b0 35010018      	mov	L3_ir_state,#1
 938  02b4 2017          	jra	L333
 939  02b6               L133:
 940                     ; 274 				else if (_Compare_Count(count, REPEAT_UPPER_LIMIT, REPEAT_LOWER_LIMIT))
 942  02b6 ae280a        	ldw	x,#10250
 943  02b9 89            	pushw	x
 944  02ba ae2fda        	ldw	x,#12250
 945  02bd 89            	pushw	x
 946  02be 1e06          	ldw	x,(OFST+3,sp)
 947  02c0 8d000000      	callf	L33f__Compare_Count
 949  02c4 5b04          	addw	sp,#4
 950  02c6 4d            	tnz	a
 951  02c7 2704          	jreq	L333
 952                     ; 276 					ir_release_timer = IR_RELEASE_TIME;
 954  02c9 3581000e      	mov	L12_ir_release_timer,#129
 955  02cd               L333:
 956                     ; 278 				ir_bit_number = 0;
 958  02cd 725f0017      	clr	L5_ir_bit_number
 959                     ; 279 				break;
 960  02d1               L323:
 961                     ; 326 	if (fault)
 963  02d1 0d01          	tnz	(OFST-2,sp)
 964  02d3 2604          	jrne	L23
 965  02d5 acc003c0      	jpf	L763
 966  02d9               L23:
 967                     ; 328 		ir_state = IR_RECEIVE_HEAD;
 969  02d9 725f0018      	clr	L3_ir_state
 970  02dd acc003c0      	jpf	L763
 971  02e1               L772:
 972                     ; 280 			case IR_RECEIVE_CODE:
 972                     ; 281 				if (_Compare_Count(count, HIGH_UPPER_LIMIT, HIGH_LOWER_LIMIT))
 974  02e1 ae06a4        	ldw	x,#1700
 975  02e4 89            	pushw	x
 976  02e5 ae0af0        	ldw	x,#2800
 977  02e8 89            	pushw	x
 978  02e9 1e06          	ldw	x,(OFST+3,sp)
 979  02eb 8d000000      	callf	L33f__Compare_Count
 981  02ef 5b04          	addw	sp,#4
 982  02f1 4d            	tnz	a
 983  02f2 271e          	jreq	L733
 984                     ; 283 					ir_code[ir_bit_number/8] = (ir_code[ir_bit_number/8]>>1)|0x80;
 986  02f4 c60017        	ld	a,L5_ir_bit_number
 987  02f7 44            	srl	a
 988  02f8 44            	srl	a
 989  02f9 44            	srl	a
 990  02fa 5f            	clrw	x
 991  02fb 97            	ld	xl,a
 992  02fc c60017        	ld	a,L5_ir_bit_number
 993  02ff 44            	srl	a
 994  0300 44            	srl	a
 995  0301 44            	srl	a
 996  0302 905f          	clrw	y
 997  0304 9097          	ld	yl,a
 998  0306 90d60013      	ld	a,(L7_ir_code,y)
 999  030a 44            	srl	a
1000  030b aa80          	or	a,#128
1001  030d d70013        	ld	(L7_ir_code,x),a
1003  0310 2025          	jra	L143
1004  0312               L733:
1005                     ; 285 				else if (_Compare_Count(count, LOW_UPPER_LIMIT, LOW_LOWER_LIMIT))
1007  0312 ae0320        	ldw	x,#800
1008  0315 89            	pushw	x
1009  0316 ae05aa        	ldw	x,#1450
1010  0319 89            	pushw	x
1011  031a 1e06          	ldw	x,(OFST+3,sp)
1012  031c 8d000000      	callf	L33f__Compare_Count
1014  0320 5b04          	addw	sp,#4
1015  0322 4d            	tnz	a
1016  0323 270e          	jreq	L343
1017                     ; 287 					ir_code[ir_bit_number/8] = ir_code[ir_bit_number/8]>>1;
1019  0325 c60017        	ld	a,L5_ir_bit_number
1020  0328 44            	srl	a
1021  0329 44            	srl	a
1022  032a 44            	srl	a
1023  032b 5f            	clrw	x
1024  032c 97            	ld	xl,a
1025  032d 72440013      	srl	(L7_ir_code,x)
1027  0331 2004          	jra	L143
1028  0333               L343:
1029                     ; 291 					fault = TRUE;
1031  0333 a601          	ld	a,#1
1032  0335 6b01          	ld	(OFST-2,sp),a
1033  0337               L143:
1034                     ; 293 				ir_bit_number++;
1036  0337 725c0017      	inc	L5_ir_bit_number
1037                     ; 294 				if (ir_bit_number == 32 && !fault)
1039  033b c60017        	ld	a,L5_ir_bit_number
1040  033e a120          	cp	a,#32
1041  0340 268f          	jrne	L323
1043  0342 0d01          	tnz	(OFST-2,sp)
1044  0344 268b          	jrne	L323
1045                     ; 296 					ir_state = IR_RECEIVE_HEAD;
1047  0346 725f0018      	clr	L3_ir_state
1048                     ; 297 					if (((ir_code[0] == 0x0 && ir_code[1] == 0xDF) || (ir_code[0] == 0x4F && ir_code[1] == 0x50)) 
1048                     ; 298 					&& ((ir_code[2]^ir_code[3]) == 0xFF))
1050  034a 725d0013      	tnz	L7_ir_code
1051  034e 2607          	jrne	L553
1053  0350 c60014        	ld	a,L7_ir_code+1
1054  0353 a1df          	cp	a,#223
1055  0355 270e          	jreq	L353
1056  0357               L553:
1058  0357 c60013        	ld	a,L7_ir_code
1059  035a a14f          	cp	a,#79
1060  035c 2652          	jrne	L153
1062  035e c60014        	ld	a,L7_ir_code+1
1063  0361 a150          	cp	a,#80
1064  0363 264b          	jrne	L153
1065  0365               L353:
1067  0365 c60015        	ld	a,L7_ir_code+2
1068  0368 c80016        	xor	a,L7_ir_code+3
1069  036b a1ff          	cp	a,#255
1070  036d 2641          	jrne	L153
1071                     ; 300 						if (!ir_pressed)
1073  036f 725d0010      	tnz	L51_ir_pressed
1074  0373 2704          	jreq	L43
1075  0375 acd102d1      	jpf	L323
1076  0379               L43:
1077                     ; 302 							receive_code = ir_code[2];						
1079  0379 5500150011    	mov	L31_receive_code,L7_ir_code+2
1080                     ; 303 							ir_pressed = TRUE;
1082  037e 35010010      	mov	L51_ir_pressed,#1
1083                     ; 304 							ir_fisrt_process = TRUE;
1085  0382 3501000f      	mov	L71_ir_fisrt_process,#1
1086                     ; 305 							ir_process_timer = TIMER_EXPIRED;
1088  0386 ae0001        	ldw	x,#1
1089  0389 cf0008        	ldw	L52_ir_process_timer+2,x
1090  038c ae0000        	ldw	x,#0
1091  038f cf0006        	ldw	L52_ir_process_timer,x
1092                     ; 306 							if (ir_code[0] == 0x4F && ir_code[1] == 0x50)
1094  0392 c60013        	ld	a,L7_ir_code
1095  0395 a14f          	cp	a,#79
1096  0397 260f          	jrne	L163
1098  0399 c60014        	ld	a,L7_ir_code+1
1099  039c a150          	cp	a,#80
1100  039e 2608          	jrne	L163
1101                     ; 308 								head_type = 1;
1103  03a0 35010012      	mov	L11_head_type,#1
1105  03a4 acd102d1      	jpf	L323
1106  03a8               L163:
1107                     ; 312 								head_type = 0;
1109  03a8 725f0012      	clr	L11_head_type
1110  03ac acd102d1      	jpf	L323
1111  03b0               L153:
1112                     ; 318 						fault = TRUE;
1114  03b0 a601          	ld	a,#1
1115  03b2 6b01          	ld	(OFST-2,sp),a
1116  03b4 acd102d1      	jpf	L323
1117  03b8               L103:
1118                     ; 322 			default:
1118                     ; 323 				break;
1120  03b8 acd102d1      	jpf	L323
1121  03bc               L723:
1122  03bc acd102d1      	jpf	L323
1123  03c0               L763:
1124                     ; 330 }
1127  03c0 5b03          	addw	sp,#3
1128  03c2 85            	popw	x
1129  03c3 bf00          	ldw	c_y,x
1130  03c5 320002        	pop	c_y+2
1131  03c8 85            	popw	x
1132  03c9 bf00          	ldw	c_x,x
1133  03cb 320002        	pop	c_x+2
1134  03ce 80            	iret
1175                     	switch	.const
1176  0004               L04:
1177  0004 00000002      	dc.l	2
1178                     ; 332 INTERRUPT_HANDLER(TIMER4_ISR, 23)
1178                     ; 333 {		
1179                     	switch	.text
1180  03cf               f_TIMER4_ISR:
1182  03cf 3b0002        	push	c_x+2
1183  03d2 be00          	ldw	x,c_x
1184  03d4 89            	pushw	x
1185  03d5 3b0002        	push	c_y+2
1186  03d8 be00          	ldw	x,c_y
1187  03da 89            	pushw	x
1188  03db be02          	ldw	x,c_lreg+2
1189  03dd 89            	pushw	x
1190  03de be00          	ldw	x,c_lreg
1191  03e0 89            	pushw	x
1194                     ; 334 	TIM4_Cmd(DISABLE);
1196  03e1 4f            	clr	a
1197  03e2 8d000000      	callf	f_TIM4_Cmd
1199                     ; 335 	TIM4_ClearFlag(TIM4_IT_UPDATE);
1201  03e6 a601          	ld	a,#1
1202  03e8 8d000000      	callf	f_TIM4_ClearFlag
1204                     ; 336 	nop();
1207  03ec 9d            nop
1209                     ; 337 	nop();
1213  03ed 9d            nop
1215                     ; 338 	nop();
1219  03ee 9d            nop
1221                     ; 339 	nop();
1225  03ef 9d            nop
1227                     ; 340 	nop();
1231  03f0 9d            nop
1233                     ; 341 	nop();
1237  03f1 9d            nop
1239                     ; 342 	nop();
1243  03f2 9d            nop
1245                     ; 343 	nop();
1249  03f3 9d            nop
1251                     ; 344 	nop();
1255  03f4 9d            nop
1257                     ; 345 	nop();
1261  03f5 9d            nop
1263                     ; 346 	nop();
1267  03f6 9d            nop
1269                     ; 347 	TIM4_Cmd(ENABLE);
1272  03f7 a601          	ld	a,#1
1273  03f9 8d000000      	callf	f_TIM4_Cmd
1275                     ; 349 	if (ir_release_timer > TIMER_EXPIRED)
1277  03fd c6000e        	ld	a,L12_ir_release_timer
1278  0400 a102          	cp	a,#2
1279  0402 2504          	jrult	L104
1280                     ; 351 		ir_release_timer--;
1282  0404 725a000e      	dec	L12_ir_release_timer
1283  0408               L104:
1284                     ; 353 	if (delay_timer > TIMER_EXPIRED)
1286  0408 ae000a        	ldw	x,#L32_delay_timer
1287  040b 8d000000      	callf	d_ltor
1289  040f ae0004        	ldw	x,#L04
1290  0412 8d000000      	callf	d_lcmp
1292  0416 2509          	jrult	L304
1293                     ; 355 		delay_timer--;
1295  0418 ae000a        	ldw	x,#L32_delay_timer
1296  041b a601          	ld	a,#1
1297  041d 8d000000      	callf	d_lgsbc
1299  0421               L304:
1300                     ; 357 	if (ir_process_timer > TIMER_EXPIRED)
1302  0421 ae0006        	ldw	x,#L52_ir_process_timer
1303  0424 8d000000      	callf	d_ltor
1305  0428 ae0004        	ldw	x,#L04
1306  042b 8d000000      	callf	d_lcmp
1308  042f 2509          	jrult	L504
1309                     ; 359 		ir_process_timer--;
1311  0431 ae0006        	ldw	x,#L52_ir_process_timer
1312  0434 a601          	ld	a,#1
1313  0436 8d000000      	callf	d_lgsbc
1315  043a               L504:
1316                     ; 361 	if (Key_detect_timer > TIMER_EXPIRED)
1318  043a ae0002        	ldw	x,#L72_Key_detect_timer
1319  043d 8d000000      	callf	d_ltor
1321  0441 ae0004        	ldw	x,#L04
1322  0444 8d000000      	callf	d_lcmp
1324  0448 2509          	jrult	L704
1325                     ; 363 		Key_detect_timer--;
1327  044a ae0002        	ldw	x,#L72_Key_detect_timer
1328  044d a601          	ld	a,#1
1329  044f 8d000000      	callf	d_lgsbc
1331  0453               L704:
1332                     ; 365 	SWI2C_UpdateTimer();
1334  0453 8d000000      	callf	f_SWI2C_UpdateTimer
1336                     ; 366 	System_Clock++;
1338  0457 ae0000        	ldw	x,#_System_Clock
1339  045a a601          	ld	a,#1
1340  045c 8d000000      	callf	d_lgadc
1342                     ; 367 }
1345  0460 85            	popw	x
1346  0461 bf00          	ldw	c_lreg,x
1347  0463 85            	popw	x
1348  0464 bf02          	ldw	c_lreg+2,x
1349  0466 85            	popw	x
1350  0467 bf00          	ldw	c_y,x
1351  0469 320002        	pop	c_y+2
1352  046c 85            	popw	x
1353  046d bf00          	ldw	c_x,x
1354  046f 320002        	pop	c_x+2
1355  0472 80            	iret
1388                     ; 369 void IR_DelayNMiliseconds(u16 delay)
1388                     ; 370 {
1389                     	switch	.text
1390  0473               f_IR_DelayNMiliseconds:
1394                     ; 371 	delay_timer = delay;
1396  0473 8d000000      	callf	d_uitolx
1398  0477 ae000a        	ldw	x,#L32_delay_timer
1399  047a 8d000000      	callf	d_rtol
1402  047e               L134:
1403                     ; 372 	while (delay_timer > TIMER_EXPIRED);
1405  047e ae000a        	ldw	x,#L32_delay_timer
1406  0481 8d000000      	callf	d_ltor
1408  0485 ae0004        	ldw	x,#L04
1409  0488 8d000000      	callf	d_lcmp
1411  048c 24f0          	jruge	L134
1412                     ; 373 	delay_timer = TIMER_STOPPED;
1414  048e ae0000        	ldw	x,#0
1415  0491 cf000c        	ldw	L32_delay_timer+2,x
1416  0494 ae0000        	ldw	x,#0
1417  0497 cf000a        	ldw	L32_delay_timer,x
1418                     ; 374 }
1421  049a 87            	retf
1538                     	switch	.bss
1539  0000               L13_Conversion_Value:
1540  0000 0000          	ds.b	2
1541  0002               L72_Key_detect_timer:
1542  0002 00000000      	ds.b	4
1543  0006               L52_ir_process_timer:
1544  0006 00000000      	ds.b	4
1545  000a               L32_delay_timer:
1546  000a 00000000      	ds.b	4
1547  000e               L12_ir_release_timer:
1548  000e 00            	ds.b	1
1549  000f               L71_ir_fisrt_process:
1550  000f 00            	ds.b	1
1551  0010               L51_ir_pressed:
1552  0010 00            	ds.b	1
1553  0011               L31_receive_code:
1554  0011 00            	ds.b	1
1555  0012               L11_head_type:
1556  0012 00            	ds.b	1
1557  0013               L7_ir_code:
1558  0013 00000000      	ds.b	4
1559  0017               L5_ir_bit_number:
1560  0017 00            	ds.b	1
1561  0018               L3_ir_state:
1562  0018 00            	ds.b	1
1563                     	xref	f_SWI2C_UpdateTimer
1564                     	xref	f_SWI2C_Set_deep
1565                     	xref	f_SWI2C_Toggle3DOnOff
1566                     	xref	f_SWI2C_ToggleI2CMode
1567                     	xref	f_SWI2C_ProcessPower
1568                     	xdef	_System_Clock
1569                     	xdef	f_TIMER4_ISR
1570                     	xdef	f_IR_IN_ISR
1571                     	xdef	f_IR_DelayNMiliseconds
1572                     	xdef	f_IR_Update
1573                     	xdef	f_Timer_Init
1574                     	xdef	f_IR_IN_Init
1575                     	xref	f_ADC2_GetConversionValue
1576                     	xref	f_ADC2_StartConversion
1577                     	xref	f_ADC2_Init
1578                     	xref	f_TIM4_ClearFlag
1579                     	xref	f_TIM4_ITConfig
1580                     	xref	f_TIM4_Cmd
1581                     	xref	f_TIM4_TimeBaseInit
1582                     	xref	f_TIM2_ClearFlag
1583                     	xref	f_TIM2_GetCounter
1584                     	xref	f_TIM2_SetCounter
1585                     	xref	f_TIM2_Cmd
1586                     	xref	f_TIM2_TimeBaseInit
1587                     	xref	f_EXTI_SetExtIntSensitivity
1588                     	xref	f_GPIO_Init
1589                     	xref.b	c_lreg
1590                     	xref.b	c_x
1591                     	xref.b	c_y
1611                     	xref	d_rtol
1612                     	xref	d_uitolx
1613                     	xref	d_lgadc
1614                     	xref	d_lgsbc
1615                     	xref	d_lcmp
1616                     	xref	d_ltor
1617                     	end
