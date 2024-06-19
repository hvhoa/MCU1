################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/main.c \
../Src/syscalls.c \
../Src/sysmem.c 

OBJS += \
./Src/main.o \
./Src/syscalls.o \
./Src/sysmem.o 

C_DEPS += \
./Src/main.d \
./Src/syscalls.d \
./Src/sysmem.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o Src/%.su: ../Src/%.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DNUCLEO_F401RE -DSTM32 -DSTM32F401RETx -DSTM32F4 -c -I"F:/DAY HOC/2022-2023_HK_II/HE THONG NHUNG IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Drivers/CMSIS/Include" -I"F:/DAY HOC/2022-2023_HK_II/HE THONG NHUNG IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Drivers/STM32F401RE_StdPeriph_Driver/inc" -I"F:/DAY HOC/2022-2023_HK_II/HE THONG NHUNG IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/button" -I"F:/DAY HOC/2022-2023_HK_II/HE THONG NHUNG IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/buzzer" -I"F:/DAY HOC/2022-2023_HK_II/HE THONG NHUNG IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/led" -I"F:/DAY HOC/2022-2023_HK_II/HE THONG NHUNG IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/rtos" -I"F:/DAY HOC/2022-2023_HK_II/HE THONG NHUNG IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/sensor" -I"F:/DAY HOC/2022-2023_HK_II/HE THONG NHUNG IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/serial" -I"F:/DAY HOC/2022-2023_HK_II/HE THONG NHUNG IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Middle/ucglib" -I"F:/DAY HOC/2022-2023_HK_II/HE THONG NHUNG IOT/SDK_1.0.3_NUCLEO-F401RE/shared/Utilities" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Src

clean-Src:
	-$(RM) ./Src/main.d ./Src/main.o ./Src/main.su ./Src/syscalls.d ./Src/syscalls.o ./Src/syscalls.su ./Src/sysmem.d ./Src/sysmem.o ./Src/sysmem.su

.PHONY: clean-Src

