/**
  ******************************************************************************
  * @file    stm8s_flash.c
  * @author  MCD Application Team
	* @version V2.1.0
  * @date    18-November-2011
  * @brief   This file contains all the functions for the FLASH peripheral.
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2011 STMicroelectronics</center></h2>
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include "stm8s_flash.h"

/** @addtogroup STM8S_StdPeriph_Driver
  * @{
  */
/**
@code
 This driver provides functions to configure and program the Flash memory of all
 STM8S devices.

 It includes as well functions that can be either executed from RAM or not, and
 other functions that must be executed from RAM otherwise useless.

 The table below lists the functions that can be executed from RAM.

 +--------------------------------------------------------------------------------|
 |   Functions prototypes      |    RAM execution            |     Comments       |
 ---------------------------------------------------------------------------------|
 |                             | Mandatory in case of block  | Can be executed    |
 | FLASH_WaitForLastOperation  | Operation:                  | from Flash in case |
 |                             | - Block programming         | of byte and word   |
 |                             | - Block erase               | Operations         |
 |--------------------------------------------------------------------------------|
 | FLASH_ProgramBlock          |       Exclusively           | useless from Flash |
 |--------------------------------------------------------------------------------|
 | FLASH_EraseBlock            |       Exclusively           | useless from Flash |
 |--------------------------------------------------------------------------------|

 To be able to execute functions from RAM several steps have to be followed.
 These steps may differ from one toolchain to another.
 A detailed description is available below within this driver.
 You can also refer to the FLASH examples provided within the
 STM8S_StdPeriph_Lib package.

@endcode
*/


/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
#define FLASH_CLEAR_BYTE ((uint8_t)0x00)
#define FLASH_SET_BYTE  ((uint8_t)0xFF)
#define OPERATION_TIMEOUT  ((uint32_t)0xFFFFF)
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private Constants ---------------------------------------------------------*/

/** @addtogroup FLASH_Public_functions
  * @{
  */

/**
  * @brief   Unlocks the program or data EEPROM memory
  * @param  FLASH_MemType : Memory type to unlock
  *         This parameter can be a value of @ref FLASH_MemType_TypeDef
  * @retval None
  */
void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
{
    /* Check parameter */
    assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));

    /* Unlock program memory */
    if (FLASH_MemType == FLASH_MEMTYPE_PROG)
    {
        FLASH->PUKR = FLASH_RASS_KEY1;
        FLASH->PUKR = FLASH_RASS_KEY2;
    }
    /* Unlock data memory */
    else
    {
        FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
        FLASH->DUKR = FLASH_RASS_KEY1;
    }
}

/**
  * @brief   Programs one byte in program or data EEPROM memory
  * @note   PointerAttr define is declared in the stm8s.h file to select if 
  *         the pointer will be declared as near (2 bytes) or far (3 bytes).
  * @param  Address : Address where the byte will be programmed
  * @param  Data : Value to be programmed
  * @retval None
  */
void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
{
    /* Check parameters */
    assert_param(IS_FLASH_ADDRESS_OK(Address));
	#if 0
    	*(PointerAttr uint8_t*) (uint16_t)Address = Data;
    #else
	{
    	uint8_t * p_data = (uint8_t *)Address;
		*p_data = Data;
		while (FLASH_GetFlagStatus(FLASH_FLAG_EOP) == RESET)
		{};
	}
	#endif
}

/**
  * @brief   Reads any byte from flash memory
  * @note   PointerAttr define is declared in the stm8s.h file to select if 
  *         the pointer will be declared as near (2 bytes) or far (3 bytes).
  * @param  Address : Address to read
  * @retval Value of the byte
  */
uint8_t FLASH_ReadByte(uint32_t Address)
{
    /* Check parameter */
    assert_param(IS_FLASH_ADDRESS_OK(Address));
    
    /* Read byte */
	#if 0
    	return(*(PointerAttr uint8_t *) (uint16_t)Address); 
	#else
	{
		uint8_t * p_data = (uint8_t *)Address;
		return (*p_data);
	}
	#endif
}

/**
  * @brief   Sets the fixed programming time
  * @param  FLASH_ProgTime Indicates the programming time to be fixed
  *         This parameter can be any of the @ref FLASH_ProgramTime_TypeDef values.
  * @retval None
  */
void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
{
    /* Check parameter */
    assert_param(IS_FLASH_PROGRAM_TIME_OK(FLASH_ProgTime));

    FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
    FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
}

/**
  * @brief  Checks whether the specified SPI flag is set or not.
  * @param  FLASH_FLAG : Specifies the flag to check.
  *         This parameter can be any of the @ref FLASH_Flag_TypeDef enumeration.
  * @retval FlagStatus : Indicates the state of FLASH_FLAG.
  *         This parameter can be any of the @ref FlagStatus enumeration.
  * @note   This function can clear the EOP, WR_PG_DIS flags in the IAPSR register.
  */
FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
{
    FlagStatus status = RESET;
    /* Check parameters */
    assert_param(IS_FLASH_FLAGS_OK(FLASH_FLAG));

    /* Check the status of the specified FLASH flag */
    if ((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
    {
        status = SET; /* FLASH_FLAG is set */
    }
    else
    {
        status = RESET; /* FLASH_FLAG is reset*/
    }

    /* Return the FLASH_FLAG status */
    return status;
}

/**
  * @}
  */
  
/**
  * @}
  */
  
/******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
