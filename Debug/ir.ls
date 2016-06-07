   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  15                     	switch	.data
  16  0000               _System_Clock:
  17  0000 00000000      	dc.l	0
  69                     ; 96 static u8 _Compare_Count(u16 a, u16 max, u16 min)
  69                     ; 97 {
  70                     	switch	.text
  71  0000               L33f__Compare_Count:
  73  0000 89            	pushw	x
  74       00000000      OFST:	set	0
  77                     ; 98 	return (a < max && a > min);
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
 115                     ; 101 static u8 _convert_IR(void)
 115                     ; 102 {
 116                     	switch	.text
 117  0010               L36f__convert_IR:
 121                     ; 103 	if (head_type)
 123  0010 725d0012      	tnz	L11_head_type
 124  0014 2758          	jreq	L561
 125                     ; 105 		switch (receive_code)
 127  0016 c60011        	ld	a,L31_receive_code
 129                     ; 120 			default:
 129                     ; 121 				return KEY_DUMMY;
 130  0019 4d            	tnz	a
 131  001a 272c          	jreq	L56
 132  001c 4a            	dec	a
 133  001d 272b          	jreq	L76
 134  001f 4a            	dec	a
 135  0020 272b          	jreq	L17
 136  0022 4a            	dec	a
 137  0023 272b          	jreq	L37
 138  0025 4a            	dec	a
 139  0026 272b          	jreq	L57
 140  0028 4a            	dec	a
 141  0029 272b          	jreq	L77
 142  002b a053          	sub	a,#83
 143  002d 273c          	jreq	L511
 144  002f a01d          	sub	a,#29
 145  0031 272f          	jreq	L701
 146  0033 a04b          	sub	a,#75
 147  0035 2725          	jreq	L301
 148  0037 4a            	dec	a
 149  0038 272b          	jreq	L111
 150  003a a002          	sub	a,#2
 151  003c 2721          	jreq	L501
 152  003e 4a            	dec	a
 153  003f 2727          	jreq	L311
 154  0041 a003          	sub	a,#3
 155  0043 2714          	jreq	L101
 156  0045               L711:
 159  0045 a6ff          	ld	a,#255
 162  0047 87            	retf
 163  0048               L56:
 164                     ; 107 			case 0x0: 		return KEY_DEEP_0;
 166  0048 4f            	clr	a
 169  0049 87            	retf
 170  004a               L76:
 171                     ; 108 			case 0x1: 		return KEY_DEEP_1;
 173  004a a601          	ld	a,#1
 176  004c 87            	retf
 177  004d               L17:
 178                     ; 109 			case 0x2: 		return KEY_DEEP_2;
 180  004d a602          	ld	a,#2
 183  004f 87            	retf
 184  0050               L37:
 185                     ; 110 			case 0x3: 		return KEY_DEEP_3;
 187  0050 a603          	ld	a,#3
 190  0052 87            	retf
 191  0053               L57:
 192                     ; 111 			case 0x4: 		return KEY_DEEP_4;
 194  0053 a604          	ld	a,#4
 197  0055 87            	retf
 198  0056               L77:
 199                     ; 112 			case 0x5: 		return KEY_DEEP_5;
 201  0056 a605          	ld	a,#5
 204  0058 87            	retf
 205  0059               L101:
 206                     ; 113 			case 0xC7:		return KEY_POWER;
 208  0059 a606          	ld	a,#6
 211  005b 87            	retf
 212  005c               L301:
 213                     ; 114 			case 0xC0: 		return KEY_PC;
 215  005c a609          	ld	a,#9
 218  005e 87            	retf
 219  005f               L501:
 220                     ; 115 			case 0xC3: 		return KEY_HDMI;
 222  005f a60a          	ld	a,#10
 225  0061 87            	retf
 226  0062               L701:
 227                     ; 116 			case 0x75: 		return KEY_ONOFF_3D;
 229  0062 a607          	ld	a,#7
 232  0064 87            	retf
 233  0065               L111:
 234                     ; 117 			case 0xC1: 		return KEY_DEBUG;
 236  0065 a611          	ld	a,#17
 239  0067 87            	retf
 240  0068               L311:
 241                     ; 118 			case 0xC4:		return KEY_RESET_HDMI;
 243  0068 a60f          	ld	a,#15
 246  006a 87            	retf
 247  006b               L511:
 248                     ; 119 			case 0x58:		return KEY_RESET_FPGA;
 250  006b a610          	ld	a,#16
 253  006d 87            	retf
 254  006e               L561:
 255                     ; 126 		switch (receive_code)
 257  006e c60011        	ld	a,L31_receive_code
 259                     ; 141 			default:
 259                     ; 142 				return KEY_DUMMY;
 260  0071 4a            	dec	a
 261  0072 274e          	jreq	L541
 262  0074 a007          	sub	a,#7
 263  0076 274d          	jreq	L741
 264  0078 a008          	sub	a,#8
 265  007a 2729          	jreq	L121
 266  007c a002          	sub	a,#2
 267  007e 2733          	jreq	L331
 268  0080 a003          	sub	a,#3
 269  0082 2729          	jreq	L721
 270  0084 4a            	dec	a
 271  0085 2723          	jreq	L521
 272  0087 a006          	sub	a,#6
 273  0089 272b          	jreq	L531
 274  008b a003          	sub	a,#3
 275  008d 2739          	jreq	L151
 276  008f a031          	sub	a,#49
 277  0091 271d          	jreq	L131
 278  0093 a004          	sub	a,#4
 279  0095 2710          	jreq	L321
 280  0097 a002          	sub	a,#2
 281  0099 271e          	jreq	L731
 282  009b 4a            	dec	a
 283  009c 271e          	jreq	L141
 284  009e a004          	sub	a,#4
 285  00a0 271d          	jreq	L341
 286  00a2               L351:
 289  00a2 a6ff          	ld	a,#255
 292  00a4 87            	retf
 293  00a5               L121:
 294                     ; 128 			case 0x10: 		return KEY_DEEP_0;
 296  00a5 4f            	clr	a
 299  00a6 87            	retf
 300  00a7               L321:
 301                     ; 129 			case 0x54: 		return KEY_DEEP_1;
 303  00a7 a601          	ld	a,#1
 306  00a9 87            	retf
 307  00aa               L521:
 308                     ; 130 			case 0x16: 		return KEY_DEEP_2;
 310  00aa a602          	ld	a,#2
 313  00ac 87            	retf
 314  00ad               L721:
 315                     ; 131 			case 0x15: 		return KEY_DEEP_3;
 317  00ad a603          	ld	a,#3
 320  00af 87            	retf
 321  00b0               L131:
 322                     ; 132 			case 0x50: 		return KEY_DEEP_4;
 324  00b0 a604          	ld	a,#4
 327  00b2 87            	retf
 328  00b3               L331:
 329                     ; 133 			case 0x12: 		return KEY_DEEP_5;
 331  00b3 a605          	ld	a,#5
 334  00b5 87            	retf
 335  00b6               L531:
 336                     ; 134 			case 0x1C: 		return KEY_POWER;
 338  00b6 a606          	ld	a,#6
 341  00b8 87            	retf
 342  00b9               L731:
 343                     ; 135 			case 0x56: 		return KEY_PC;
 345  00b9 a609          	ld	a,#9
 348  00bb 87            	retf
 349  00bc               L141:
 350                     ; 136 			case 0x57: 		return KEY_HDMI;
 352  00bc a60a          	ld	a,#10
 355  00be 87            	retf
 356  00bf               L341:
 357                     ; 137 			case 0x5B: 		return KEY_ONOFF_3D;
 359  00bf a607          	ld	a,#7
 362  00c1 87            	retf
 363  00c2               L541:
 364                     ; 138 			case 0x01: 		return KEY_DEBUG;		
 366  00c2 a611          	ld	a,#17
 369  00c4 87            	retf
 370  00c5               L741:
 371                     ; 139 			case 0x08:		return KEY_RESET_HDMI;
 373  00c5 a60f          	ld	a,#15
 376  00c7 87            	retf
 377  00c8               L151:
 378                     ; 140 			case 0x1F:		return KEY_RESET_FPGA;
 380  00c8 a610          	ld	a,#16
 383  00ca 87            	retf
 415                     ; 147 void IR_IN_Init(void)
 415                     ; 148 {	
 416                     	switch	.text
 417  00cb               f_IR_IN_Init:
 421                     ; 149 	GPIO_Init(IR_IN_PORT, IR_IN_PIN, GPIO_MODE_IN_FL_IT);
 423  00cb 4b20          	push	#32
 424  00cd 4b40          	push	#64
 425  00cf ae5000        	ldw	x,#20480
 426  00d2 8d000000      	callf	f_GPIO_Init
 428  00d6 85            	popw	x
 429                     ; 150 	EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOA, EXTI_SENSITIVITY_FALL_ONLY);
 431  00d7 ae0002        	ldw	x,#2
 432  00da 4f            	clr	a
 433  00db 95            	ld	xh,a
 434  00dc 8d000000      	callf	f_EXTI_SetExtIntSensitivity
 436                     ; 152 	TIM2_TimeBaseInit(TIM2_PRESCALER_16, 0xffff);
 438  00e0 aeffff        	ldw	x,#65535
 439  00e3 89            	pushw	x
 440  00e4 a604          	ld	a,#4
 441  00e6 8d000000      	callf	f_TIM2_TimeBaseInit
 443  00ea 85            	popw	x
 444                     ; 153 	TIM2_Cmd(ENABLE); 
 446  00eb a601          	ld	a,#1
 447  00ed 8d000000      	callf	f_TIM2_Cmd
 449                     ; 155 	GPIO_Init(KEY_IN_PORT, KEY_IN_PIN, GPIO_MODE_IN_FL_NO_IT);
 451  00f1 4b00          	push	#0
 452  00f3 4b80          	push	#128
 453  00f5 ae5005        	ldw	x,#20485
 454  00f8 8d000000      	callf	f_GPIO_Init
 456  00fc 85            	popw	x
 457                     ; 156 	ADC2_Init(ADC2_CONVERSIONMODE_CONTINUOUS, ADC2_CHANNEL_7, ADC2_PRESSEL_FCPU_D2,\
 457                     ; 157 					ADC2_EXTTRIG_TIM, DISABLE, ADC2_ALIGN_RIGHT, ADC2_SCHMITTTRIG_CHANNEL7, DISABLE);
 459  00fd 4b00          	push	#0
 460  00ff 4b07          	push	#7
 461  0101 4b08          	push	#8
 462  0103 4b00          	push	#0
 463  0105 4b00          	push	#0
 464  0107 4b00          	push	#0
 465  0109 ae0007        	ldw	x,#7
 466  010c a601          	ld	a,#1
 467  010e 95            	ld	xh,a
 468  010f 8d000000      	callf	f_ADC2_Init
 470  0113 5b06          	addw	sp,#6
 471                     ; 159 	ADC2_StartConversion();
 473  0115 8d000000      	callf	f_ADC2_StartConversion
 475                     ; 161 	ir_state = IR_RECEIVE_HEAD;
 477  0119 725f0018      	clr	L3_ir_state
 478                     ; 162 	ir_pressed = FALSE;	
 480  011d 725f0010      	clr	L51_ir_pressed
 481                     ; 163 	ir_fisrt_process = FALSE;
 483  0121 725f000f      	clr	L71_ir_fisrt_process
 484                     ; 164 	receive_code = IRKEY_DUMY;	
 486  0125 35ff0011      	mov	L31_receive_code,#255
 487                     ; 171 }
 490  0129 87            	retf
 519                     ; 173 void Timer_Init(void)
 519                     ; 174 {
 520                     	switch	.text
 521  012a               f_Timer_Init:
 525                     ; 175 	TIM4_TimeBaseInit(TIM4_PRESCALER_128, 125);
 527  012a ae007d        	ldw	x,#125
 528  012d a607          	ld	a,#7
 529  012f 95            	ld	xh,a
 530  0130 8d000000      	callf	f_TIM4_TimeBaseInit
 532                     ; 176 	TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
 534  0134 ae0001        	ldw	x,#1
 535  0137 a601          	ld	a,#1
 536  0139 95            	ld	xh,a
 537  013a 8d000000      	callf	f_TIM4_ITConfig
 539                     ; 177 	TIM4_Cmd(ENABLE); 
 541  013e a601          	ld	a,#1
 542  0140 8d000000      	callf	f_TIM4_Cmd
 544                     ; 179 	ir_release_timer = TIMER_STOPPED;
 546  0144 725f000e      	clr	L12_ir_release_timer
 547                     ; 180 	delay_timer = TIMER_STOPPED;
 549  0148 ae0000        	ldw	x,#0
 550  014b cf000c        	ldw	L32_delay_timer+2,x
 551  014e ae0000        	ldw	x,#0
 552  0151 cf000a        	ldw	L32_delay_timer,x
 553                     ; 181 	ir_process_timer = TIMER_STOPPED;
 555  0154 ae0000        	ldw	x,#0
 556  0157 cf0008        	ldw	L52_ir_process_timer+2,x
 557  015a ae0000        	ldw	x,#0
 558  015d cf0006        	ldw	L52_ir_process_timer,x
 559                     ; 182 	Key_detect_timer = TIMER_EXPIRED;
 561  0160 ae0001        	ldw	x,#1
 562  0163 cf0004        	ldw	L72_Key_detect_timer+2,x
 563  0166 ae0000        	ldw	x,#0
 564  0169 cf0002        	ldw	L72_Key_detect_timer,x
 565                     ; 183 }
 568  016c 87            	retf
 570                     	switch	.data
 571  0004               L122_value_debug:
 572  0004 00            	dc.b	0
 615                     .const:	section	.text
 616  0000               L22:
 617  0000 00000001      	dc.l	1
 618                     ; 186 void IR_Update(void)
 618                     ; 187 {
 619                     	switch	.text
 620  016d               f_IR_Update:
 622  016d 88            	push	a
 623       00000001      OFST:	set	1
 626                     ; 188 	if (ir_pressed)
 628  016e 725d0010      	tnz	L51_ir_pressed
 629  0172 2604          	jrne	L42
 630  0174 ac2f022f      	jpf	L362
 631  0178               L42:
 632                     ; 190 		if (ir_process_timer == TIMER_EXPIRED)
 634  0178 ae0006        	ldw	x,#L52_ir_process_timer
 635  017b 8d000000      	callf	d_ltor
 637  017f ae0000        	ldw	x,#L22
 638  0182 8d000000      	callf	d_lcmp
 640  0186 2704          	jreq	L62
 641  0188 ac2f022f      	jpf	L362
 642  018c               L62:
 643                     ; 192 			u8 ir_key = _convert_IR();
 645  018c 8d100010      	callf	L36f__convert_IR
 647  0190 6b01          	ld	(OFST+0,sp),a
 648                     ; 193 			switch (ir_key)
 650  0192 7b01          	ld	a,(OFST+0,sp)
 652                     ; 230 				default:
 652                     ; 231 					break;
 653  0194 4d            	tnz	a
 654  0195 2725          	jreq	L722
 655  0197 4a            	dec	a
 656  0198 2729          	jreq	L132
 657  019a 4a            	dec	a
 658  019b 272e          	jreq	L332
 659  019d 4a            	dec	a
 660  019e 2733          	jreq	L532
 661  01a0 4a            	dec	a
 662  01a1 2738          	jreq	L732
 663  01a3 4a            	dec	a
 664  01a4 273d          	jreq	L142
 665  01a6 4a            	dec	a
 666  01a7 2742          	jreq	L342
 667  01a9 4a            	dec	a
 668  01aa 270a          	jreq	L522
 669  01ac a00a          	sub	a,#10
 670  01ae 263f          	jrne	L172
 671                     ; 195 				case KEY_DEBUG:
 671                     ; 196 					SWI2C_ToggleI2CMode();
 673  01b0 8d000000      	callf	f_SWI2C_ToggleI2CMode
 675                     ; 197 					break;
 677  01b4 2039          	jra	L172
 678  01b6               L522:
 679                     ; 198 				case KEY_ONOFF_3D:
 679                     ; 199 					SWI2C_Toggle3DOnOff();
 681  01b6 8d000000      	callf	f_SWI2C_Toggle3DOnOff
 683                     ; 200 					break;
 685  01ba 2033          	jra	L172
 686  01bc               L722:
 687                     ; 201 				case KEY_DEEP_0:
 687                     ; 202 					SWI2C_Set_deep(0);
 689  01bc 4f            	clr	a
 690  01bd 8d000000      	callf	f_SWI2C_Set_deep
 692                     ; 203 					break;
 694  01c1 202c          	jra	L172
 695  01c3               L132:
 696                     ; 204 				case KEY_DEEP_1:
 696                     ; 205 					SWI2C_Set_deep(1);
 698  01c3 a601          	ld	a,#1
 699  01c5 8d000000      	callf	f_SWI2C_Set_deep
 701                     ; 206 					break;
 703  01c9 2024          	jra	L172
 704  01cb               L332:
 705                     ; 207 				case KEY_DEEP_2:
 705                     ; 208 					SWI2C_Set_deep(2);
 707  01cb a602          	ld	a,#2
 708  01cd 8d000000      	callf	f_SWI2C_Set_deep
 710                     ; 209 					break;
 712  01d1 201c          	jra	L172
 713  01d3               L532:
 714                     ; 210 				case KEY_DEEP_3:
 714                     ; 211 					SWI2C_Set_deep(3);
 716  01d3 a603          	ld	a,#3
 717  01d5 8d000000      	callf	f_SWI2C_Set_deep
 719                     ; 212 					break;
 721  01d9 2014          	jra	L172
 722  01db               L732:
 723                     ; 213 				case KEY_DEEP_4:
 723                     ; 214 					SWI2C_Set_deep(4);
 725  01db a604          	ld	a,#4
 726  01dd 8d000000      	callf	f_SWI2C_Set_deep
 728                     ; 215 					break;
 730  01e1 200c          	jra	L172
 731  01e3               L142:
 732                     ; 216 				case KEY_DEEP_5:
 732                     ; 217 					SWI2C_Set_deep(5);
 734  01e3 a605          	ld	a,#5
 735  01e5 8d000000      	callf	f_SWI2C_Set_deep
 737                     ; 218 					break;
 739  01e9 2004          	jra	L172
 740  01eb               L342:
 741                     ; 219 				case KEY_POWER:
 741                     ; 220 					SWI2C_ProcessPower();
 743  01eb 8d000000      	callf	f_SWI2C_ProcessPower
 745                     ; 221 					break;
 747  01ef               L542:
 748                     ; 230 				default:
 748                     ; 231 					break;
 750  01ef               L172:
 751                     ; 233 			if (ir_key != KEY_VOLUME_PLUS && ir_key != KEY_VOLUME_MINUS && ir_key != KEY_LEFT &&ir_key != KEY_RIGHT)
 753  01ef 7b01          	ld	a,(OFST+0,sp)
 754  01f1 a10b          	cp	a,#11
 755  01f3 2716          	jreq	L372
 757  01f5 7b01          	ld	a,(OFST+0,sp)
 758  01f7 a10c          	cp	a,#12
 759  01f9 2710          	jreq	L372
 761  01fb 7b01          	ld	a,(OFST+0,sp)
 762  01fd a10d          	cp	a,#13
 763  01ff 270a          	jreq	L372
 765  0201 7b01          	ld	a,(OFST+0,sp)
 766  0203 a10e          	cp	a,#14
 767  0205 2704          	jreq	L372
 768                     ; 235 				receive_code = IRKEY_DUMY;
 770  0207 35ff0011      	mov	L31_receive_code,#255
 771  020b               L372:
 772                     ; 237 			if (ir_fisrt_process)
 774  020b 725d000f      	tnz	L71_ir_fisrt_process
 775  020f 2712          	jreq	L572
 776                     ; 239 				ir_fisrt_process = FALSE;
 778  0211 725f000f      	clr	L71_ir_fisrt_process
 779                     ; 240 				ir_process_timer = 500 + 1;
 781  0215 ae01f5        	ldw	x,#501
 782  0218 cf0008        	ldw	L52_ir_process_timer+2,x
 783  021b ae0000        	ldw	x,#0
 784  021e cf0006        	ldw	L52_ir_process_timer,x
 786  0221 200c          	jra	L362
 787  0223               L572:
 788                     ; 244 				ir_process_timer = 50 + 1;
 790  0223 ae0033        	ldw	x,#51
 791  0226 cf0008        	ldw	L52_ir_process_timer+2,x
 792  0229 ae0000        	ldw	x,#0
 793  022c cf0006        	ldw	L52_ir_process_timer,x
 794  022f               L362:
 795                     ; 249 	if (ir_release_timer == TIMER_EXPIRED)
 797  022f c6000e        	ld	a,L12_ir_release_timer
 798  0232 a101          	cp	a,#1
 799  0234 2614          	jrne	L103
 800                     ; 251 		ir_release_timer = TIMER_STOPPED;
 802  0236 725f000e      	clr	L12_ir_release_timer
 803                     ; 252 		ir_process_timer = TIMER_STOPPED;
 805  023a ae0000        	ldw	x,#0
 806  023d cf0008        	ldw	L52_ir_process_timer+2,x
 807  0240 ae0000        	ldw	x,#0
 808  0243 cf0006        	ldw	L52_ir_process_timer,x
 809                     ; 253 		ir_pressed = FALSE;	
 811  0246 725f0010      	clr	L51_ir_pressed
 812  024a               L103:
 813                     ; 256 	if (Key_detect_timer == TIMER_EXPIRED)
 815  024a ae0002        	ldw	x,#L72_Key_detect_timer
 816  024d 8d000000      	callf	d_ltor
 818  0251 ae0000        	ldw	x,#L22
 819  0254 8d000000      	callf	d_lcmp
 821  0258 2613          	jrne	L303
 822                     ; 258 		Conversion_Value = ADC2_GetConversionValue();
 824  025a 8d000000      	callf	f_ADC2_GetConversionValue
 826  025e cf0000        	ldw	L13_Conversion_Value,x
 827                     ; 259 		Key_detect_timer = KEY_DETECT_TIME;
 829  0261 ae0065        	ldw	x,#101
 830  0264 cf0004        	ldw	L72_Key_detect_timer+2,x
 831  0267 ae0000        	ldw	x,#0
 832  026a cf0002        	ldw	L72_Key_detect_timer,x
 833  026d               L303:
 834                     ; 261 }
 837  026d 84            	pop	a
 838  026e 87            	retf
 890                     ; 263 INTERRUPT_HANDLER(IR_IN_ISR, 3)
 890                     ; 264 {
 891                     	switch	.text
 892  026f               f_IR_IN_ISR:
 894       00000003      OFST:	set	3
 895  026f 3b0002        	push	c_x+2
 896  0272 be00          	ldw	x,c_x
 897  0274 89            	pushw	x
 898  0275 3b0002        	push	c_y+2
 899  0278 be00          	ldw	x,c_y
 900  027a 89            	pushw	x
 901  027b 5203          	subw	sp,#3
 904                     ; 266 	u8 fault = FALSE;
 906  027d 0f01          	clr	(OFST-2,sp)
 907                     ; 268 	TIM2_Cmd(DISABLE);
 909  027f 4f            	clr	a
 910  0280 8d000000      	callf	f_TIM2_Cmd
 912                     ; 269 	TIM2_ClearFlag(TIM2_FLAG_UPDATE);
 914  0284 ae0001        	ldw	x,#1
 915  0287 8d000000      	callf	f_TIM2_ClearFlag
 917                     ; 270 	count = TIM2_GetCounter();
 919  028b 8d000000      	callf	f_TIM2_GetCounter
 921  028f 1f02          	ldw	(OFST-1,sp),x
 922                     ; 271 	TIM2_SetCounter(0);			
 924  0291 5f            	clrw	x
 925  0292 8d000000      	callf	f_TIM2_SetCounter
 927                     ; 272 	TIM2_Cmd(ENABLE);
 929  0296 a601          	ld	a,#1
 930  0298 8d000000      	callf	f_TIM2_Cmd
 932                     ; 274 	if (count > LEADER_UPPER_LIMIT)
 934  029c 1e02          	ldw	x,(OFST-1,sp)
 935  029e a33c8d        	cpw	x,#15501
 936  02a1 2506          	jrult	L133
 937                     ; 276 		fault = TRUE;
 939  02a3 a601          	ld	a,#1
 940  02a5 6b01          	ld	(OFST-2,sp),a
 942  02a7 2043          	jra	L333
 943  02a9               L133:
 944                     ; 280 		switch (ir_state)
 946  02a9 c60018        	ld	a,L3_ir_state
 948                     ; 336 			default:
 948                     ; 337 				break;
 949  02ac 4d            	tnz	a
 950  02ad 2705          	jreq	L503
 951  02af 4a            	dec	a
 952  02b0 274a          	jreq	L703
 953  02b2 2038          	jra	L333
 954  02b4               L503:
 955                     ; 282 			case IR_RECEIVE_HEAD:
 955                     ; 283 				if (_Compare_Count(count, LEADER_UPPER_LIMIT, LEADER_LOWER_LIMIT))
 957  02b4 ae30d4        	ldw	x,#12500
 958  02b7 89            	pushw	x
 959  02b8 ae3c8c        	ldw	x,#15500
 960  02bb 89            	pushw	x
 961  02bc 1e06          	ldw	x,(OFST+3,sp)
 962  02be 8d000000      	callf	L33f__Compare_Count
 964  02c2 5b04          	addw	sp,#4
 965  02c4 4d            	tnz	a
 966  02c5 270a          	jreq	L143
 967                     ; 285 					ir_release_timer = IR_RELEASE_TIME;
 969  02c7 3581000e      	mov	L12_ir_release_timer,#129
 970                     ; 286 					ir_state = IR_RECEIVE_CODE;
 972  02cb 35010018      	mov	L3_ir_state,#1
 974  02cf 2017          	jra	L343
 975  02d1               L143:
 976                     ; 288 				else if (_Compare_Count(count, REPEAT_UPPER_LIMIT, REPEAT_LOWER_LIMIT))
 978  02d1 ae280a        	ldw	x,#10250
 979  02d4 89            	pushw	x
 980  02d5 ae2fda        	ldw	x,#12250
 981  02d8 89            	pushw	x
 982  02d9 1e06          	ldw	x,(OFST+3,sp)
 983  02db 8d000000      	callf	L33f__Compare_Count
 985  02df 5b04          	addw	sp,#4
 986  02e1 4d            	tnz	a
 987  02e2 2704          	jreq	L343
 988                     ; 290 					ir_release_timer = IR_RELEASE_TIME;
 990  02e4 3581000e      	mov	L12_ir_release_timer,#129
 991  02e8               L343:
 992                     ; 292 				ir_bit_number = 0;
 994  02e8 725f0017      	clr	L5_ir_bit_number
 995                     ; 293 				break;
 996  02ec               L333:
 997                     ; 340 	if (fault)
 999  02ec 0d01          	tnz	(OFST-2,sp)
1000  02ee 2604          	jrne	L23
1001  02f0 acdb03db      	jpf	L773
1002  02f4               L23:
1003                     ; 342 		ir_state = IR_RECEIVE_HEAD;
1005  02f4 725f0018      	clr	L3_ir_state
1006  02f8 acdb03db      	jpf	L773
1007  02fc               L703:
1008                     ; 294 			case IR_RECEIVE_CODE:
1008                     ; 295 				if (_Compare_Count(count, HIGH_UPPER_LIMIT, HIGH_LOWER_LIMIT))
1010  02fc ae06a4        	ldw	x,#1700
1011  02ff 89            	pushw	x
1012  0300 ae0af0        	ldw	x,#2800
1013  0303 89            	pushw	x
1014  0304 1e06          	ldw	x,(OFST+3,sp)
1015  0306 8d000000      	callf	L33f__Compare_Count
1017  030a 5b04          	addw	sp,#4
1018  030c 4d            	tnz	a
1019  030d 271e          	jreq	L743
1020                     ; 297 					ir_code[ir_bit_number/8] = (ir_code[ir_bit_number/8]>>1)|0x80;
1022  030f c60017        	ld	a,L5_ir_bit_number
1023  0312 44            	srl	a
1024  0313 44            	srl	a
1025  0314 44            	srl	a
1026  0315 5f            	clrw	x
1027  0316 97            	ld	xl,a
1028  0317 c60017        	ld	a,L5_ir_bit_number
1029  031a 44            	srl	a
1030  031b 44            	srl	a
1031  031c 44            	srl	a
1032  031d 905f          	clrw	y
1033  031f 9097          	ld	yl,a
1034  0321 90d60013      	ld	a,(L7_ir_code,y)
1035  0325 44            	srl	a
1036  0326 aa80          	or	a,#128
1037  0328 d70013        	ld	(L7_ir_code,x),a
1039  032b 2025          	jra	L153
1040  032d               L743:
1041                     ; 299 				else if (_Compare_Count(count, LOW_UPPER_LIMIT, LOW_LOWER_LIMIT))
1043  032d ae0320        	ldw	x,#800
1044  0330 89            	pushw	x
1045  0331 ae05aa        	ldw	x,#1450
1046  0334 89            	pushw	x
1047  0335 1e06          	ldw	x,(OFST+3,sp)
1048  0337 8d000000      	callf	L33f__Compare_Count
1050  033b 5b04          	addw	sp,#4
1051  033d 4d            	tnz	a
1052  033e 270e          	jreq	L353
1053                     ; 301 					ir_code[ir_bit_number/8] = ir_code[ir_bit_number/8]>>1;
1055  0340 c60017        	ld	a,L5_ir_bit_number
1056  0343 44            	srl	a
1057  0344 44            	srl	a
1058  0345 44            	srl	a
1059  0346 5f            	clrw	x
1060  0347 97            	ld	xl,a
1061  0348 72440013      	srl	(L7_ir_code,x)
1063  034c 2004          	jra	L153
1064  034e               L353:
1065                     ; 305 					fault = TRUE;
1067  034e a601          	ld	a,#1
1068  0350 6b01          	ld	(OFST-2,sp),a
1069  0352               L153:
1070                     ; 307 				ir_bit_number++;
1072  0352 725c0017      	inc	L5_ir_bit_number
1073                     ; 308 				if (ir_bit_number == 32 && !fault)
1075  0356 c60017        	ld	a,L5_ir_bit_number
1076  0359 a120          	cp	a,#32
1077  035b 268f          	jrne	L333
1079  035d 0d01          	tnz	(OFST-2,sp)
1080  035f 268b          	jrne	L333
1081                     ; 310 					ir_state = IR_RECEIVE_HEAD;
1083  0361 725f0018      	clr	L3_ir_state
1084                     ; 311 					if (((ir_code[0] == 0x0 && ir_code[1] == 0xDF) || (ir_code[0] == 0x4F && ir_code[1] == 0x50)) 
1084                     ; 312 					&& ((ir_code[2]^ir_code[3]) == 0xFF))
1086  0365 725d0013      	tnz	L7_ir_code
1087  0369 2607          	jrne	L563
1089  036b c60014        	ld	a,L7_ir_code+1
1090  036e a1df          	cp	a,#223
1091  0370 270e          	jreq	L363
1092  0372               L563:
1094  0372 c60013        	ld	a,L7_ir_code
1095  0375 a14f          	cp	a,#79
1096  0377 2652          	jrne	L163
1098  0379 c60014        	ld	a,L7_ir_code+1
1099  037c a150          	cp	a,#80
1100  037e 264b          	jrne	L163
1101  0380               L363:
1103  0380 c60015        	ld	a,L7_ir_code+2
1104  0383 c80016        	xor	a,L7_ir_code+3
1105  0386 a1ff          	cp	a,#255
1106  0388 2641          	jrne	L163
1107                     ; 314 						if (!ir_pressed)
1109  038a 725d0010      	tnz	L51_ir_pressed
1110  038e 2704          	jreq	L43
1111  0390 acec02ec      	jpf	L333
1112  0394               L43:
1113                     ; 316 							receive_code = ir_code[2];						
1115  0394 5500150011    	mov	L31_receive_code,L7_ir_code+2
1116                     ; 317 							ir_pressed = TRUE;
1118  0399 35010010      	mov	L51_ir_pressed,#1
1119                     ; 318 							ir_fisrt_process = TRUE;
1121  039d 3501000f      	mov	L71_ir_fisrt_process,#1
1122                     ; 319 							ir_process_timer = TIMER_EXPIRED;
1124  03a1 ae0001        	ldw	x,#1
1125  03a4 cf0008        	ldw	L52_ir_process_timer+2,x
1126  03a7 ae0000        	ldw	x,#0
1127  03aa cf0006        	ldw	L52_ir_process_timer,x
1128                     ; 320 							if (ir_code[0] == 0x4F && ir_code[1] == 0x50)
1130  03ad c60013        	ld	a,L7_ir_code
1131  03b0 a14f          	cp	a,#79
1132  03b2 260f          	jrne	L173
1134  03b4 c60014        	ld	a,L7_ir_code+1
1135  03b7 a150          	cp	a,#80
1136  03b9 2608          	jrne	L173
1137                     ; 322 								head_type = 1;
1139  03bb 35010012      	mov	L11_head_type,#1
1141  03bf acec02ec      	jpf	L333
1142  03c3               L173:
1143                     ; 326 								head_type = 0;
1145  03c3 725f0012      	clr	L11_head_type
1146  03c7 acec02ec      	jpf	L333
1147  03cb               L163:
1148                     ; 332 						fault = TRUE;
1150  03cb a601          	ld	a,#1
1151  03cd 6b01          	ld	(OFST-2,sp),a
1152  03cf acec02ec      	jpf	L333
1153  03d3               L113:
1154                     ; 336 			default:
1154                     ; 337 				break;
1156  03d3 acec02ec      	jpf	L333
1157  03d7               L733:
1158  03d7 acec02ec      	jpf	L333
1159  03db               L773:
1160                     ; 344 }
1163  03db 5b03          	addw	sp,#3
1164  03dd 85            	popw	x
1165  03de bf00          	ldw	c_y,x
1166  03e0 320002        	pop	c_y+2
1167  03e3 85            	popw	x
1168  03e4 bf00          	ldw	c_x,x
1169  03e6 320002        	pop	c_x+2
1170  03e9 80            	iret
1211                     	switch	.const
1212  0004               L04:
1213  0004 00000002      	dc.l	2
1214                     ; 346 INTERRUPT_HANDLER(TIMER4_ISR, 23)
1214                     ; 347 {		
1215                     	switch	.text
1216  03ea               f_TIMER4_ISR:
1218  03ea 3b0002        	push	c_x+2
1219  03ed be00          	ldw	x,c_x
1220  03ef 89            	pushw	x
1221  03f0 3b0002        	push	c_y+2
1222  03f3 be00          	ldw	x,c_y
1223  03f5 89            	pushw	x
1224  03f6 be02          	ldw	x,c_lreg+2
1225  03f8 89            	pushw	x
1226  03f9 be00          	ldw	x,c_lreg
1227  03fb 89            	pushw	x
1230                     ; 348 	TIM4_Cmd(DISABLE);
1232  03fc 4f            	clr	a
1233  03fd 8d000000      	callf	f_TIM4_Cmd
1235                     ; 349 	TIM4_ClearFlag(TIM4_IT_UPDATE);
1237  0401 a601          	ld	a,#1
1238  0403 8d000000      	callf	f_TIM4_ClearFlag
1240                     ; 350 	nop();
1243  0407 9d            nop
1245                     ; 351 	nop();
1249  0408 9d            nop
1251                     ; 352 	nop();
1255  0409 9d            nop
1257                     ; 353 	nop();
1261  040a 9d            nop
1263                     ; 354 	nop();
1267  040b 9d            nop
1269                     ; 355 	nop();
1273  040c 9d            nop
1275                     ; 356 	nop();
1279  040d 9d            nop
1281                     ; 357 	nop();
1285  040e 9d            nop
1287                     ; 358 	nop();
1291  040f 9d            nop
1293                     ; 359 	nop();
1297  0410 9d            nop
1299                     ; 360 	nop();
1303  0411 9d            nop
1305                     ; 361 	TIM4_Cmd(ENABLE);
1308  0412 a601          	ld	a,#1
1309  0414 8d000000      	callf	f_TIM4_Cmd
1311                     ; 363 	if (ir_release_timer > TIMER_EXPIRED)
1313  0418 c6000e        	ld	a,L12_ir_release_timer
1314  041b a102          	cp	a,#2
1315  041d 2504          	jrult	L114
1316                     ; 365 		ir_release_timer--;
1318  041f 725a000e      	dec	L12_ir_release_timer
1319  0423               L114:
1320                     ; 367 	if (delay_timer > TIMER_EXPIRED)
1322  0423 ae000a        	ldw	x,#L32_delay_timer
1323  0426 8d000000      	callf	d_ltor
1325  042a ae0004        	ldw	x,#L04
1326  042d 8d000000      	callf	d_lcmp
1328  0431 2509          	jrult	L314
1329                     ; 369 		delay_timer--;
1331  0433 ae000a        	ldw	x,#L32_delay_timer
1332  0436 a601          	ld	a,#1
1333  0438 8d000000      	callf	d_lgsbc
1335  043c               L314:
1336                     ; 371 	if (ir_process_timer > TIMER_EXPIRED)
1338  043c ae0006        	ldw	x,#L52_ir_process_timer
1339  043f 8d000000      	callf	d_ltor
1341  0443 ae0004        	ldw	x,#L04
1342  0446 8d000000      	callf	d_lcmp
1344  044a 2509          	jrult	L514
1345                     ; 373 		ir_process_timer--;
1347  044c ae0006        	ldw	x,#L52_ir_process_timer
1348  044f a601          	ld	a,#1
1349  0451 8d000000      	callf	d_lgsbc
1351  0455               L514:
1352                     ; 375 	if (Key_detect_timer > TIMER_EXPIRED)
1354  0455 ae0002        	ldw	x,#L72_Key_detect_timer
1355  0458 8d000000      	callf	d_ltor
1357  045c ae0004        	ldw	x,#L04
1358  045f 8d000000      	callf	d_lcmp
1360  0463 2509          	jrult	L714
1361                     ; 377 		Key_detect_timer--;
1363  0465 ae0002        	ldw	x,#L72_Key_detect_timer
1364  0468 a601          	ld	a,#1
1365  046a 8d000000      	callf	d_lgsbc
1367  046e               L714:
1368                     ; 379 	SWI2C_UpdateTimer();
1370  046e 8d000000      	callf	f_SWI2C_UpdateTimer
1372                     ; 380 	System_Clock++;
1374  0472 ae0000        	ldw	x,#_System_Clock
1375  0475 a601          	ld	a,#1
1376  0477 8d000000      	callf	d_lgadc
1378                     ; 381 }
1381  047b 85            	popw	x
1382  047c bf00          	ldw	c_lreg,x
1383  047e 85            	popw	x
1384  047f bf02          	ldw	c_lreg+2,x
1385  0481 85            	popw	x
1386  0482 bf00          	ldw	c_y,x
1387  0484 320002        	pop	c_y+2
1388  0487 85            	popw	x
1389  0488 bf00          	ldw	c_x,x
1390  048a 320002        	pop	c_x+2
1391  048d 80            	iret
1424                     ; 383 void IR_DelayNMiliseconds(u16 delay)
1424                     ; 384 {
1425                     	switch	.text
1426  048e               f_IR_DelayNMiliseconds:
1430                     ; 385 	delay_timer = delay;
1432  048e 8d000000      	callf	d_uitolx
1434  0492 ae000a        	ldw	x,#L32_delay_timer
1435  0495 8d000000      	callf	d_rtol
1438  0499               L144:
1439                     ; 386 	while (delay_timer > TIMER_EXPIRED);
1441  0499 ae000a        	ldw	x,#L32_delay_timer
1442  049c 8d000000      	callf	d_ltor
1444  04a0 ae0004        	ldw	x,#L04
1445  04a3 8d000000      	callf	d_lcmp
1447  04a7 24f0          	jruge	L144
1448                     ; 387 	delay_timer = TIMER_STOPPED;
1450  04a9 ae0000        	ldw	x,#0
1451  04ac cf000c        	ldw	L32_delay_timer+2,x
1452  04af ae0000        	ldw	x,#0
1453  04b2 cf000a        	ldw	L32_delay_timer,x
1454                     ; 388 }
1457  04b5 87            	retf
1574                     	switch	.bss
1575  0000               L13_Conversion_Value:
1576  0000 0000          	ds.b	2
1577  0002               L72_Key_detect_timer:
1578  0002 00000000      	ds.b	4
1579  0006               L52_ir_process_timer:
1580  0006 00000000      	ds.b	4
1581  000a               L32_delay_timer:
1582  000a 00000000      	ds.b	4
1583  000e               L12_ir_release_timer:
1584  000e 00            	ds.b	1
1585  000f               L71_ir_fisrt_process:
1586  000f 00            	ds.b	1
1587  0010               L51_ir_pressed:
1588  0010 00            	ds.b	1
1589  0011               L31_receive_code:
1590  0011 00            	ds.b	1
1591  0012               L11_head_type:
1592  0012 00            	ds.b	1
1593  0013               L7_ir_code:
1594  0013 00000000      	ds.b	4
1595  0017               L5_ir_bit_number:
1596  0017 00            	ds.b	1
1597  0018               L3_ir_state:
1598  0018 00            	ds.b	1
1599                     	xref	f_SWI2C_UpdateTimer
1600                     	xref	f_SWI2C_Set_deep
1601                     	xref	f_SWI2C_Toggle3DOnOff
1602                     	xref	f_SWI2C_ToggleI2CMode
1603                     	xref	f_SWI2C_ProcessPower
1604                     	xdef	_System_Clock
1605                     	xdef	f_TIMER4_ISR
1606                     	xdef	f_IR_IN_ISR
1607                     	xdef	f_IR_DelayNMiliseconds
1608                     	xdef	f_IR_Update
1609                     	xdef	f_Timer_Init
1610                     	xdef	f_IR_IN_Init
1611                     	xref	f_ADC2_GetConversionValue
1612                     	xref	f_ADC2_StartConversion
1613                     	xref	f_ADC2_Init
1614                     	xref	f_TIM4_ClearFlag
1615                     	xref	f_TIM4_ITConfig
1616                     	xref	f_TIM4_Cmd
1617                     	xref	f_TIM4_TimeBaseInit
1618                     	xref	f_TIM2_ClearFlag
1619                     	xref	f_TIM2_GetCounter
1620                     	xref	f_TIM2_SetCounter
1621                     	xref	f_TIM2_Cmd
1622                     	xref	f_TIM2_TimeBaseInit
1623                     	xref	f_EXTI_SetExtIntSensitivity
1624                     	xref	f_GPIO_Init
1625                     	xref.b	c_lreg
1626                     	xref.b	c_x
1627                     	xref.b	c_y
1647                     	xref	d_rtol
1648                     	xref	d_uitolx
1649                     	xref	d_lgadc
1650                     	xref	d_lgsbc
1651                     	xref	d_lcmp
1652                     	xref	d_ltor
1653                     	end
