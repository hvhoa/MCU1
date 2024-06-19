################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
F:/DAY\ HOC/2022-2023_HK_II/HE\ THONG\ NHUNG\ IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Drivers/CMSIS/Source/system_stm32f4xx.c 

OBJS += \
./SDK_1.0.3_NUCLEO-F401RE/shared/Drivers/CMSIS/Source/system_stm32f4xx.o 

C_DEPS += \
./SDK_1.0.3_NUCLEO-F401RE/shared/Drivers/CMSIS/Source/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
SDK_1.0.3_NUCLEO-F401RE/shared/Drivers/CMSIS/Source/system_stm32f4xx.o: F:/DAY\ HOC/2022-2023_HK_II/HE\ THONG\ NHUNG\ IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Drivers/CMSIS/Source/system_stm32f4xx.c SDK_1.0.3_NUCLEO-F401RE/shared/Drivers/CMSIS/Source/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DNUCLEO_F401RE -DSTM32 -DSTM32F401RETx -DSTM32F4 -c -I"F:/DAY HOC/2022-2023_HK_II/HE THONG NHUNG IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Drivers/CMSIS/Include" -I"F:/DAY HOC/2022-2023_HK_II/HE THONG NHUNG IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Drivers/STM32F401RE_StdPeriph_Driver/inc" -I"F:/DAY HOC/2022-2023_HK_II/HE THONG NHUNG IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/button" -I"F:/DAY HOC/2022-2023_HK_II/HE THONG NHUNG IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/buzzer" -I"F:/DAY HOC/2022-2023_HK_II/HE THONG NHUNG IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/led" -I"F:/DAY HOC/2022-2023_HK_II/HE THONG NHUNG IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/rtos" -I"F:/DAY HOC/2022-2023_HK_II/HE THONG NHUNG IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/sensor" -I"F:/DAY HOC/2022-2023_HK_II/HE THONG NHUNG IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/serial" -I"F:/DAY HOC/2022-2023_HK_II/HE THONG NHUNG IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/ucglib" -I"F:/DAY HOC/2022-2023_HK_II/HE THONG NHUNG IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Utilities" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-SDK_1-2e-0-2e-3_NUCLEO-2d-F401RE-2f-shared-2f-Drivers-2f-CMSIS-2f-Source

clean-SDK_1-2e-0-2e-3_NUCLEO-2d-F401RE-2f-shared-2f-Drivers-2f-CMSIS-2f-Source:
	-$(RM) ./SDK_1.0.3_NUCLEO-F401RE/shared/Drivers/CMSIS/Source/system_stm32f4xx.d ./SDK_1.0.3_NUCLEO-F401RE/shared/Drivers/CMSIS/Source/system_stm32f4xx.o ./SDK_1.0.3_NUCLEO-F401RE/shared/Drivers/CMSIS/Source/system_stm32f4xx.su

.PHONY: clean-SDK_1-2e-0-2e-3_NUCLEO-2d-F401RE-2f-shared-2f-Drivers-2f-CMSIS-2f-Source

