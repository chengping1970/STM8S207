   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  15                     .const:	section	.text
  16  0000               _HSIDivFactor:
  17  0000 01            	dc.b	1
  18  0001 02            	dc.b	2
  19  0002 04            	dc.b	4
  20  0003 08            	dc.b	8
 164                     ; 61 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
 164                     ; 62 {
 165                     	switch	.text
 166  0000               f_CLK_HSIPrescalerConfig:
 168  0000 88            	push	a
 169       00000000      OFST:	set	0
 172                     ; 65     assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
 174                     ; 68     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
 176  0001 c650c6        	ld	a,20678
 177  0004 a4e7          	and	a,#231
 178  0006 c750c6        	ld	20678,a
 179                     ; 71     CLK->CKDIVR |= (uint8_t)HSIPrescaler;
 181  0009 c650c6        	ld	a,20678
 182  000c 1a01          	or	a,(OFST+1,sp)
 183  000e c750c6        	ld	20678,a
 184                     ; 73 }
 187  0011 84            	pop	a
 188  0012 87            	retf
 271                     ; 80 uint32_t CLK_GetClockFreq(void)
 271                     ; 81 {
 272                     	switch	.text
 273  0013               f_CLK_GetClockFreq:
 275  0013 5209          	subw	sp,#9
 276       00000009      OFST:	set	9
 279                     ; 83     uint32_t clockfrequency = 0;
 281                     ; 84     CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
 283                     ; 85     uint8_t tmp = 0, presc = 0;
 287                     ; 88     clocksource = (CLK_Source_TypeDef)CLK->CMSR;
 289  0015 c650c3        	ld	a,20675
 290  0018 6b09          	ld	(OFST+0,sp),a
 291                     ; 90     if (clocksource == CLK_SOURCE_HSI)
 293  001a 7b09          	ld	a,(OFST+0,sp)
 294  001c a1e1          	cp	a,#225
 295  001e 2644          	jrne	L121
 296                     ; 92         tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
 298  0020 c650c6        	ld	a,20678
 299  0023 a418          	and	a,#24
 300  0025 6b09          	ld	(OFST+0,sp),a
 301                     ; 93         tmp = (uint8_t)(tmp >> 3);
 303  0027 0409          	srl	(OFST+0,sp)
 304  0029 0409          	srl	(OFST+0,sp)
 305  002b 0409          	srl	(OFST+0,sp)
 306                     ; 94         presc = HSIDivFactor[tmp];
 308  002d 7b09          	ld	a,(OFST+0,sp)
 309  002f 5f            	clrw	x
 310  0030 97            	ld	xl,a
 311  0031 d60000        	ld	a,(_HSIDivFactor,x)
 312  0034 6b09          	ld	(OFST+0,sp),a
 313                     ; 95         clockfrequency = HSI_VALUE / presc;
 315  0036 7b09          	ld	a,(OFST+0,sp)
 316  0038 b703          	ld	c_lreg+3,a
 317  003a 3f02          	clr	c_lreg+2
 318  003c 3f01          	clr	c_lreg+1
 319  003e 3f00          	clr	c_lreg
 320  0040 96            	ldw	x,sp
 321  0041 1c0001        	addw	x,#OFST-8
 322  0044 8d000000      	callf	d_rtol
 324  0048 ae2400        	ldw	x,#9216
 325  004b bf02          	ldw	c_lreg+2,x
 326  004d ae00f4        	ldw	x,#244
 327  0050 bf00          	ldw	c_lreg,x
 328  0052 96            	ldw	x,sp
 329  0053 1c0001        	addw	x,#OFST-8
 330  0056 8d000000      	callf	d_ludv
 332  005a 96            	ldw	x,sp
 333  005b 1c0005        	addw	x,#OFST-4
 334  005e 8d000000      	callf	d_rtol
 337  0062 201c          	jra	L321
 338  0064               L121:
 339                     ; 97     else if ( clocksource == CLK_SOURCE_LSI)
 341  0064 7b09          	ld	a,(OFST+0,sp)
 342  0066 a1d2          	cp	a,#210
 343  0068 260c          	jrne	L521
 344                     ; 99         clockfrequency = LSI_VALUE;
 346  006a aef400        	ldw	x,#62464
 347  006d 1f07          	ldw	(OFST-2,sp),x
 348  006f ae0001        	ldw	x,#1
 349  0072 1f05          	ldw	(OFST-4,sp),x
 351  0074 200a          	jra	L321
 352  0076               L521:
 353                     ; 103         clockfrequency = HSE_VALUE;
 355  0076 ae3600        	ldw	x,#13824
 356  0079 1f07          	ldw	(OFST-2,sp),x
 357  007b ae016e        	ldw	x,#366
 358  007e 1f05          	ldw	(OFST-4,sp),x
 359  0080               L321:
 360                     ; 106     return((uint32_t)clockfrequency);
 362  0080 96            	ldw	x,sp
 363  0081 1c0005        	addw	x,#OFST-4
 364  0084 8d000000      	callf	d_ltor
 368  0088 5b09          	addw	sp,#9
 369  008a 87            	retf
 403                     ; 115 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
 403                     ; 116 {
 404                     	switch	.text
 405  008b               f_CLK_SYSCLKConfig:
 407  008b 88            	push	a
 408       00000000      OFST:	set	0
 411                     ; 119     assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
 413                     ; 121     if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
 415  008c a580          	bcp	a,#128
 416  008e 2614          	jrne	L741
 417                     ; 123         CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
 419  0090 c650c6        	ld	a,20678
 420  0093 a4e7          	and	a,#231
 421  0095 c750c6        	ld	20678,a
 422                     ; 124         CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
 424  0098 7b01          	ld	a,(OFST+1,sp)
 425  009a a418          	and	a,#24
 426  009c ca50c6        	or	a,20678
 427  009f c750c6        	ld	20678,a
 429  00a2 2012          	jra	L151
 430  00a4               L741:
 431                     ; 128         CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
 433  00a4 c650c6        	ld	a,20678
 434  00a7 a4f8          	and	a,#248
 435  00a9 c750c6        	ld	20678,a
 436                     ; 129         CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
 438  00ac 7b01          	ld	a,(OFST+1,sp)
 439  00ae a407          	and	a,#7
 440  00b0 ca50c6        	or	a,20678
 441  00b3 c750c6        	ld	20678,a
 442  00b6               L151:
 443                     ; 132 }
 446  00b6 84            	pop	a
 447  00b7 87            	retf
 501                     ; 139 void CLK_HSECmd(FunctionalState NewState)
 501                     ; 140 {
 502                     	switch	.text
 503  00b8               f_CLK_HSECmd:
 507                     ; 143     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 509                     ; 145     if (NewState != DISABLE)
 511  00b8 4d            	tnz	a
 512  00b9 2706          	jreq	L102
 513                     ; 148         CLK->ECKR |= CLK_ECKR_HSEEN;
 515  00bb 721050c1      	bset	20673,#0
 517  00bf 2004          	jra	L302
 518  00c1               L102:
 519                     ; 153         CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
 521  00c1 721150c1      	bres	20673,#0
 522  00c5               L302:
 523                     ; 156 }
 526  00c5 87            	retf
 674                     ; 158 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
 674                     ; 159 {
 675                     	switch	.text
 676  00c6               f_CLK_GetFlagStatus:
 678  00c6 89            	pushw	x
 679  00c7 5203          	subw	sp,#3
 680       00000003      OFST:	set	3
 683                     ; 161     uint16_t statusreg = 0;
 685                     ; 162     uint8_t tmpreg = 0;
 687                     ; 163     FlagStatus bitstatus = RESET;
 689                     ; 166     assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
 691                     ; 169     statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
 693  00c9 01            	rrwa	x,a
 694  00ca 9f            	ld	a,xl
 695  00cb a4ff          	and	a,#255
 696  00cd 97            	ld	xl,a
 697  00ce 4f            	clr	a
 698  00cf 02            	rlwa	x,a
 699  00d0 1f01          	ldw	(OFST-2,sp),x
 700  00d2 01            	rrwa	x,a
 701                     ; 172     if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
 703  00d3 1e01          	ldw	x,(OFST-2,sp)
 704  00d5 a30100        	cpw	x,#256
 705  00d8 2607          	jrne	L172
 706                     ; 174         tmpreg = CLK->ICKR;
 708  00da c650c0        	ld	a,20672
 709  00dd 6b03          	ld	(OFST+0,sp),a
 711  00df 202f          	jra	L372
 712  00e1               L172:
 713                     ; 176     else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
 715  00e1 1e01          	ldw	x,(OFST-2,sp)
 716  00e3 a30200        	cpw	x,#512
 717  00e6 2607          	jrne	L572
 718                     ; 178         tmpreg = CLK->ECKR;
 720  00e8 c650c1        	ld	a,20673
 721  00eb 6b03          	ld	(OFST+0,sp),a
 723  00ed 2021          	jra	L372
 724  00ef               L572:
 725                     ; 180     else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
 727  00ef 1e01          	ldw	x,(OFST-2,sp)
 728  00f1 a30300        	cpw	x,#768
 729  00f4 2607          	jrne	L103
 730                     ; 182         tmpreg = CLK->SWCR;
 732  00f6 c650c5        	ld	a,20677
 733  00f9 6b03          	ld	(OFST+0,sp),a
 735  00fb 2013          	jra	L372
 736  00fd               L103:
 737                     ; 184     else if (statusreg == 0x0400) /* The flag to check is in CSS register */
 739  00fd 1e01          	ldw	x,(OFST-2,sp)
 740  00ff a30400        	cpw	x,#1024
 741  0102 2607          	jrne	L503
 742                     ; 186         tmpreg = CLK->CSSR;
 744  0104 c650c8        	ld	a,20680
 745  0107 6b03          	ld	(OFST+0,sp),a
 747  0109 2005          	jra	L372
 748  010b               L503:
 749                     ; 190         tmpreg = CLK->CCOR;
 751  010b c650c9        	ld	a,20681
 752  010e 6b03          	ld	(OFST+0,sp),a
 753  0110               L372:
 754                     ; 193     if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
 756  0110 7b05          	ld	a,(OFST+2,sp)
 757  0112 1503          	bcp	a,(OFST+0,sp)
 758  0114 2706          	jreq	L113
 759                     ; 195         bitstatus = SET;
 761  0116 a601          	ld	a,#1
 762  0118 6b03          	ld	(OFST+0,sp),a
 764  011a 2002          	jra	L313
 765  011c               L113:
 766                     ; 199         bitstatus = RESET;
 768  011c 0f03          	clr	(OFST+0,sp)
 769  011e               L313:
 770                     ; 203     return((FlagStatus)bitstatus);
 772  011e 7b03          	ld	a,(OFST+0,sp)
 775  0120 5b05          	addw	sp,#5
 776  0122 87            	retf
 810                     ; 214 void CLK_ClockSwitchCmd(FunctionalState NewState)
 810                     ; 215 {
 811                     	switch	.text
 812  0123               f_CLK_ClockSwitchCmd:
 816                     ; 218     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 818                     ; 220     if (NewState != DISABLE )
 820  0123 4d            	tnz	a
 821  0124 2706          	jreq	L333
 822                     ; 223         CLK->SWCR |= CLK_SWCR_SWEN;
 824  0126 721250c5      	bset	20677,#1
 826  012a 2004          	jra	L533
 827  012c               L333:
 828                     ; 228         CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
 830  012c 721350c5      	bres	20677,#1
 831  0130               L533:
 832                     ; 231 }
 835  0130 87            	retf
 993                     ; 244 ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
 993                     ; 245 {
 994                     	switch	.text
 995  0131               f_CLK_ClockSwitchConfig:
 997  0131 89            	pushw	x
 998  0132 5204          	subw	sp,#4
 999       00000004      OFST:	set	4
1002                     ; 248     uint16_t DownCounter = CLK_TIMEOUT;
1004  0134 ae0491        	ldw	x,#1169
1005  0137 1f03          	ldw	(OFST-1,sp),x
1006                     ; 249     ErrorStatus Swif = ERROR;
1008                     ; 252     assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
1010                     ; 253     assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
1012                     ; 254     assert_param(IS_FUNCTIONALSTATE_OK(ITState));
1014                     ; 255     assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
1016                     ; 258     clock_master = (CLK_Source_TypeDef)CLK->CMSR;
1018  0139 c650c3        	ld	a,20675
1019  013c 6b01          	ld	(OFST-3,sp),a
1020                     ; 261     if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
1022  013e 7b05          	ld	a,(OFST+1,sp)
1023  0140 a101          	cp	a,#1
1024  0142 2639          	jrne	L334
1025                     ; 265         CLK->SWCR |= CLK_SWCR_SWEN;
1027  0144 721250c5      	bset	20677,#1
1028                     ; 268         if (ITState != DISABLE)
1030  0148 0d0a          	tnz	(OFST+6,sp)
1031  014a 2706          	jreq	L534
1032                     ; 270             CLK->SWCR |= CLK_SWCR_SWIEN;
1034  014c 721450c5      	bset	20677,#2
1036  0150 2004          	jra	L734
1037  0152               L534:
1038                     ; 274             CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1040  0152 721550c5      	bres	20677,#2
1041  0156               L734:
1042                     ; 278         CLK->SWR = (uint8_t)CLK_NewClock;
1044  0156 7b06          	ld	a,(OFST+2,sp)
1045  0158 c750c4        	ld	20676,a
1047  015b 2007          	jra	L544
1048  015d               L144:
1049                     ; 282             DownCounter--;
1051  015d 1e03          	ldw	x,(OFST-1,sp)
1052  015f 1d0001        	subw	x,#1
1053  0162 1f03          	ldw	(OFST-1,sp),x
1054  0164               L544:
1055                     ; 280         while ((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
1057  0164 c650c5        	ld	a,20677
1058  0167 a501          	bcp	a,#1
1059  0169 2704          	jreq	L154
1061  016b 1e03          	ldw	x,(OFST-1,sp)
1062  016d 26ee          	jrne	L144
1063  016f               L154:
1064                     ; 285         if (DownCounter != 0)
1066  016f 1e03          	ldw	x,(OFST-1,sp)
1067  0171 2706          	jreq	L354
1068                     ; 287             Swif = SUCCESS;
1070  0173 a601          	ld	a,#1
1071  0175 6b02          	ld	(OFST-2,sp),a
1073  0177 201b          	jra	L754
1074  0179               L354:
1075                     ; 291             Swif = ERROR;
1077  0179 0f02          	clr	(OFST-2,sp)
1078  017b 2017          	jra	L754
1079  017d               L334:
1080                     ; 299         if (ITState != DISABLE)
1082  017d 0d0a          	tnz	(OFST+6,sp)
1083  017f 2706          	jreq	L164
1084                     ; 301             CLK->SWCR |= CLK_SWCR_SWIEN;
1086  0181 721450c5      	bset	20677,#2
1088  0185 2004          	jra	L364
1089  0187               L164:
1090                     ; 305             CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1092  0187 721550c5      	bres	20677,#2
1093  018b               L364:
1094                     ; 309         CLK->SWR = (uint8_t)CLK_NewClock;
1096  018b 7b06          	ld	a,(OFST+2,sp)
1097  018d c750c4        	ld	20676,a
1098                     ; 313         Swif = SUCCESS;
1100  0190 a601          	ld	a,#1
1101  0192 6b02          	ld	(OFST-2,sp),a
1102  0194               L754:
1103                     ; 318     if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
1105  0194 0d0b          	tnz	(OFST+7,sp)
1106  0196 260c          	jrne	L564
1108  0198 7b01          	ld	a,(OFST-3,sp)
1109  019a a1e1          	cp	a,#225
1110  019c 2606          	jrne	L564
1111                     ; 320         CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
1113  019e 721150c0      	bres	20672,#0
1115  01a2 201e          	jra	L764
1116  01a4               L564:
1117                     ; 322     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
1119  01a4 0d0b          	tnz	(OFST+7,sp)
1120  01a6 260c          	jrne	L174
1122  01a8 7b01          	ld	a,(OFST-3,sp)
1123  01aa a1d2          	cp	a,#210
1124  01ac 2606          	jrne	L174
1125                     ; 324         CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
1127  01ae 721750c0      	bres	20672,#3
1129  01b2 200e          	jra	L764
1130  01b4               L174:
1131                     ; 326     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
1133  01b4 0d0b          	tnz	(OFST+7,sp)
1134  01b6 260a          	jrne	L764
1136  01b8 7b01          	ld	a,(OFST-3,sp)
1137  01ba a1b4          	cp	a,#180
1138  01bc 2604          	jrne	L764
1139                     ; 328         CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
1141  01be 721150c1      	bres	20673,#0
1142  01c2               L764:
1143                     ; 331     return(Swif);
1145  01c2 7b02          	ld	a,(OFST-2,sp)
1148  01c4 5b06          	addw	sp,#6
1149  01c6 87            	retf
1173                     ; 341 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
1173                     ; 342 {
1174                     	switch	.text
1175  01c7               f_CLK_GetSYSCLKSource:
1179                     ; 343     return((CLK_Source_TypeDef)CLK->CMSR);
1181  01c7 c650c3        	ld	a,20675
1184  01ca 87            	retf
1208                     	xdef	_HSIDivFactor
1209                     	xdef	f_CLK_GetFlagStatus
1210                     	xdef	f_CLK_GetSYSCLKSource
1211                     	xdef	f_CLK_GetClockFreq
1212                     	xdef	f_CLK_SYSCLKConfig
1213                     	xdef	f_CLK_HSIPrescalerConfig
1214                     	xdef	f_CLK_ClockSwitchConfig
1215                     	xdef	f_CLK_ClockSwitchCmd
1216                     	xdef	f_CLK_HSECmd
1217                     	xref.b	c_lreg
1218                     	xref.b	c_x
1237                     	xref	d_ltor
1238                     	xref	d_ludv
1239                     	xref	d_rtol
1240                     	end
