   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
 186                     ; 31 void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
 186                     ; 32                         uint16_t TIM2_Period)
 186                     ; 33 {
 187                     	switch	.text
 188  0000               f_TIM2_TimeBaseInit:
 190  0000 88            	push	a
 191       00000000      OFST:	set	0
 194                     ; 35     TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
 196  0001 c7530c        	ld	21260,a
 197                     ; 37     TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
 199  0004 7b05          	ld	a,(OFST+5,sp)
 200  0006 c7530d        	ld	21261,a
 201                     ; 38     TIM2->ARRL = (uint8_t)(TIM2_Period);
 203  0009 7b06          	ld	a,(OFST+6,sp)
 204  000b c7530e        	ld	21262,a
 205                     ; 39 }
 208  000e 84            	pop	a
 209  000f 87            	retf
 263                     ; 47 void TIM2_Cmd(FunctionalState NewState)
 263                     ; 48 {
 264                     	switch	.text
 265  0010               f_TIM2_Cmd:
 269                     ; 50     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 271                     ; 53     if (NewState != DISABLE)
 273  0010 4d            	tnz	a
 274  0011 2706          	jreq	L321
 275                     ; 55         TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
 277  0013 72105300      	bset	21248,#0
 279  0017 2004          	jra	L521
 280  0019               L321:
 281                     ; 59         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
 283  0019 72115300      	bres	21248,#0
 284  001d               L521:
 285                     ; 61 }
 288  001d 87            	retf
 319                     ; 69 void TIM2_SetCounter(uint16_t Counter)
 319                     ; 70 {
 320                     	switch	.text
 321  001e               f_TIM2_SetCounter:
 325                     ; 72     TIM2->CNTRH = (uint8_t)(Counter >> 8);
 327  001e 9e            	ld	a,xh
 328  001f c7530a        	ld	21258,a
 329                     ; 73     TIM2->CNTRL = (uint8_t)(Counter);
 331  0022 9f            	ld	a,xl
 332  0023 c7530b        	ld	21259,a
 333                     ; 75 }
 336  0026 87            	retf
 367                     ; 82 uint16_t TIM2_GetCounter(void)
 367                     ; 83 {
 368                     	switch	.text
 369  0027               f_TIM2_GetCounter:
 371  0027 89            	pushw	x
 372       00000002      OFST:	set	2
 375                     ; 84      uint16_t tmpcntr = 0;
 377                     ; 86     tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
 379  0028 c6530a        	ld	a,21258
 380  002b 5f            	clrw	x
 381  002c 97            	ld	xl,a
 382  002d 4f            	clr	a
 383  002e 02            	rlwa	x,a
 384  002f 1f01          	ldw	(OFST-1,sp),x
 385                     ; 88     return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
 387  0031 c6530b        	ld	a,21259
 388  0034 5f            	clrw	x
 389  0035 97            	ld	xl,a
 390  0036 01            	rrwa	x,a
 391  0037 1a02          	or	a,(OFST+0,sp)
 392  0039 01            	rrwa	x,a
 393  003a 1a01          	or	a,(OFST-1,sp)
 394  003c 01            	rrwa	x,a
 397  003d 5b02          	addw	sp,#2
 398  003f 87            	retf
 487                     ; 104 void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
 487                     ; 105 {
 488                     	switch	.text
 489  0040               f_TIM2_ClearFlag:
 493                     ; 107     assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
 495                     ; 110     TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
 497  0040 9f            	ld	a,xl
 498  0041 43            	cpl	a
 499  0042 c75302        	ld	21250,a
 500                     ; 111     TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
 502  0045 35ff5303      	mov	21251,#255
 503                     ; 112 }
 506  0049 87            	retf
 518                     	xdef	f_TIM2_ClearFlag
 519                     	xdef	f_TIM2_GetCounter
 520                     	xdef	f_TIM2_SetCounter
 521                     	xdef	f_TIM2_Cmd
 522                     	xdef	f_TIM2_TimeBaseInit
 541                     	end
