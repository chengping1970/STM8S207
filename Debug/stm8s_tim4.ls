   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
 124                     ; 44 void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, uint8_t TIM4_Period)
 124                     ; 45 {
 125                     	switch	.text
 126  0000               f_TIM4_TimeBaseInit:
 130                     ; 47     assert_param(IS_TIM4_PRESCALER_OK(TIM4_Prescaler));
 132                     ; 49     TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
 134  0000 9e            	ld	a,xh
 135  0001 c75345        	ld	21317,a
 136                     ; 51     TIM4->ARR = (uint8_t)(TIM4_Period);
 138  0004 9f            	ld	a,xl
 139  0005 c75346        	ld	21318,a
 140                     ; 52 }
 143  0008 87            	retf
 197                     ; 62 void TIM4_Cmd(FunctionalState NewState)
 197                     ; 63 {
 198                     	switch	.text
 199  0009               f_TIM4_Cmd:
 203                     ; 65     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 205                     ; 68     if (NewState != DISABLE)
 207  0009 4d            	tnz	a
 208  000a 2706          	jreq	L301
 209                     ; 70         TIM4->CR1 |= TIM4_CR1_CEN;
 211  000c 72105340      	bset	21312,#0
 213  0010 2004          	jra	L501
 214  0012               L301:
 215                     ; 74         TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN);
 217  0012 72115340      	bres	21312,#0
 218  0016               L501:
 219                     ; 76 }
 222  0016 87            	retf
 279                     ; 88 void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
 279                     ; 89 {
 280                     	switch	.text
 281  0017               f_TIM4_ITConfig:
 283  0017 89            	pushw	x
 284       00000000      OFST:	set	0
 287                     ; 91     assert_param(IS_TIM4_IT_OK(TIM4_IT));
 289                     ; 92     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 291                     ; 94     if (NewState != DISABLE)
 293  0018 9f            	ld	a,xl
 294  0019 4d            	tnz	a
 295  001a 2709          	jreq	L731
 296                     ; 97         TIM4->IER |= (uint8_t)TIM4_IT;
 298  001c 9e            	ld	a,xh
 299  001d ca5341        	or	a,21313
 300  0020 c75341        	ld	21313,a
 302  0023 2009          	jra	L141
 303  0025               L731:
 304                     ; 102         TIM4->IER &= (uint8_t)(~TIM4_IT);
 306  0025 7b01          	ld	a,(OFST+1,sp)
 307  0027 43            	cpl	a
 308  0028 c45341        	and	a,21313
 309  002b c75341        	ld	21313,a
 310  002e               L141:
 311                     ; 104 }
 314  002e 85            	popw	x
 315  002f 87            	retf
 362                     ; 113 void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
 362                     ; 114 {
 363                     	switch	.text
 364  0030               f_TIM4_ClearFlag:
 368                     ; 116     assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
 370                     ; 119     TIM4->SR1 = (uint8_t)(~TIM4_FLAG);
 372  0030 43            	cpl	a
 373  0031 c75342        	ld	21314,a
 374                     ; 121 }
 377  0034 87            	retf
 389                     	xdef	f_TIM4_ClearFlag
 390                     	xdef	f_TIM4_ITConfig
 391                     	xdef	f_TIM4_Cmd
 392                     	xdef	f_TIM4_TimeBaseInit
 411                     	end
