   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
 145                     ; 64 void EXTI_SetExtIntSensitivity(EXTI_Port_TypeDef Port, EXTI_Sensitivity_TypeDef SensitivityValue)
 145                     ; 65 {
 146                     	switch	.text
 147  0000               f_EXTI_SetExtIntSensitivity:
 149  0000 89            	pushw	x
 150       00000000      OFST:	set	0
 153                     ; 68     assert_param(IS_EXTI_PORT_OK(Port));
 155                     ; 69     assert_param(IS_EXTI_SENSITIVITY_OK(SensitivityValue));
 157                     ; 72     switch (Port)
 159  0001 9e            	ld	a,xh
 161                     ; 94     default:
 161                     ; 95         break;
 162  0002 4d            	tnz	a
 163  0003 270e          	jreq	L3
 164  0005 4a            	dec	a
 165  0006 271d          	jreq	L5
 166  0008 4a            	dec	a
 167  0009 272e          	jreq	L7
 168  000b 4a            	dec	a
 169  000c 2742          	jreq	L11
 170  000e 4a            	dec	a
 171  000f 2756          	jreq	L31
 172  0011 2064          	jra	L301
 173  0013               L3:
 174                     ; 74     case EXTI_PORT_GPIOA:
 174                     ; 75         EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PAIS);
 176  0013 c650a0        	ld	a,20640
 177  0016 a4fc          	and	a,#252
 178  0018 c750a0        	ld	20640,a
 179                     ; 76         EXTI->CR1 |= (uint8_t)(SensitivityValue);
 181  001b c650a0        	ld	a,20640
 182  001e 1a02          	or	a,(OFST+2,sp)
 183  0020 c750a0        	ld	20640,a
 184                     ; 77         break;
 186  0023 2052          	jra	L301
 187  0025               L5:
 188                     ; 78     case EXTI_PORT_GPIOB:
 188                     ; 79         EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PBIS);
 190  0025 c650a0        	ld	a,20640
 191  0028 a4f3          	and	a,#243
 192  002a c750a0        	ld	20640,a
 193                     ; 80         EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 2);
 195  002d 7b02          	ld	a,(OFST+2,sp)
 196  002f 48            	sll	a
 197  0030 48            	sll	a
 198  0031 ca50a0        	or	a,20640
 199  0034 c750a0        	ld	20640,a
 200                     ; 81         break;
 202  0037 203e          	jra	L301
 203  0039               L7:
 204                     ; 82     case EXTI_PORT_GPIOC:
 204                     ; 83         EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PCIS);
 206  0039 c650a0        	ld	a,20640
 207  003c a4cf          	and	a,#207
 208  003e c750a0        	ld	20640,a
 209                     ; 84         EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 4);
 211  0041 7b02          	ld	a,(OFST+2,sp)
 212  0043 97            	ld	xl,a
 213  0044 a610          	ld	a,#16
 214  0046 42            	mul	x,a
 215  0047 9f            	ld	a,xl
 216  0048 ca50a0        	or	a,20640
 217  004b c750a0        	ld	20640,a
 218                     ; 85         break;
 220  004e 2027          	jra	L301
 221  0050               L11:
 222                     ; 86     case EXTI_PORT_GPIOD:
 222                     ; 87         EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PDIS);
 224  0050 c650a0        	ld	a,20640
 225  0053 a43f          	and	a,#63
 226  0055 c750a0        	ld	20640,a
 227                     ; 88         EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 6);
 229  0058 7b02          	ld	a,(OFST+2,sp)
 230  005a 97            	ld	xl,a
 231  005b a640          	ld	a,#64
 232  005d 42            	mul	x,a
 233  005e 9f            	ld	a,xl
 234  005f ca50a0        	or	a,20640
 235  0062 c750a0        	ld	20640,a
 236                     ; 89         break;
 238  0065 2010          	jra	L301
 239  0067               L31:
 240                     ; 90     case EXTI_PORT_GPIOE:
 240                     ; 91         EXTI->CR2 &= (uint8_t)(~EXTI_CR2_PEIS);
 242  0067 c650a1        	ld	a,20641
 243  006a a4fc          	and	a,#252
 244  006c c750a1        	ld	20641,a
 245                     ; 92         EXTI->CR2 |= (uint8_t)(SensitivityValue);
 247  006f c650a1        	ld	a,20641
 248  0072 1a02          	or	a,(OFST+2,sp)
 249  0074 c750a1        	ld	20641,a
 250                     ; 93         break;
 252  0077               L51:
 253                     ; 94     default:
 253                     ; 95         break;
 255  0077               L301:
 256                     ; 97 }
 259  0077 85            	popw	x
 260  0078 87            	retf
 272                     	xdef	f_EXTI_SetExtIntSensitivity
 291                     	end
