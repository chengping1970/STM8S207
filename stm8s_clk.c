/**
  ******************************************************************************
  * @file    stm8s_clk.c
  * @author  MCD Application Team
  * @version V2.1.0
  * @date    18-November-2011
  * @brief   This file contains all the functions for the CLK peripheral.
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH 52FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2011 STMicroelectronics</center></h2>
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/

#include "stm8s_clk.h"

/** @addtogroup STM8S_StdPeriph_Driver
  * @{
  */
/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/

/* Private Constants ---------------------------------------------------------*/

/**
  * @addtogroup CLK_Private_Constants
  * @{
  */

CONST uint8_t HSIDivFactor[4] = {1, 2, 4, 8}; /*!< Holds the different HSI Divider factors */
//CONST uint8_t CLKPrescTable[8] = {1, 2, 4, 8, 10, 16, 20, 40}; /*!< Holds the different CLK prescaler values */

/**
  * @}
  */

/* Public functions ----------------------------------------------------------*/
/**
  * @addtogroup CLK_Public_Functions
  * @{
  */

/**
  * @brief  Configures the HSI clock dividers.
  * @param   HSIPrescaler : Specifies the HSI clock divider to apply.
  * This parameter can be any of the @ref CLK_Prescaler_TypeDef enumeration.
  * @retval None
  */
void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
{

    /* check the parameters */
    assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));

    /* Clear High speed internal clock prescaler */
    CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);

    /* Set High speed internal clock prescaler */
    CLK->CKDIVR |= (uint8_t)HSIPrescaler;

}

/**
  * @brief  This function returns the frequencies of different on chip clocks.
  * @param  None
  * @retval the master clock frequency
  */
uint32_t CLK_GetClockFreq(void)
{

    uint32_t clockfrequency = 0;
    CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
    uint8_t tmp = 0, presc = 0;

    /* Get CLK source. */
    clocksource = (CLK_Source_TypeDef)CLK->CMSR;

    if (clocksource == CLK_SOURCE_HSI)
    {
        tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
        tmp = (uint8_t)(tmp >> 3);
        presc = HSIDivFactor[tmp];
        clockfrequency = HSI_VALUE / presc;
    }
    else if ( clocksource == CLK_SOURCE_LSI)
    {
        clockfrequency = LSI_VALUE;
    }
    else
    {
        clockfrequency = HSE_VALUE;
    }

    return((uint32_t)clockfrequency);

}

/**
  * @brief  Configures the HSI and CPU clock dividers.
  * @param   ClockPrescaler Specifies the HSI or CPU clock divider to apply.
  * @retval None
  */
void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
{

    /* check the parameters */
    assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));

    if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
    {
        CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
        CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
    }
    else /* Bit7 = 1 means CPU divider */
    {
        CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
        CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
    }

}

/**
  * @brief  Enable or Disable the External High Speed oscillator (HSE).
  * @param   NewState new state of HSEEN, value accepted ENABLE, DISABLE.
  * @retval None
  */
void CLK_HSECmd(FunctionalState NewState)
{

    /* Check the parameters */
    assert_param(IS_FUNCTIONALSTATE_OK(NewState));

    if (NewState != DISABLE)
    {
        /* Set HSEEN bit */
        CLK->ECKR |= CLK_ECKR_HSEEN;
    }
    else
    {
        /* Reset HSEEN bit */
        CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
    }

}

FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
{

    uint16_t statusreg = 0;
    uint8_t tmpreg = 0;
    FlagStatus bitstatus = RESET;

    /* check the parameters */
    assert_param(IS_CLK_FLAG_OK(CLK_FLAG));

    /* Get the CLK register index */
    statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);


    if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
    {
        tmpreg = CLK->ICKR;
    }
    else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
    {
        tmpreg = CLK->ECKR;
    }
    else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
    {
        tmpreg = CLK->SWCR;
    }
    else if (statusreg == 0x0400) /* The flag to check is in CSS register */
    {
        tmpreg = CLK->CSSR;
    }
    else /* The flag to check is in CCO register */
    {
        tmpreg = CLK->CCOR;
    }

    if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
    {
        bitstatus = SET;
    }
    else
    {
        bitstatus = RESET;
    }

    /* Return the flag status */
    return((FlagStatus)bitstatus);

}

/**
  * @brief  Starts or Stops manually the clock switch execution.
  * @par Full description:
  * NewState parameter set the SWEN.
  * @param   NewState new state of SWEN, value accepted ENABLE, DISABLE.
  * @retval None
  */
void CLK_ClockSwitchCmd(FunctionalState NewState)
{

    /* Check the parameters */
    assert_param(IS_FUNCTIONALSTATE_OK(NewState));

    if (NewState != DISABLE )
    {
        /* Enable the Clock Switch */
        CLK->SWCR |= CLK_SWCR_SWEN;
    }
    else
    {
        /* Disable the Clock Switch */
        CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
    }

}

/**
  * @brief  configures the Switch from one clock to another
  * @param   CLK_SwitchMode select the clock switch mode.
  * It can be set of the values of @ref CLK_SwitchMode_TypeDef
  * @param   CLK_NewClock choice of the future clock.
  * It can be set of the values of @ref CLK_Source_TypeDef
  * @param   NewState Enable or Disable the Clock Switch interrupt.
  * @param   CLK_CurrentClockState current clock to switch OFF or to keep ON.
  * It can be set of the values of @ref CLK_CurrentClockState_TypeDef
  * @retval ErrorStatus this shows the clock switch status (ERROR/SUCCESS).
  */
ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
{

    CLK_Source_TypeDef clock_master;
    uint16_t DownCounter = CLK_TIMEOUT;
    ErrorStatus Swif = ERROR;

    /* Check the parameters */
    assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
    assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
    assert_param(IS_FUNCTIONALSTATE_OK(ITState));
    assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));

    /* Current clock master saving */
    clock_master = (CLK_Source_TypeDef)CLK->CMSR;

    /* Automatic switch mode management */
    if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
    {

        /* Enables Clock switch */
        CLK->SWCR |= CLK_SWCR_SWEN;

        /* Enables or Disables Switch interrupt */
        if (ITState != DISABLE)
        {
            CLK->SWCR |= CLK_SWCR_SWIEN;
        }
        else
        {
            CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
        }

        /* Selection of the target clock source */
        CLK->SWR = (uint8_t)CLK_NewClock;

        while ((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
        {
            DownCounter--;
        }

        if (DownCounter != 0)
        {
            Swif = SUCCESS;
        }
        else
        {
            Swif = ERROR;
        }

    }
    else /* CLK_SwitchMode == CLK_SWITCHMODE_MANUAL */
    {

        /* Enables or Disables Switch interrupt  if required  */
        if (ITState != DISABLE)
        {
            CLK->SWCR |= CLK_SWCR_SWIEN;
        }
        else
        {
            CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
        }

        /* Selection of the target clock source */
        CLK->SWR = (uint8_t)CLK_NewClock;

        /* In manual mode, there is no risk to be stuck in a loop, value returned
          is then always SUCCESS */
        Swif = SUCCESS;

    }

    /* Switch OFF current clock if required */
    if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
    {
        CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
    }
    else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
    {
        CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
    }
    else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
    {
        CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
    }

    return(Swif);

}

/**
  * @brief  Returns the clock source used as system clock.
  * @param  None
  * @retval  Clock source used.
  * can be one of the values of @ref CLK_Source_TypeDef
  */
CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
{
    return((CLK_Source_TypeDef)CLK->CMSR);
}

/**
  * @}
  */
  
/******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
