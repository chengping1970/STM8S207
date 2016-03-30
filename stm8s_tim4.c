/**
  ******************************************************************************
  * @file    stm8s_tim4.c
  * @author  MCD Application Team
  * @version V2.1.0
  * @date    18-November-2011
  * @brief   This file contains all the functions for the TIM4 peripheral.
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
#include "stm8s_tim4.h"

/** @addtogroup STM8S_StdPeriph_Driver
  * @{
  */
/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/**
  * @addtogroup TIM4_Public_Functions
  * @{
  */

/**
  * @brief  Initializes the TIM4 Time Base Unit according to the specified parameters.
  * @param    TIM4_Prescaler specifies the Prescaler from TIM4_Prescaler_TypeDef.
  * @param    TIM4_Period specifies the Period value.
  * @retval None
  */
void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, uint8_t TIM4_Period)
{
    /* Check TIM4 prescaler value */
    assert_param(IS_TIM4_PRESCALER_OK(TIM4_Prescaler));
    /* Set the Prescaler value */
    TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
    /* Set the Autoreload value */
    TIM4->ARR = (uint8_t)(TIM4_Period);
}



/**
  * @brief  Enables or disables the TIM4 peripheral.
  * @param   NewState new state of the TIM4 peripheral. This parameter can
  * be ENABLE or DISABLE.
  * @retval None
  */
void TIM4_Cmd(FunctionalState NewState)
{
    /* Check the parameters */
    assert_param(IS_FUNCTIONALSTATE_OK(NewState));

    /* set or Reset the CEN Bit */
    if (NewState != DISABLE)
    {
        TIM4->CR1 |= TIM4_CR1_CEN;
    }
    else
    {
        TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN);
    }
}

/**
  * @brief  Enables or disables the specified TIM4 interrupts.
  * @param   NewState new state of the TIM4 peripheral.
  * This parameter can be: ENABLE or DISABLE.
  * @param   TIM4_IT specifies the TIM4 interrupts sources to be enabled or disabled.
  * This parameter can be any combination of the following values:
  * - TIM4_IT_UPDATE: TIM4 update Interrupt source
  * @param   NewState new state of the TIM4 peripheral.
  * @retval None
  */
void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
{
    /* Check the parameters */
    assert_param(IS_TIM4_IT_OK(TIM4_IT));
    assert_param(IS_FUNCTIONALSTATE_OK(NewState));

    if (NewState != DISABLE)
    {
        /* Enable the Interrupt sources */
        TIM4->IER |= (uint8_t)TIM4_IT;
    }
    else
    {
        /* Disable the Interrupt sources */
        TIM4->IER &= (uint8_t)(~TIM4_IT);
    }
}

/**
  * @brief  Clears the TIM4’s pending flags.
  * @param   TIM4_FLAG specifies the flag to clear.
  * This parameter can be one of the following values:
  *                       - TIM4_FLAG_UPDATE: TIM4 update Flag
  * @retval None.
  */
void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
{
    /* Check the parameters */
    assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));

    /* Clear the flags (rc_w0) clear this bit by writing 0. Writing ‘1’ has no effect*/
    TIM4->SR1 = (uint8_t)(~TIM4_FLAG);

}
  
  /**
  * @}
  */
  
/******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
