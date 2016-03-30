   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  43                     ; 48 void ADC2_DeInit(void)
  43                     ; 49 {
  44                     	switch	.text
  45  0000               f_ADC2_DeInit:
  49                     ; 50     ADC2->CSR  = ADC2_CSR_RESET_VALUE;
  51  0000 725f5400      	clr	21504
  52                     ; 51     ADC2->CR1  = ADC2_CR1_RESET_VALUE;
  54  0004 725f5401      	clr	21505
  55                     ; 52     ADC2->CR2  = ADC2_CR2_RESET_VALUE;
  57  0008 725f5402      	clr	21506
  58                     ; 53     ADC2->TDRH = ADC2_TDRH_RESET_VALUE;
  60  000c 725f5406      	clr	21510
  61                     ; 54     ADC2->TDRL = ADC2_TDRL_RESET_VALUE;
  63  0010 725f5407      	clr	21511
  64                     ; 55 }
  67  0014 87            	retf
 592                     ; 77 void ADC2_Init(ADC2_ConvMode_TypeDef ADC2_ConversionMode, ADC2_Channel_TypeDef ADC2_Channel, ADC2_PresSel_TypeDef ADC2_PrescalerSelection, ADC2_ExtTrig_TypeDef ADC2_ExtTrigger, FunctionalState ADC2_ExtTriggerState, ADC2_Align_TypeDef ADC2_Align, ADC2_SchmittTrigg_TypeDef ADC2_SchmittTriggerChannel, FunctionalState ADC2_SchmittTriggerState)
 592                     ; 78 {
 593                     	switch	.text
 594  0015               f_ADC2_Init:
 596  0015 89            	pushw	x
 597       00000000      OFST:	set	0
 600                     ; 81     assert_param(IS_ADC2_CONVERSIONMODE_OK(ADC2_ConversionMode));
 602                     ; 82     assert_param(IS_ADC2_CHANNEL_OK(ADC2_Channel));
 604                     ; 83     assert_param(IS_ADC2_PRESSEL_OK(ADC2_PrescalerSelection));
 606                     ; 84     assert_param(IS_ADC2_EXTTRIG_OK(ADC2_ExtTrigger));
 608                     ; 85     assert_param(IS_FUNCTIONALSTATE_OK(((ADC2_ExtTriggerState))));
 610                     ; 86     assert_param(IS_ADC2_ALIGN_OK(ADC2_Align));
 612                     ; 87     assert_param(IS_ADC2_SCHMITTTRIG_OK(ADC2_SchmittTriggerChannel));
 614                     ; 88     assert_param(IS_FUNCTIONALSTATE_OK(ADC2_SchmittTriggerState));
 616                     ; 93     ADC2_ConversionConfig(ADC2_ConversionMode, ADC2_Channel, ADC2_Align);
 618  0016 7b09          	ld	a,(OFST+9,sp)
 619  0018 88            	push	a
 620  0019 9f            	ld	a,xl
 621  001a 97            	ld	xl,a
 622  001b 7b02          	ld	a,(OFST+2,sp)
 623  001d 95            	ld	xh,a
 624  001e 8d000100      	callf	f_ADC2_ConversionConfig
 626  0022 84            	pop	a
 627                     ; 95     ADC2_PrescalerConfig(ADC2_PrescalerSelection);
 629  0023 7b06          	ld	a,(OFST+6,sp)
 630  0025 8d5f005f      	callf	f_ADC2_PrescalerConfig
 632                     ; 100     ADC2_ExternalTriggerConfig(ADC2_ExtTrigger, ADC2_ExtTriggerState);
 634  0029 7b08          	ld	a,(OFST+8,sp)
 635  002b 97            	ld	xl,a
 636  002c 7b07          	ld	a,(OFST+7,sp)
 637  002e 95            	ld	xh,a
 638  002f 8d2e012e      	callf	f_ADC2_ExternalTriggerConfig
 640                     ; 105     ADC2_SchmittTriggerConfig(ADC2_SchmittTriggerChannel, ADC2_SchmittTriggerState);
 642  0033 7b0b          	ld	a,(OFST+11,sp)
 643  0035 97            	ld	xl,a
 644  0036 7b0a          	ld	a,(OFST+10,sp)
 645  0038 95            	ld	xh,a
 646  0039 8d720072      	callf	f_ADC2_SchmittTriggerConfig
 648                     ; 108     ADC2->CR1 |= ADC2_CR1_ADON;
 650  003d 72105401      	bset	21505,#0
 651                     ; 110 }
 654  0041 85            	popw	x
 655  0042 87            	retf
 689                     ; 118 void ADC2_Cmd(FunctionalState NewState)
 689                     ; 119 {
 690                     	switch	.text
 691  0043               f_ADC2_Cmd:
 695                     ; 122     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 697                     ; 124     if (NewState != DISABLE)
 699  0043 4d            	tnz	a
 700  0044 2706          	jreq	L703
 701                     ; 126         ADC2->CR1 |= ADC2_CR1_ADON;
 703  0046 72105401      	bset	21505,#0
 705  004a 2004          	jra	L113
 706  004c               L703:
 707                     ; 130         ADC2->CR1 &= (uint8_t)(~ADC2_CR1_ADON);
 709  004c 72115401      	bres	21505,#0
 710  0050               L113:
 711                     ; 133 }
 714  0050 87            	retf
 748                     ; 140 void ADC2_ITConfig(FunctionalState NewState)
 748                     ; 141 {
 749                     	switch	.text
 750  0051               f_ADC2_ITConfig:
 754                     ; 144     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 756                     ; 146     if (NewState != DISABLE)
 758  0051 4d            	tnz	a
 759  0052 2706          	jreq	L133
 760                     ; 149         ADC2->CSR |= (uint8_t)ADC2_CSR_EOCIE;
 762  0054 721a5400      	bset	21504,#5
 764  0058 2004          	jra	L333
 765  005a               L133:
 766                     ; 154         ADC2->CSR &= (uint8_t)(~ADC2_CSR_EOCIE);
 768  005a 721b5400      	bres	21504,#5
 769  005e               L333:
 770                     ; 157 }
 773  005e 87            	retf
 808                     ; 165 void ADC2_PrescalerConfig(ADC2_PresSel_TypeDef ADC2_Prescaler)
 808                     ; 166 {
 809                     	switch	.text
 810  005f               f_ADC2_PrescalerConfig:
 812  005f 88            	push	a
 813       00000000      OFST:	set	0
 816                     ; 169     assert_param(IS_ADC2_PRESSEL_OK(ADC2_Prescaler));
 818                     ; 172     ADC2->CR1 &= (uint8_t)(~ADC2_CR1_SPSEL);
 820  0060 c65401        	ld	a,21505
 821  0063 a48f          	and	a,#143
 822  0065 c75401        	ld	21505,a
 823                     ; 174     ADC2->CR1 |= (uint8_t)(ADC2_Prescaler);
 825  0068 c65401        	ld	a,21505
 826  006b 1a01          	or	a,(OFST+1,sp)
 827  006d c75401        	ld	21505,a
 828                     ; 176 }
 831  0070 84            	pop	a
 832  0071 87            	retf
 878                     ; 187 void ADC2_SchmittTriggerConfig(ADC2_SchmittTrigg_TypeDef ADC2_SchmittTriggerChannel, FunctionalState NewState)
 878                     ; 188 {
 879                     	switch	.text
 880  0072               f_ADC2_SchmittTriggerConfig:
 882  0072 89            	pushw	x
 883       00000000      OFST:	set	0
 886                     ; 191     assert_param(IS_ADC2_SCHMITTTRIG_OK(ADC2_SchmittTriggerChannel));
 888                     ; 192     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 890                     ; 194     if (ADC2_SchmittTriggerChannel == ADC2_SCHMITTTRIG_ALL)
 892  0073 9e            	ld	a,xh
 893  0074 a11f          	cp	a,#31
 894  0076 2620          	jrne	L573
 895                     ; 196         if (NewState != DISABLE)
 897  0078 9f            	ld	a,xl
 898  0079 4d            	tnz	a
 899  007a 270a          	jreq	L773
 900                     ; 198             ADC2->TDRL &= (uint8_t)0x0;
 902  007c 725f5407      	clr	21511
 903                     ; 199             ADC2->TDRH &= (uint8_t)0x0;
 905  0080 725f5406      	clr	21510
 907  0084 2078          	jra	L304
 908  0086               L773:
 909                     ; 203             ADC2->TDRL |= (uint8_t)0xFF;
 911  0086 c65407        	ld	a,21511
 912  0089 aaff          	or	a,#255
 913  008b c75407        	ld	21511,a
 914                     ; 204             ADC2->TDRH |= (uint8_t)0xFF;
 916  008e c65406        	ld	a,21510
 917  0091 aaff          	or	a,#255
 918  0093 c75406        	ld	21510,a
 919  0096 2066          	jra	L304
 920  0098               L573:
 921                     ; 207     else if (ADC2_SchmittTriggerChannel < ADC2_SCHMITTTRIG_CHANNEL8)
 923  0098 7b01          	ld	a,(OFST+1,sp)
 924  009a a108          	cp	a,#8
 925  009c 242f          	jruge	L504
 926                     ; 209         if (NewState != DISABLE)
 928  009e 0d02          	tnz	(OFST+2,sp)
 929  00a0 2716          	jreq	L704
 930                     ; 211             ADC2->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC2_SchmittTriggerChannel));
 932  00a2 7b01          	ld	a,(OFST+1,sp)
 933  00a4 5f            	clrw	x
 934  00a5 97            	ld	xl,a
 935  00a6 a601          	ld	a,#1
 936  00a8 5d            	tnzw	x
 937  00a9 2704          	jreq	L02
 938  00ab               L22:
 939  00ab 48            	sll	a
 940  00ac 5a            	decw	x
 941  00ad 26fc          	jrne	L22
 942  00af               L02:
 943  00af 43            	cpl	a
 944  00b0 c45407        	and	a,21511
 945  00b3 c75407        	ld	21511,a
 947  00b6 2046          	jra	L304
 948  00b8               L704:
 949                     ; 215             ADC2->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC2_SchmittTriggerChannel);
 951  00b8 7b01          	ld	a,(OFST+1,sp)
 952  00ba 5f            	clrw	x
 953  00bb 97            	ld	xl,a
 954  00bc a601          	ld	a,#1
 955  00be 5d            	tnzw	x
 956  00bf 2704          	jreq	L42
 957  00c1               L62:
 958  00c1 48            	sll	a
 959  00c2 5a            	decw	x
 960  00c3 26fc          	jrne	L62
 961  00c5               L42:
 962  00c5 ca5407        	or	a,21511
 963  00c8 c75407        	ld	21511,a
 964  00cb 2031          	jra	L304
 965  00cd               L504:
 966                     ; 220         if (NewState != DISABLE)
 968  00cd 0d02          	tnz	(OFST+2,sp)
 969  00cf 2718          	jreq	L514
 970                     ; 222             ADC2->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC2_SchmittTriggerChannel - (uint8_t)8)));
 972  00d1 7b01          	ld	a,(OFST+1,sp)
 973  00d3 a008          	sub	a,#8
 974  00d5 5f            	clrw	x
 975  00d6 97            	ld	xl,a
 976  00d7 a601          	ld	a,#1
 977  00d9 5d            	tnzw	x
 978  00da 2704          	jreq	L03
 979  00dc               L23:
 980  00dc 48            	sll	a
 981  00dd 5a            	decw	x
 982  00de 26fc          	jrne	L23
 983  00e0               L03:
 984  00e0 43            	cpl	a
 985  00e1 c45406        	and	a,21510
 986  00e4 c75406        	ld	21510,a
 988  00e7 2015          	jra	L304
 989  00e9               L514:
 990                     ; 226             ADC2->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC2_SchmittTriggerChannel - (uint8_t)8));
 992  00e9 7b01          	ld	a,(OFST+1,sp)
 993  00eb a008          	sub	a,#8
 994  00ed 5f            	clrw	x
 995  00ee 97            	ld	xl,a
 996  00ef a601          	ld	a,#1
 997  00f1 5d            	tnzw	x
 998  00f2 2704          	jreq	L43
 999  00f4               L63:
