/*******************************************************************************
 *
 * Description: Lab1
 * Project name: Bai 1
 *
 *
 * Last Changed By:  $Author: TrungNT $
 * Revision:         $Revision: 1.0 $
 * Last Changed:     $Date: 24/9/2021 $
 *
 ******************************************************************************/
/**Libraries******************************************************************/

#include <stdint.h>
#include <stm32f401re_gpio.h>
#include <stm32f401re_rcc.h>
#define	LOW									0
#define BTN_PRESS							LOW
// Define Logic GPIO_PIN

#define GPIO_PIN_SET						1
#define GPIO_PIN_RESET						0
#define GPIO_PIN_LOW						0
#define GPIO_PIN_HIGH						1

// Define GPIO PIN

#define LED_GPIO_PORT						GPIOA
#define LED_GPIO_PIN						GPIO_Pin_5
#define LED_PIN5							5
#define LEDControl_SetClock					RCC_AHB1Periph_GPIOA

#define BUTTON_GPIO_PORT					GPIOC
#define BUTTON_GPIO_PIN						GPIO_Pin_13
#define BUTTON_PIN13						13
#define BUTTONControl_SetClock				RCC_AHB1Periph_GPIOC

void delay() {
	for (uint32_t i = 0; i < 500000; i++);
}
static void Led_init(void) {
	// Khai bao bien thuoc kieu struct
	GPIO_InitTypeDef GPIO_InitStructure;

	// Cap xung clock hoat dong cho port A
	RCC_AHB1PeriphClockCmd(LEDControl_SetClock, ENABLE);

	// chon chan su dung chuc nang dieu khien led

	GPIO_InitStructure.GPIO_Pin = LED_GPIO_PIN;

	//Chon chan dieu khien led che do output

	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;

	// Toc do xu ly

	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;

	// PUSH PULL

	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;

	// trang thai ban dau tren chan la Pull down

	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;

	// khoi tao cac gia tri

	GPIO_Init(LED_GPIO_PORT, &GPIO_InitStructure);

}
static void Button_init(void) {
	// Khai báo biến thuộc kiểu struct
	GPIO_InitTypeDef GPIO_InitStructure;

	// Cấp xung clock hoạt động cho PORT A

	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOA, ENABLE);

	// chon chan su dung chuc nang dieu khien nut nhan

	GPIO_InitStructure.GPIO_Pin = BUTTON_GPIO_PIN;

	//Chon chan dieu khien nut che do output

	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN;

	// Toc do xu ly

	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;

	// trang thai ban dau tren chan la Pull up

	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;

	// khoi tao cac gia tri

	GPIO_Init(BUTTON_GPIO_PORT, &GPIO_InitStructure);
}

static void LedControl_SetStatus(GPIO_TypeDef *GPIOx, uint16_t GPIO_PIN,
		uint8_t Status) {
	// SET bit in BSRR Registers

	if (Status == GPIO_PIN_SET) {
		GPIOx->BSRRL = GPIO_PIN;
	}
	if (Status == GPIO_PIN_RESET) {
		GPIOx->BSRRH = GPIO_PIN;
	}
}

static uint8_t ButtonRead_Status(GPIO_TypeDef *GPIOx, uint16_t GPIO_PIN) {
	uint8_t Read_Pin = 0x00;

	if ((GPIOx->IDR & GPIO_PIN) != (uint32_t) Bit_RESET) {
		Read_Pin = (uint8_t) Bit_SET;
	} else {
		Read_Pin = (uint8_t) Bit_RESET;
	}
	return Read_Pin;
}
int main(void) {
	uint8_t status = 1;
	Led_init();
	Button_init();
	while (1) {

		if (ButtonRead_Status(BUTTON_GPIO_PORT, BUTTON_GPIO_PIN) == BTN_PRESS) {
			delay();
			status++;
		}
		if (status % 2 == 0) {
			delay();
			LedControl_SetStatus(LED_GPIO_PORT, LED_GPIO_PIN, GPIO_PIN_HIGH);
		} else {
			delay();
			LedControl_SetStatus(LED_GPIO_PORT, LED_GPIO_PIN, GPIO_PIN_LOW);
		}
	}
	return 0;
}
