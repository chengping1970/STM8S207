   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  15                     	switch	.data
  16  0000               _System_Clock:
  17  0000 00000000      	dc.l	0
  69                     ; 94 static u8 _Compare_Count(u16 a, u16 max, u16 min)
  69                     ; 95 {
  70                     	switch	.text
  71  0000               L34f__Compare_Count:
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
 117  0010               L37f__convert_IR:
 121                     ; 101 	if (head_type)
 123  0010 725d0016      	tnz	L11_head_type
 124  0014 274b          	jreq	L561
 125                     ; 103 		switch (receive_code)
 127  0016 c60015        	ld	a,L31_receive_code
 129                     ; 116 			default:
 129                     ; 117 				return KEY_DUMMY;
 130  0019 4d            	tnz	a
 131  001a 2725          	jreq	L57
 132  001c 4a            	dec	a
 133  001d 2724          	jreq	L77
 134  001f 4a            	dec	a
 135  0020 2724          	jreq	L101
 136  0022 4a            	dec	a
 137  0023 2724          	jreq	L301
 138  0025 4a            	dec	a
 139  0026 2724          	jreq	L501
 140  0028 4a            	dec	a
 141  0029 2724          	jreq	L701
 142  002b a070          	sub	a,#112
 143  002d 272c          	jreq	L711
 144  002f a04b          	sub	a,#75
 145  0031 2722          	jreq	L311
 146  0033 4a            	dec	a
 147  0034 2728          	jreq	L121
 148  0036 a002          	sub	a,#2
 149  0038 271e          	jreq	L511
 150  003a a004          	sub	a,#4
 151  003c 2714          	jreq	L111
 152  003e               L321:
 155  003e a6ff          	ld	a,#255
 158  0040 87            	retf
 159  0041               L57:
 160                     ; 105 			case 0x0: 		return KEY_DEEP_0;
 162  0041 4f            	clr	a
 165  0042 87            	retf
 166  0043               L77:
 167                     ; 106 			case 0x1: 		return KEY_DEEP_1;
 169  0043 a601          	ld	a,#1
 172  0045 87            	retf
 173  0046               L101:
 174                     ; 107 			case 0x2: 		return KEY_DEEP_2;
 176  0046 a602          	ld	a,#2
 179  0048 87            	retf
 180  0049               L301:
 181                     ; 108 			case 0x3: 		return KEY_DEEP_3;
 183  0049 a603          	ld	a,#3
 186  004b 87            	retf
 187  004c               L501:
 188                     ; 109 			case 0x4: 		return KEY_DEEP_4;
 190  004c a604          	ld	a,#4
 193  004e 87            	retf
 194  004f               L701:
 195                     ; 110 			case 0x5: 		return KEY_DEEP_5;
 197  004f a605          	ld	a,#5
 200  0051 87            	retf
 201  0052               L111:
 202                     ; 111 			case 0xC7:		return KEY_POWER;
 204  0052 a606          	ld	a,#6
 207  0054 87            	retf
 208  0055               L311:
 209                     ; 112 			case 0xC0: 		return KEY_PC;
 211  0055 a609          	ld	a,#9
 214  0057 87            	retf
 215  0058               L511:
 216                     ; 113 			case 0xC3: 		return KEY_HDMI;
 218  0058 a60a          	ld	a,#10
 221  005a 87            	retf
 222  005b               L711:
 223                     ; 114 			case 0x75: 		return KEY_ONOFF_3D;
 225  005b a607          	ld	a,#7
 228  005d 87            	retf
 229  005e               L121:
 230                     ; 115 			case 0xC1: 		return KEY_DEBUG;
 232  005e a60f          	ld	a,#15
 235  0060 87            	retf
 236  0061               L561:
 237                     ; 122 		switch (receive_code)
 239  0061 c60015        	ld	a,L31_receive_code
 241                     ; 135 			default:
 241                     ; 136 				return KEY_DUMMY;
 242  0064 4a            	dec	a
 243  0065 2746          	jreq	L151
 244  0067 a00f          	sub	a,#15
 245  0069 2725          	jreq	L521
 246  006b a002          	sub	a,#2
 247  006d 272f          	jreq	L731
 248  006f a003          	sub	a,#3
 249  0071 2725          	jreq	L331
 250  0073 4a            	dec	a
 251  0074 271f          	jreq	L131
 252  0076 a006          	sub	a,#6
 253  0078 2727          	jreq	L141
 254  007a a034          	sub	a,#52
 255  007c 271d          	jreq	L531
 256  007e a004          	sub	a,#4
 257  0080 2710          	jreq	L721
 258  0082 a002          	sub	a,#2
 259  0084 271e          	jreq	L341
 260  0086 4a            	dec	a
 261  0087 271e          	jreq	L541
 262  0089 a004          	sub	a,#4
 263  008b 271d          	jreq	L741
 264  008d               L351:
 267  008d a6ff          	ld	a,#255
 270  008f 87            	retf
 271  0090               L521:
 272                     ; 124 			case 0x10: 		return KEY_DEEP_0;
 274  0090 4f            	clr	a
 277  0091 87            	retf
 278  0092               L721:
 279                     ; 125 			case 0x54: 		return KEY_DEEP_1;
 281  0092 a601          	ld	a,#1
 284  0094 87            	retf
 285  0095               L131:
 286                     ; 126 			case 0x16: 		return KEY_DEEP_2;
 288  0095 a602          	ld	a,#2
 291  0097 87            	retf
 292  0098               L331:
 293                     ; 127 			case 0x15: 		return KEY_DEEP_3;
 295  0098 a603          	ld	a,#3
 298  009a 87            	retf
 299  009b               L531:
 300                     ; 128 			case 0x50: 		return KEY_DEEP_4;
 302  009b a604          	ld	a,#4
 305  009d 87            	retf
 306  009e               L731:
 307                     ; 129 			case 0x12: 		return KEY_DEEP_5;
 309  009e a605          	ld	a,#5
 312  00a0 87            	retf
 313  00a1               L141:
 314                     ; 130 			case 0x1C: 		return KEY_POWER;
 316  00a1 a606          	ld	a,#6
 319  00a3 87            	retf
 320  00a4               L341:
 321                     ; 131 			case 0x56: 		return KEY_PC;
 323  00a4 a609          	ld	a,#9
 326  00a6 87            	retf
 327  00a7               L541:
 328                     ; 132 			case 0x57: 		return KEY_HDMI;
 330  00a7 a60a          	ld	a,#10
 333  00a9 87            	retf
 334  00aa               L741:
 335                     ; 133 			case 0x5B: 		return KEY_ONOFF_3D;
 337  00aa a607          	ld	a,#7
 340  00ac 87            	retf
 341  00ad               L151:
 342                     ; 134 			case 0x01: 		return KEY_DEBUG;
 344  00ad a60f          	ld	a,#15
 347  00af 87            	retf
 384                     ; 141 void IR_IN_Init(void)
 384                     ; 142 {	
 385                     	switch	.text
 386  00b0               f_IR_IN_Init:
 390                     ; 143 	GPIO_Init(IR_IN_PORT, IR_IN_PIN, GPIO_MODE_IN_FL_IT);
 392  00b0 4b20          	push	#32
 393  00b2 4b40          	push	#64
 394  00b4 ae5000        	ldw	x,#20480
 395  00b7 8d000000      	callf	f_GPIO_Init
 397  00bb 85            	popw	x
 398                     ; 144 	EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOA, EXTI_SENSITIVITY_FALL_ONLY);
 400  00bc ae0002        	ldw	x,#2
 401  00bf 4f            	clr	a
 402  00c0 95            	ld	xh,a
 403  00c1 8d000000      	callf	f_EXTI_SetExtIntSensitivity
 405                     ; 146 	TIM2_TimeBaseInit(TIM2_PRESCALER_16, 0xffff);
 407  00c5 aeffff        	ldw	x,#65535
 408  00c8 89            	pushw	x
 409  00c9 a604          	ld	a,#4
 410  00cb 8d000000      	callf	f_TIM2_TimeBaseInit
 412  00cf 85            	popw	x
 413                     ; 147 	TIM2_Cmd(ENABLE); 
 415  00d0 a601          	ld	a,#1
 416  00d2 8d000000      	callf	f_TIM2_Cmd
 418                     ; 149 	GPIO_Init(KEY_IN_PORT, KEY_IN_PIN, GPIO_MODE_IN_FL_NO_IT);
 420  00d6 4b00          	push	#0
 421  00d8 4b80          	push	#128
 422  00da ae5005        	ldw	x,#20485
 423  00dd 8d000000      	callf	f_GPIO_Init
 425  00e1 85            	popw	x
 426                     ; 150 	ADC2_Init(ADC2_CONVERSIONMODE_CONTINUOUS, ADC2_CHANNEL_7, ADC2_PRESSEL_FCPU_D2,\
 426                     ; 151 					ADC2_EXTTRIG_TIM, DISABLE, ADC2_ALIGN_RIGHT, ADC2_SCHMITTTRIG_CHANNEL7, DISABLE);
 428  00e2 4b00          	push	#0
 429  00e4 4b07          	push	#7
 430  00e6 4b08          	push	#8
 431  00e8 4b00          	push	#0
 432  00ea 4b00          	push	#0
 433  00ec 4b00          	push	#0
 434  00ee ae0007        	ldw	x,#7
 435  00f1 a601          	ld	a,#1
 436  00f3 95            	ld	xh,a
 437  00f4 8d000000      	callf	f_ADC2_Init
 439  00f8 5b06          	addw	sp,#6
 440                     ; 153 	ADC2_StartConversion();
 442  00fa 8d000000      	callf	f_ADC2_StartConversion
 444                     ; 155 	ir_state = IR_RECEIVE_HEAD;
 446  00fe 725f001c      	clr	L3_ir_state
 447                     ; 156 	ir_pressed = FALSE;	
 449  0102 725f0014      	clr	L51_ir_pressed
 450                     ; 157 	ir_fisrt_process = FALSE;
 452  0106 725f0013      	clr	L71_ir_fisrt_process
 453                     ; 158 	receive_code = IRKEY_DUMY;	
 455  010a 35ff0015      	mov	L31_receive_code,#255
 456                     ; 160 	value_c8 = FLASH_ReadByte(0x4001);
 458  010e ae4001        	ldw	x,#16385
 459  0111 89            	pushw	x
 460  0112 ae0000        	ldw	x,#0
 461  0115 89            	pushw	x
 462  0116 8d000000      	callf	f_FLASH_ReadByte
 464  011a 5b04          	addw	sp,#4
 465  011c c70003        	ld	L33_value_c8,a
 466                     ; 161 	value_c9 = FLASH_ReadByte(0x4002);
 468  011f ae4002        	ldw	x,#16386
 469  0122 89            	pushw	x
 470  0123 ae0000        	ldw	x,#0
 471  0126 89            	pushw	x
 472  0127 8d000000      	callf	f_FLASH_ReadByte
 474  012b 5b04          	addw	sp,#4
 475  012d c70002        	ld	L53_value_c9,a
 476                     ; 162 	value_ca = FLASH_ReadByte(0x4003);
 478  0130 ae4003        	ldw	x,#16387
 479  0133 89            	pushw	x
 480  0134 ae0000        	ldw	x,#0
 481  0137 89            	pushw	x
 482  0138 8d000000      	callf	f_FLASH_ReadByte
 484  013c 5b04          	addw	sp,#4
 485  013e c70001        	ld	L73_value_ca,a
 486                     ; 163 	value_cb = FLASH_ReadByte(0x4004);
 488  0141 ae4004        	ldw	x,#16388
 489  0144 89            	pushw	x
 490  0145 ae0000        	ldw	x,#0
 491  0148 89            	pushw	x
 492  0149 8d000000      	callf	f_FLASH_ReadByte
 494  014d 5b04          	addw	sp,#4
 495  014f c70000        	ld	L14_value_cb,a
 496                     ; 164 }
 499  0152 87            	retf
 528                     ; 166 void Timer_Init(void)
 528                     ; 167 {
 529                     	switch	.text
 530  0153               f_Timer_Init:
 534                     ; 168 	TIM4_TimeBaseInit(TIM4_PRESCALER_128, 125);
 536  0153 ae007d        	ldw	x,#125
 537  0156 a607          	ld	a,#7
 538  0158 95            	ld	xh,a
 539  0159 8d000000      	callf	f_TIM4_TimeBaseInit
 541                     ; 169 	TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
 543  015d ae0001        	ldw	x,#1
 544  0160 a601          	ld	a,#1
 545  0162 95            	ld	xh,a
 546  0163 8d000000      	callf	f_TIM4_ITConfig
 548                     ; 170 	TIM4_Cmd(ENABLE); 
 550  0167 a601          	ld	a,#1
 551  0169 8d000000      	callf	f_TIM4_Cmd
 553                     ; 172 	ir_release_timer = TIMER_STOPPED;
 555  016d 725f0012      	clr	L12_ir_release_timer
 556                     ; 173 	delay_timer = TIMER_STOPPED;
 558  0171 ae0000        	ldw	x,#0
 559  0174 cf0010        	ldw	L32_delay_timer+2,x
 560  0177 ae0000        	ldw	x,#0
 561  017a cf000e        	ldw	L32_delay_timer,x
 562                     ; 174 	ir_process_timer = TIMER_STOPPED;
 564  017d ae0000        	ldw	x,#0
 565  0180 cf000c        	ldw	L52_ir_process_timer+2,x
 566  0183 ae0000        	ldw	x,#0
 567  0186 cf000a        	ldw	L52_ir_process_timer,x
 568                     ; 175 	Key_detect_timer = TIMER_EXPIRED;
 570  0189 ae0001        	ldw	x,#1
 571  018c cf0008        	ldw	L72_Key_detect_timer+2,x
 572  018f ae0000        	ldw	x,#0
 573  0192 cf0006        	ldw	L72_Key_detect_timer,x
 574                     ; 176 }
 577  0195 87            	retf
 579                     	switch	.data
 580  0004               L122_value_debug:
 581  0004 00            	dc.b	0
 624                     .const:	section	.text
 625  0000               L22:
 626  0000 00000001      	dc.l	1
 627                     ; 179 void IR_Update(void)
 627                     ; 180 {
 628                     	switch	.text
 629  0196               f_IR_Update:
 631  0196 88            	push	a
 632       00000001      OFST:	set	1
 635                     ; 181 	if (ir_pressed)
 637  0197 725d0014      	tnz	L51_ir_pressed
 638  019b 2604          	jrne	L42
 639  019d ac580258      	jpf	L362
 640  01a1               L42:
 641                     ; 183 		if (ir_process_timer == TIMER_EXPIRED)
 643  01a1 ae000a        	ldw	x,#L52_ir_process_timer
 644  01a4 8d000000      	callf	d_ltor
 646  01a8 ae0000        	ldw	x,#L22
 647  01ab 8d000000      	callf	d_lcmp
 649  01af 2704          	jreq	L62
 650  01b1 ac580258      	jpf	L362
 651  01b5               L62:
 652                     ; 185 			u8 ir_key = _convert_IR();
 654  01b5 8d100010      	callf	L37f__convert_IR
 656  01b9 6b01          	ld	(OFST+0,sp),a
 657                     ; 186 			switch (ir_key)
 659  01bb 7b01          	ld	a,(OFST+0,sp)
 661                     ; 215 				default:
 661                     ; 216 					break;
 662  01bd 4d            	tnz	a
 663  01be 2725          	jreq	L722
 664  01c0 4a            	dec	a
 665  01c1 2729          	jreq	L132
 666  01c3 4a            	dec	a
 667  01c4 272e          	jreq	L332
 668  01c6 4a            	dec	a
 669  01c7 2733          	jreq	L532
 670  01c9 4a            	dec	a
 671  01ca 2738          	jreq	L732
 672  01cc 4a            	dec	a
 673  01cd 273d          	jreq	L142
 674  01cf 4a            	dec	a
 675  01d0 2742          	jreq	L342
 676  01d2 4a            	dec	a
 677  01d3 270a          	jreq	L522
 678  01d5 a008          	sub	a,#8
 679  01d7 263f          	jrne	L172
 680                     ; 188 				case KEY_DEBUG:
 680                     ; 189 					SWI2C_ToggleI2CMode();
 682  01d9 8d000000      	callf	f_SWI2C_ToggleI2CMode
 684                     ; 190 					break;
 686  01dd 2039          	jra	L172
 687  01df               L522:
 688                     ; 191 				case KEY_ONOFF_3D:
 688                     ; 192 					SWI2C_Toggle3DOnOff();
 690  01df 8d000000      	callf	f_SWI2C_Toggle3DOnOff
 692                     ; 193 					break;
 694  01e3 2033          	jra	L172
 695  01e5               L722:
 696                     ; 194 				case KEY_DEEP_0:
 696                     ; 195 					SWI2C_Set_deep(0);
 698  01e5 4f            	clr	a
 699  01e6 8d000000      	callf	f_SWI2C_Set_deep
 701                     ; 196 					break;
 703  01ea 202c          	jra	L172
 704  01ec               L132:
 705                     ; 197 				case KEY_DEEP_1:
 705                     ; 198 					SWI2C_Set_deep(1);
 707  01ec a601          	ld	a,#1
 708  01ee 8d000000      	callf	f_SWI2C_Set_deep
 710                     ; 199 					break;
 712  01f2 2024          	jra	L172
 713  01f4               L332:
 714                     ; 200 				case KEY_DEEP_2:
 714                     ; 201 					SWI2C_Set_deep(2);
 716  01f4 a602          	ld	a,#2
 717  01f6 8d000000      	callf	f_SWI2C_Set_deep
 719                     ; 202 					break;
 721  01fa 201c          	jra	L172
 722  01fc               L532:
 723                     ; 203 				case KEY_DEEP_3:
 723                     ; 204 					SWI2C_Set_deep(3);
 725  01fc a603          	ld	a,#3
 726  01fe 8d000000      	callf	f_SWI2C_Set_deep
 728                     ; 205 					break;
 730  0202 2014          	jra	L172
 731  0204               L732:
 732                     ; 206 				case KEY_DEEP_4:
 732                     ; 207 					SWI2C_Set_deep(4);
 734  0204 a604          	ld	a,#4
 735  0206 8d000000      	callf	f_SWI2C_Set_deep
 737                     ; 208 					break;
 739  020a 200c          	jra	L172
 740  020c               L142:
 741                     ; 209 				case KEY_DEEP_5:
 741                     ; 210 					SWI2C_Set_deep(5);
 743  020c a605          	ld	a,#5
 744  020e 8d000000      	callf	f_SWI2C_Set_deep
 746                     ; 211 					break;
 748  0212 2004          	jra	L172
 749  0214               L342:
 750                     ; 212 				case KEY_POWER:
 750                     ; 213 					SWI2C_ProcessPower();
 752  0214 8d000000      	callf	f_SWI2C_ProcessPower
 754                     ; 214 					break;
 756  0218               L542:
 757                     ; 215 				default:
 757                     ; 216 					break;
 759  0218               L172:
 760                     ; 218 			if (ir_key != KEY_VOLUME_PLUS && ir_key != KEY_VOLUME_MINUS && ir_key != KEY_LEFT &&ir_key != KEY_RIGHT)
 762  0218 7b01          	ld	a,(OFST+0,sp)
 763  021a a10b          	cp	a,#11
 764  021c 2716          	jreq	L372
 766  021e 7b01          	ld	a,(OFST+0,sp)
 767  0220 a10c          	cp	a,#12
 768  0222 2710          	jreq	L372
 770  0224 7b01          	ld	a,(OFST+0,sp)
 771  0226 a10d          	cp	a,#13
 772  0228 270a          	jreq	L372
 774  022a 7b01          	ld	a,(OFST+0,sp)
 775  022c a10e          	cp	a,#14
 776  022e 2704          	jreq	L372
 777                     ; 220 				receive_code = IRKEY_DUMY;
 779  0230 35ff0015      	mov	L31_receive_code,#255
 780  0234               L372:
 781                     ; 222 			if (ir_fisrt_process)
 783  0234 725d0013      	tnz	L71_ir_fisrt_process
 784  0238 2712          	jreq	L572
 785                     ; 224 				ir_fisrt_process = FALSE;
 787  023a 725f0013      	clr	L71_ir_fisrt_process
 788                     ; 225 				ir_process_timer = 500 + 1;
 790  023e ae01f5        	ldw	x,#501
 791  0241 cf000c        	ldw	L52_ir_process_timer+2,x
 792  0244 ae0000        	ldw	x,#0
 793  0247 cf000a        	ldw	L52_ir_process_timer,x
 795  024a 200c          	jra	L362
 796  024c               L572:
 797                     ; 229 				ir_process_timer = 50 + 1;
 799  024c ae0033        	ldw	x,#51
 800  024f cf000c        	ldw	L52_ir_process_timer+2,x
 801  0252 ae0000        	ldw	x,#0
 802  0255 cf000a        	ldw	L52_ir_process_timer,x
 803  0258               L362:
 804                     ; 234 	if (ir_release_timer == TIMER_EXPIRED)
 806  0258 c60012        	ld	a,L12_ir_release_timer
 807  025b a101          	cp	a,#1
 808  025d 2614          	jrne	L103
 809                     ; 236 		ir_release_timer = TIMER_STOPPED;
 811  025f 725f0012      	clr	L12_ir_release_timer
 812                     ; 237 		ir_process_timer = TIMER_STOPPED;
 814  0263 ae0000        	ldw	x,#0
 815  0266 cf000c        	ldw	L52_ir_process_timer+2,x
 816  0269 ae0000        	ldw	x,#0
 817  026c cf000a        	ldw	L52_ir_process_timer,x
 818                     ; 238 		ir_pressed = FALSE;	
 820  026f 725f0014      	clr	L51_ir_pressed
 821  0273               L103:
 822                     ; 241 	if (Key_detect_timer == TIMER_EXPIRED)
 824  0273 ae0006        	ldw	x,#L72_Key_detect_timer
 825  0276 8d000000      	callf	d_ltor
 827  027a ae0000        	ldw	x,#L22
 828  027d 8d000000      	callf	d_lcmp
 830  0281 2613          	jrne	L303
 831                     ; 243 		Conversion_Value = ADC2_GetConversionValue();
 833  0283 8d000000      	callf	f_ADC2_GetConversionValue
 835  0287 cf0004        	ldw	L13_Conversion_Value,x
 836                     ; 244 		Key_detect_timer = KEY_DETECT_TIME;
 838  028a ae0065        	ldw	x,#101
 839  028d cf0008        	ldw	L72_Key_detect_timer+2,x
 840  0290 ae0000        	ldw	x,#0
 841  0293 cf0006        	ldw	L72_Key_detect_timer,x
 842  0296               L303:
 843                     ; 246 }
 846  0296 84            	pop	a
 847  0297 87            	retf
 899                     ; 248 INTERRUPT_HANDLER(IR_IN_ISR, 3)
 899                     ; 249 {
 900                     	switch	.text
 901  0298               f_IR_IN_ISR:
 903       00000003      OFST:	set	3
 904  0298 3b0002        	push	c_x+2
 905  029b be00          	ldw	x,c_x
 906  029d 89            	pushw	x
 907  029e 3b0002        	push	c_y+2
 908  02a1 be00          	ldw	x,c_y
 909  02a3 89            	pushw	x
 910  02a4 5203          	subw	sp,#3
 913                     ; 251 	u8 fault = FALSE;
 915  02a6 0f01          	clr	(OFST-2,sp)
 916                     ; 253 	TIM2_Cmd(DISABLE);
 918  02a8 4f            	clr	a
 919  02a9 8d000000      	callf	f_TIM2_Cmd
 921                     ; 254 	TIM2_ClearFlag(TIM2_FLAG_UPDATE);
 923  02ad ae0001        	ldw	x,#1
 924  02b0 8d000000      	callf	f_TIM2_ClearFlag
 926                     ; 255 	count = TIM2_GetCounter();
 928  02b4 8d000000      	callf	f_TIM2_GetCounter
 930  02b8 1f02          	ldw	(OFST-1,sp),x
 931                     ; 256 	TIM2_SetCounter(0);			
 933  02ba 5f            	clrw	x
 934  02bb 8d000000      	callf	f_TIM2_SetCounter
 936                     ; 257 	TIM2_Cmd(ENABLE);
 938  02bf a601          	ld	a,#1
 939  02c1 8d000000      	callf	f_TIM2_Cmd
 941                     ; 259 	if (count > LEADER_UPPER_LIMIT)
 943  02c5 1e02          	ldw	x,(OFST-1,sp)
 944  02c7 a33c8d        	cpw	x,#15501
 945  02ca 2506          	jrult	L133
 946                     ; 261 		fault = TRUE;
 948  02cc a601          	ld	a,#1
 949  02ce 6b01          	ld	(OFST-2,sp),a
 951  02d0 2043          	jra	L333
 952  02d2               L133:
 953                     ; 265 		switch (ir_state)
 955  02d2 c6001c        	ld	a,L3_ir_state
 957                     ; 321 			default:
 957                     ; 322 				break;
 958  02d5 4d            	tnz	a
 959  02d6 2705          	jreq	L503
 960  02d8 4a            	dec	a
 961  02d9 274a          	jreq	L703
 962  02db 2038          	jra	L333
 963  02dd               L503:
 964                     ; 267 			case IR_RECEIVE_HEAD:
 964                     ; 268 				if (_Compare_Count(count, LEADER_UPPER_LIMIT, LEADER_LOWER_LIMIT))
 966  02dd ae30d4        	ldw	x,#12500
 967  02e0 89            	pushw	x
 968  02e1 ae3c8c        	ldw	x,#15500
 969  02e4 89            	pushw	x
 970  02e5 1e06          	ldw	x,(OFST+3,sp)
 971  02e7 8d000000      	callf	L34f__Compare_Count
 973  02eb 5b04          	addw	sp,#4
 974  02ed 4d            	tnz	a
 975  02ee 270a          	jreq	L143
 976                     ; 270 					ir_release_timer = IR_RELEASE_TIME;
 978  02f0 35810012      	mov	L12_ir_release_timer,#129
 979                     ; 271 					ir_state = IR_RECEIVE_CODE;
 981  02f4 3501001c      	mov	L3_ir_state,#1
 983  02f8 2017          	jra	L343
 984  02fa               L143:
 985                     ; 273 				else if (_Compare_Count(count, REPEAT_UPPER_LIMIT, REPEAT_LOWER_LIMIT))
 987  02fa ae280a        	ldw	x,#10250
 988  02fd 89            	pushw	x
 989  02fe ae2fda        	ldw	x,#12250
 990  0301 89            	pushw	x
 991  0302 1e06          	ldw	x,(OFST+3,sp)
 992  0304 8d000000      	callf	L34f__Compare_Count
 994  0308 5b04          	addw	sp,#4
 995  030a 4d            	tnz	a
 996  030b 2704          	jreq	L343
 997                     ; 275 					ir_release_timer = IR_RELEASE_TIME;
 999  030d 35810012      	mov	L12_ir_release_timer,#129
1000  0311               L343:
1001                     ; 277 				ir_bit_number = 0;
1003  0311 725f001b      	clr	L5_ir_bit_number
1004                     ; 278 				break;
1005  0315               L333:
1006                     ; 325 	if (fault)
1008  0315 0d01          	tnz	(OFST-2,sp)
1009  0317 2604          	jrne	L23
1010  0319 ac040404      	jpf	L773
1011  031d               L23:
1012                     ; 327 		ir_state = IR_RECEIVE_HEAD;
1014  031d 725f001c      	clr	L3_ir_state
1015  0321 ac040404      	jpf	L773
1016  0325               L703:
1017                     ; 279 			case IR_RECEIVE_CODE:
1017                     ; 280 				if (_Compare_Count(count, HIGH_UPPER_LIMIT, HIGH_LOWER_LIMIT))
1019  0325 ae06a4        	ldw	x,#1700
1020  0328 89            	pushw	x
1021  0329 ae0af0        	ldw	x,#2800
1022  032c 89            	pushw	x
1023  032d 1e06          	ldw	x,(OFST+3,sp)
1024  032f 8d000000      	callf	L34f__Compare_Count
1026  0333 5b04          	addw	sp,#4
1027  0335 4d            	tnz	a
1028  0336 271e          	jreq	L743
1029                     ; 282 					ir_code[ir_bit_number/8] = (ir_code[ir_bit_number/8]>>1)|0x80;
1031  0338 c6001b        	ld	a,L5_ir_bit_number
1032  033b 44            	srl	a
1033  033c 44            	srl	a
1034  033d 44            	srl	a
1035  033e 5f            	clrw	x
1036  033f 97            	ld	xl,a
1037  0340 c6001b        	ld	a,L5_ir_bit_number
1038  0343 44            	srl	a
1039  0344 44            	srl	a
1040  0345 44            	srl	a
1041  0346 905f          	clrw	y
1042  0348 9097          	ld	yl,a
1043  034a 90d60017      	ld	a,(L7_ir_code,y)
1044  034e 44            	srl	a
1045  034f aa80          	or	a,#128
1046  0351 d70017        	ld	(L7_ir_code,x),a
1048  0354 2025          	jra	L153
1049  0356               L743:
1050                     ; 284 				else if (_Compare_Count(count, LOW_UPPER_LIMIT, LOW_LOWER_LIMIT))
1052  0356 ae0320        	ldw	x,#800
1053  0359 89            	pushw	x
1054  035a ae05aa        	ldw	x,#1450
1055  035d 89            	pushw	x
1056  035e 1e06          	ldw	x,(OFST+3,sp)
1057  0360 8d000000      	callf	L34f__Compare_Count
1059  0364 5b04          	addw	sp,#4
1060  0366 4d            	tnz	a
1061  0367 270e          	jreq	L353
1062                     ; 286 					ir_code[ir_bit_number/8] = ir_code[ir_bit_number/8]>>1;
1064  0369 c6001b        	ld	a,L5_ir_bit_number
1065  036c 44            	srl	a
1066  036d 44            	srl	a
1067  036e 44            	srl	a
1068  036f 5f            	clrw	x
1069  0370 97            	ld	xl,a
1070  0371 72440017      	srl	(L7_ir_code,x)
1072  0375 2004          	jra	L153
1073  0377               L353:
1074                     ; 290 					fault = TRUE;
1076  0377 a601          	ld	a,#1
1077  0379 6b01          	ld	(OFST-2,sp),a
1078  037b               L153:
1079                     ; 292 				ir_bit_number++;
1081  037b 725c001b      	inc	L5_ir_bit_number
1082                     ; 293 				if (ir_bit_number == 32 && !fault)
1084  037f c6001b        	ld	a,L5_ir_bit_number
1085  0382 a120          	cp	a,#32
1086  0384 268f          	jrne	L333
1088  0386 0d01          	tnz	(OFST-2,sp)
1089  0388 268b          	jrne	L333
1090                     ; 295 					ir_state = IR_RECEIVE_HEAD;
1092  038a 725f001c      	clr	L3_ir_state
1093                     ; 296 					if (((ir_code[0] == 0x0 && ir_code[1] == 0xDF) || (ir_code[0] == 0x4F && ir_code[1] == 0x50)) 
1093                     ; 297 					&& ((ir_code[2]^ir_code[3]) == 0xFF))
1095  038e 725d0017      	tnz	L7_ir_code
1096  0392 2607          	jrne	L563
1098  0394 c60018        	ld	a,L7_ir_code+1
1099  0397 a1df          	cp	a,#223
1100  0399 270e          	jreq	L363
1101  039b               L563:
1103  039b c60017        	ld	a,L7_ir_code
1104  039e a14f          	cp	a,#79
1105  03a0 2652          	jrne	L163
1107  03a2 c60018        	ld	a,L7_ir_code+1
1108  03a5 a150          	cp	a,#80
1109  03a7 264b          	jrne	L163
1110  03a9               L363:
1112  03a9 c60019        	ld	a,L7_ir_code+2
1113  03ac c8001a        	xor	a,L7_ir_code+3
1114  03af a1ff          	cp	a,#255
1115  03b1 2641          	jrne	L163
1116                     ; 299 						if (!ir_pressed)
1118  03b3 725d0014      	tnz	L51_ir_pressed
1119  03b7 2704          	jreq	L43
1120  03b9 ac150315      	jpf	L333
1121  03bd               L43:
1122                     ; 301 							receive_code = ir_code[2];						
1124  03bd 5500190015    	mov	L31_receive_code,L7_ir_code+2
1125                     ; 302 							ir_pressed = TRUE;
1127  03c2 35010014      	mov	L51_ir_pressed,#1
1128                     ; 303 							ir_fisrt_process = TRUE;
1130  03c6 35010013      	mov	L71_ir_fisrt_process,#1
1131                     ; 304 							ir_process_timer = TIMER_EXPIRED;
1133  03ca ae0001        	ldw	x,#1
1134  03cd cf000c        	ldw	L52_ir_process_timer+2,x
1135  03d0 ae0000        	ldw	x,#0
1136  03d3 cf000a        	ldw	L52_ir_process_timer,x
1137                     ; 305 							if (ir_code[0] == 0x4F && ir_code[1] == 0x50)
1139  03d6 c60017        	ld	a,L7_ir_code
1140  03d9 a14f          	cp	a,#79
1141  03db 260f          	jrne	L173
1143  03dd c60018        	ld	a,L7_ir_code+1
1144  03e0 a150          	cp	a,#80
1145  03e2 2608          	jrne	L173
1146                     ; 307 								head_type = 1;
1148  03e4 35010016      	mov	L11_head_type,#1
1150  03e8 ac150315      	jpf	L333
1151  03ec               L173:
1152                     ; 311 								head_type = 0;
1154  03ec 725f0016      	clr	L11_head_type
1155  03f0 ac150315      	jpf	L333
1156  03f4               L163:
1157                     ; 317 						fault = TRUE;
1159  03f4 a601          	ld	a,#1
1160  03f6 6b01          	ld	(OFST-2,sp),a
1161  03f8 ac150315      	jpf	L333
1162  03fc               L113:
1163                     ; 321 			default:
1163                     ; 322 				break;
1165  03fc ac150315      	jpf	L333
1166  0400               L733:
1167  0400 ac150315      	jpf	L333
1168  0404               L773:
1169                     ; 329 }
1172  0404 5b03          	addw	sp,#3
1173  0406 85            	popw	x
1174  0407 bf00          	ldw	c_y,x
1175  0409 320002        	pop	c_y+2
1176  040c 85            	popw	x
1177  040d bf00          	ldw	c_x,x
1178  040f 320002        	pop	c_x+2
1179  0412 80            	iret
1220                     	switch	.const
1221  0004               L04:
1222  0004 00000002      	dc.l	2
1223                     ; 331 INTERRUPT_HANDLER(TIMER4_ISR, 23)
1223                     ; 332 {		
1224                     	switch	.text
1225  0413               f_TIMER4_ISR:
1227  0413 3b0002        	push	c_x+2
1228  0416 be00          	ldw	x,c_x
1229  0418 89            	pushw	x
1230  0419 3b0002        	push	c_y+2
1231  041c be00          	ldw	x,c_y
1232  041e 89            	pushw	x
1233  041f be02          	ldw	x,c_lreg+2
1234  0421 89            	pushw	x
1235  0422 be00          	ldw	x,c_lreg
1236  0424 89            	pushw	x
1239                     ; 333 	TIM4_Cmd(DISABLE);
1241  0425 4f            	clr	a
1242  0426 8d000000      	callf	f_TIM4_Cmd
1244                     ; 334 	TIM4_ClearFlag(TIM4_IT_UPDATE);
1246  042a a601          	ld	a,#1
1247  042c 8d000000      	callf	f_TIM4_ClearFlag
1249                     ; 335 	nop();
1252  0430 9d            nop
1254                     ; 336 	nop();
1258  0431 9d            nop
1260                     ; 337 	nop();
1264  0432 9d            nop
1266                     ; 338 	nop();
1270  0433 9d            nop
1272                     ; 339 	nop();
1276  0434 9d            nop
1278                     ; 340 	nop();
1282  0435 9d            nop
1284                     ; 341 	nop();
1288  0436 9d            nop
1290                     ; 342 	nop();
1294  0437 9d            nop
1296                     ; 343 	nop();
1300  0438 9d            nop
1302                     ; 344 	nop();
1306  0439 9d            nop
1308                     ; 345 	nop();
1312  043a 9d            nop
1314                     ; 346 	TIM4_Cmd(ENABLE);
1317  043b a601          	ld	a,#1
1318  043d 8d000000      	callf	f_TIM4_Cmd
1320                     ; 348 	if (ir_release_timer > TIMER_EXPIRED)
1322  0441 c60012        	ld	a,L12_ir_release_timer
1323  0444 a102          	cp	a,#2
1324  0446 2504          	jrult	L114
1325                     ; 350 		ir_release_timer--;
1327  0448 725a0012      	dec	L12_ir_release_timer
1328  044c               L114:
1329                     ; 352 	if (delay_timer > TIMER_EXPIRED)
1331  044c ae000e        	ldw	x,#L32_delay_timer
1332  044f 8d000000      	callf	d_ltor
1334  0453 ae0004        	ldw	x,#L04
1335  0456 8d000000      	callf	d_lcmp
1337  045a 2509          	jrult	L314
1338                     ; 354 		delay_timer--;
1340  045c ae000e        	ldw	x,#L32_delay_timer
1341  045f a601          	ld	a,#1
1342  0461 8d000000      	callf	d_lgsbc
1344  0465               L314:
1345                     ; 356 	if (ir_process_timer > TIMER_EXPIRED)
1347  0465 ae000a        	ldw	x,#L52_ir_process_timer
1348  0468 8d000000      	callf	d_ltor
1350  046c ae0004        	ldw	x,#L04
1351  046f 8d000000      	callf	d_lcmp
1353  0473 2509          	jrult	L514
1354                     ; 358 		ir_process_timer--;
1356  0475 ae000a        	ldw	x,#L52_ir_process_timer
1357  0478 a601          	ld	a,#1
1358  047a 8d000000      	callf	d_lgsbc
1360  047e               L514:
1361                     ; 360 	if (Key_detect_timer > TIMER_EXPIRED)
1363  047e ae0006        	ldw	x,#L72_Key_detect_timer
1364  0481 8d000000      	callf	d_ltor
1366  0485 ae0004        	ldw	x,#L04
1367  0488 8d000000      	callf	d_lcmp
1369  048c 2509          	jrult	L714
1370                     ; 362 		Key_detect_timer--;
1372  048e ae0006        	ldw	x,#L72_Key_detect_timer
1373  0491 a601          	ld	a,#1
1374  0493 8d000000      	callf	d_lgsbc
1376  0497               L714:
1377                     ; 364 	SWI2C_UpdateTimer();
1379  0497 8d000000      	callf	f_SWI2C_UpdateTimer
1381                     ; 365 	System_Clock++;
1383  049b ae0000        	ldw	x,#_System_Clock
1384  049e a601          	ld	a,#1
1385  04a0 8d000000      	callf	d_lgadc
1387                     ; 366 }
1390  04a4 85            	popw	x
1391  04a5 bf00          	ldw	c_lreg,x
1392  04a7 85            	popw	x
1393  04a8 bf02          	ldw	c_lreg+2,x
1394  04aa 85            	popw	x
1395  04ab bf00          	ldw	c_y,x
1396  04ad 320002        	pop	c_y+2
1397  04b0 85            	popw	x
1398  04b1 bf00          	ldw	c_x,x
1399  04b3 320002        	pop	c_x+2
1400  04b6 80            	iret
1433                     ; 368 void IR_DelayNMiliseconds(u16 delay)
1433                     ; 369 {
1434                     	switch	.text
1435  04b7               f_IR_DelayNMiliseconds:
1439                     ; 370 	delay_timer = delay;
1441  04b7 8d000000      	callf	d_uitolx
1443  04bb ae000e        	ldw	x,#L32_delay_timer
1444  04be 8d000000      	callf	d_rtol
1447  04c2               L144:
1448                     ; 371 	while (delay_timer > TIMER_EXPIRED);
1450  04c2 ae000e        	ldw	x,#L32_delay_timer
1451  04c5 8d000000      	callf	d_ltor
1453  04c9 ae0004        	ldw	x,#L04
1454  04cc 8d000000      	callf	d_lcmp
1456  04d0 24f0          	jruge	L144
1457                     ; 372 	delay_timer = TIMER_STOPPED;
1459  04d2 ae0000        	ldw	x,#0
1460  04d5 cf0010        	ldw	L32_delay_timer+2,x
1461  04d8 ae0000        	ldw	x,#0
1462  04db cf000e        	ldw	L32_delay_timer,x
1463                     ; 373 }
1466  04de 87            	retf
1611                     	switch	.bss
1612  0000               L14_value_cb:
1613  0000 00            	ds.b	1
1614  0001               L73_value_ca:
1615  0001 00            	ds.b	1
1616  0002               L53_value_c9:
1617  0002 00            	ds.b	1
1618  0003               L33_value_c8:
1619  0003 00            	ds.b	1
1620  0004               L13_Conversion_Value:
1621  0004 0000          	ds.b	2
1622  0006               L72_Key_detect_timer:
1623  0006 00000000      	ds.b	4
1624  000a               L52_ir_process_timer:
1625  000a 00000000      	ds.b	4
1626  000e               L32_delay_timer:
1627  000e 00000000      	ds.b	4
1628  0012               L12_ir_release_timer:
1629  0012 00            	ds.b	1
1630  0013               L71_ir_fisrt_process:
1631  0013 00            	ds.b	1
1632  0014               L51_ir_pressed:
1633  0014 00            	ds.b	1
1634  0015               L31_receive_code:
1635  0015 00            	ds.b	1
1636  0016               L11_head_type:
1637  0016 00            	ds.b	1
1638  0017               L7_ir_code:
1639  0017 00000000      	ds.b	4
1640  001b               L5_ir_bit_number:
1641  001b 00            	ds.b	1
1642  001c               L3_ir_state:
1643  001c 00            	ds.b	1
1644                     	xref	f_SWI2C_UpdateTimer
1645                     	xref	f_SWI2C_Set_deep
1646                     	xref	f_SWI2C_Toggle3DOnOff
1647                     	xref	f_SWI2C_ToggleI2CMode
1648                     	xref	f_SWI2C_ProcessPower
1649                     	xdef	_System_Clock
1650                     	xdef	f_TIMER4_ISR
1651                     	xdef	f_IR_IN_ISR
1652                     	xdef	f_IR_DelayNMiliseconds
1653                     	xdef	f_IR_Update
1654                     	xdef	f_Timer_Init
1655                     	xdef	f_IR_IN_Init
1656                     	xref	f_ADC2_GetConversionValue
1657                     	xref	f_ADC2_StartConversion
1658                     	xref	f_ADC2_Init
1659                     	xref	f_FLASH_ReadByte
1660                     	xref	f_TIM4_ClearFlag
1661                     	xref	f_TIM4_ITConfig
1662                     	xref	f_TIM4_Cmd
1663                     	xref	f_TIM4_TimeBaseInit
1664                     	xref	f_TIM2_ClearFlag
1665                     	xref	f_TIM2_GetCounter
1666                     	xref	f_TIM2_SetCounter
1667                     	xref	f_TIM2_Cmd
1668                     	xref	f_TIM2_TimeBaseInit
1669                     	xref	f_EXTI_SetExtIntSensitivity
1670                     	xref	f_GPIO_Init
1671                     	xref.b	c_lreg
1672                     	xref.b	c_x
1673                     	xref.b	c_y
1693                     	xref	d_rtol
1694                     	xref	d_uitolx
1695                     	xref	d_lgadc
1696                     	xref	d_lgsbc
1697                     	xref	d_lcmp
1698                     	xref	d_ltor
1699                     	end
