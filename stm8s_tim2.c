/**
  ******************************************************************************
  * @file    stm8s_tim2.c
  * @author  MCD Application Team
  * @version V2.1.0
  * @date    18-November-2011
  * @brief   This file contains all the functions for the TIM2 peripheral.
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
#include "stm8s_tim2.h"

/**
  * @brief  Initializes the TIM2 Time Base Unit according to the specified parameters.
  * @param    TIM2_Prescaler specifies the Prescaler from TIM2_Prescaler_TypeDef.
  * @param    TIM2_Period specifies the Period value.
  * @retval None
  */
void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
                        uint16_t TIM2_Period)
{
    /* Set the Prescaler value */
    TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
    /* Set the Autoreload value */
    TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
    TIM2->ARRL = (uint8_t)(TIM2_Period);
}

/**
  * @brief  Enables or disables the TIM2 peripheral.
  * @param   NewState new state of the TIM2 peripheral. This parameter can
  * be ENABLE or DISABLE.
  * @retval None
  */
void TIM2_Cmd(FunctionalState NewState)
{
    /* Check the parameters */
    assert_param(IS_FUNCTIONALSTATE_OK(NewState));

    /* set or Reset the CEN Bit */
    if (NewState != DISABLE)
    {
        TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
    }
    else
    {
        TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
    }
}

/**
  * @brief  Sets the TIM2 Counter Register value.
  * @param   Counter specifies the Counter register new value.
  * This parameter is between 0x0000 and 0xFFFF.
  * @retval None
  */
void TIM2_SetCounter(uint16_t Counter)
{
    /* Set the Counter Register value */
    TIM2->CNTRH = (uint8_t)(Counter >> 8);
    TIM2->CNTRL = (uint8_t)(Counter);

}

/**
  * @brief  Gets the TIM2 Counter value.
  * @param  None
  * @retval Counter Register value.
  */
uint16_t TIM2_GetCounter(void)
{
     uint16_t tmpcntr = 0;
     
    tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
    /* Get the Counter Register value */
    return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
}

/**
  * @brief  Clears the TIM2’s pending flags.
  * @param   TIM2_FLAG specifies the flag to clear.
  * This parameter can be one of the following values:
  *                       - TIM2_FLAG_UPDATE: TIM2 update Flag
  *                       - TIM2_FLAG_CC1: TIM2 Capture Compare 1 Flag
  *                       - TIM2_FLAG_CC2: TIM2 Capture Compare 2 Flag
  *                       - TIM2_FLAG_CC3: TIM2 Capture Compare 3 Flag
  *                       - TIM2_FLAG_CC1OF: TIM2 Capture Compare 1 over capture Flag
  *                       - TIM2_FLAG_CC2OF: TIM2 Capture Compare 2 over capture Flag
  *                       - TIM2_FLAG_CC3OF: TIM2 Capture Compare 3 over capture Flag
  * @retval None.
  */
void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
{
    /* Check the parameters */
    assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));

    /* Clear the flags (rc_w0) clear this bit by writing 0. Writing ‘1’ has no effect*/
    TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
    TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
}

/**
  * @}
  */
  
  /**
  * @}
  */
/******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
