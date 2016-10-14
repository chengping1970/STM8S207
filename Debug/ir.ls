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
 124  0014 2758          	jreq	L561
 125                     ; 110 		switch (receive_code)
 127  0016 c60011        	ld	a,L31_receive_code
 129                     ; 131 			default:
 129                     ; 132 				return KEY_DUMMY;
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
 164                     ; 112 			case 0x0: 		return KEY_DEEP_0;
 166  0048 4f            	clr	a
 169  0049 87            	retf
 170  004a               L76:
 171                     ; 113 			case 0x1: 		return KEY_DEEP_1;
 173  004a a601          	ld	a,#1
 176  004c 87            	retf
 177  004d               L17:
 178                     ; 114 			case 0x2: 		return KEY_DEEP_2;
 180  004d a602          	ld	a,#2
 183  004f 87            	retf
 184  0050               L37:
 185                     ; 115 			case 0x3: 		return KEY_DEEP_3;
 187  0050 a603          	ld	a,#3
 190  0052 87            	retf
 191  0053               L57:
 192                     ; 116 			case 0x4: 		return KEY_DEEP_4;
 194  0053 a604          	ld	a,#4
 197  0055 87            	retf
 198  0056               L77:
 199                     ; 117 			case 0x5: 		return KEY_DEEP_5;
 201  0056 a605          	ld	a,#5
 204  0058 87            	retf
 205  0059               L101:
 206                     ; 118 			case 0xC7:		return KEY_POWER;
 208  0059 a606          	ld	a,#6
 211  005b 87            	retf
 212  005c               L301:
 213                     ; 119 			case 0xC0: 		return KEY_PC;
 215  005c a609          	ld	a,#9
 218  005e 87            	retf
 219  005f               L501:
 220                     ; 120 			case 0xC3: 		return KEY_HDMI;
 222  005f a60a          	ld	a,#10
 225  0061 87            	retf
 226  0062               L701:
 227                     ; 121 			case 0x75: 		return KEY_ONOFF_3D;
 229  0062 a607          	ld	a,#7
 232  0064 87            	retf
 233  0065               L111:
 234                     ; 122 			case 0xC1: 		return KEY_DEBUG;
 236  0065 a611          	ld	a,#17
 239  0067 87            	retf
 240  0068               L311:
 241                     ; 123 			case 0xC4:		return KEY_VERIFY_SECRET;
 243  0068 a60f          	ld	a,#15
 246  006a 87            	retf
 247  006b               L511:
 248                     ; 124 			case 0x58:		return KEY_RESET_FPGA;
 250  006b a610          	ld	a,#16
 253  006d 87            	retf
 254  006e               L561:
 255                     ; 137 		switch (receive_code)
 257  006e c60011        	ld	a,L31_receive_code
 259                     ; 158 			default:
 259                     ; 159 				return KEY_DUMMY;
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
 294                     ; 139 			case 0x10: 		return KEY_DEEP_0;
 296  00a5 4f            	clr	a
 299  00a6 87            	retf
 300  00a7               L321:
 301                     ; 140 			case 0x54: 		return KEY_DEEP_1;
 303  00a7 a601          	ld	a,#1
 306  00a9 87            	retf
 307  00aa               L521:
 308                     ; 141 			case 0x16: 		return KEY_DEEP_2;
 310  00aa a602          	ld	a,#2
 313  00ac 87            	retf
 314  00ad               L721:
 315                     ; 142 			case 0x15: 		return KEY_DEEP_3;
 317  00ad a603          	ld	a,#3
 320  00af 87            	retf
 321  00b0               L131:
 322                     ; 143 			case 0x50: 		return KEY_DEEP_4;
 324  00b0 a604          	ld	a,#4
 327  00b2 87            	retf
 328  00b3               L331:
 329                     ; 144 			case 0x12: 		return KEY_DEEP_5;
 331  00b3 a605          	ld	a,#5
 334  00b5 87            	retf
 335  00b6               L531:
 336                     ; 145 			case 0x1C: 		return KEY_POWER;
 338  00b6 a606          	ld	a,#6
 341  00b8 87            	retf
 342  00b9               L731:
 343                     ; 146 			case 0x56: 		return KEY_PC;
 345  00b9 a609          	ld	a,#9
 348  00bb 87            	retf
 349  00bc               L141:
 350                     ; 147 			case 0x57: 		return KEY_HDMI;
 352  00bc a60a          	ld	a,#10
 355  00be 87            	retf
 356  00bf               L341:
 357                     ; 148 			case 0x5B: 		return KEY_ONOFF_3D;
 359  00bf a607          	ld	a,#7
 362  00c1 87            	retf
 363  00c2               L541:
 364                     ; 149 			case 0x01: 		return KEY_DEBUG;		
 366  00c2 a611          	ld	a,#17
 369  00c4 87            	retf
 370  00c5               L741:
 371                     ; 150 			case 0x08:		return KEY_VERIFY_SECRET;
 373  00c5 a60f          	ld	a,#15
 376  00c7 87            	retf
 377  00c8               L151:
 378                     ; 151 			case 0x1F:		return KEY_RESET_FPGA;
 380  00c8 a610          	ld	a,#16
 383  00ca 87            	retf
 415                     ; 164 void IR_IN_Init(void)
 415                     ; 165 {	
 416                     	switch	.text
 417  00cb               f_IR_IN_Init:
 421                     ; 166 	GPIO_Init(IR_IN_PORT, IR_IN_PIN, GPIO_MODE_IN_FL_IT);
 423  00cb 4b20          	push	#32
 424  00cd 4b40          	push	#64
 425  00cf ae5000        	ldw	x,#20480
 426  00d2 8d000000      	callf	f_GPIO_Init
 428  00d6 85            	popw	x
 429                     ; 167 	EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOA, EXTI_SENSITIVITY_FALL_ONLY);
 431  00d7 ae0002        	ldw	x,#2
 432  00da 4f            	clr	a
 433  00db 95            	ld	xh,a
 434  00dc 8d000000      	callf	f_EXTI_SetExtIntSensitivity
 436                     ; 169 	TIM2_TimeBaseInit(TIM2_PRESCALER_16, 0xffff);
 438  00e0 aeffff        	ldw	x,#65535
 439  00e3 89            	pushw	x
 440  00e4 a604          	ld	a,#4
 441  00e6 8d000000      	callf	f_TIM2_TimeBaseInit
 443  00ea 85            	popw	x
 444                     ; 170 	TIM2_Cmd(ENABLE); 
 446  00eb a601          	ld	a,#1
 447  00ed 8d000000      	callf	f_TIM2_Cmd
 449                     ; 172 	GPIO_Init(KEY_IN_PORT, KEY_IN_PIN, GPIO_MODE_IN_FL_NO_IT);
 451  00f1 4b00          	push	#0
 452  00f3 4b80          	push	#128
 453  00f5 ae5005        	ldw	x,#20485
 454  00f8 8d000000      	callf	f_GPIO_Init
 456  00fc 85            	popw	x
 457                     ; 173 	ADC2_Init(ADC2_CONVERSIONMODE_CONTINUOUS, ADC2_CHANNEL_7, ADC2_PRESSEL_FCPU_D2,\
 457                     ; 174 					ADC2_EXTTRIG_TIM, DISABLE, ADC2_ALIGN_RIGHT, ADC2_SCHMITTTRIG_CHANNEL7, DISABLE);
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
 471                     ; 176 	ADC2_StartConversion();
 473  0115 8d000000      	callf	f_ADC2_StartConversion
 475                     ; 178 	ir_state = IR_RECEIVE_HEAD;
 477  0119 725f0018      	clr	L3_ir_state
 478                     ; 179 	ir_pressed = FALSE;	
 480  011d 725f0010      	clr	L51_ir_pressed
 481                     ; 180 	ir_fisrt_process = FALSE;
 483  0121 725f000f      	clr	L71_ir_fisrt_process
 484                     ; 181 	receive_code = IRKEY_DUMY;	
 486  0125 35ff0011      	mov	L31_receive_code,#255
 487                     ; 188 }
 490  0129 87            	retf
 519                     ; 190 void Timer_Init(void)
 519                     ; 191 {
 520                     	switch	.text
 521  012a               f_Timer_Init:
 525                     ; 192 	TIM4_TimeBaseInit(TIM4_PRESCALER_128, 125);
 527  012a ae007d        	ldw	x,#125
 528  012d a607          	ld	a,#7
 529  012f 95            	ld	xh,a
 530  0130 8d000000      	callf	f_TIM4_TimeBaseInit
 532                     ; 193 	TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
 534  0134 ae0001        	ldw	x,#1
 535  0137 a601          	ld	a,#1
 536  0139 95            	ld	xh,a
 537  013a 8d000000      	callf	f_TIM4_ITConfig
 539                     ; 194 	TIM4_Cmd(ENABLE); 
 541  013e a601          	ld	a,#1
 542  0140 8d000000      	callf	f_TIM4_Cmd
 544                     ; 196 	ir_release_timer = TIMER_STOPPED;
 546  0144 725f000e      	clr	L12_ir_release_timer
 547                     ; 197 	delay_timer = TIMER_STOPPED;
 549  0148 ae0000        	ldw	x,#0
 550  014b cf000c        	ldw	L32_delay_timer+2,x
 551  014e ae0000        	ldw	x,#0
 552  0151 cf000a        	ldw	L32_delay_timer,x
 553                     ; 198 	ir_process_timer = TIMER_STOPPED;
 555  0154 ae0000        	ldw	x,#0
 556  0157 cf0008        	ldw	L52_ir_process_timer+2,x
 557  015a ae0000        	ldw	x,#0
 558  015d cf0006        	ldw	L52_ir_process_timer,x
 559                     ; 199 	Key_detect_timer = TIMER_EXPIRED;
 561  0160 ae0001        	ldw	x,#1
 562  0163 cf0004        	ldw	L72_Key_detect_timer+2,x
 563  0166 ae0000        	ldw	x,#0
 564  0169 cf0002        	ldw	L72_Key_detect_timer,x
 565                     ; 200 }
 568  016c 87            	retf
 570                     	switch	.data
 571  0004               L122_value_debug:
 572  0004 00            	dc.b	0
 617                     .const:	section	.text
 618  0000               L22:
 619  0000 00000001      	dc.l	1
 620                     ; 203 void IR_Update(void)
 620                     ; 204 {
 621                     	switch	.text
 622  016d               f_IR_Update:
 624  016d 88            	push	a
 625       00000001      OFST:	set	1
 628                     ; 205 	if (ir_pressed)
 630  016e 725d0010      	tnz	L51_ir_pressed
 631  0172 2604          	jrne	L03
 632  0174 ac4d024d      	jpf	L762
 633  0178               L03:
 634                     ; 207 		if (ir_process_timer == TIMER_EXPIRED)
 636  0178 ae0006        	ldw	x,#L52_ir_process_timer
 637  017b 8d000000      	callf	d_ltor
 639  017f ae0000        	ldw	x,#L22
 640  0182 8d000000      	callf	d_lcmp
 642  0186 2704          	jreq	L23
 643  0188 ac4d024d      	jpf	L762
 644  018c               L23:
 645                     ; 209 			u8 ir_key = _convert_IR();
 647  018c 8d100010      	callf	L36f__convert_IR
 649  0190 6b01          	ld	(OFST+0,sp),a
 650                     ; 210 			switch (ir_key)
 652  0192 7b01          	ld	a,(OFST+0,sp)
 654                     ; 259 				default:
 654                     ; 260 					break;
 655  0194 a112          	cp	a,#18
 656  0196 2428          	jruge	L42
 657  0198 8d000000      	callf	d_jctab
 659  019c               L62:
 660  019c 0032          	dc.w	L722-L62
 661  019e 0039          	dc.w	L132-L62
 662  01a0 0041          	dc.w	L332-L62
 663  01a2 0049          	dc.w	L532-L62
 664  01a4 0051          	dc.w	L732-L62
 665  01a6 0059          	dc.w	L142-L62
 666  01a8 0061          	dc.w	L342-L62
 667  01aa 002c          	dc.w	L522-L62
 668  01ac 0071          	dc.w	L572-L62
 669  01ae 0071          	dc.w	L572-L62
 670  01b0 0071          	dc.w	L572-L62
 671  01b2 0071          	dc.w	L572-L62
 672  01b4 0071          	dc.w	L572-L62
 673  01b6 0071          	dc.w	L572-L62
 674  01b8 0071          	dc.w	L572-L62
 675  01ba 0067          	dc.w	L542-L62
 676  01bc 006d          	dc.w	L742-L62
 677  01be 0026          	dc.w	L322-L62
 678  01c0               L42:
 679  01c0 204b          	jra	L572
 680  01c2               L322:
 681                     ; 212 				case KEY_DEBUG:
 681                     ; 213 					SWI2C_ToggleI2CMode();
 683  01c2 8d000000      	callf	f_SWI2C_ToggleI2CMode
 685                     ; 214 					break;
 687  01c6 2045          	jra	L572
 688  01c8               L522:
 689                     ; 215 				case KEY_ONOFF_3D:
 689                     ; 216 					SWI2C_Toggle3DOnOff();
 691  01c8 8d000000      	callf	f_SWI2C_Toggle3DOnOff
 693                     ; 217 					break;
 695  01cc 203f          	jra	L572
 696  01ce               L722:
 697                     ; 218 				case KEY_DEEP_0:
 697                     ; 219 					SWI2C_Set_deep(0);
 699  01ce 4f            	clr	a
 700  01cf 8d000000      	callf	f_SWI2C_Set_deep
 702                     ; 220 					break;
 704  01d3 2038          	jra	L572
 705  01d5               L132:
 706                     ; 221 				case KEY_DEEP_1:
 706                     ; 222 					SWI2C_Set_deep(1);
 708  01d5 a601          	ld	a,#1
 709  01d7 8d000000      	callf	f_SWI2C_Set_deep
 711                     ; 223 					break;
 713  01db 2030          	jra	L572
 714  01dd               L332:
 715                     ; 224 				case KEY_DEEP_2:
 715                     ; 225 					SWI2C_Set_deep(2);
 717  01dd a602          	ld	a,#2
 718  01df 8d000000      	callf	f_SWI2C_Set_deep
 720                     ; 226 					break;
 722  01e3 2028          	jra	L572
 723  01e5               L532:
 724                     ; 227 				case KEY_DEEP_3:
 724                     ; 228 					SWI2C_Set_deep(3);
 726  01e5 a603          	ld	a,#3
 727  01e7 8d000000      	callf	f_SWI2C_Set_deep
 729                     ; 229 					break;
 731  01eb 2020          	jra	L572
 732  01ed               L732:
 733                     ; 230 				case KEY_DEEP_4:
 733                     ; 231 					SWI2C_Set_deep(4);
 735  01ed a604          	ld	a,#4
 736  01ef 8d000000      	callf	f_SWI2C_Set_deep
 738                     ; 232 					break;
 740  01f3 2018          	jra	L572
 741  01f5               L142:
 742                     ; 233 				case KEY_DEEP_5:
 742                     ; 234 					SWI2C_Set_deep(5);
 744  01f5 a605          	ld	a,#5
 745  01f7 8d000000      	callf	f_SWI2C_Set_deep
 747                     ; 235 					break;
 749  01fb 2010          	jra	L572
 750  01fd               L342:
 751                     ; 236 				case KEY_POWER:
 751                     ; 237 					SWI2C_ProcessPower();
 753  01fd 8d000000      	callf	f_SWI2C_ProcessPower
 755                     ; 238 					break;
 757  0201 200a          	jra	L572
 758  0203               L542:
 759                     ; 239 				case KEY_VERIFY_SECRET:
 759                     ; 240 					SWI2C_VerifyKey();
 761  0203 8d000000      	callf	f_SWI2C_VerifyKey
 763                     ; 241 					break;
 765  0207 2004          	jra	L572
 766  0209               L742:
 767                     ; 242 				case KEY_RESET_FPGA:
 767                     ; 243 					SWI2C_ResetFPGA();
 769  0209 8d000000      	callf	f_SWI2C_ResetFPGA
 771                     ; 244 					break;
 773  020d               L152:
 774                     ; 259 				default:
 774                     ; 260 					break;
 776  020d               L572:
 777                     ; 262 			if (ir_key != KEY_VOLUME_PLUS && ir_key != KEY_VOLUME_MINUS && ir_key != KEY_LEFT &&ir_key != KEY_RIGHT)
 779  020d 7b01          	ld	a,(OFST+0,sp)
 780  020f a10b          	cp	a,#11
 781  0211 2716          	jreq	L772
 783  0213 7b01          	ld	a,(OFST+0,sp)
 784  0215 a10c          	cp	a,#12
 785  0217 2710          	jreq	L772
 787  0219 7b01          	ld	a,(OFST+0,sp)
 788  021b a10d          	cp	a,#13
 789  021d 270a          	jreq	L772
 791  021f 7b01          	ld	a,(OFST+0,sp)
 792  0221 a10e          	cp	a,#14
 793  0223 2704          	jreq	L772
 794                     ; 264 				receive_code = IRKEY_DUMY;
 796  0225 35ff0011      	mov	L31_receive_code,#255
 797  0229               L772:
 798                     ; 266 			if (ir_fisrt_process)
 800  0229 725d000f      	tnz	L71_ir_fisrt_process
 801  022d 2712          	jreq	L103
 802                     ; 268 				ir_fisrt_process = FALSE;
 804  022f 725f000f      	clr	L71_ir_fisrt_process
 805                     ; 269 				ir_process_timer = 500 + 1;
 807  0233 ae01f5        	ldw	x,#501
 808  0236 cf0008        	ldw	L52_ir_process_timer+2,x
 809  0239 ae0000        	ldw	x,#0
 810  023c cf0006        	ldw	L52_ir_process_timer,x
 812  023f 200c          	jra	L762
 813  0241               L103:
 814                     ; 273 				ir_process_timer = 50 + 1;
 816  0241 ae0033        	ldw	x,#51
 817  0244 cf0008        	ldw	L52_ir_process_timer+2,x
 818  0247 ae0000        	ldw	x,#0
 819  024a cf0006        	ldw	L52_ir_process_timer,x
 820  024d               L762:
 821                     ; 278 	if (ir_release_timer == TIMER_EXPIRED)
 823  024d c6000e        	ld	a,L12_ir_release_timer
 824  0250 a101          	cp	a,#1
 825  0252 2614          	jrne	L503
 826                     ; 280 		ir_release_timer = TIMER_STOPPED;
 828  0254 725f000e      	clr	L12_ir_release_timer
 829                     ; 281 		ir_process_timer = TIMER_STOPPED;
 831  0258 ae0000        	ldw	x,#0
 832  025b cf0008        	ldw	L52_ir_process_timer+2,x
 833  025e ae0000        	ldw	x,#0
 834  0261 cf0006        	ldw	L52_ir_process_timer,x
 835                     ; 282 		ir_pressed = FALSE;	
 837  0264 725f0010      	clr	L51_ir_pressed
 838  0268               L503:
 839                     ; 285 	if (Key_detect_timer == TIMER_EXPIRED)
 841  0268 ae0002        	ldw	x,#L72_Key_detect_timer
 842  026b 8d000000      	callf	d_ltor
 844  026f ae0000        	ldw	x,#L22
 845  0272 8d000000      	callf	d_lcmp
 847  0276 2613          	jrne	L703
 848                     ; 287 		Conversion_Value = ADC2_GetConversionValue();
 850  0278 8d000000      	callf	f_ADC2_GetConversionValue
 852  027c cf0000        	ldw	L13_Conversion_Value,x
 853                     ; 288 		Key_detect_timer = KEY_DETECT_TIME;
 855  027f ae0065        	ldw	x,#101
 856  0282 cf0004        	ldw	L72_Key_detect_timer+2,x
 857  0285 ae0000        	ldw	x,#0
 858  0288 cf0002        	ldw	L72_Key_detect_timer,x
 859  028b               L703:
 860                     ; 290 }
 863  028b 84            	pop	a
 864  028c 87            	retf
 916                     ; 292 INTERRUPT_HANDLER(IR_IN_ISR, 3)
 916                     ; 293 {
 917                     	switch	.text
 918  028d               f_IR_IN_ISR:
 920       00000003      OFST:	set	3
 921  028d 3b0002        	push	c_x+2
 922  0290 be00          	ldw	x,c_x
 923  0292 89            	pushw	x
 924  0293 3b0002        	push	c_y+2
 925  0296 be00          	ldw	x,c_y
 926  0298 89            	pushw	x
 927  0299 5203          	subw	sp,#3
 930                     ; 295 	u8 fault = FALSE;
 932  029b 0f01          	clr	(OFST-2,sp)
 933                     ; 297 	TIM2_Cmd(DISABLE);
 935  029d 4f            	clr	a
 936  029e 8d000000      	callf	f_TIM2_Cmd
 938                     ; 298 	TIM2_ClearFlag(TIM2_FLAG_UPDATE);
 940  02a2 ae0001        	ldw	x,#1
 941  02a5 8d000000      	callf	f_TIM2_ClearFlag
 943                     ; 299 	count = TIM2_GetCounter();
 945  02a9 8d000000      	callf	f_TIM2_GetCounter
 947  02ad 1f02          	ldw	(OFST-1,sp),x
 948                     ; 300 	TIM2_SetCounter(0);			
 950  02af 5f            	clrw	x
 951  02b0 8d000000      	callf	f_TIM2_SetCounter
 953                     ; 301 	TIM2_Cmd(ENABLE);
 955  02b4 a601          	ld	a,#1
 956  02b6 8d000000      	callf	f_TIM2_Cmd
 958                     ; 303 	if (count > LEADER_UPPER_LIMIT)
 960  02ba 1e02          	ldw	x,(OFST-1,sp)
 961  02bc a33c8d        	cpw	x,#15501
 962  02bf 2506          	jrult	L533
 963                     ; 305 		fault = TRUE;
 965  02c1 a601          	ld	a,#1
 966  02c3 6b01          	ld	(OFST-2,sp),a
 968  02c5 2043          	jra	L733
 969  02c7               L533:
 970                     ; 309 		switch (ir_state)
 972  02c7 c60018        	ld	a,L3_ir_state
 974                     ; 365 			default:
 974                     ; 366 				break;
 975  02ca 4d            	tnz	a
 976  02cb 2705          	jreq	L113
 977  02cd 4a            	dec	a
 978  02ce 274a          	jreq	L313
 979  02d0 2038          	jra	L733
 980  02d2               L113:
 981                     ; 311 			case IR_RECEIVE_HEAD:
 981                     ; 312 				if (_Compare_Count(count, LEADER_UPPER_LIMIT, LEADER_LOWER_LIMIT))
 983  02d2 ae30d4        	ldw	x,#12500
 984  02d5 89            	pushw	x
 985  02d6 ae3c8c        	ldw	x,#15500
 986  02d9 89            	pushw	x
 987  02da 1e06          	ldw	x,(OFST+3,sp)
 988  02dc 8d000000      	callf	L33f__Compare_Count
 990  02e0 5b04          	addw	sp,#4
 991  02e2 4d            	tnz	a
 992  02e3 270a          	jreq	L543
 993                     ; 314 					ir_release_timer = IR_RELEASE_TIME;
 995  02e5 3581000e      	mov	L12_ir_release_timer,#129
 996                     ; 315 					ir_state = IR_RECEIVE_CODE;
 998  02e9 35010018      	mov	L3_ir_state,#1
1000  02ed 2017          	jra	L743
1001  02ef               L543:
1002                     ; 317 				else if (_Compare_Count(count, REPEAT_UPPER_LIMIT, REPEAT_LOWER_LIMIT))
1004  02ef ae280a        	ldw	x,#10250
1005  02f2 89            	pushw	x
1006  02f3 ae2fda        	ldw	x,#12250
1007  02f6 89            	pushw	x
1008  02f7 1e06          	ldw	x,(OFST+3,sp)
1009  02f9 8d000000      	callf	L33f__Compare_Count
1011  02fd 5b04          	addw	sp,#4
1012  02ff 4d            	tnz	a
1013  0300 2704          	jreq	L743
1014                     ; 319 					ir_release_timer = IR_RELEASE_TIME;
1016  0302 3581000e      	mov	L12_ir_release_timer,#129
1017  0306               L743:
1018                     ; 321 				ir_bit_number = 0;
1020  0306 725f0017      	clr	L5_ir_bit_number
1021                     ; 322 				break;
1022  030a               L733:
1023                     ; 369 	if (fault)
1025  030a 0d01          	tnz	(OFST-2,sp)
1026  030c 2604          	jrne	L63
1027  030e acf903f9      	jpf	L304
1028  0312               L63:
1029                     ; 371 		ir_state = IR_RECEIVE_HEAD;
1031  0312 725f0018      	clr	L3_ir_state
1032  0316 acf903f9      	jpf	L304
1033  031a               L313:
1034                     ; 323 			case IR_RECEIVE_CODE:
1034                     ; 324 				if (_Compare_Count(count, HIGH_UPPER_LIMIT, HIGH_LOWER_LIMIT))
1036  031a ae06a4        	ldw	x,#1700
1037  031d 89            	pushw	x
1038  031e ae0af0        	ldw	x,#2800
1039  0321 89            	pushw	x
1040  0322 1e06          	ldw	x,(OFST+3,sp)
1041  0324 8d000000      	callf	L33f__Compare_Count
1043  0328 5b04          	addw	sp,#4
1044  032a 4d            	tnz	a
1045  032b 271e          	jreq	L353
1046                     ; 326 					ir_code[ir_bit_number/8] = (ir_code[ir_bit_number/8]>>1)|0x80;
1048  032d c60017        	ld	a,L5_ir_bit_number
1049  0330 44            	srl	a
1050  0331 44            	srl	a
1051  0332 44            	srl	a
1052  0333 5f            	clrw	x
1053  0334 97            	ld	xl,a
1054  0335 c60017        	ld	a,L5_ir_bit_number
1055  0338 44            	srl	a
1056  0339 44            	srl	a
1057  033a 44            	srl	a
1058  033b 905f          	clrw	y
1059  033d 9097          	ld	yl,a
1060  033f 90d60013      	ld	a,(L7_ir_code,y)
1061  0343 44            	srl	a
1062  0344 aa80          	or	a,#128
1063  0346 d70013        	ld	(L7_ir_code,x),a
1065  0349 2025          	jra	L553
1066  034b               L353:
1067                     ; 328 				else if (_Compare_Count(count, LOW_UPPER_LIMIT, LOW_LOWER_LIMIT))
1069  034b ae0320        	ldw	x,#800
1070  034e 89            	pushw	x
1071  034f ae05aa        	ldw	x,#1450
1072  0352 89            	pushw	x
1073  0353 1e06          	ldw	x,(OFST+3,sp)
1074  0355 8d000000      	callf	L33f__Compare_Count
1076  0359 5b04          	addw	sp,#4
1077  035b 4d            	tnz	a
1078  035c 270e          	jreq	L753
1079                     ; 330 					ir_code[ir_bit_number/8] = ir_code[ir_bit_number/8]>>1;
1081  035e c60017        	ld	a,L5_ir_bit_number
1082  0361 44            	srl	a
1083  0362 44            	srl	a
1084  0363 44            	srl	a
1085  0364 5f            	clrw	x
1086  0365 97            	ld	xl,a
1087  0366 72440013      	srl	(L7_ir_code,x)
1089  036a 2004          	jra	L553
1090  036c               L753:
1091                     ; 334 					fault = TRUE;
1093  036c a601          	ld	a,#1
1094  036e 6b01          	ld	(OFST-2,sp),a
1095  0370               L553:
1096                     ; 336 				ir_bit_number++;
1098  0370 725c0017      	inc	L5_ir_bit_number
1099                     ; 337 				if (ir_bit_number == 32 && !fault)
1101  0374 c60017        	ld	a,L5_ir_bit_number
1102  0377 a120          	cp	a,#32
1103  0379 268f          	jrne	L733
1105  037b 0d01          	tnz	(OFST-2,sp)
1106  037d 268b          	jrne	L733
1107                     ; 339 					ir_state = IR_RECEIVE_HEAD;
1109  037f 725f0018      	clr	L3_ir_state
1110                     ; 340 					if (((ir_code[0] == 0x0 && ir_code[1] == 0xDF) || (ir_code[0] == 0x4F && ir_code[1] == 0x50)) 
1110                     ; 341 					&& ((ir_code[2]^ir_code[3]) == 0xFF))
1112  0383 725d0013      	tnz	L7_ir_code
1113  0387 2607          	jrne	L173
1115  0389 c60014        	ld	a,L7_ir_code+1
1116  038c a1df          	cp	a,#223
1117  038e 270e          	jreq	L763
1118  0390               L173:
1120  0390 c60013        	ld	a,L7_ir_code
1121  0393 a14f          	cp	a,#79
1122  0395 2652          	jrne	L563
1124  0397 c60014        	ld	a,L7_ir_code+1
1125  039a a150          	cp	a,#80
1126  039c 264b          	jrne	L563
1127  039e               L763:
1129  039e c60015        	ld	a,L7_ir_code+2
1130  03a1 c80016        	xor	a,L7_ir_code+3
1131  03a4 a1ff          	cp	a,#255
1132  03a6 2641          	jrne	L563
1133                     ; 343 						if (!ir_pressed)
1135  03a8 725d0010      	tnz	L51_ir_pressed
1136  03ac 2704          	jreq	L04
1137  03ae ac0a030a      	jpf	L733
1138  03b2               L04:
1139                     ; 345 							receive_code = ir_code[2];						
1141  03b2 5500150011    	mov	L31_receive_code,L7_ir_code+2
1142                     ; 346 							ir_pressed = TRUE;
1144  03b7 35010010      	mov	L51_ir_pressed,#1
1145                     ; 347 							ir_fisrt_process = TRUE;
1147  03bb 3501000f      	mov	L71_ir_fisrt_process,#1
1148                     ; 348 							ir_process_timer = TIMER_EXPIRED;
1150  03bf ae0001        	ldw	x,#1
1151  03c2 cf0008        	ldw	L52_ir_process_timer+2,x
1152  03c5 ae0000        	ldw	x,#0
1153  03c8 cf0006        	ldw	L52_ir_process_timer,x
1154                     ; 349 							if (ir_code[0] == 0x4F && ir_code[1] == 0x50)
1156  03cb c60013        	ld	a,L7_ir_code
1157  03ce a14f          	cp	a,#79
1158  03d0 260f          	jrne	L573
1160  03d2 c60014        	ld	a,L7_ir_code+1
1161  03d5 a150          	cp	a,#80
1162  03d7 2608          	jrne	L573
1163                     ; 351 								head_type = 1;
1165  03d9 35010012      	mov	L11_head_type,#1
1167  03dd ac0a030a      	jpf	L733
1168  03e1               L573:
1169                     ; 355 								head_type = 0;
1171  03e1 725f0012      	clr	L11_head_type
1172  03e5 ac0a030a      	jpf	L733
1173  03e9               L563:
1174                     ; 361 						fault = TRUE;
1176  03e9 a601          	ld	a,#1
1177  03eb 6b01          	ld	(OFST-2,sp),a
1178  03ed ac0a030a      	jpf	L733
1179  03f1               L513:
1180                     ; 365 			default:
1180                     ; 366 				break;
1182  03f1 ac0a030a      	jpf	L733
1183  03f5               L343:
1184  03f5 ac0a030a      	jpf	L733
1185  03f9               L304:
1186                     ; 373 }
1189  03f9 5b03          	addw	sp,#3
1190  03fb 85            	popw	x
1191  03fc bf00          	ldw	c_y,x
1192  03fe 320002        	pop	c_y+2
1193  0401 85            	popw	x
1194  0402 bf00          	ldw	c_x,x
1195  0404 320002        	pop	c_x+2
1196  0407 80            	iret
1237                     	switch	.const
1238  0004               L44:
1239  0004 00000002      	dc.l	2
1240                     ; 375 INTERRUPT_HANDLER(TIMER4_ISR, 23)
1240                     ; 376 {		
1241                     	switch	.text
1242  0408               f_TIMER4_ISR:
1244  0408 3b0002        	push	c_x+2
1245  040b be00          	ldw	x,c_x
1246  040d 89            	pushw	x
1247  040e 3b0002        	push	c_y+2
1248  0411 be00          	ldw	x,c_y
1249  0413 89            	pushw	x
1250  0414 be02          	ldw	x,c_lreg+2
1251  0416 89            	pushw	x
1252  0417 be00          	ldw	x,c_lreg
1253  0419 89            	pushw	x
1256                     ; 377 	TIM4_Cmd(DISABLE);
1258  041a 4f            	clr	a
1259  041b 8d000000      	callf	f_TIM4_Cmd
1261                     ; 378 	TIM4_ClearFlag(TIM4_IT_UPDATE);
1263  041f a601          	ld	a,#1
1264  0421 8d000000      	callf	f_TIM4_ClearFlag
1266                     ; 379 	nop();
1269  0425 9d            nop
1271                     ; 380 	nop();
1275  0426 9d            nop
1277                     ; 381 	nop();
1281  0427 9d            nop
1283                     ; 382 	nop();
1287  0428 9d            nop
1289                     ; 383 	nop();
1293  0429 9d            nop
1295                     ; 384 	nop();
1299  042a 9d            nop
1301                     ; 385 	nop();
1305  042b 9d            nop
1307                     ; 386 	nop();
1311  042c 9d            nop
1313                     ; 387 	nop();
1317  042d 9d            nop
1319                     ; 388 	nop();
1323  042e 9d            nop
1325                     ; 389 	nop();
1329  042f 9d            nop
1331                     ; 390 	TIM4_Cmd(ENABLE);
1334  0430 a601          	ld	a,#1
1335  0432 8d000000      	callf	f_TIM4_Cmd
1337                     ; 392 	if (ir_release_timer > TIMER_EXPIRED)
1339  0436 c6000e        	ld	a,L12_ir_release_timer
1340  0439 a102          	cp	a,#2
1341  043b 2504          	jrult	L514
1342                     ; 394 		ir_release_timer--;
1344  043d 725a000e      	dec	L12_ir_release_timer
1345  0441               L514:
1346                     ; 396 	if (delay_timer > TIMER_EXPIRED)
1348  0441 ae000a        	ldw	x,#L32_delay_timer
1349  0444 8d000000      	callf	d_ltor
1351  0448 ae0004        	ldw	x,#L44
1352  044b 8d000000      	callf	d_lcmp
1354  044f 2509          	jrult	L714
1355                     ; 398 		delay_timer--;
1357  0451 ae000a        	ldw	x,#L32_delay_timer
1358  0454 a601          	ld	a,#1
1359  0456 8d000000      	callf	d_lgsbc
1361  045a               L714:
1362                     ; 400 	if (ir_process_timer > TIMER_EXPIRED)
1364  045a ae0006        	ldw	x,#L52_ir_process_timer
1365  045d 8d000000      	callf	d_ltor
1367  0461 ae0004        	ldw	x,#L44
1368  0464 8d000000      	callf	d_lcmp
1370  0468 2509          	jrult	L124
1371                     ; 402 		ir_process_timer--;
1373  046a ae0006        	ldw	x,#L52_ir_process_timer
1374  046d a601          	ld	a,#1
1375  046f 8d000000      	callf	d_lgsbc
1377  0473               L124:
1378                     ; 404 	if (Key_detect_timer > TIMER_EXPIRED)
1380  0473 ae0002        	ldw	x,#L72_Key_detect_timer
1381  0476 8d000000      	callf	d_ltor
1383  047a ae0004        	ldw	x,#L44
1384  047d 8d000000      	callf	d_lcmp
1386  0481 2509          	jrult	L324
1387                     ; 406 		Key_detect_timer--;
1389  0483 ae0002        	ldw	x,#L72_Key_detect_timer
1390  0486 a601          	ld	a,#1
1391  0488 8d000000      	callf	d_lgsbc
1393  048c               L324:
1394                     ; 408 	SWI2C_UpdateTimer();
1396  048c 8d000000      	callf	f_SWI2C_UpdateTimer
1398                     ; 409 	System_Clock++;
1400  0490 ae0000        	ldw	x,#_System_Clock
1401  0493 a601          	ld	a,#1
1402  0495 8d000000      	callf	d_lgadc
1404                     ; 410 }
1407  0499 85            	popw	x
1408  049a bf00          	ldw	c_lreg,x
1409  049c 85            	popw	x
1410  049d bf02          	ldw	c_lreg+2,x
1411  049f 85            	popw	x
1412  04a0 bf00          	ldw	c_y,x
1413  04a2 320002        	pop	c_y+2
1414  04a5 85            	popw	x
1415  04a6 bf00          	ldw	c_x,x
1416  04a8 320002        	pop	c_x+2
1417  04ab 80            	iret
1450                     ; 412 void IR_DelayNMiliseconds(u16 delay)
1450                     ; 413 {
1451                     	switch	.text
1452  04ac               f_IR_DelayNMiliseconds:
1456                     ; 414 	delay_timer = delay;
1458  04ac 8d000000      	callf	d_uitolx
1460  04b0 ae000a        	ldw	x,#L32_delay_timer
1461  04b3 8d000000      	callf	d_rtol
1464  04b7               L544:
1465                     ; 415 	while (delay_timer > TIMER_EXPIRED);
1467  04b7 ae000a        	ldw	x,#L32_delay_timer
1468  04ba 8d000000      	callf	d_ltor
1470  04be ae0004        	ldw	x,#L44
1471  04c1 8d000000      	callf	d_lcmp
1473  04c5 24f0          	jruge	L544
1474                     ; 416 	delay_timer = TIMER_STOPPED;
1476  04c7 ae0000        	ldw	x,#0
1477  04ca cf000c        	ldw	L32_delay_timer+2,x
1478  04cd ae0000        	ldw	x,#0
1479  04d0 cf000a        	ldw	L32_delay_timer,x
1480                     ; 417 }
1483  04d3 87            	retf
1600                     	switch	.bss
1601  0000               L13_Conversion_Value:
1602  0000 0000          	ds.b	2
1603  0002               L72_Key_detect_timer:
1604  0002 00000000      	ds.b	4
1605  0006               L52_ir_process_timer:
1606  0006 00000000      	ds.b	4
1607  000a               L32_delay_timer:
1608  000a 00000000      	ds.b	4
1609  000e               L12_ir_release_timer:
1610  000e 00            	ds.b	1
1611  000f               L71_ir_fisrt_process:
1612  000f 00            	ds.b	1
1613  0010               L51_ir_pressed:
1614  0010 00            	ds.b	1
1615  0011               L31_receive_code:
1616  0011 00            	ds.b	1
1617  0012               L11_head_type:
1618  0012 00            	ds.b	1
1619  0013               L7_ir_code:
1620  0013 00000000      	ds.b	4
1621  0017               L5_ir_bit_number:
1622  0017 00            	ds.b	1
1623  0018               L3_ir_state:
1624  0018 00            	ds.b	1
1625                     	xref	f_SWI2C_UpdateTimer
1626                     	xref	f_SWI2C_Set_deep
1627                     	xref	f_SWI2C_Toggle3DOnOff
1628                     	xref	f_SWI2C_VerifyKey
1629                     	xref	f_SWI2C_ResetFPGA
1630                     	xref	f_SWI2C_ToggleI2CMode
1631                     	xref	f_SWI2C_ProcessPower
1632                     	xdef	_System_Clock
1633                     	xdef	f_TIMER4_ISR
1634                     	xdef	f_IR_IN_ISR
1635                     	xdef	f_IR_DelayNMiliseconds
1636                     	xdef	f_IR_Update
1637                     	xdef	f_Timer_Init
1638                     	xdef	f_IR_IN_Init
1639                     	xref	f_ADC2_GetConversionValue
1640                     	xref	f_ADC2_StartConversion
1641                     	xref	f_ADC2_Init
1642                     	xref	f_TIM4_ClearFlag
1643                     	xref	f_TIM4_ITConfig
1644                     	xref	f_TIM4_Cmd
1645                     	xref	f_TIM4_TimeBaseInit
1646                     	xref	f_TIM2_ClearFlag
1647                     	xref	f_TIM2_GetCounter
1648                     	xref	f_TIM2_SetCounter
1649                     	xref	f_TIM2_Cmd
1650                     	xref	f_TIM2_TimeBaseInit
1651                     	xref	f_EXTI_SetExtIntSensitivity
1652                     	xref	f_GPIO_Init
1653                     	xref.b	c_lreg
1654                     	xref.b	c_x
1655                     	xref.b	c_y
1675                     	xref	d_rtol
1676                     	xref	d_uitolx
1677                     	xref	d_lgadc
1678                     	xref	d_lgsbc
1679                     	xref	d_jctab
1680                     	xref	d_lcmp
1681                     	xref	d_ltor
1682                     	end
