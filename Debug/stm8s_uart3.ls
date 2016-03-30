   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  43                     ; 48 void UART3_DeInit(void)
  43                     ; 49 {
  44                     	switch	.text
  45  0000               f_UART3_DeInit:
  49                     ; 52     (void) UART3->SR;
  51  0000 c65240        	ld	a,21056
  52                     ; 53     (void) UART3->DR;
  54  0003 c65241        	ld	a,21057
  55                     ; 55     UART3->BRR2 = UART3_BRR2_RESET_VALUE; /*Set UART3_BRR2 to reset value 0x00 */
  57  0006 725f5243      	clr	21059
  58                     ; 56     UART3->BRR1 = UART3_BRR1_RESET_VALUE; /*Set UART3_BRR1 to reset value 0x00 */
  60  000a 725f5242      	clr	21058
  61                     ; 58     UART3->CR1 = UART3_CR1_RESET_VALUE;  /*Set UART3_CR1 to reset value 0x00  */
  63  000e 725f5244      	clr	21060
  64                     ; 59     UART3->CR2 = UART3_CR2_RESET_VALUE;  /*Set UART3_CR2 to reset value 0x00  */
  66  0012 725f5245      	clr	21061
  67                     ; 60     UART3->CR3 = UART3_CR3_RESET_VALUE;  /*Set UART3_CR3 to reset value 0x00  */
  69  0016 725f5246      	clr	21062
  70                     ; 61     UART3->CR4 = UART3_CR4_RESET_VALUE;  /*Set UART3_CR4 to reset value 0x00  */
  72  001a 725f5247      	clr	21063
  73                     ; 62     UART3->CR6 = UART3_CR6_RESET_VALUE;  /*Set UART3_CR6 to reset value 0x00  */
  75  001e 725f5249      	clr	21065
  76                     ; 64 }
  79  0022 87            	retf
 295                     .const:	section	.text
 296  0000               L01:
 297  0000 00000064      	dc.l	100
 298                     ; 78 void UART3_Init(uint32_t BaudRate, UART3_WordLength_TypeDef WordLength, 
 298                     ; 79                 UART3_StopBits_TypeDef StopBits, UART3_Parity_TypeDef Parity, 
 298                     ; 80                 UART3_Mode_TypeDef Mode)
 298                     ; 81 {
 299                     	switch	.text
 300  0023               f_UART3_Init:
 302  0023 520e          	subw	sp,#14
 303       0000000e      OFST:	set	14
 306                     ; 82     uint8_t BRR2_1 = 0, BRR2_2 = 0;
 310                     ; 83     uint32_t BaudRate_Mantissa = 0, BaudRate_Mantissa100 = 0;
 314                     ; 86     assert_param(IS_UART3_WORDLENGTH_OK(WordLength));
 316                     ; 87     assert_param(IS_UART3_STOPBITS_OK(StopBits));
 318                     ; 88     assert_param(IS_UART3_PARITY_OK(Parity));
 320                     ; 89     assert_param(IS_UART3_BAUDRATE_OK(BaudRate));
 322                     ; 90     assert_param(IS_UART3_MODE_OK((uint8_t)Mode));
 324                     ; 93     UART3->CR1 &= (uint8_t)(~UART3_CR1_M);     
 326  0025 72195244      	bres	21060,#4
 327                     ; 95     UART3->CR1 |= (uint8_t)WordLength; 
 329  0029 c65244        	ld	a,21060
 330  002c 1a16          	or	a,(OFST+8,sp)
 331  002e c75244        	ld	21060,a
 332                     ; 98     UART3->CR3 &= (uint8_t)(~UART3_CR3_STOP);  
 334  0031 c65246        	ld	a,21062
 335  0034 a4cf          	and	a,#207
 336  0036 c75246        	ld	21062,a
 337                     ; 100     UART3->CR3 |= (uint8_t)StopBits;  
 339  0039 c65246        	ld	a,21062
 340  003c 1a17          	or	a,(OFST+9,sp)
 341  003e c75246        	ld	21062,a
 342                     ; 103     UART3->CR1 &= (uint8_t)(~(UART3_CR1_PCEN | UART3_CR1_PS));  
 344  0041 c65244        	ld	a,21060
 345  0044 a4f9          	and	a,#249
 346  0046 c75244        	ld	21060,a
 347                     ; 105     UART3->CR1 |= (uint8_t)Parity;     
 349  0049 c65244        	ld	a,21060
 350  004c 1a18          	or	a,(OFST+10,sp)
 351  004e c75244        	ld	21060,a
 352                     ; 108     UART3->BRR1 &= (uint8_t)(~UART3_BRR1_DIVM);  
 354  0051 725f5242      	clr	21058
 355                     ; 110     UART3->BRR2 &= (uint8_t)(~UART3_BRR2_DIVM);  
 357  0055 c65243        	ld	a,21059
 358  0058 a40f          	and	a,#15
 359  005a c75243        	ld	21059,a
 360                     ; 112     UART3->BRR2 &= (uint8_t)(~UART3_BRR2_DIVF);  
 362  005d c65243        	ld	a,21059
 363  0060 a4f0          	and	a,#240
 364  0062 c75243        	ld	21059,a
 365                     ; 115     BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
 367  0065 96            	ldw	x,sp
 368  0066 1c0012        	addw	x,#OFST+4
 369  0069 8d000000      	callf	d_ltor
 371  006d a604          	ld	a,#4
 372  006f 8d000000      	callf	d_llsh
 374  0073 96            	ldw	x,sp
 375  0074 1c0001        	addw	x,#OFST-13
 376  0077 8d000000      	callf	d_rtol
 378  007b 8d000000      	callf	f_CLK_GetClockFreq
 380  007f 96            	ldw	x,sp
 381  0080 1c0001        	addw	x,#OFST-13
 382  0083 8d000000      	callf	d_ludv
 384  0087 96            	ldw	x,sp
 385  0088 1c000b        	addw	x,#OFST-3
 386  008b 8d000000      	callf	d_rtol
 388                     ; 116     BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
 390  008f 96            	ldw	x,sp
 391  0090 1c0012        	addw	x,#OFST+4
 392  0093 8d000000      	callf	d_ltor
 394  0097 a604          	ld	a,#4
 395  0099 8d000000      	callf	d_llsh
 397  009d 96            	ldw	x,sp
 398  009e 1c0001        	addw	x,#OFST-13
 399  00a1 8d000000      	callf	d_rtol
 401  00a5 8d000000      	callf	f_CLK_GetClockFreq
 403  00a9 a664          	ld	a,#100
 404  00ab 8d000000      	callf	d_smul
 406  00af 96            	ldw	x,sp
 407  00b0 1c0001        	addw	x,#OFST-13
 408  00b3 8d000000      	callf	d_ludv
 410  00b7 96            	ldw	x,sp
 411  00b8 1c0007        	addw	x,#OFST-7
 412  00bb 8d000000      	callf	d_rtol
 414                     ; 119     BRR2_1 = (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100))
 414                     ; 120                         << 4) / 100) & (uint8_t)0x0F); 
 416  00bf 96            	ldw	x,sp
 417  00c0 1c000b        	addw	x,#OFST-3
 418  00c3 8d000000      	callf	d_ltor
 420  00c7 a664          	ld	a,#100
 421  00c9 8d000000      	callf	d_smul
 423  00cd 96            	ldw	x,sp
 424  00ce 1c0001        	addw	x,#OFST-13
 425  00d1 8d000000      	callf	d_rtol
 427  00d5 96            	ldw	x,sp
 428  00d6 1c0007        	addw	x,#OFST-7
 429  00d9 8d000000      	callf	d_ltor
 431  00dd 96            	ldw	x,sp
 432  00de 1c0001        	addw	x,#OFST-13
 433  00e1 8d000000      	callf	d_lsub
 435  00e5 a604          	ld	a,#4
 436  00e7 8d000000      	callf	d_llsh
 438  00eb ae0000        	ldw	x,#L01
 439  00ee 8d000000      	callf	d_ludv
 441  00f2 b603          	ld	a,c_lreg+3
 442  00f4 a40f          	and	a,#15
 443  00f6 6b05          	ld	(OFST-9,sp),a
 444                     ; 121     BRR2_2 = (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0);
 446  00f8 96            	ldw	x,sp
 447  00f9 1c000b        	addw	x,#OFST-3
 448  00fc 8d000000      	callf	d_ltor
 450  0100 a604          	ld	a,#4
 451  0102 8d000000      	callf	d_lursh
 453  0106 b603          	ld	a,c_lreg+3
 454  0108 a4f0          	and	a,#240
 455  010a b703          	ld	c_lreg+3,a
 456  010c 3f02          	clr	c_lreg+2
 457  010e 3f01          	clr	c_lreg+1
 458  0110 3f00          	clr	c_lreg
 459  0112 b603          	ld	a,c_lreg+3
 460  0114 6b06          	ld	(OFST-8,sp),a
 461                     ; 123     UART3->BRR2 = (uint8_t)(BRR2_1 | BRR2_2);
 463  0116 7b05          	ld	a,(OFST-9,sp)
 464  0118 1a06          	or	a,(OFST-8,sp)
 465  011a c75243        	ld	21059,a
 466                     ; 125     UART3->BRR1 = (uint8_t)BaudRate_Mantissa;           
 468  011d 7b0e          	ld	a,(OFST+0,sp)
 469  011f c75242        	ld	21058,a
 470                     ; 127     if ((uint8_t)(Mode & UART3_MODE_TX_ENABLE))
 472  0122 7b19          	ld	a,(OFST+11,sp)
 473  0124 a504          	bcp	a,#4
 474  0126 2706          	jreq	L531
 475                     ; 130         UART3->CR2 |= UART3_CR2_TEN;  
 477  0128 72165245      	bset	21061,#3
 479  012c 2004          	jra	L731
 480  012e               L531:
 481                     ; 135         UART3->CR2 &= (uint8_t)(~UART3_CR2_TEN);  
 483  012e 72175245      	bres	21061,#3
 484  0132               L731:
 485                     ; 137     if ((uint8_t)(Mode & UART3_MODE_RX_ENABLE))
 487  0132 7b19          	ld	a,(OFST+11,sp)
 488  0134 a508          	bcp	a,#8
 489  0136 2706          	jreq	L141
 490                     ; 140         UART3->CR2 |= UART3_CR2_REN;  
 492  0138 72145245      	bset	21061,#2
 494  013c 2004          	jra	L341
 495  013e               L141:
 496                     ; 145         UART3->CR2 &= (uint8_t)(~UART3_CR2_REN);  
 498  013e 72155245      	bres	21061,#2
 499  0142               L341:
 500                     ; 147 }
 503  0142 5b0e          	addw	sp,#14
 504  0144 87            	retf
 558                     ; 155 void UART3_Cmd(FunctionalState NewState)
 558                     ; 156 {
 559                     	switch	.text
 560  0145               f_UART3_Cmd:
 564                     ; 158     if (NewState != DISABLE)
 566  0145 4d            	tnz	a
 567  0146 2706          	jreq	L371
 568                     ; 161         UART3->CR1 &= (uint8_t)(~UART3_CR1_UARTD); 
 570  0148 721b5244      	bres	21060,#5
 572  014c 2004          	jra	L571
 573  014e               L371:
 574                     ; 166         UART3->CR1 |= UART3_CR1_UARTD;  
 576  014e 721a5244      	bset	21060,#5
 577  0152               L571:
 578                     ; 168 }
 581  0152 87            	retf
 708                     ; 185 void UART3_ITConfig(UART3_IT_TypeDef UART3_IT, FunctionalState NewState)
 708                     ; 186 {
 709                     	switch	.text
 710  0153               f_UART3_ITConfig:
 712  0153 89            	pushw	x
 713  0154 89            	pushw	x
 714       00000002      OFST:	set	2
 717                     ; 187     uint8_t uartreg = 0, itpos = 0x00;
 721                     ; 190     assert_param(IS_UART3_CONFIG_IT_OK(UART3_IT));
 723                     ; 191     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 725                     ; 194     uartreg = (uint8_t)((uint16_t)UART3_IT >> 0x08);
 727  0155 9e            	ld	a,xh
 728  0156 6b01          	ld	(OFST-1,sp),a
 729                     ; 197     itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART3_IT & (uint8_t)0x0F));
 731  0158 9f            	ld	a,xl
 732  0159 a40f          	and	a,#15
 733  015b 5f            	clrw	x
 734  015c 97            	ld	xl,a
 735  015d a601          	ld	a,#1
 736  015f 5d            	tnzw	x
 737  0160 2704          	jreq	L61
 738  0162               L02:
 739  0162 48            	sll	a
 740  0163 5a            	decw	x
 741  0164 26fc          	jrne	L02
 742  0166               L61:
 743  0166 6b02          	ld	(OFST+0,sp),a
 744                     ; 199     if (NewState != DISABLE)
 746  0168 0d08          	tnz	(OFST+6,sp)
 747  016a 273a          	jreq	L352
 748                     ; 202         if (uartreg == 0x01)
 750  016c 7b01          	ld	a,(OFST-1,sp)
 751  016e a101          	cp	a,#1
 752  0170 260a          	jrne	L552
 753                     ; 204             UART3->CR1 |= itpos;
 755  0172 c65244        	ld	a,21060
 756  0175 1a02          	or	a,(OFST+0,sp)
 757  0177 c75244        	ld	21060,a
 759  017a 2066          	jra	L172
 760  017c               L552:
 761                     ; 206         else if (uartreg == 0x02)
 763  017c 7b01          	ld	a,(OFST-1,sp)
 764  017e a102          	cp	a,#2
 765  0180 260a          	jrne	L162
 766                     ; 208             UART3->CR2 |= itpos;
 768  0182 c65245        	ld	a,21061
 769  0185 1a02          	or	a,(OFST+0,sp)
 770  0187 c75245        	ld	21061,a
 772  018a 2056          	jra	L172
 773  018c               L162:
 774                     ; 210         else if (uartreg == 0x03)
 776  018c 7b01          	ld	a,(OFST-1,sp)
 777  018e a103          	cp	a,#3
 778  0190 260a          	jrne	L562
 779                     ; 212             UART3->CR4 |= itpos;
 781  0192 c65247        	ld	a,21063
 782  0195 1a02          	or	a,(OFST+0,sp)
 783  0197 c75247        	ld	21063,a
 785  019a 2046          	jra	L172
 786  019c               L562:
 787                     ; 216             UART3->CR6 |= itpos;
 789  019c c65249        	ld	a,21065
 790  019f 1a02          	or	a,(OFST+0,sp)
 791  01a1 c75249        	ld	21065,a
 792  01a4 203c          	jra	L172
 793  01a6               L352:
 794                     ; 222         if (uartreg == 0x01)
 796  01a6 7b01          	ld	a,(OFST-1,sp)
 797  01a8 a101          	cp	a,#1
 798  01aa 260b          	jrne	L372
 799                     ; 224             UART3->CR1 &= (uint8_t)(~itpos);
 801  01ac 7b02          	ld	a,(OFST+0,sp)
 802  01ae 43            	cpl	a
 803  01af c45244        	and	a,21060
 804  01b2 c75244        	ld	21060,a
 806  01b5 202b          	jra	L172
 807  01b7               L372:
 808                     ; 226         else if (uartreg == 0x02)
 810  01b7 7b01          	ld	a,(OFST-1,sp)
 811  01b9 a102          	cp	a,#2
 812  01bb 260b          	jrne	L772
 813                     ; 228             UART3->CR2 &= (uint8_t)(~itpos);
 815  01bd 7b02          	ld	a,(OFST+0,sp)
 816  01bf 43            	cpl	a
 817  01c0 c45245        	and	a,21061
 818  01c3 c75245        	ld	21061,a
 820  01c6 201a          	jra	L172
 821  01c8               L772:
 822                     ; 230         else if (uartreg == 0x03)
 824  01c8 7b01          	ld	a,(OFST-1,sp)
 825  01ca a103          	cp	a,#3
 826  01cc 260b          	jrne	L303
 827                     ; 232             UART3->CR4 &= (uint8_t)(~itpos);
 829  01ce 7b02          	ld	a,(OFST+0,sp)
 830  01d0 43            	cpl	a
 831  01d1 c45247        	and	a,21063
 832  01d4 c75247        	ld	21063,a
 834  01d7 2009          	jra	L172
 835  01d9               L303:
 836                     ; 236             UART3->CR6 &= (uint8_t)(~itpos);
 838  01d9 7b02          	ld	a,(OFST+0,sp)
 839  01db 43            	cpl	a
 840  01dc c45249        	and	a,21065
 841  01df c75249        	ld	21065,a
 842  01e2               L172:
 843                     ; 239 }
 846  01e2 5b04          	addw	sp,#4
 847  01e4 87            	retf
 905                     ; 248 void UART3_LINBreakDetectionConfig(UART3_LINBreakDetectionLength_TypeDef UART3_LINBreakDetectionLength)
 905                     ; 249 {
 906                     	switch	.text
 907  01e5               f_UART3_LINBreakDetectionConfig:
 911                     ; 251     assert_param(IS_UART3_LINBREAKDETECTIONLENGTH_OK(UART3_LINBreakDetectionLength));
 913                     ; 253     if (UART3_LINBreakDetectionLength != UART3_LINBREAKDETECTIONLENGTH_10BITS)
 915  01e5 4d            	tnz	a
 916  01e6 2706          	jreq	L533
 917                     ; 255         UART3->CR4 |= UART3_CR4_LBDL;
 919  01e8 721a5247      	bset	21063,#5
 921  01ec 2004          	jra	L733
 922  01ee               L533:
 923                     ; 259         UART3->CR4 &= ((uint8_t)~UART3_CR4_LBDL);
 925  01ee 721b5247      	bres	21063,#5
 926  01f2               L733:
 927                     ; 261 }
 930  01f2 87            	retf