1000  00f4 48            	sll	a
1001  00f5 5a            	decw	x
1002  00f6 26fc          	jrne	L63
1003  00f8               L43:
1004  00f8 ca5406        	or	a,21510
1005  00fb c75406        	ld	21510,a
1006  00fe               L304:
1007                     ; 230 }
1010  00fe 85            	popw	x
1011  00ff 87            	retf
1067                     ; 242 void ADC2_ConversionConfig(ADC2_ConvMode_TypeDef ADC2_ConversionMode, ADC2_Channel_TypeDef ADC2_Channel, ADC2_Align_TypeDef ADC2_Align)
1067                     ; 243 {
1068                     	switch	.text
1069  0100               f_ADC2_ConversionConfig:
1071  0100 89            	pushw	x
1072       00000000      OFST:	set	0
1075                     ; 246     assert_param(IS_ADC2_CONVERSIONMODE_OK(ADC2_ConversionMode));
1077                     ; 247     assert_param(IS_ADC2_CHANNEL_OK(ADC2_Channel));
1079                     ; 248     assert_param(IS_ADC2_ALIGN_OK(ADC2_Align));
1081                     ; 251     ADC2->CR2 &= (uint8_t)(~ADC2_CR2_ALIGN);
1083  0101 72175402      	bres	21506,#3
1084                     ; 253     ADC2->CR2 |= (uint8_t)(ADC2_Align);
1086  0105 c65402        	ld	a,21506
1087  0108 1a06          	or	a,(OFST+6,sp)
1088  010a c75402        	ld	21506,a
1089                     ; 255     if (ADC2_ConversionMode == ADC2_CONVERSIONMODE_CONTINUOUS)
1091  010d 9e            	ld	a,xh
1092  010e a101          	cp	a,#1
1093  0110 2606          	jrne	L744
1094                     ; 258         ADC2->CR1 |= ADC2_CR1_CONT;
1096  0112 72125401      	bset	21505,#1
1098  0116 2004          	jra	L154
1099  0118               L744:
1100                     ; 263         ADC2->CR1 &= (uint8_t)(~ADC2_CR1_CONT);
1102  0118 72135401      	bres	21505,#1
1103  011c               L154:
1104                     ; 267     ADC2->CSR &= (uint8_t)(~ADC2_CSR_CH);
1106  011c c65400        	ld	a,21504
1107  011f a4f0          	and	a,#240
1108  0121 c75400        	ld	21504,a
1109                     ; 269     ADC2->CSR |= (uint8_t)(ADC2_Channel);
1111  0124 c65400        	ld	a,21504
1112  0127 1a02          	or	a,(OFST+2,sp)
1113  0129 c75400        	ld	21504,a
1114                     ; 271 }
1117  012c 85            	popw	x
1118  012d 87            	retf
1163                     ; 284 void ADC2_ExternalTriggerConfig(ADC2_ExtTrig_TypeDef ADC2_ExtTrigger, FunctionalState NewState)
1163                     ; 285 {
1164                     	switch	.text
1165  012e               f_ADC2_ExternalTriggerConfig:
1167  012e 89            	pushw	x
1168       00000000      OFST:	set	0
1171                     ; 288     assert_param(IS_ADC2_EXTTRIG_OK(ADC2_ExtTrigger));
1173                     ; 289     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1175                     ; 292     ADC2->CR2 &= (uint8_t)(~ADC2_CR2_EXTSEL);
1177  012f c65402        	ld	a,21506
1178  0132 a4cf          	and	a,#207
1179  0134 c75402        	ld	21506,a
1180                     ; 294     if (NewState != DISABLE)
1182  0137 9f            	ld	a,xl
1183  0138 4d            	tnz	a
1184  0139 2706          	jreq	L574
1185                     ; 297         ADC2->CR2 |= (uint8_t)(ADC2_CR2_EXTTRIG);
1187  013b 721c5402      	bset	21506,#6
1189  013f 2004          	jra	L774
1190  0141               L574:
1191                     ; 302         ADC2->CR2 &= (uint8_t)(~ADC2_CR2_EXTTRIG);
1193  0141 721d5402      	bres	21506,#6
1194  0145               L774:
1195                     ; 306     ADC2->CR2 |= (uint8_t)(ADC2_ExtTrigger);
1197  0145 c65402        	ld	a,21506
1198  0148 1a01          	or	a,(OFST+1,sp)
1199  014a c75402        	ld	21506,a
1200                     ; 308 }
1203  014d 85            	popw	x
1204  014e 87            	retf
1227                     ; 320 void ADC2_StartConversion(void)
1227                     ; 321 {
1228                     	switch	.text
1229  014f               f_ADC2_StartConversion:
1233                     ; 322     ADC2->CR1 |= ADC2_CR1_ADON;
1235  014f 72105401      	bset	21505,#0
1236                     ; 323 }
1239  0153 87            	retf
1278                     ; 332 uint16_t ADC2_GetConversionValue(void)
1278                     ; 333 {
1279                     	switch	.text
1280  0154               f_ADC2_GetConversionValue:
1282  0154 5205          	subw	sp,#5
1283       00000005      OFST:	set	5
1286                     ; 335     uint16_t temph = 0;
1288                     ; 336     uint8_t templ = 0;
1290                     ; 338     if ((ADC2->CR2 & ADC2_CR2_ALIGN) != 0) /* Right alignment */
1292  0156 c65402        	ld	a,21506
1293  0159 a508          	bcp	a,#8
1294  015b 2715          	jreq	L725
1295                     ; 341         templ = ADC2->DRL;
1297  015d c65405        	ld	a,21509
1298  0160 6b03          	ld	(OFST-2,sp),a
1299                     ; 343         temph = ADC2->DRH;
1301  0162 c65404        	ld	a,21508
1302  0165 5f            	clrw	x
1303  0166 97            	ld	xl,a
1304  0167 1f04          	ldw	(OFST-1,sp),x
1305                     ; 345         temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
1307  0169 1e04          	ldw	x,(OFST-1,sp)
1308  016b 7b03          	ld	a,(OFST-2,sp)
1309  016d 02            	rlwa	x,a
1310  016e 1f04          	ldw	(OFST-1,sp),x
1312  0170 2021          	jra	L135
1313  0172               L725:
1314                     ; 350         temph = ADC2->DRH;
1316  0172 c65404        	ld	a,21508
1317  0175 5f            	clrw	x
1318  0176 97            	ld	xl,a
1319  0177 1f04          	ldw	(OFST-1,sp),x
1320                     ; 352         templ = ADC2->DRL;
1322  0179 c65405        	ld	a,21509
1323  017c 6b03          	ld	(OFST-2,sp),a
1324                     ; 354         temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
1326  017e 1e04          	ldw	x,(OFST-1,sp)
1327  0180 4f            	clr	a
1328  0181 02            	rlwa	x,a
1329  0182 1f01          	ldw	(OFST-4,sp),x
1330  0184 7b03          	ld	a,(OFST-2,sp)
1331  0186 97            	ld	xl,a
1332  0187 a640          	ld	a,#64
1333  0189 42            	mul	x,a
1334  018a 01            	rrwa	x,a
1335  018b 1a02          	or	a,(OFST-3,sp)
1336  018d 01            	rrwa	x,a
1337  018e 1a01          	or	a,(OFST-4,sp)
1338  0190 01            	rrwa	x,a
1339  0191 1f04          	ldw	(OFST-1,sp),x
1340  0193               L135:
1341                     ; 357     return ((uint16_t)temph);
1343  0193 1e04          	ldw	x,(OFST-1,sp)
1346  0195 5b05          	addw	sp,#5
1347  0197 87            	retf
1390                     ; 366 FlagStatus ADC2_GetFlagStatus(void)
1390                     ; 367 {
1391                     	switch	.text
1392  0198               f_ADC2_GetFlagStatus:
1396                     ; 369     return (FlagStatus)(ADC2->CSR & ADC2_CSR_EOC);
1398  0198 c65400        	ld	a,21504
1399  019b a480          	and	a,#128
1402  019d 87            	retf
1424                     ; 378 void ADC2_ClearFlag(void)
1424                     ; 379 {
1425                     	switch	.text
1426  019e               f_ADC2_ClearFlag:
1430                     ; 380     ADC2->CSR &= (uint8_t)(~ADC2_CSR_EOC);
1432  019e 721f5400      	bres	21504,#7
1433                     ; 381 }
1436  01a2 87            	retf
1459                     ; 389 ITStatus ADC2_GetITStatus(void)
1459                     ; 390 {
1460                     	switch	.text
1461  01a3               f_ADC2_GetITStatus:
1465                     ; 391     return (ITStatus)(ADC2->CSR & ADC2_CSR_EOC);
1467  01a3 c65400        	ld	a,21504
1468  01a6 a480          	and	a,#128
1471  01a8 87            	retf
1494                     ; 399 void ADC2_ClearITPendingBit(void)
1494                     ; 400 {
1495                     	switch	.text
1496  01a9               f_ADC2_ClearITPendingBit:
1500                     ; 401     ADC2->CSR &= (uint8_t)(~ADC2_CSR_EOC);
1502  01a9 721f5400      	bres	21504,#7
1503                     ; 402 }
1506  01ad 87            	retf
1518                     	xdef	f_ADC2_ClearITPendingBit
1519                     	xdef	f_ADC2_GetITStatus
1520                     	xdef	f_ADC2_ClearFlag
1521                     	xdef	f_ADC2_GetFlagStatus
1522                     	xdef	f_ADC2_GetConversionValue
1523                     	xdef	f_ADC2_StartConversion
1524                     	xdef	f_ADC2_ExternalTriggerConfig
1525                     	xdef	f_ADC2_ConversionConfig
1526                     	xdef	f_ADC2_SchmittTriggerConfig
1527                     	xdef	f_ADC2_PrescalerConfig
1528                     	xdef	f_ADC2_ITConfig
1529                     	xdef	f_ADC2_Cmd
1530                     	xdef	f_ADC2_Init
1531                     	xdef	f_ADC2_DeInit
1550                     	end
