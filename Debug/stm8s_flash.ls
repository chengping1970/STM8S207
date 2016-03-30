   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  75                     ; 81 void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
  75                     ; 82 {
  76                     	switch	.text
  77  0000               f_FLASH_Unlock:
  81                     ; 84     assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
  83                     ; 87     if (FLASH_MemType == FLASH_MEMTYPE_PROG)
  85  0000 a1fd          	cp	a,#253
  86  0002 260a          	jrne	L73
  87                     ; 89         FLASH->PUKR = FLASH_RASS_KEY1;
  89  0004 35565062      	mov	20578,#86
  90                     ; 90         FLASH->PUKR = FLASH_RASS_KEY2;
  92  0008 35ae5062      	mov	20578,#174
  94  000c 2008          	jra	L14
  95  000e               L73:
  96                     ; 95         FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
  98  000e 35ae5064      	mov	20580,#174
  99                     ; 96         FLASH->DUKR = FLASH_RASS_KEY1;
 101  0012 35565064      	mov	20580,#86
 102  0016               L14:
 103                     ; 98 }
 106  0016 87            	retf
 155                     ; 108 void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
 155                     ; 109 {
 156                     	switch	.text
 157  0017               f_FLASH_ProgramByte:
 159  0017 89            	pushw	x
 160       00000002      OFST:	set	2
 163                     ; 111     assert_param(IS_FLASH_ADDRESS_OK(Address));
 165                     ; 116     	uint8_t * p_data = (uint8_t *)Address;
 167  0018 1e08          	ldw	x,(OFST+6,sp)
 168  001a 1f01          	ldw	(OFST-1,sp),x
 169                     ; 117 		*p_data = Data;
 171  001c 7b0a          	ld	a,(OFST+8,sp)
 172  001e 1e01          	ldw	x,(OFST-1,sp)
 173  0020 f7            	ld	(x),a
 175  0021               L17:
 176                     ; 118 		while (FLASH_GetFlagStatus(FLASH_FLAG_EOP) == RESET)
 178  0021 a604          	ld	a,#4
 179  0023 8d410041      	callf	f_FLASH_GetFlagStatus
 181  0027 4d            	tnz	a
 182  0028 27f7          	jreq	L17
 183                     ; 122 }
 187  002a 85            	popw	x
 188  002b 87            	retf
 229                     ; 131 uint8_t FLASH_ReadByte(uint32_t Address)
 229                     ; 132 {
 230                     	switch	.text
 231  002c               f_FLASH_ReadByte:
 233  002c 89            	pushw	x
 234       00000002      OFST:	set	2
 237                     ; 134     assert_param(IS_FLASH_ADDRESS_OK(Address));
 239                     ; 141 		uint8_t * p_data = (uint8_t *)Address;
 241  002d 1e08          	ldw	x,(OFST+6,sp)
 242  002f 1f01          	ldw	(OFST-1,sp),x
 243                     ; 142 		return (*p_data);
 245  0031 1e01          	ldw	x,(OFST-1,sp)
 246  0033 f6            	ld	a,(x)
 249  0034 85            	popw	x
 250  0035 87            	retf
 307                     ; 153 void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
 307                     ; 154 {
 308                     	switch	.text
 309  0036               f_FLASH_SetProgrammingTime:
 313                     ; 156     assert_param(IS_FLASH_PROGRAM_TIME_OK(FLASH_ProgTime));
 315                     ; 158     FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
 317  0036 7211505a      	bres	20570,#0
 318                     ; 159     FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
 320  003a ca505a        	or	a,20570
 321  003d c7505a        	ld	20570,a
 322                     ; 160 }
 325  0040 87            	retf
 433                     ; 170 FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
 433                     ; 171 {
 434                     	switch	.text
 435  0041               f_FLASH_GetFlagStatus:
 437  0041 88            	push	a
 438       00000001      OFST:	set	1
 441                     ; 172     FlagStatus status = RESET;
 443                     ; 174     assert_param(IS_FLASH_FLAGS_OK(FLASH_FLAG));
 445                     ; 177     if ((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
 447  0042 c4505f        	and	a,20575
 448  0045 2706          	jreq	L312
 449                     ; 179         status = SET; /* FLASH_FLAG is set */
 451  0047 a601          	ld	a,#1
 452  0049 6b01          	ld	(OFST+0,sp),a
 454  004b 2002          	jra	L512
 455  004d               L312:
 456                     ; 183         status = RESET; /* FLASH_FLAG is reset*/
 458  004d 0f01          	clr	(OFST+0,sp)
 459  004f               L512:
 460                     ; 187     return status;
 462  004f 7b01          	ld	a,(OFST+0,sp)
 465  0051 5b01          	addw	sp,#1
 466  0053 87            	retf
 478                     	xdef	f_FLASH_GetFlagStatus
 479                     	xdef	f_FLASH_SetProgrammingTime
 480                     	xdef	f_FLASH_ReadByte
 481                     	xdef	f_FLASH_ProgramByte
 482                     	xdef	f_FLASH_Unlock
 501                     	end
