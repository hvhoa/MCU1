################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Startup/startup_stm32f401retx.s 

OBJS += \
./Startup/startup_stm32f401retx.o 

S_DEPS += \
./Startup/startup_stm32f401retx.d 


# Each subdirectory must supply rules for building sources it contributes
Startup/%.o: ../Startup/%.s Startup/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -I"F:/DAY HOC/2022-2023_HK_II/HE THONG NHUNG IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Drivers/CMSIS/Include" -I"F:/DAY HOC/2022-2023_HK_II/HE THONG NHUNG IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Drivers/CMSIS/Source" -I"F:/DAY HOC/2022-2023_HK_II/HE THONG NHUNG IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Drivers/STM32F401RE_StdPeriph_Driver/inc" -I"F:/DAY HOC/2022-2023_HK_II/HE THONG NHUNG IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Drivers/STM32F401RE_StdPeriph_Driver/src" -I"F:/DAY HOC/2022-2023_HK_II/HE THONG NHUNG IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/button" -I"F:/DAY HOC/2022-2023_HK_II/HE THONG NHUNG IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/buzzer" -I"F:/DAY HOC/2022-2023_HK_II/HE THONG NHUNG IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/led" -I"F:/DAY HOC/2022-2023_HK_II/HE THONG NHUNG IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/rtos" -I"F:/DAY HOC/2022-2023_HK_II/HE THONG NHUNG IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/sensor" -I"F:/DAY HOC/2022-2023_HK_II/HE THONG NHUNG IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/serial" -I"F:/DAY HOC/2022-2023_HK_II/HE THONG NHUNG IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/ucglib" -I"F:/DAY HOC/2022-2023_HK_II/HE THONG NHUNG IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Utilities" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Startup

clean-Startup:
	-$(RM) ./Startup/startup_stm32f401retx.d ./Startup/startup_stm32f401retx.o

.PHONY: clean-Startup

