   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
 312                     ; 42 void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
 312                     ; 43 {
 313                     	switch	.text
 314  0000               f_GPIO_Init:
 316  0000 89            	pushw	x
 317       00000000      OFST:	set	0
 320                     ; 48     assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
 322                     ; 49     assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
 324                     ; 52   GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 326  0001 7b06          	ld	a,(OFST+6,sp)
 327  0003 43            	cpl	a
 328  0004 e404          	and	a,(4,x)
 329  0006 e704          	ld	(4,x),a
 330                     ; 58     if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
 332  0008 7b07          	ld	a,(OFST+7,sp)
 333  000a a580          	bcp	a,#128
 334  000c 271d          	jreq	L751
 335                     ; 60         if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
 337  000e 7b07          	ld	a,(OFST+7,sp)
 338  0010 a510          	bcp	a,#16
 339  0012 2706          	jreq	L161
 340                     ; 62             GPIOx->ODR |= (uint8_t)GPIO_Pin;
 342  0014 f6            	ld	a,(x)
 343  0015 1a06          	or	a,(OFST+6,sp)
 344  0017 f7            	ld	(x),a
 346  0018 2007          	jra	L361
 347  001a               L161:
 348                     ; 66             GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
 350  001a 1e01          	ldw	x,(OFST+1,sp)
 351  001c 7b06          	ld	a,(OFST+6,sp)
 352  001e 43            	cpl	a
 353  001f f4            	and	a,(x)
 354  0020 f7            	ld	(x),a
 355  0021               L361:
 356                     ; 69         GPIOx->DDR |= (uint8_t)GPIO_Pin;
 358  0021 1e01          	ldw	x,(OFST+1,sp)
 359  0023 e602          	ld	a,(2,x)
 360  0025 1a06          	or	a,(OFST+6,sp)
 361  0027 e702          	ld	(2,x),a
 363  0029 2009          	jra	L561
 364  002b               L751:
 365                     ; 74         GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
 367  002b 1e01          	ldw	x,(OFST+1,sp)
 368  002d 7b06          	ld	a,(OFST+6,sp)
 369  002f 43            	cpl	a
 370  0030 e402          	and	a,(2,x)
 371  0032 e702          	ld	(2,x),a
 372  0034               L561:
 373                     ; 81     if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
 375  0034 7b07          	ld	a,(OFST+7,sp)
 376  0036 a540          	bcp	a,#64
 377  0038 270a          	jreq	L761
 378                     ; 83         GPIOx->CR1 |= (uint8_t)GPIO_Pin;
 380  003a 1e01          	ldw	x,(OFST+1,sp)
 381  003c e603          	ld	a,(3,x)
 382  003e 1a06          	or	a,(OFST+6,sp)
 383  0040 e703          	ld	(3,x),a
 385  0042 2009          	jra	L171
 386  0044               L761:
 387                     ; 87         GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
 389  0044 1e01          	ldw	x,(OFST+1,sp)
 390  0046 7b06          	ld	a,(OFST+6,sp)
 391  0048 43            	cpl	a
 392  0049 e403          	and	a,(3,x)
 393  004b e703          	ld	(3,x),a
 394  004d               L171:
 395                     ; 94     if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
 397  004d 7b07          	ld	a,(OFST+7,sp)
 398  004f a520          	bcp	a,#32
 399  0051 270a          	jreq	L371
 400                     ; 96         GPIOx->CR2 |= (uint8_t)GPIO_Pin;
 402  0053 1e01          	ldw	x,(OFST+1,sp)
 403  0055 e604          	ld	a,(4,x)
 404  0057 1a06          	or	a,(OFST+6,sp)
 405  0059 e704          	ld	(4,x),a
 407  005b 2009          	jra	L571
 408  005d               L371:
 409                     ; 100         GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 411  005d 1e01          	ldw	x,(OFST+1,sp)
 412  005f 7b06          	ld	a,(OFST+6,sp)
 413  0061 43            	cpl	a
 414  0062 e404          	and	a,(4,x)
 415  0064 e704          	ld	(4,x),a
 416  0066               L571:
 417                     ; 102 }
 420  0066 85            	popw	x
 421  0067 87            	retf
 467                     ; 112 void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 467                     ; 113 {
 468                     	switch	.text
 469  0068               f_GPIO_WriteHigh:
 471  0068 89            	pushw	x
 472       00000000      OFST:	set	0
 475                     ; 114     GPIOx->ODR |= (uint8_t)PortPins;
 477  0069 f6            	ld	a,(x)
 478  006a 1a06          	or	a,(OFST+6,sp)
 479  006c f7            	ld	(x),a
 480                     ; 115 }
 483  006d 85            	popw	x
 484  006e 87            	retf
 530                     ; 125 void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 530                     ; 126 {
 531                     	switch	.text
 532  006f               f_GPIO_WriteLow:
 534  006f 89            	pushw	x
 535       00000000      OFST:	set	0
 538                     ; 127     GPIOx->ODR &= (uint8_t)(~PortPins);
 540  0070 7b06          	ld	a,(OFST+6,sp)
 541  0072 43            	cpl	a
 542  0073 f4            	and	a,(x)
 543  0074 f7            	ld	(x),a
 544                     ; 128 }
 547  0075 85            	popw	x
 548  0076 87            	retf
 594                     ; 138 void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 594                     ; 139 {
 595                     	switch	.text
 596  0077               f_GPIO_WriteReverse:
 598  0077 89            	pushw	x
 599       00000000      OFST:	set	0
 602                     ; 140     GPIOx->ODR ^= (uint8_t)PortPins;
 604  0078 f6            	ld	a,(x)
 605  0079 1806          	xor	a,	(OFST+6,sp)
 606  007b f7            	ld	(x),a
 607                     ; 141 }
 610  007c 85            	popw	x
 611  007d 87            	retf
 678                     ; 149 BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
 678                     ; 150 {
 679                     	switch	.text
 680  007e               f_GPIO_ReadInputPin:
 682  007e 89            	pushw	x
 683       00000000      OFST:	set	0
 686                     ; 151     return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
 688  007f e601          	ld	a,(1,x)
 689  0081 1406          	and	a,(OFST+6,sp)
 692  0083 85            	popw	x
 693  0084 87            	retf
 705                     	xdef	f_GPIO_ReadInputPin
 706                     	xdef	f_GPIO_WriteReverse
 707                     	xdef	f_GPIO_WriteLow
 708                     	xdef	f_GPIO_WriteHigh
 709                     	xdef	f_GPIO_Init
 728                     	end
