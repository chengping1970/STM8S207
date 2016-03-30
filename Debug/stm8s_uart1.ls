   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
 317                     .const:	section	.text
 318  0000               L6:
 319  0000 00000064      	dc.l	100
 320                     ; 58 void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
 320                     ; 59                 UART1_StopBits_TypeDef StopBits, UART1_Parity_TypeDef Parity, 
 320                     ; 60                 UART1_SyncMode_TypeDef SyncMode, UART1_Mode_TypeDef Mode)
 320                     ; 61 {
 321                     	switch	.text
 322  0000               f_UART1_Init:
 324  0000 520c          	subw	sp,#12
 325       0000000c      OFST:	set	12
 328                     ; 62     uint32_t BaudRate_Mantissa = 0, BaudRate_Mantissa100 = 0;
 332                     ; 65     assert_param(IS_UART1_BAUDRATE_OK(BaudRate));
 334                     ; 66     assert_param(IS_UART1_WORDLENGTH_OK(WordLength));
 336                     ; 67     assert_param(IS_UART1_STOPBITS_OK(StopBits));
 338                     ; 68     assert_param(IS_UART1_PARITY_OK(Parity));
 340                     ; 69     assert_param(IS_UART1_MODE_OK((uint8_t)Mode));
 342                     ; 70     assert_param(IS_UART1_SYNCMODE_OK((uint8_t)SyncMode));
 344                     ; 73     UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
 346  0002 72195234      	bres	21044,#4
 347                     ; 76     UART1->CR1 |= (uint8_t)WordLength;
 349  0006 c65234        	ld	a,21044
 350  0009 1a14          	or	a,(OFST+8,sp)
 351  000b c75234        	ld	21044,a
 352                     ; 79     UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
 354  000e c65236        	ld	a,21046
 355  0011 a4cf          	and	a,#207
 356  0013 c75236        	ld	21046,a
 357                     ; 81     UART1->CR3 |= (uint8_t)StopBits;  
 359  0016 c65236        	ld	a,21046
 360  0019 1a15          	or	a,(OFST+9,sp)
 361  001b c75236        	ld	21046,a
 362                     ; 84     UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
 364  001e c65234        	ld	a,21044
 365  0021 a4f9          	and	a,#249
 366  0023 c75234        	ld	21044,a
 367                     ; 86     UART1->CR1 |= (uint8_t)Parity;  
 369  0026 c65234        	ld	a,21044
 370  0029 1a16          	or	a,(OFST+10,sp)
 371  002b c75234        	ld	21044,a
 372                     ; 89     UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
 374  002e 725f5232      	clr	21042
 375                     ; 91     UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
 377  0032 c65233        	ld	a,21043
 378  0035 a40f          	and	a,#15
 379  0037 c75233        	ld	21043,a
 380                     ; 93     UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
 382  003a c65233        	ld	a,21043
 383  003d a4f0          	and	a,#240
 384  003f c75233        	ld	21043,a
 385                     ; 96     BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
 387  0042 96            	ldw	x,sp
 388  0043 1c0010        	addw	x,#OFST+4
 389  0046 8d000000      	callf	d_ltor
 391  004a a604          	ld	a,#4
 392  004c 8d000000      	callf	d_llsh
 394  0050 96            	ldw	x,sp
 395  0051 1c0001        	addw	x,#OFST-11
 396  0054 8d000000      	callf	d_rtol
 398  0058 8d000000      	callf	f_CLK_GetClockFreq
 400  005c 96            	ldw	x,sp
 401  005d 1c0001        	addw	x,#OFST-11
 402  0060 8d000000      	callf	d_ludv
 404  0064 96            	ldw	x,sp
 405  0065 1c0009        	addw	x,#OFST-3
 406  0068 8d000000      	callf	d_rtol
 408                     ; 97     BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
 410  006c 96            	ldw	x,sp
 411  006d 1c0010        	addw	x,#OFST+4
 412  0070 8d000000      	callf	d_ltor
 414  0074 a604          	ld	a,#4
 415  0076 8d000000      	callf	d_llsh
 417  007a 96            	ldw	x,sp
 418  007b 1c0001        	addw	x,#OFST-11
 419  007e 8d000000      	callf	d_rtol
 421  0082 8d000000      	callf	f_CLK_GetClockFreq
 423  0086 a664          	ld	a,#100
 424  0088 8d000000      	callf	d_smul
 426  008c 96            	ldw	x,sp
 427  008d 1c0001        	addw	x,#OFST-11
 428  0090 8d000000      	callf	d_ludv
 430  0094 96            	ldw	x,sp
 431  0095 1c0005        	addw	x,#OFST-7
 432  0098 8d000000      	callf	d_rtol
 434                     ; 99     UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
 436  009c 96            	ldw	x,sp
 437  009d 1c0009        	addw	x,#OFST-3
 438  00a0 8d000000      	callf	d_ltor
 440  00a4 a664          	ld	a,#100
 441  00a6 8d000000      	callf	d_smul
 443  00aa 96            	ldw	x,sp
 444  00ab 1c0001        	addw	x,#OFST-11
 445  00ae 8d000000      	callf	d_rtol
 447  00b2 96            	ldw	x,sp
 448  00b3 1c0005        	addw	x,#OFST-7
 449  00b6 8d000000      	callf	d_ltor
 451  00ba 96            	ldw	x,sp
 452  00bb 1c0001        	addw	x,#OFST-11
 453  00be 8d000000      	callf	d_lsub
 455  00c2 a604          	ld	a,#4
 456  00c4 8d000000      	callf	d_llsh
 458  00c8 ae0000        	ldw	x,#L6
 459  00cb 8d000000      	callf	d_ludv
 461  00cf b603          	ld	a,c_lreg+3
 462  00d1 a40f          	and	a,#15
 463  00d3 ca5233        	or	a,21043
 464  00d6 c75233        	ld	21043,a
 465                     ; 101     UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
 467  00d9 96            	ldw	x,sp
 468  00da 1c0009        	addw	x,#OFST-3
 469  00dd 8d000000      	callf	d_ltor
 471  00e1 a604          	ld	a,#4
 472  00e3 8d000000      	callf	d_lursh
 474  00e7 b603          	ld	a,c_lreg+3
 475  00e9 a4f0          	and	a,#240
 476  00eb b703          	ld	c_lreg+3,a
 477  00ed 3f02          	clr	c_lreg+2
 478  00ef 3f01          	clr	c_lreg+1
 479  00f1 3f00          	clr	c_lreg
 480  00f3 b603          	ld	a,c_lreg+3
 481  00f5 ca5233        	or	a,21043
 482  00f8 c75233        	ld	21043,a
 483                     ; 103     UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
 485  00fb c65232        	ld	a,21042
 486  00fe 1a0c          	or	a,(OFST+0,sp)
 487  0100 c75232        	ld	21042,a
 488                     ; 106     UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
 490  0103 c65235        	ld	a,21045
 491  0106 a4f3          	and	a,#243
 492  0108 c75235        	ld	21045,a
 493                     ; 108     UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
 495  010b c65236        	ld	a,21046
 496  010e a4f8          	and	a,#248
 497  0110 c75236        	ld	21046,a
 498                     ; 110     UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
 498                     ; 111                                               UART1_CR3_CPHA | UART1_CR3_LBCL));  
 500  0113 7b17          	ld	a,(OFST+11,sp)
 501  0115 a407          	and	a,#7
 502  0117 ca5236        	or	a,21046
 503  011a c75236        	ld	21046,a
 504                     ; 113     if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
 506  011d 7b18          	ld	a,(OFST+12,sp)
 507  011f a504          	bcp	a,#4
 508  0121 2706          	jreq	L551
 509                     ; 116         UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
 511  0123 72165235      	bset	21045,#3
 513  0127 2004          	jra	L751
 514  0129               L551:
 515                     ; 121         UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
 517  0129 72175235      	bres	21045,#3
 518  012d               L751:
 519                     ; 123     if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
 521  012d 7b18          	ld	a,(OFST+12,sp)
 522  012f a508          	bcp	a,#8
 523  0131 2706          	jreq	L161
 524                     ; 126         UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
 526  0133 72145235      	bset	21045,#2
 528  0137 2004          	jra	L361
 529  0139               L161:
 530                     ; 131         UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
 532  0139 72155235      	bres	21045,#2
 533  013d               L361:
 534                     ; 135     if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
 536  013d 7b17          	ld	a,(OFST+11,sp)
 537  013f a580          	bcp	a,#128
 538  0141 2706          	jreq	L561
 539                     ; 138         UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
 541  0143 72175236      	bres	21046,#3
 543  0147 200a          	jra	L761
 544  0149               L561:
 545                     ; 142         UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
 547  0149 7b17          	ld	a,(OFST+11,sp)
 548  014b a408          	and	a,#8
 549  014d ca5236        	or	a,21046
 550  0150 c75236        	ld	21046,a
 551  0153               L761:
 552                     ; 144 }
 555  0153 5b0c          	addw	sp,#12
 556  0155 87            	retf
 610                     ; 152 void UART1_Cmd(FunctionalState NewState)
 610                     ; 153 {
 611                     	switch	.text
 612  0156               f_UART1_Cmd:
 616                     ; 154     if (NewState != DISABLE)
 618  0156 4d            	tnz	a
 619  0157 2706          	jreq	L712
 620                     ; 157         UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
 622  0159 721b5234      	bres	21044,#5
 624  015d 2004          	jra	L122
 625  015f               L712:
 626                     ; 162         UART1->CR1 |= UART1_CR1_UARTD;  
 628  015f 721a5234      	bset	21044,#5
 629  0163               L122:
 630                     ; 164 }
 633  0163 87            	retf
 753                     ; 180 void UART1_ITConfig(UART1_IT_TypeDef UART1_IT, FunctionalState NewState)
 753                     ; 181 {
 754                     	switch	.text
 755  0164               f_UART1_ITConfig:
 757  0164 89            	pushw	x
 758  0165 89            	pushw	x
 759       00000002      OFST:	set	2
 762                     ; 182     uint8_t uartreg = 0, itpos = 0x00;
 766                     ; 185     assert_param(IS_UART1_CONFIG_IT_OK(UART1_IT));
 768                     ; 186     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 770                     ; 189     uartreg = (uint8_t)((uint16_t)UART1_IT >> 0x08);
 772  0166 9e            	ld	a,xh
 773  0167 6b01          	ld	(OFST-1,sp),a
 774                     ; 191     itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
 776  0169 9f            	ld	a,xl
 777  016a a40f          	and	a,#15
 778  016c 5f            	clrw	x
 779  016d 97            	ld	xl,a
 780  016e a601          	ld	a,#1
 781  0170 5d            	tnzw	x
 782  0171 2704          	jreq	L41
 783  0173               L61:
 784  0173 48            	sll	a
 785  0174 5a            	decw	x
 786  0175 26fc          	jrne	L61
 787  0177               L41:
 788  0177 6b02          	ld	(OFST+0,sp),a
 789                     ; 193     if (NewState != DISABLE)
 791  0179 0d08          	tnz	(OFST+6,sp)
 792  017b 272a          	jreq	L572
 793                     ; 196         if (uartreg == 0x01)
 795  017d 7b01          	ld	a,(OFST-1,sp)
 796  017f a101          	cp	a,#1
 797  0181 260a          	jrne	L772
 798                     ; 198             UART1->CR1 |= itpos;
 800  0183 c65234        	ld	a,21044
 801  0186 1a02          	or	a,(OFST+0,sp)
 802  0188 c75234        	ld	21044,a
 804  018b 2045          	jra	L703
 805  018d               L772:
 806                     ; 200         else if (uartreg == 0x02)
 808  018d 7b01          	ld	a,(OFST-1,sp)
 809  018f a102          	cp	a,#2
 810  0191 260a          	jrne	L303
 811                     ; 202             UART1->CR2 |= itpos;
 813  0193 c65235        	ld	a,21045
 814  0196 1a02          	or	a,(OFST+0,sp)
 815  0198 c75235        	ld	21045,a
 817  019b 2035          	jra	L703
 818  019d               L303:
 819                     ; 206             UART1->CR4 |= itpos;
 821  019d c65237        	ld	a,21047
 822  01a0 1a02          	or	a,(OFST+0,sp)
 823  01a2 c75237        	ld	21047,a
 824  01a5 202b          	jra	L703
 825  01a7               L572:
 826                     ; 212         if (uartreg == 0x01)
 828  01a7 7b01          	ld	a,(OFST-1,sp)
 829  01a9 a101          	cp	a,#1
 830  01ab 260b          	jrne	L113
 831                     ; 214             UART1->CR1 &= (uint8_t)(~itpos);
 833  01ad 7b02          	ld	a,(OFST+0,sp)
 834  01af 43            	cpl	a
 835  01b0 c45234        	and	a,21044
 836  01b3 c75234        	ld	21044,a
 838  01b6 201a          	jra	L703
 839  01b8               L113:
 840                     ; 216         else if (uartreg == 0x02)
 842  01b8 7b01          	ld	a,(OFST-1,sp)
 843  01ba a102          	cp	a,#2
 844  01bc 260b          	jrne	L513
 845                     ; 218             UART1->CR2 &= (uint8_t)(~itpos);
 847  01be 7b02          	ld	a,(OFST+0,sp)
 848  01c0 43            	cpl	a
 849  01c1 c45235        	and	a,21045
 850  01c4 c75235        	ld	21045,a
 852  01c7 2009          	jra	L703
 853  01c9               L513:
 854                     ; 222             UART1->CR4 &= (uint8_t)(~itpos);
 856  01c9 7b02          	ld	a,(OFST+0,sp)
 857  01cb 43            	cpl	a
 858  01cc c45237        	and	a,21047
 859  01cf c75237        	ld	21047,a
 860  01d2               L703:
 861                     ; 226 }
 864  01d2 5b04          	addw	sp,#4
 865  01d4 87            	retf
 900                     ; 253 void UART1_ClearITPendingBit(UART1_IT_TypeDef UART1_IT)
 900                     ; 254 {
 901                     	switch	.text
 902  01d5               f_UART1_ClearITPendingBit:
 906                     ; 255     assert_param(IS_UART1_CLEAR_IT_OK(UART1_IT));
 908                     ; 258     if (UART1_IT == UART1_IT_RXNE)
 910  01d5 a30255        	cpw	x,#597
 911  01d8 2606          	jrne	L733
 912                     ; 260         UART1->SR = (uint8_t)~(UART1_SR_RXNE);
 914  01da 35df5230      	mov	21040,#223
 916  01de 2004          	jra	L143
 917  01e0               L733:
 918                     ; 265         UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
 920  01e0 72195237      	bres	21047,#4
 921  01e4               L143:
 922                     ; 267 }
 925  01e4 87            	retf
 947                     ; 274 uint8_t UART1_ReceiveData8(void)
 947                     ; 275 {
 948                     	switch	.text
 949  01e5               f_UART1_ReceiveData8:
 953                     ; 276     return ((uint8_t)UART1->DR);
 955  01e5 c65231        	ld	a,21041
 958  01e8 87            	retf
 989                     ; 284 void UART1_SendData8(uint8_t Data)
 989                     ; 285 {
 990                     	switch	.text
 991  01e9               f_UART1_SendData8:
 995                     ; 287     UART1->DR = Data;
 997  01e9 c75231        	ld	21041,a
 998                     ; 288 }
1001  01ec 87            	retf
1143                     ; 296 FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
1143                     ; 297 {
1144                     	switch	.text
1145  01ed               f_UART1_GetFlagStatus:
1147  01ed 89            	pushw	x
1148  01ee 88            	push	a
1149       00000001      OFST:	set	1
1152                     ; 298     FlagStatus status = RESET;
1154                     ; 301     assert_param(IS_UART1_FLAG_OK(UART1_FLAG));
1156                     ; 305     if (UART1_FLAG == UART1_FLAG_LBDF)
1158  01ef a30210        	cpw	x,#528
1159  01f2 2610          	jrne	L154
1160                     ; 307         if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
1162  01f4 9f            	ld	a,xl
1163  01f5 c45237        	and	a,21047
1164  01f8 2706          	jreq	L354
1165                     ; 310             status = SET;
1167  01fa a601          	ld	a,#1
1168  01fc 6b01          	ld	(OFST+0,sp),a
1170  01fe 202b          	jra	L754
1171  0200               L354:
1172                     ; 315             status = RESET;
1174  0200 0f01          	clr	(OFST+0,sp)
1175  0202 2027          	jra	L754
1176  0204               L154:
1177                     ; 318     else if (UART1_FLAG == UART1_FLAG_SBK)
1179  0204 1e02          	ldw	x,(OFST+1,sp)
1180  0206 a30101        	cpw	x,#257
1181  0209 2611          	jrne	L164
1182                     ; 320         if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
1184  020b c65235        	ld	a,21045
1185  020e 1503          	bcp	a,(OFST+2,sp)
1186  0210 2706          	jreq	L364
1187                     ; 323             status = SET;
1189  0212 a601          	ld	a,#1
1190  0214 6b01          	ld	(OFST+0,sp),a
1192  0216 2013          	jra	L754
1193  0218               L364:
1194                     ; 328             status = RESET;
1196  0218 0f01          	clr	(OFST+0,sp)
1197  021a 200f          	jra	L754
1198  021c               L164:
1199                     ; 333         if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
1201  021c c65230        	ld	a,21040
1202  021f 1503          	bcp	a,(OFST+2,sp)
1203  0221 2706          	jreq	L174
1204                     ; 336             status = SET;
1206  0223 a601          	ld	a,#1
1207  0225 6b01          	ld	(OFST+0,sp),a
1209  0227 2002          	jra	L754
1210  0229               L174:
1211                     ; 341             status = RESET;
1213  0229 0f01          	clr	(OFST+0,sp)
1214  022b               L754:
1215                     ; 345     return status;
1217  022b 7b01          	ld	a,(OFST+0,sp)
1220  022d 5b03          	addw	sp,#3
1221  022f 87            	retf
1233                     	xdef	f_UART1_ClearITPendingBit
1234                     	xdef	f_UART1_GetFlagStatus
1235                     	xdef	f_UART1_SendData8
1236                     	xdef	f_UART1_ReceiveData8
1237                     	xdef	f_UART1_ITConfig
1238                     	xdef	f_UART1_Cmd
1239                     	xdef	f_UART1_Init
1240                     	xref	f_CLK_GetClockFreq
1241                     	xref.b	c_lreg
1242                     	xref.b	c_x
1261                     	xref	d_lursh
1262                     	xref	d_lsub
1263                     	xref	d_smul
1264                     	xref	d_ludv
1265                     	xref	d_rtol
1266                     	xref	d_llsh
1267                     	xref	d_ltor
1268                     	end
