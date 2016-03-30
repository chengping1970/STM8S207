   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  15                     	switch	.data
  16  0000               _System_Clock:
  17  0000 00000000      	dc.l	0
  69                     ; 95 static u8 _Compare_Count(u16 a, u16 max, u16 min)
  69                     ; 96 {
  70                     	switch	.text
  71  0000               L34f__Compare_Count:
  73  0000 89            	pushw	x
  74       00000000      OFST:	set	0
  77                     ; 97 	return (a < max && a > min);
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
 115                     ; 100 static u8 _convert_IR(void)
 115                     ; 101 {
 116                     	switch	.text
 117  0010               L37f__convert_IR:
 121                     ; 102 	if (head_type)
 123  0010 725d0016      	tnz	L11_head_type
 124  0014 274b          	jreq	L361
 125                     ; 104 		switch (receive_code)
 127  0016 c60015        	ld	a,L31_receive_code
 129                     ; 117 			default:
 129                     ; 118 				return KEY_DUMMY;
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
 160                     ; 106 			case 0x0: 		return KEY_DEEP_0;
 162  0041 4f            	clr	a
 165  0042 87            	retf
 166  0043               L77:
 167                     ; 107 			case 0x1: 		return KEY_DEEP_1;
 169  0043 a601          	ld	a,#1
 172  0045 87            	retf
 173  0046               L101:
 174                     ; 108 			case 0x2: 		return KEY_DEEP_2;
 176  0046 a602          	ld	a,#2
 179  0048 87            	retf
 180  0049               L301:
 181                     ; 109 			case 0x3: 		return KEY_DEEP_3;
 183  0049 a603          	ld	a,#3
 186  004b 87            	retf
 187  004c               L501:
 188                     ; 110 			case 0x4: 		return KEY_DEEP_4;
 190  004c a604          	ld	a,#4
 193  004e 87            	retf
 194  004f               L701:
 195                     ; 111 			case 0x5: 		return KEY_DEEP_5;
 197  004f a605          	ld	a,#5
 200  0051 87            	retf
 201  0052               L111:
 202                     ; 112 			case 0xC7:		return KEY_POWER;
 204  0052 a606          	ld	a,#6
 207  0054 87            	retf
 208  0055               L311:
 209                     ; 113 			case 0xC0: 		return KEY_PC;
 211  0055 a609          	ld	a,#9
 214  0057 87            	retf
 215  0058               L511:
 216                     ; 114 			case 0xC3: 		return KEY_HDMI;
 218  0058 a60a          	ld	a,#10
 221  005a 87            	retf
 222  005b               L711:
 223                     ; 115 			case 0x75: 		return KEY_ONOFF_3D;
 225  005b a607          	ld	a,#7
 228  005d 87            	retf
 229  005e               L121:
 230                     ; 116 			case 0xC1: 		return KEY_DEBUG;
 232  005e a60f          	ld	a,#15
 235  0060 87            	retf
 236  0061               L361:
 237                     ; 123 		switch (receive_code)
 239  0061 c60015        	ld	a,L31_receive_code
 241                     ; 135 			default:
 241                     ; 136 				return KEY_DUMMY;
 242  0064 4d            	tnz	a
 243  0065 2735          	jreq	L341
 244  0067 4a            	dec	a
 245  0068 2738          	jreq	L741
 246  006a a010          	sub	a,#16
 247  006c 271a          	jreq	L521
 248  006e 4a            	dec	a
 249  006f 2719          	jreq	L721
 250  0071 4a            	dec	a
 251  0072 2719          	jreq	L131
 252  0074 4a            	dec	a
 253  0075 2719          	jreq	L331
 254  0077 4a            	dec	a
 255  0078 2719          	jreq	L531
 256  007a 4a            	dec	a
 257  007b 2719          	jreq	L731
 258  007d a006          	sub	a,#6
 259  007f 2718          	jreq	L141
 260  0081 a03f          	sub	a,#63
 261  0083 271a          	jreq	L541
 262  0085               L151:
 265  0085 a6ff          	ld	a,#255
 268  0087 87            	retf
 269  0088               L521:
 270                     ; 125 			case 0x11: 		return KEY_DEEP_0;
 272  0088 4f            	clr	a
 275  0089 87            	retf
 276  008a               L721:
 277                     ; 126 			case 0x12: 		return KEY_DEEP_1;
 279  008a a601          	ld	a,#1
 282  008c 87            	retf
 283  008d               L131:
 284                     ; 127 			case 0x13: 		return KEY_DEEP_2;
 286  008d a602          	ld	a,#2
 289  008f 87            	retf
 290  0090               L331:
 291                     ; 128 			case 0x14: 		return KEY_DEEP_3;
 293  0090 a603          	ld	a,#3
 296  0092 87            	retf
 297  0093               L531:
 298                     ; 129 			case 0x15: 		return KEY_DEEP_4;
 300  0093 a604          	ld	a,#4
 303  0095 87            	retf
 304  0096               L731:
 305                     ; 130 			case 0x16: 		return KEY_DEEP_5;
 307  0096 a605          	ld	a,#5
 310  0098 87            	retf
 311  0099               L141:
 312                     ; 131 			case 0x1C: 		return KEY_POWER;
 314  0099 a606          	ld	a,#6
 317  009b 87            	retf
 318  009c               L341:
 319                     ; 132 			case 0: 		return KEY_ONOFF_3D;
 321  009c a607          	ld	a,#7
 324  009e 87            	retf
 325  009f               L541:
 326                     ; 133 			case 0x5B: 		return KEY_ONOFF_3D;
 328  009f a607          	ld	a,#7
 331  00a1 87            	retf
 332  00a2               L741:
 333                     ; 134 			case 0x01: 		return KEY_DEBUG;
 335  00a2 a60f          	ld	a,#15
 338  00a4 87            	retf
 375                     ; 141 void IR_IN_Init(void)
 375                     ; 142 {	
 376                     	switch	.text
 377  00a5               f_IR_IN_Init:
 381                     ; 143 	GPIO_Init(IR_IN_PORT, IR_IN_PIN, GPIO_MODE_IN_FL_IT);
 383  00a5 4b20          	push	#32
 384  00a7 4b40          	push	#64
 385  00a9 ae5000        	ldw	x,#20480
 386  00ac 8d000000      	callf	f_GPIO_Init
 388  00b0 85            	popw	x
 389                     ; 144 	EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOA, EXTI_SENSITIVITY_FALL_ONLY);
 391  00b1 ae0002        	ldw	x,#2
 392  00b4 4f            	clr	a
 393  00b5 95            	ld	xh,a
 394  00b6 8d000000      	callf	f_EXTI_SetExtIntSensitivity
 396                     ; 146 	TIM2_TimeBaseInit(TIM2_PRESCALER_16, 0xffff);
 398  00ba aeffff        	ldw	x,#65535
 399  00bd 89            	pushw	x
 400  00be a604          	ld	a,#4
 401  00c0 8d000000      	callf	f_TIM2_TimeBaseInit
 403  00c4 85            	popw	x
 404                     ; 147 	TIM2_Cmd(ENABLE); 
 406  00c5 a601          	ld	a,#1
 407  00c7 8d000000      	callf	f_TIM2_Cmd
 409                     ; 149 	GPIO_Init(KEY_IN_PORT, KEY_IN_PIN, GPIO_MODE_IN_FL_NO_IT);
 411  00cb 4b00          	push	#0
 412  00cd 4b80          	push	#128
 413  00cf ae5005        	ldw	x,#20485
 414  00d2 8d000000      	callf	f_GPIO_Init
 416  00d6 85            	popw	x
 417                     ; 150 	ADC2_Init(ADC2_CONVERSIONMODE_CONTINUOUS, ADC2_CHANNEL_7, ADC2_PRESSEL_FCPU_D2,\
 417                     ; 151 					ADC2_EXTTRIG_TIM, DISABLE, ADC2_ALIGN_RIGHT, ADC2_SCHMITTTRIG_CHANNEL7, DISABLE);
 419  00d7 4b00          	push	#0
 420  00d9 4b07          	push	#7
 421  00db 4b08          	push	#8
 422  00dd 4b00          	push	#0
 423  00df 4b00          	push	#0
 424  00e1 4b00          	push	#0
 425  00e3 ae0007        	ldw	x,#7
 426  00e6 a601          	ld	a,#1
 427  00e8 95            	ld	xh,a
 428  00e9 8d000000      	callf	f_ADC2_Init
 430  00ed 5b06          	addw	sp,#6
 431                     ; 153 	ADC2_StartConversion();
 433  00ef 8d000000      	callf	f_ADC2_StartConversion
 435                     ; 155 	ir_state = IR_RECEIVE_HEAD;
 437  00f3 725f001c      	clr	L3_ir_state
 438                     ; 156 	ir_pressed = FALSE;	
 440  00f7 725f0014      	clr	L51_ir_pressed
 441                     ; 157 	ir_fisrt_process = FALSE;
 443  00fb 725f0013      	clr	L71_ir_fisrt_process
 444                     ; 158 	receive_code = IRKEY_DUMY;	
 446  00ff 35ff0015      	mov	L31_receive_code,#255
 447                     ; 160 	value_c8 = FLASH_ReadByte(0x4001);
 449  0103 ae4001        	ldw	x,#16385
 450  0106 89            	pushw	x
 451  0107 ae0000        	ldw	x,#0
 452  010a 89            	pushw	x
 453  010b 8d000000      	callf	f_FLASH_ReadByte
 455  010f 5b04          	addw	sp,#4
 456  0111 c70003        	ld	L33_value_c8,a
 457                     ; 161 	value_c9 = FLASH_ReadByte(0x4002);
 459  0114 ae4002        	ldw	x,#16386
 460  0117 89            	pushw	x
 461  0118 ae0000        	ldw	x,#0
 462  011b 89            	pushw	x
 463  011c 8d000000      	callf	f_FLASH_ReadByte
 465  0120 5b04          	addw	sp,#4
 466  0122 c70002        	ld	L53_value_c9,a
 467                     ; 162 	value_ca = FLASH_ReadByte(0x4003);
 469  0125 ae4003        	ldw	x,#16387
 470  0128 89            	pushw	x
 471  0129 ae0000        	ldw	x,#0
 472  012c 89            	pushw	x
 473  012d 8d000000      	callf	f_FLASH_ReadByte
 475  0131 5b04          	addw	sp,#4
 476  0133 c70001        	ld	L73_value_ca,a
 477                     ; 163 	value_cb = FLASH_ReadByte(0x4004);
 479  0136 ae4004        	ldw	x,#16388
 480  0139 89            	pushw	x
 481  013a ae0000        	ldw	x,#0
 482  013d 89            	pushw	x
 483  013e 8d000000      	callf	f_FLASH_ReadByte
 485  0142 5b04          	addw	sp,#4
 486  0144 c70000        	ld	L14_value_cb,a
 487                     ; 164 }
 490  0147 87            	retf
 519                     ; 166 void Timer_Init(void)
 519                     ; 167 {
 520                     	switch	.text
 521  0148               f_Timer_Init:
 525                     ; 168 	TIM4_TimeBaseInit(TIM4_PRESCALER_128, 125);
 527  0148 ae007d        	ldw	x,#125
 528  014b a607          	ld	a,#7
 529  014d 95            	ld	xh,a
 530  014e 8d000000      	callf	f_TIM4_TimeBaseInit
 532                     ; 169 	TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
 534  0152 ae0001        	ldw	x,#1
 535  0155 a601          	ld	a,#1
 536  0157 95            	ld	xh,a
 537  0158 8d000000      	callf	f_TIM4_ITConfig
 539                     ; 170 	TIM4_Cmd(ENABLE); 
 541  015c a601          	ld	a,#1
 542  015e 8d000000      	callf	f_TIM4_Cmd
 544                     ; 172 	ir_release_timer = TIMER_STOPPED;
 546  0162 725f0012      	clr	L12_ir_release_timer
 547                     ; 173 	delay_timer = TIMER_STOPPED;
 549  0166 ae0000        	ldw	x,#0
 550  0169 cf0010        	ldw	L32_delay_timer+2,x
 551  016c ae0000        	ldw	x,#0
 552  016f cf000e        	ldw	L32_delay_timer,x
 553                     ; 174 	ir_process_timer = TIMER_STOPPED;
 555  0172 ae0000        	ldw	x,#0
 556  0175 cf000c        	ldw	L52_ir_process_timer+2,x
 557  0178 ae0000        	ldw	x,#0
 558  017b cf000a        	ldw	L52_ir_process_timer,x
 559                     ; 175 	Key_detect_timer = TIMER_EXPIRED;
 561  017e ae0001        	ldw	x,#1
 562  0181 cf0008        	ldw	L72_Key_detect_timer+2,x
 563  0184 ae0000        	ldw	x,#0
 564  0187 cf0006        	ldw	L72_Key_detect_timer,x
 565                     ; 176 }
 568  018a 87            	retf
 570                     	switch	.data
 571  0004               L712_value_debug:
 572  0004 00            	dc.b	0
 615                     .const:	section	.text
 616  0000               L22:
 617  0000 00000001      	dc.l	1
 618                     ; 179 void IR_Update(void)
 618                     ; 180 {
 619                     	switch	.text
 620  018b               f_IR_Update:
 622  018b 88            	push	a
 623       00000001      OFST:	set	1
 626                     ; 181 	if (ir_pressed)
 628  018c 725d0014      	tnz	L51_ir_pressed
 629  0190 2604          	jrne	L42
 630  0192 ac4d024d      	jpf	L162
 631  0196               L42:
 632                     ; 183 		if (ir_process_timer == TIMER_EXPIRED)
 634  0196 ae000a        	ldw	x,#L52_ir_process_timer
 635  0199 8d000000      	callf	d_ltor
 637  019d ae0000        	ldw	x,#L22
 638  01a0 8d000000      	callf	d_lcmp
 640  01a4 2704          	jreq	L62
 641  01a6 ac4d024d      	jpf	L162
 642  01aa               L62:
 643                     ; 185 			u8 ir_key = _convert_IR();
 645  01aa 8d100010      	callf	L37f__convert_IR
 647  01ae 6b01          	ld	(OFST+0,sp),a
 648                     ; 186 			switch (ir_key)
 650  01b0 7b01          	ld	a,(OFST+0,sp)
 652                     ; 215 				default:
 652                     ; 216 					break;
 653  01b2 4d            	tnz	a
 654  01b3 2725          	jreq	L522
 655  01b5 4a            	dec	a
 656  01b6 2729          	jreq	L722
 657  01b8 4a            	dec	a
 658  01b9 272e          	jreq	L132
 659  01bb 4a            	dec	a
 660  01bc 2733          	jreq	L332
 661  01be 4a            	dec	a
 662  01bf 2738          	jreq	L532
 663  01c1 4a            	dec	a
 664  01c2 273d          	jreq	L732
 665  01c4 4a            	dec	a
 666  01c5 2742          	jreq	L142
 667  01c7 4a            	dec	a
 668  01c8 270a          	jreq	L322
 669  01ca a008          	sub	a,#8
 670  01cc 263f          	jrne	L762
 671                     ; 188 				case KEY_DEBUG:
 671                     ; 189 					SWI2C_ToggleI2CMode();
 673  01ce 8d000000      	callf	f_SWI2C_ToggleI2CMode
 675                     ; 190 					break;
 677  01d2 2039          	jra	L762
 678  01d4               L322:
 679                     ; 191 				case KEY_ONOFF_3D:
 679                     ; 192 					SWI2C_Set3D();
 681  01d4 8d000000      	callf	f_SWI2C_Set3D
 683                     ; 193 					break;
 685  01d8 2033          	jra	L762
 686  01da               L522:
 687                     ; 194 				case KEY_DEEP_0:
 687                     ; 195 					SWI2C_Set_deep(0);
 689  01da 4f            	clr	a
 690  01db 8d000000      	callf	f_SWI2C_Set_deep
 692                     ; 196 					break;
 694  01df 202c          	jra	L762
 695  01e1               L722:
 696                     ; 197 				case KEY_DEEP_1:
 696                     ; 198 					SWI2C_Set_deep(1);
 698  01e1 a601          	ld	a,#1
 699  01e3 8d000000      	callf	f_SWI2C_Set_deep
 701                     ; 199 					break;
 703  01e7 2024          	jra	L762
 704  01e9               L132:
 705                     ; 200 				case KEY_DEEP_2:
 705                     ; 201 					SWI2C_Set_deep(2);
 707  01e9 a602          	ld	a,#2
 708  01eb 8d000000      	callf	f_SWI2C_Set_deep
 710                     ; 202 					break;
 712  01ef 201c          	jra	L762
 713  01f1               L332:
 714                     ; 203 				case KEY_DEEP_3:
 714                     ; 204 					SWI2C_Set_deep(3);
 716  01f1 a603          	ld	a,#3
 717  01f3 8d000000      	callf	f_SWI2C_Set_deep
 719                     ; 205 					break;
 721  01f7 2014          	jra	L762
 722  01f9               L532:
 723                     ; 206 				case KEY_DEEP_4:
 723                     ; 207 					SWI2C_Set_deep(4);
 725  01f9 a604          	ld	a,#4
 726  01fb 8d000000      	callf	f_SWI2C_Set_deep
 728                     ; 208 					break;
 730  01ff 200c          	jra	L762
 731  0201               L732:
 732                     ; 209 				case KEY_DEEP_5:
 732                     ; 210 					SWI2C_Set_deep(5);
 734  0201 a605          	ld	a,#5
 735  0203 8d000000      	callf	f_SWI2C_Set_deep
 737                     ; 211 					break;
 739  0207 2004          	jra	L762
 740  0209               L142:
 741                     ; 212 				case KEY_POWER:
 741                     ; 213 					SWI2C_ProcessPower();
 743  0209 8d000000      	callf	f_SWI2C_ProcessPower
 745                     ; 214 					break;
 747  020d               L342:
 748                     ; 215 				default:
 748                     ; 216 					break;
 750  020d               L762:
 751                     ; 218 			if (ir_key != KEY_VOLUME_PLUS && ir_key != KEY_VOLUME_MINUS && ir_key != KEY_LEFT &&ir_key != KEY_RIGHT)
 753  020d 7b01          	ld	a,(OFST+0,sp)
 754  020f a10b          	cp	a,#11
 755  0211 2716          	jreq	L172
 757  0213 7b01          	ld	a,(OFST+0,sp)
 758  0215 a10c          	cp	a,#12
 759  0217 2710          	jreq	L172
 761  0219 7b01          	ld	a,(OFST+0,sp)
 762  021b a10d          	cp	a,#13
 763  021d 270a          	jreq	L172
 765  021f 7b01          	ld	a,(OFST+0,sp)
 766  0221 a10e          	cp	a,#14
 767  0223 2704          	jreq	L172
 768                     ; 220 				receive_code = IRKEY_DUMY;
 770  0225 35ff0015      	mov	L31_receive_code,#255
 771  0229               L172:
 772                     ; 222 			if (ir_fisrt_process)
 774  0229 725d0013      	tnz	L71_ir_fisrt_process
 775  022d 2712          	jreq	L372
 776                     ; 224 				ir_fisrt_process = FALSE;
 778  022f 725f0013      	clr	L71_ir_fisrt_process
 779                     ; 225 				ir_process_timer = 500 + 1;
 781  0233 ae01f5        	ldw	x,#501
 782  0236 cf000c        	ldw	L52_ir_process_timer+2,x
 783  0239 ae0000        	ldw	x,#0
 784  023c cf000a        	ldw	L52_ir_process_timer,x
 786  023f 200c          	jra	L162
 787  0241               L372:
 788                     ; 229 				ir_process_timer = 50 + 1;
 790  0241 ae0033        	ldw	x,#51
 791  0244 cf000c        	ldw	L52_ir_process_timer+2,x
 792  0247 ae0000        	ldw	x,#0
 793  024a cf000a        	ldw	L52_ir_process_timer,x
 794  024d               L162:
 795                     ; 234 	if (ir_release_timer == TIMER_EXPIRED)
 797  024d c60012        	ld	a,L12_ir_release_timer
 798  0250 a101          	cp	a,#1
 799  0252 2614          	jrne	L772
 800                     ; 236 		ir_release_timer = TIMER_STOPPED;
 802  0254 725f0012      	clr	L12_ir_release_timer
 803                     ; 237 		ir_process_timer = TIMER_STOPPED;
 805  0258 ae0000        	ldw	x,#0
 806  025b cf000c        	ldw	L52_ir_process_timer+2,x
 807  025e ae0000        	ldw	x,#0
 808  0261 cf000a        	ldw	L52_ir_process_timer,x
 809                     ; 238 		ir_pressed = FALSE;	
 811  0264 725f0014      	clr	L51_ir_pressed
 812  0268               L772:
 813                     ; 241 	if (Key_detect_timer == TIMER_EXPIRED)
 815  0268 ae0006        	ldw	x,#L72_Key_detect_timer
 816  026b 8d000000      	callf	d_ltor
 818  026f ae0000        	ldw	x,#L22
 819  0272 8d000000      	callf	d_lcmp
 821  0276 2613          	jrne	L103
 822                     ; 243 		Conversion_Value = ADC2_GetConversionValue();
 824  0278 8d000000      	callf	f_ADC2_GetConversionValue
 826  027c cf0004        	ldw	L13_Conversion_Value,x
 827                     ; 244 		Key_detect_timer = KEY_DETECT_TIME;
 829  027f ae0065        	ldw	x,#101
 830  0282 cf0008        	ldw	L72_Key_detect_timer+2,x
 831  0285 ae0000        	ldw	x,#0
 832  0288 cf0006        	ldw	L72_Key_detect_timer,x
 833  028b               L103:
 834                     ; 246 }
 837  028b 84            	pop	a
 838  028c 87            	retf
 890                     ; 248 INTERRUPT_HANDLER(IR_IN_ISR, 3)
 890                     ; 249 {
 891                     	switch	.text
 892  028d               f_IR_IN_ISR:
 894       00000003      OFST:	set	3
 895  028d 3b0002        	push	c_x+2
 896  0290 be00          	ldw	x,c_x
 897  0292 89            	pushw	x
 898  0293 3b0002        	push	c_y+2
 899  0296 be00          	ldw	x,c_y
 900  0298 89            	pushw	x
 901  0299 5203          	subw	sp,#3
 904                     ; 251 	u8 fault = FALSE;
 906  029b 0f01          	clr	(OFST-2,sp)
 907                     ; 253 	TIM2_Cmd(DISABLE);
 909  029d 4f            	clr	a
 910  029e 8d000000      	callf	f_TIM2_Cmd
 912                     ; 254 	TIM2_ClearFlag(TIM2_FLAG_UPDATE);
 914  02a2 ae0001        	ldw	x,#1
 915  02a5 8d000000      	callf	f_TIM2_ClearFlag
 917                     ; 255 	count = TIM2_GetCounter();
 919  02a9 8d000000      	callf	f_TIM2_GetCounter
 921  02ad 1f02          	ldw	(OFST-1,sp),x
 922                     ; 256 	TIM2_SetCounter(0);			
 924  02af 5f            	clrw	x
 925  02b0 8d000000      	callf	f_TIM2_SetCounter
 927                     ; 257 	TIM2_Cmd(ENABLE);
 929  02b4 a601          	ld	a,#1
 930  02b6 8d000000      	callf	f_TIM2_Cmd
 932                     ; 259 	if (count > LEADER_UPPER_LIMIT)
 934  02ba 1e02          	ldw	x,(OFST-1,sp)
 935  02bc a33c8d        	cpw	x,#15501
 936  02bf 2506          	jrult	L723
 937                     ; 261 		fault = TRUE;
 939  02c1 a601          	ld	a,#1
 940  02c3 6b01          	ld	(OFST-2,sp),a
 942  02c5 2043          	jra	L133
 943  02c7               L723:
 944                     ; 265 		switch (ir_state)
 946  02c7 c6001c        	ld	a,L3_ir_state
 948                     ; 321 			default:
 948                     ; 322 				break;
 949  02ca 4d            	tnz	a
 950  02cb 2705          	jreq	L303
 951  02cd 4a            	dec	a
 952  02ce 274a          	jreq	L503
 953  02d0 2038          	jra	L133
 954  02d2               L303:
 955                     ; 267 			case IR_RECEIVE_HEAD:
 955                     ; 268 				if (_Compare_Count(count, LEADER_UPPER_LIMIT, LEADER_LOWER_LIMIT))
 957  02d2 ae30d4        	ldw	x,#12500
 958  02d5 89            	pushw	x
 959  02d6 ae3c8c        	ldw	x,#15500
 960  02d9 89            	pushw	x
 961  02da 1e06          	ldw	x,(OFST+3,sp)
 962  02dc 8d000000      	callf	L34f__Compare_Count
 964  02e0 5b04          	addw	sp,#4
 965  02e2 4d            	tnz	a
 966  02e3 270a          	jreq	L733
 967                     ; 270 					ir_release_timer = IR_RELEASE_TIME;
 969  02e5 35810012      	mov	L12_ir_release_timer,#129
 970                     ; 271 					ir_state = IR_RECEIVE_CODE;
 972  02e9 3501001c      	mov	L3_ir_state,#1
 974  02ed 2017          	jra	L143
 975  02ef               L733:
 976                     ; 273 				else if (_Compare_Count(count, REPEAT_UPPER_LIMIT, REPEAT_LOWER_LIMIT))
 978  02ef ae280a        	ldw	x,#10250
 979  02f2 89            	pushw	x
 980  02f3 ae2fda        	ldw	x,#12250
 981  02f6 89            	pushw	x
 982  02f7 1e06          	ldw	x,(OFST+3,sp)
 983  02f9 8d000000      	callf	L34f__Compare_Count
 985  02fd 5b04          	addw	sp,#4
 986  02ff 4d            	tnz	a
 987  0300 2704          	jreq	L143
 988                     ; 275 					ir_release_timer = IR_RELEASE_TIME;
 990  0302 35810012      	mov	L12_ir_release_timer,#129
 991  0306               L143:
 992                     ; 277 				ir_bit_number = 0;
 994  0306 725f001b      	clr	L5_ir_bit_number
 995                     ; 278 				break;
 996  030a               L133:
 997                     ; 325 	if (fault)
 999  030a 0d01          	tnz	(OFST-2,sp)
1000  030c 2604          	jrne	L23
1001  030e acf903f9      	jpf	L573
1002  0312               L23:
1003                     ; 327 		ir_state = IR_RECEIVE_HEAD;
1005  0312 725f001c      	clr	L3_ir_state
1006  0316 acf903f9      	jpf	L573
1007  031a               L503:
1008                     ; 279 			case IR_RECEIVE_CODE:
1008                     ; 280 				if (_Compare_Count(count, HIGH_UPPER_LIMIT, HIGH_LOWER_LIMIT))
1010  031a ae06a4        	ldw	x,#1700
1011  031d 89            	pushw	x
1012  031e ae0af0        	ldw	x,#2800
1013  0321 89            	pushw	x
1014  0322 1e06          	ldw	x,(OFST+3,sp)
1015  0324 8d000000      	callf	L34f__Compare_Count
1017  0328 5b04          	addw	sp,#4
1018  032a 4d            	tnz	a
1019  032b 271e          	jreq	L543
1020                     ; 282 					ir_code[ir_bit_number/8] = (ir_code[ir_bit_number/8]>>1)|0x80;
1022  032d c6001b        	ld	a,L5_ir_bit_number
1023  0330 44            	srl	a
1024  0331 44            	srl	a
1025  0332 44            	srl	a
1026  0333 5f            	clrw	x
1027  0334 97            	ld	xl,a
1028  0335 c6001b        	ld	a,L5_ir_bit_number
1029  0338 44            	srl	a
1030  0339 44            	srl	a
1031  033a 44            	srl	a
1032  033b 905f          	clrw	y
1033  033d 9097          	ld	yl,a
1034  033f 90d60017      	ld	a,(L7_ir_code,y)
1035  0343 44            	srl	a
1036  0344 aa80          	or	a,#128
1037  0346 d70017        	ld	(L7_ir_code,x),a
1039  0349 2025          	jra	L743
1040  034b               L543:
1041                     ; 284 				else if (_Compare_Count(count, LOW_UPPER_LIMIT, LOW_LOWER_LIMIT))
1043  034b ae0320        	ldw	x,#800
1044  034e 89            	pushw	x
1045  034f ae05aa        	ldw	x,#1450
1046  0352 89            	pushw	x
1047  0353 1e06          	ldw	x,(OFST+3,sp)
1048  0355 8d000000      	callf	L34f__Compare_Count
1050  0359 5b04          	addw	sp,#4
1051  035b 4d            	tnz	a
1052  035c 270e          	jreq	L153
1053                     ; 286 					ir_code[ir_bit_number/8] = ir_code[ir_bit_number/8]>>1;
1055  035e c6001b        	ld	a,L5_ir_bit_number
1056  0361 44            	srl	a
1057  0362 44            	srl	a
1058  0363 44            	srl	a
1059  0364 5f            	clrw	x
1060  0365 97            	ld	xl,a
1061  0366 72440017      	srl	(L7_ir_code,x)
1063  036a 2004          	jra	L743
1064  036c               L153:
1065                     ; 290 					fault = TRUE;
1067  036c a601          	ld	a,#1
1068  036e 6b01          	ld	(OFST-2,sp),a
1069  0370               L743:
1070                     ; 292 				ir_bit_number++;
1072  0370 725c001b      	inc	L5_ir_bit_number
1073                     ; 293 				if (ir_bit_number == 32 && !fault)
1075  0374 c6001b        	ld	a,L5_ir_bit_number
1076  0377 a120          	cp	a,#32
1077  0379 268f          	jrne	L133
1079  037b 0d01          	tnz	(OFST-2,sp)
1080  037d 268b          	jrne	L133
1081                     ; 295 					ir_state = IR_RECEIVE_HEAD;
1083  037f 725f001c      	clr	L3_ir_state
1084                     ; 296 					if (((ir_code[0] == 0x0 && ir_code[1] == 0xDF) || (ir_code[0] == 0x4F && ir_code[1] == 0x50)) 
1084                     ; 297 					&& ((ir_code[2]^ir_code[3]) == 0xFF))
1086  0383 725d0017      	tnz	L7_ir_code
1087  0387 2607          	jrne	L363
1089  0389 c60018        	ld	a,L7_ir_code+1
1090  038c a1df          	cp	a,#223
1091  038e 270e          	jreq	L163
1092  0390               L363:
1094  0390 c60017        	ld	a,L7_ir_code
1095  0393 a14f          	cp	a,#79
1096  0395 2652          	jrne	L753
1098  0397 c60018        	ld	a,L7_ir_code+1
1099  039a a150          	cp	a,#80
1100  039c 264b          	jrne	L753
1101  039e               L163:
1103  039e c60019        	ld	a,L7_ir_code+2
1104  03a1 c8001a        	xor	a,L7_ir_code+3
1105  03a4 a1ff          	cp	a,#255
1106  03a6 2641          	jrne	L753
1107                     ; 299 						if (!ir_pressed)
1109  03a8 725d0014      	tnz	L51_ir_pressed
1110  03ac 2704          	jreq	L43
1111  03ae ac0a030a      	jpf	L133
1112  03b2               L43:
1113                     ; 301 							receive_code = ir_code[2];						
1115  03b2 5500190015    	mov	L31_receive_code,L7_ir_code+2
1116                     ; 302 							ir_pressed = TRUE;
1118  03b7 35010014      	mov	L51_ir_pressed,#1
1119                     ; 303 							ir_fisrt_process = TRUE;
1121  03bb 35010013      	mov	L71_ir_fisrt_process,#1
1122                     ; 304 							ir_process_timer = TIMER_EXPIRED;
1124  03bf ae0001        	ldw	x,#1
1125  03c2 cf000c        	ldw	L52_ir_process_timer+2,x
1126  03c5 ae0000        	ldw	x,#0
1127  03c8 cf000a        	ldw	L52_ir_process_timer,x
1128                     ; 305 							if (ir_code[0] == 0x4F && ir_code[1] == 0x50)
1130  03cb c60017        	ld	a,L7_ir_code
1131  03ce a14f          	cp	a,#79
1132  03d0 260f          	jrne	L763
1134  03d2 c60018        	ld	a,L7_ir_code+1
1135  03d5 a150          	cp	a,#80
1136  03d7 2608          	jrne	L763
1137                     ; 307 								head_type = 1;
1139  03d9 35010016      	mov	L11_head_type,#1
1141  03dd ac0a030a      	jpf	L133
1142  03e1               L763:
1143                     ; 311 								head_type = 0;
1145  03e1 725f0016      	clr	L11_head_type
1146  03e5 ac0a030a      	jpf	L133
1147  03e9               L753:
1148                     ; 317 						fault = TRUE;
1150  03e9 a601          	ld	a,#1
1151  03eb 6b01          	ld	(OFST-2,sp),a
1152  03ed ac0a030a      	jpf	L133
1153  03f1               L703:
1154                     ; 321 			default:
1154                     ; 322 				break;
1156  03f1 ac0a030a      	jpf	L133
1157  03f5               L533:
1158  03f5 ac0a030a      	jpf	L133
1159  03f9               L573:
1160                     ; 329 }
1163  03f9 5b03          	addw	sp,#3
1164  03fb 85            	popw	x
1165  03fc bf00          	ldw	c_y,x
1166  03fe 320002        	pop	c_y+2
1167  0401 85            	popw	x
1168  0402 bf00          	ldw	c_x,x
1169  0404 320002        	pop	c_x+2
1170  0407 80            	iret
1211                     	switch	.const
1212  0004               L04:
1213  0004 00000002      	dc.l	2
1214                     ; 331 INTERRUPT_HANDLER(TIMER4_ISR, 23)
1214                     ; 332 {		
1215                     	switch	.text
1216  0408               f_TIMER4_ISR:
1218  0408 3b0002        	push	c_x+2
1219  040b be00          	ldw	x,c_x
1220  040d 89            	pushw	x
1221  040e 3b0002        	push	c_y+2
1222  0411 be00          	ldw	x,c_y
1223  0413 89            	pushw	x
1224  0414 be02          	ldw	x,c_lreg+2
1225  0416 89            	pushw	x
1226  0417 be00          	ldw	x,c_lreg
1227  0419 89            	pushw	x
1230                     ; 333 	TIM4_Cmd(DISABLE);
1232  041a 4f            	clr	a
1233  041b 8d000000      	callf	f_TIM4_Cmd
1235                     ; 334 	TIM4_ClearFlag(TIM4_IT_UPDATE);
1237  041f a601          	ld	a,#1
1238  0421 8d000000      	callf	f_TIM4_ClearFlag
1240                     ; 335 	nop();
1243  0425 9d            nop
1245                     ; 336 	nop();
1249  0426 9d            nop
1251                     ; 337 	nop();
1255  0427 9d            nop
1257                     ; 338 	nop();
1261  0428 9d            nop
1263                     ; 339 	nop();
1267  0429 9d            nop
1269                     ; 340 	nop();
1273  042a 9d            nop
1275                     ; 341 	nop();
1279  042b 9d            nop
1281                     ; 342 	nop();
1285  042c 9d            nop
1287                     ; 343 	nop();
1291  042d 9d            nop
1293                     ; 344 	nop();
1297  042e 9d            nop
1299                     ; 345 	nop();
1303  042f 9d            nop
1305                     ; 346 	TIM4_Cmd(ENABLE);
1308  0430 a601          	ld	a,#1
1309  0432 8d000000      	callf	f_TIM4_Cmd
1311                     ; 348 	if (ir_release_timer > TIMER_EXPIRED)
1313  0436 c60012        	ld	a,L12_ir_release_timer
1314  0439 a102          	cp	a,#2
1315  043b 2504          	jrult	L704
1316                     ; 350 		ir_release_timer--;
1318  043d 725a0012      	dec	L12_ir_release_timer
1319  0441               L704:
1320                     ; 352 	if (delay_timer > TIMER_EXPIRED)
1322  0441 ae000e        	ldw	x,#L32_delay_timer
1323  0444 8d000000      	callf	d_ltor
1325  0448 ae0004        	ldw	x,#L04
1326  044b 8d000000      	callf	d_lcmp
1328  044f 2509          	jrult	L114
1329                     ; 354 		delay_timer--;
1331  0451 ae000e        	ldw	x,#L32_delay_timer
1332  0454 a601          	ld	a,#1
1333  0456 8d000000      	callf	d_lgsbc
1335  045a               L114:
1336                     ; 356 	if (ir_process_timer > TIMER_EXPIRED)
1338  045a ae000a        	ldw	x,#L52_ir_process_timer
1339  045d 8d000000      	callf	d_ltor
1341  0461 ae0004        	ldw	x,#L04
1342  0464 8d000000      	callf	d_lcmp
1344  0468 2509          	jrult	L314
1345                     ; 358 		ir_process_timer--;
1347  046a ae000a        	ldw	x,#L52_ir_process_timer
1348  046d a601          	ld	a,#1
1349  046f 8d000000      	callf	d_lgsbc
1351  0473               L314:
1352                     ; 360 	if (Key_detect_timer > TIMER_EXPIRED)
1354  0473 ae0006        	ldw	x,#L72_Key_detect_timer
1355  0476 8d000000      	callf	d_ltor
1357  047a ae0004        	ldw	x,#L04
1358  047d 8d000000      	callf	d_lcmp
1360  0481 2509          	jrult	L514
1361                     ; 362 		Key_detect_timer--;
1363  0483 ae0006        	ldw	x,#L72_Key_detect_timer
1364  0486 a601          	ld	a,#1
1365  0488 8d000000      	callf	d_lgsbc
1367  048c               L514:
1368                     ; 364 	SWI2C_UpdateTimer();
1370  048c 8d000000      	callf	f_SWI2C_UpdateTimer
1372                     ; 365 	System_Clock++;
1374  0490 ae0000        	ldw	x,#_System_Clock
1375  0493 a601          	ld	a,#1
1376  0495 8d000000      	callf	d_lgadc
1378                     ; 366 }
1381  0499 85            	popw	x
1382  049a bf00          	ldw	c_lreg,x
1383  049c 85            	popw	x
1384  049d bf02          	ldw	c_lreg+2,x
1385  049f 85            	popw	x
1386  04a0 bf00          	ldw	c_y,x
1387  04a2 320002        	pop	c_y+2
1388  04a5 85            	popw	x
1389  04a6 bf00          	ldw	c_x,x
1390  04a8 320002        	pop	c_x+2
1391  04ab 80            	iret
1424                     ; 368 void IR_DelayNMiliseconds(u16 delay)
1424                     ; 369 {
1425                     	switch	.text
1426  04ac               f_IR_DelayNMiliseconds:
1430                     ; 370 	delay_timer = delay;
1432  04ac 8d000000      	callf	d_uitolx
1434  04b0 ae000e        	ldw	x,#L32_delay_timer
1435  04b3 8d000000      	callf	d_rtol
1438  04b7               L734:
1439                     ; 371 	while (delay_timer > TIMER_EXPIRED);
1441  04b7 ae000e        	ldw	x,#L32_delay_timer
1442  04ba 8d000000      	callf	d_ltor
1444  04be ae0004        	ldw	x,#L04
1445  04c1 8d000000      	callf	d_lcmp
1447  04c5 24f0          	jruge	L734
1448                     ; 372 	delay_timer = TIMER_STOPPED;
1450  04c7 ae0000        	ldw	x,#0
1451  04ca cf0010        	ldw	L32_delay_timer+2,x
1452  04cd ae0000        	ldw	x,#0
1453  04d0 cf000e        	ldw	L32_delay_timer,x
1454                     ; 373 }
1457  04d3 87            	retf
1602                     	switch	.bss
1603  0000               L14_value_cb:
1604  0000 00            	ds.b	1
1605  0001               L73_value_ca:
1606  0001 00            	ds.b	1
1607  0002               L53_value_c9:
1608  0002 00            	ds.b	1
1609  0003               L33_value_c8:
1610  0003 00            	ds.b	1
1611  0004               L13_Conversion_Value:
1612  0004 0000          	ds.b	2
1613  0006               L72_Key_detect_timer:
1614  0006 00000000      	ds.b	4
1615  000a               L52_ir_process_timer:
1616  000a 00000000      	ds.b	4
1617  000e               L32_delay_timer:
1618  000e 00000000      	ds.b	4
1619  0012               L12_ir_release_timer:
1620  0012 00            	ds.b	1
1621  0013               L71_ir_fisrt_process:
1622  0013 00            	ds.b	1
1623  0014               L51_ir_pressed:
1624  0014 00            	ds.b	1
1625  0015               L31_receive_code:
1626  0015 00            	ds.b	1
1627  0016               L11_head_type:
1628  0016 00            	ds.b	1
1629  0017               L7_ir_code:
1630  0017 00000000      	ds.b	4
1631  001b               L5_ir_bit_number:
1632  001b 00            	ds.b	1
1633  001c               L3_ir_state:
1634  001c 00            	ds.b	1
1635                     	xref	f_SWI2C_UpdateTimer
1636                     	xref	f_SWI2C_Set_deep
1637                     	xref	f_SWI2C_Set3D
1638                     	xref	f_SWI2C_ToggleI2CMode
1639                     	xref	f_SWI2C_ProcessPower
1640                     	xdef	_System_Clock
1641                     	xdef	f_TIMER4_ISR
1642                     	xdef	f_IR_IN_ISR
1643                     	xdef	f_IR_DelayNMiliseconds
1644                     	xdef	f_IR_Update
1645                     	xdef	f_Timer_Init
1646                     	xdef	f_IR_IN_Init
1647                     	xref	f_ADC2_GetConversionValue
1648                     	xref	f_ADC2_StartConversion
1649                     	xref	f_ADC2_Init
1650                     	xref	f_FLASH_ReadByte
1651                     	xref	f_TIM4_ClearFlag
1652                     	xref	f_TIM4_ITConfig
1653                     	xref	f_TIM4_Cmd
1654                     	xref	f_TIM4_TimeBaseInit
1655                     	xref	f_TIM2_ClearFlag
1656                     	xref	f_TIM2_GetCounter
1657                     	xref	f_TIM2_SetCounter
1658                     	xref	f_TIM2_Cmd
1659                     	xref	f_TIM2_TimeBaseInit
1660                     	xref	f_EXTI_SetExtIntSensitivity
1661                     	xref	f_GPIO_Init
1662                     	xref.b	c_lreg
1663                     	xref.b	c_x
1664                     	xref.b	c_y
1684                     	xref	d_rtol
1685                     	xref	d_uitolx
1686                     	xref	d_lgadc
1687                     	xref	d_lgsbc
1688                     	xref	d_lcmp
1689                     	xref	d_ltor
1690                     	end