1050                     ; 273 void UART3_LINConfig(UART3_LinMode_TypeDef UART3_Mode,
1050                     ; 274                      UART3_LinAutosync_TypeDef UART3_Autosync, 
1050                     ; 275                      UART3_LinDivUp_TypeDef UART3_DivUp)
1050                     ; 276 {
1051                     	switch	.text
1052  01f3               f_UART3_LINConfig:
1054  01f3 89            	pushw	x
1055       00000000      OFST:	set	0
1058                     ; 278     assert_param(IS_UART3_SLAVE_OK(UART3_Mode));
1060                     ; 279     assert_param(IS_UART3_AUTOSYNC_OK(UART3_Autosync));
1062                     ; 280     assert_param(IS_UART3_DIVUP_OK(UART3_DivUp));
1064                     ; 282     if (UART3_Mode != UART3_LIN_MODE_MASTER)
1066  01f4 9e            	ld	a,xh
1067  01f5 4d            	tnz	a
1068  01f6 2706          	jreq	L714
1069                     ; 284         UART3->CR6 |=  UART3_CR6_LSLV;
1071  01f8 721a5249      	bset	21065,#5
1073  01fc 2004          	jra	L124
1074  01fe               L714:
1075                     ; 288         UART3->CR6 &= ((uint8_t)~UART3_CR6_LSLV);
1077  01fe 721b5249      	bres	21065,#5
1078  0202               L124:
1079                     ; 291     if (UART3_Autosync != UART3_LIN_AUTOSYNC_DISABLE)
1081  0202 0d02          	tnz	(OFST+2,sp)
1082  0204 2706          	jreq	L324
1083                     ; 293         UART3->CR6 |=  UART3_CR6_LASE ;
1085  0206 72185249      	bset	21065,#4
1087  020a 2004          	jra	L524
1088  020c               L324:
1089                     ; 297         UART3->CR6 &= ((uint8_t)~ UART3_CR6_LASE );
1091  020c 72195249      	bres	21065,#4
1092  0210               L524:
1093                     ; 300     if (UART3_DivUp != UART3_LIN_DIVUP_LBRR1)
1095  0210 0d06          	tnz	(OFST+6,sp)
1096  0212 2706          	jreq	L724
1097                     ; 302         UART3->CR6 |=  UART3_CR6_LDUM;
1099  0214 721e5249      	bset	21065,#7
1101  0218 2004          	jra	L134
1102  021a               L724:
1103                     ; 306         UART3->CR6 &= ((uint8_t)~ UART3_CR6_LDUM);
1105  021a 721f5249      	bres	21065,#7
1106  021e               L134:
1107                     ; 308 }
1110  021e 85            	popw	x
1111  021f 87            	retf
1145                     ; 316 void UART3_LINCmd(FunctionalState NewState)
1145                     ; 317 {
1146                     	switch	.text
1147  0220               f_UART3_LINCmd:
1151                     ; 319     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1153                     ; 321     if (NewState != DISABLE)
1155  0220 4d            	tnz	a
1156  0221 2706          	jreq	L154
1157                     ; 324         UART3->CR3 |= UART3_CR3_LINEN;
1159  0223 721c5246      	bset	21062,#6
1161  0227 2004          	jra	L354
1162  0229               L154:
1163                     ; 329         UART3->CR3 &= ((uint8_t)~UART3_CR3_LINEN);
1165  0229 721d5246      	bres	21062,#6
1166  022d               L354:
1167                     ; 331 }
1170  022d 87            	retf
1226                     ; 339 void UART3_WakeUpConfig(UART3_WakeUp_TypeDef UART3_WakeUp)
1226                     ; 340 {
1227                     	switch	.text
1228  022e               f_UART3_WakeUpConfig:
1232                     ; 342     assert_param(IS_UART3_WAKEUP_OK(UART3_WakeUp));
1234                     ; 344     UART3->CR1 &= ((uint8_t)~UART3_CR1_WAKE);
1236  022e 72175244      	bres	21060,#3
1237                     ; 345     UART3->CR1 |= (uint8_t)UART3_WakeUp;
1239  0232 ca5244        	or	a,21060
1240  0235 c75244        	ld	21060,a
1241                     ; 346 }
1244  0238 87            	retf
1279                     ; 354 void UART3_ReceiverWakeUpCmd(FunctionalState NewState)
1279                     ; 355 {
1280                     	switch	.text
1281  0239               f_UART3_ReceiverWakeUpCmd:
1285                     ; 357     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1287                     ; 359     if (NewState != DISABLE)
1289  0239 4d            	tnz	a
1290  023a 2706          	jreq	L125
1291                     ; 362         UART3->CR2 |= UART3_CR2_RWU;
1293  023c 72125245      	bset	21061,#1
1295  0240 2004          	jra	L325
1296  0242               L125:
1297                     ; 367         UART3->CR2 &= ((uint8_t)~UART3_CR2_RWU);
1299  0242 72135245      	bres	21061,#1
1300  0246               L325:
1301                     ; 369 }
1304  0246 87            	retf
1326                     ; 376 uint8_t UART3_ReceiveData8(void)
1326                     ; 377 {
1327                     	switch	.text
1328  0247               f_UART3_ReceiveData8:
1332                     ; 378     return ((uint8_t)UART3->DR);
1334  0247 c65241        	ld	a,21057
1337  024a 87            	retf
1368                     ; 386 uint16_t UART3_ReceiveData9(void)
1368                     ; 387 {
1369                     	switch	.text
1370  024b               f_UART3_ReceiveData9:
1372  024b 89            	pushw	x
1373       00000002      OFST:	set	2
1376                     ; 388   uint16_t temp = 0;
1378                     ; 390  temp = (uint16_t)(((uint16_t)((uint16_t)UART3->CR1 & (uint16_t)UART3_CR1_R8)) << 1);
1380  024c c65244        	ld	a,21060
1381  024f 5f            	clrw	x
1382  0250 a480          	and	a,#128
1383  0252 5f            	clrw	x
1384  0253 02            	rlwa	x,a
1385  0254 58            	sllw	x
1386  0255 1f01          	ldw	(OFST-1,sp),x
1387                     ; 391   return (uint16_t)((((uint16_t)UART3->DR) | temp) & ((uint16_t)0x01FF));
1389  0257 c65241        	ld	a,21057
1390  025a 5f            	clrw	x
1391  025b 97            	ld	xl,a
1392  025c 01            	rrwa	x,a
1393  025d 1a02          	or	a,(OFST+0,sp)
1394  025f 01            	rrwa	x,a
1395  0260 1a01          	or	a,(OFST-1,sp)
1396  0262 01            	rrwa	x,a
1397  0263 01            	rrwa	x,a
1398  0264 a4ff          	and	a,#255
1399  0266 01            	rrwa	x,a
1400  0267 a401          	and	a,#1
1401  0269 01            	rrwa	x,a
1404  026a 5b02          	addw	sp,#2
1405  026c 87            	retf
1436                     ; 399 void UART3_SendData8(uint8_t Data)
1436                     ; 400 {
1437                     	switch	.text
1438  026d               f_UART3_SendData8:
1442                     ; 402     UART3->DR = Data;
1444  026d c75241        	ld	21057,a
1445                     ; 403 }
1448  0270 87            	retf
1479                     ; 410 void UART3_SendData9(uint16_t Data)
1479                     ; 411 {
1480                     	switch	.text
1481  0271               f_UART3_SendData9:
1483  0271 89            	pushw	x
1484       00000000      OFST:	set	0
1487                     ; 413     UART3->CR1 &= ((uint8_t)~UART3_CR1_T8);                  
1489  0272 721d5244      	bres	21060,#6
1490                     ; 416     UART3->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART3_CR1_T8); 
1492  0276 54            	srlw	x
1493  0277 54            	srlw	x
1494  0278 9f            	ld	a,xl
1495  0279 a440          	and	a,#64
1496  027b ca5244        	or	a,21060
1497  027e c75244        	ld	21060,a
1498                     ; 419     UART3->DR   = (uint8_t)(Data);                    
1500  0281 7b02          	ld	a,(OFST+2,sp)
1501  0283 c75241        	ld	21057,a
1502                     ; 420 }
1505  0286 85            	popw	x
1506  0287 87            	retf
1528                     ; 427 void UART3_SendBreak(void)
1528                     ; 428 {
1529                     	switch	.text
1530  0288               f_UART3_SendBreak:
1534                     ; 429     UART3->CR2 |= UART3_CR2_SBK;
1536  0288 72105245      	bset	21061,#0
1537                     ; 430 }
1540  028c 87            	retf
1571                     ; 437 void UART3_SetAddress(uint8_t UART3_Address)
1571                     ; 438 {
1572                     	switch	.text
1573  028d               f_UART3_SetAddress:
1575  028d 88            	push	a
1576       00000000      OFST:	set	0
1579                     ; 440     assert_param(IS_UART3_ADDRESS_OK(UART3_Address));
1581                     ; 443     UART3->CR4 &= ((uint8_t)~UART3_CR4_ADD);
1583  028e c65247        	ld	a,21063
1584  0291 a4f0          	and	a,#240
1585  0293 c75247        	ld	21063,a
1586                     ; 445     UART3->CR4 |= UART3_Address;
1588  0296 c65247        	ld	a,21063
1589  0299 1a01          	or	a,(OFST+1,sp)
1590  029b c75247        	ld	21063,a
1591                     ; 446 }
1594  029e 84            	pop	a
1595  029f 87            	retf
1751                     ; 454 FlagStatus UART3_GetFlagStatus(UART3_Flag_TypeDef UART3_FLAG)
1751                     ; 455 {
1752                     	switch	.text
1753  02a0               f_UART3_GetFlagStatus:
1755  02a0 89            	pushw	x
1756  02a1 88            	push	a
1757       00000001      OFST:	set	1
1760                     ; 456     FlagStatus status = RESET;
1762                     ; 459     assert_param(IS_UART3_FLAG_OK(UART3_FLAG));
1764                     ; 462     if (UART3_FLAG == UART3_FLAG_LBDF)
1766  02a2 a30210        	cpw	x,#528
1767  02a5 2610          	jrne	L317
1768                     ; 464         if ((UART3->CR4 & (uint8_t)UART3_FLAG) != (uint8_t)0x00)
1770  02a7 9f            	ld	a,xl
1771  02a8 c45247        	and	a,21063
1772  02ab 2706          	jreq	L517
1773                     ; 467             status = SET;
1775  02ad a601          	ld	a,#1
1776  02af 6b01          	ld	(OFST+0,sp),a
1778  02b1 2039          	jra	L127
1779  02b3               L517:
1780                     ; 472             status = RESET;
1782  02b3 0f01          	clr	(OFST+0,sp)
1783  02b5 2035          	jra	L127
1784  02b7               L317:
1785                     ; 475     else if (UART3_FLAG == UART3_FLAG_SBK)
1787  02b7 1e02          	ldw	x,(OFST+1,sp)
1788  02b9 a30101        	cpw	x,#257
1789  02bc 2611          	jrne	L327
1790                     ; 477         if ((UART3->CR2 & (uint8_t)UART3_FLAG) != (uint8_t)0x00)
1792  02be c65245        	ld	a,21061
1793  02c1 1503          	bcp	a,(OFST+2,sp)
1794  02c3 2706          	jreq	L527
1795                     ; 480             status = SET;
1797  02c5 a601          	ld	a,#1
1798  02c7 6b01          	ld	(OFST+0,sp),a
1800  02c9 2021          	jra	L127
1801  02cb               L527:
1802                     ; 485             status = RESET;
1804  02cb 0f01          	clr	(OFST+0,sp)
1805  02cd 201d          	jra	L127
1806  02cf               L327:
1807                     ; 488     else if ((UART3_FLAG == UART3_FLAG_LHDF) || (UART3_FLAG == UART3_FLAG_LSF))
1809  02cf 1e02          	ldw	x,(OFST+1,sp)
1810  02d1 a30302        	cpw	x,#770
1811  02d4 2707          	jreq	L537
1813  02d6 1e02          	ldw	x,(OFST+1,sp)
1814  02d8 a30301        	cpw	x,#769
1815  02db 2614          	jrne	L337
1816  02dd               L537:
1817                     ; 490         if ((UART3->CR6 & (uint8_t)UART3_FLAG) != (uint8_t)0x00)
1819  02dd c65249        	ld	a,21065
1820  02e0 1503          	bcp	a,(OFST+2,sp)
1821  02e2 2706          	jreq	L737
1822                     ; 493             status = SET;
1824  02e4 a601          	ld	a,#1
1825  02e6 6b01          	ld	(OFST+0,sp),a
1827  02e8 2002          	jra	L127
1828  02ea               L737:
1829                     ; 498             status = RESET;
1831  02ea 0f01          	clr	(OFST+0,sp)
1832  02ec               L127:
1833                     ; 516     return  status;
1835  02ec 7b01          	ld	a,(OFST+0,sp)
1838  02ee 5b03          	addw	sp,#3
1839  02f0 87            	retf
1840  02f1               L337:
1841                     ; 503         if ((UART3->SR & (uint8_t)UART3_FLAG) != (uint8_t)0x00)
1843  02f1 c65240        	ld	a,21056
1844  02f4 1503          	bcp	a,(OFST+2,sp)
1845  02f6 2706          	jreq	L547
1846                     ; 506             status = SET;
1848  02f8 a601          	ld	a,#1
1849  02fa 6b01          	ld	(OFST+0,sp),a
1851  02fc 20ee          	jra	L127
1852  02fe               L547:
1853                     ; 511             status = RESET;
1855  02fe 0f01          	clr	(OFST+0,sp)
1856  0300 20ea          	jra	L127
1890                     ; 546 void UART3_ClearFlag(UART3_Flag_TypeDef UART3_FLAG)
1890                     ; 547 {
1891                     	switch	.text
1892  0302               f_UART3_ClearFlag:
1894  0302 89            	pushw	x
1895       00000000      OFST:	set	0
1898                     ; 549     assert_param(IS_UART3_CLEAR_FLAG_OK(UART3_FLAG));
1900                     ; 552     if (UART3_FLAG == UART3_FLAG_RXNE)
1902  0303 a30020        	cpw	x,#32
1903  0306 2606          	jrne	L767
1904                     ; 554         UART3->SR = (uint8_t)~(UART3_SR_RXNE);
1906  0308 35df5240      	mov	21056,#223
1908  030c 201e          	jra	L177
1909  030e               L767:
1910                     ; 557     else if (UART3_FLAG == UART3_FLAG_LBDF)
1912  030e 1e01          	ldw	x,(OFST+1,sp)
1913  0310 a30210        	cpw	x,#528
1914  0313 2606          	jrne	L377
1915                     ; 559         UART3->CR4 &= (uint8_t)(~UART3_CR4_LBDF);
1917  0315 72195247      	bres	21063,#4
1919  0319 2011          	jra	L177
1920  031b               L377:
1921                     ; 562     else if (UART3_FLAG == UART3_FLAG_LHDF)
1923  031b 1e01          	ldw	x,(OFST+1,sp)
1924  031d a30302        	cpw	x,#770
1925  0320 2606          	jrne	L777
1926                     ; 564         UART3->CR6 &= (uint8_t)(~UART3_CR6_LHDF);
1928  0322 72135249      	bres	21065,#1
1930  0326 2004          	jra	L177
1931  0328               L777:
1932                     ; 569         UART3->CR6 &= (uint8_t)(~UART3_CR6_LSF);
1934  0328 72115249      	bres	21065,#0
1935  032c               L177:
1936                     ; 571 }
1939  032c 85            	popw	x
1940  032d 87            	retf
2013                     ; 586 ITStatus UART3_GetITStatus(UART3_IT_TypeDef UART3_IT)
2013                     ; 587 {
2014                     	switch	.text
2015  032e               f_UART3_GetITStatus:
2017  032e 89            	pushw	x
2018  032f 89            	pushw	x
2019       00000002      OFST:	set	2
2022                     ; 588     ITStatus pendingbitstatus = RESET;
2024                     ; 589     uint8_t itpos = 0;
2026                     ; 590     uint8_t itmask1 = 0;
2028                     ; 591     uint8_t itmask2 = 0;
2030                     ; 592     uint8_t enablestatus = 0;
2032                     ; 595     assert_param(IS_UART3_GET_IT_OK(UART3_IT));
2034                     ; 598     itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART3_IT & (uint8_t)0x0F));
2036  0330 9f            	ld	a,xl
2037  0331 a40f          	and	a,#15
2038  0333 5f            	clrw	x
2039  0334 97            	ld	xl,a
2040  0335 a601          	ld	a,#1
2041  0337 5d            	tnzw	x
2042  0338 2704          	jreq	L65
2043  033a               L06:
2044  033a 48            	sll	a
2045  033b 5a            	decw	x
2046  033c 26fc          	jrne	L06
2047  033e               L65:
2048  033e 6b01          	ld	(OFST-1,sp),a
2049                     ; 600     itmask1 = (uint8_t)((uint8_t)UART3_IT >> (uint8_t)4);
2051  0340 7b04          	ld	a,(OFST+2,sp)
2052  0342 4e            	swap	a
2053  0343 a40f          	and	a,#15
2054  0345 6b02          	ld	(OFST+0,sp),a
2055                     ; 602     itmask2 = (uint8_t)((uint8_t)1 << itmask1);
2057  0347 7b02          	ld	a,(OFST+0,sp)
2058  0349 5f            	clrw	x
2059  034a 97            	ld	xl,a
2060  034b a601          	ld	a,#1
2061  034d 5d            	tnzw	x
2062  034e 2704          	jreq	L26
2063  0350               L46:
2064  0350 48            	sll	a
2065  0351 5a            	decw	x
2066  0352 26fc          	jrne	L46
2067  0354               L26:
2068  0354 6b02          	ld	(OFST+0,sp),a
2069                     ; 605     if (UART3_IT == UART3_IT_PE)
2071  0356 1e03          	ldw	x,(OFST+1,sp)
2072  0358 a30100        	cpw	x,#256
2073  035b 261c          	jrne	L5301
2074                     ; 608         enablestatus = (uint8_t)((uint8_t)UART3->CR1 & itmask2);
2076  035d c65244        	ld	a,21060
2077  0360 1402          	and	a,(OFST+0,sp)
2078  0362 6b02          	ld	(OFST+0,sp),a
2079                     ; 611         if (((UART3->SR & itpos) != (uint8_t)0x00) && enablestatus)
2081  0364 c65240        	ld	a,21056
2082  0367 1501          	bcp	a,(OFST-1,sp)
2083  0369 270a          	jreq	L7301
2085  036b 0d02          	tnz	(OFST+0,sp)
2086  036d 2706          	jreq	L7301
2087                     ; 614             pendingbitstatus = SET;
2089  036f a601          	ld	a,#1
2090  0371 6b02          	ld	(OFST+0,sp),a
2092  0373 2064          	jra	L3401
2093  0375               L7301:
2094                     ; 619             pendingbitstatus = RESET;
2096  0375 0f02          	clr	(OFST+0,sp)
2097  0377 2060          	jra	L3401
2098  0379               L5301:
2099                     ; 622     else if (UART3_IT == UART3_IT_LBDF)
2101  0379 1e03          	ldw	x,(OFST+1,sp)
2102  037b a30346        	cpw	x,#838
2103  037e 261c          	jrne	L5401
2104                     ; 625         enablestatus = (uint8_t)((uint8_t)UART3->CR4 & itmask2);
2106  0380 c65247        	ld	a,21063
2107  0383 1402          	and	a,(OFST+0,sp)
2108  0385 6b02          	ld	(OFST+0,sp),a
2109                     ; 627         if (((UART3->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
2111  0387 c65247        	ld	a,21063
2112  038a 1501          	bcp	a,(OFST-1,sp)
2113  038c 270a          	jreq	L7401
2115  038e 0d02          	tnz	(OFST+0,sp)
2116  0390 2706          	jreq	L7401
2117                     ; 630             pendingbitstatus = SET;
2119  0392 a601          	ld	a,#1
2120  0394 6b02          	ld	(OFST+0,sp),a
2122  0396 2041          	jra	L3401
2123  0398               L7401:
2124                     ; 635             pendingbitstatus = RESET;
2126  0398 0f02          	clr	(OFST+0,sp)
2127  039a 203d          	jra	L3401
2128  039c               L5401:
2129                     ; 638     else if (UART3_IT == UART3_IT_LHDF)
2131  039c 1e03          	ldw	x,(OFST+1,sp)
2132  039e a30412        	cpw	x,#1042
2133  03a1 261c          	jrne	L5501
2134                     ; 641         enablestatus = (uint8_t)((uint8_t)UART3->CR6 & itmask2);
2136  03a3 c65249        	ld	a,21065
2137  03a6 1402          	and	a,(OFST+0,sp)
2138  03a8 6b02          	ld	(OFST+0,sp),a
2139                     ; 643         if (((UART3->CR6 & itpos) != (uint8_t)0x00) && enablestatus)
2141  03aa c65249        	ld	a,21065
2142  03ad 1501          	bcp	a,(OFST-1,sp)
2143  03af 270a          	jreq	L7501
2145  03b1 0d02          	tnz	(OFST+0,sp)
2146  03b3 2706          	jreq	L7501
2147                     ; 646             pendingbitstatus = SET;
2149  03b5 a601          	ld	a,#1
2150  03b7 6b02          	ld	(OFST+0,sp),a
2152  03b9 201e          	jra	L3401
2153  03bb               L7501:
2154                     ; 651             pendingbitstatus = RESET;
2156  03bb 0f02          	clr	(OFST+0,sp)
2157  03bd 201a          	jra	L3401
2158  03bf               L5501:
2159                     ; 657         enablestatus = (uint8_t)((uint8_t)UART3->CR2 & itmask2);
2161  03bf c65245        	ld	a,21061
2162  03c2 1402          	and	a,(OFST+0,sp)
2163  03c4 6b02          	ld	(OFST+0,sp),a
2164                     ; 659         if (((UART3->SR & itpos) != (uint8_t)0x00) && enablestatus)
2166  03c6 c65240        	ld	a,21056
2167  03c9 1501          	bcp	a,(OFST-1,sp)
2168  03cb 270a          	jreq	L5601
2170  03cd 0d02          	tnz	(OFST+0,sp)
2171  03cf 2706          	jreq	L5601
2172                     ; 662             pendingbitstatus = SET;
2174  03d1 a601          	ld	a,#1
2175  03d3 6b02          	ld	(OFST+0,sp),a
2177  03d5 2002          	jra	L3401
2178  03d7               L5601:
2179                     ; 667             pendingbitstatus = RESET;
2181  03d7 0f02          	clr	(OFST+0,sp)
2182  03d9               L3401:
2183                     ; 671     return  pendingbitstatus;
2185  03d9 7b02          	ld	a,(OFST+0,sp)
2188  03db 5b04          	addw	sp,#4
2189  03dd 87            	retf
2224                     ; 701 void UART3_ClearITPendingBit(UART3_IT_TypeDef UART3_IT)
2224                     ; 702 {
2225                     	switch	.text
2226  03de               f_UART3_ClearITPendingBit:
2228  03de 89            	pushw	x
2229       00000000      OFST:	set	0
2232                     ; 704     assert_param(IS_UART3_CLEAR_IT_OK(UART3_IT));
2234                     ; 707     if (UART3_IT == UART3_IT_RXNE)
2236  03df a30255        	cpw	x,#597
2237  03e2 2606          	jrne	L7011
2238                     ; 709         UART3->SR = (uint8_t)~(UART3_SR_RXNE);
2240  03e4 35df5240      	mov	21056,#223
2242  03e8 2011          	jra	L1111
2243  03ea               L7011:
2244                     ; 712     else if (UART3_IT == UART3_IT_LBDF)
2246  03ea 1e01          	ldw	x,(OFST+1,sp)
2247  03ec a30346        	cpw	x,#838
2248  03ef 2606          	jrne	L3111
2249                     ; 714         UART3->CR4 &= (uint8_t)~(UART3_CR4_LBDF);
2251  03f1 72195247      	bres	21063,#4
2253  03f5 2004          	jra	L1111
2254  03f7               L3111:
2255                     ; 719         UART3->CR6 &= (uint8_t)(~UART3_CR6_LHDF);
2257  03f7 72135249      	bres	21065,#1
2258  03fb               L1111:
2259                     ; 721 }
2262  03fb 85            	popw	x
2263  03fc 87            	retf
2275                     	xdef	f_UART3_ClearITPendingBit
2276                     	xdef	f_UART3_GetITStatus
2277                     	xdef	f_UART3_ClearFlag
2278                     	xdef	f_UART3_GetFlagStatus
2279                     	xdef	f_UART3_SetAddress
2280                     	xdef	f_UART3_SendBreak
2281                     	xdef	f_UART3_SendData9
2282                     	xdef	f_UART3_SendData8
2283                     	xdef	f_UART3_ReceiveData9
2284                     	xdef	f_UART3_ReceiveData8
2285                     	xdef	f_UART3_WakeUpConfig
2286                     	xdef	f_UART3_ReceiverWakeUpCmd
2287                     	xdef	f_UART3_LINCmd
2288                     	xdef	f_UART3_LINConfig
2289                     	xdef	f_UART3_LINBreakDetectionConfig
2290                     	xdef	f_UART3_ITConfig
2291                     	xdef	f_UART3_Cmd
2292                     	xdef	f_UART3_Init
2293                     	xdef	f_UART3_DeInit
2294                     	xref	f_CLK_GetClockFreq
2295                     	xref.b	c_lreg
2296                     	xref.b	c_x
2315                     	xref	d_lursh
2316                     	xref	d_lsub
2317                     	xref	d_smul
2318                     	xref	d_ludv
2319                     	xref	d_rtol
2320                     	xref	d_llsh
2321                     	xref	d_ltor
2322                     	end
