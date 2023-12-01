################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/VL53L0x/platform/src/vl53l0x_platform.c \
../Drivers/VL53L0x/platform/src/vl53l0x_platform_log.c 

OBJS += \
./Drivers/VL53L0x/platform/src/vl53l0x_platform.o \
./Drivers/VL53L0x/platform/src/vl53l0x_platform_log.o 

C_DEPS += \
./Drivers/VL53L0x/platform/src/vl53l0x_platform.d \
./Drivers/VL53L0x/platform/src/vl53l0x_platform_log.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/VL53L0x/platform/src/%.o Drivers/VL53L0x/platform/src/%.su Drivers/VL53L0x/platform/src/%.cyclo: ../Drivers/VL53L0x/platform/src/%.c Drivers/VL53L0x/platform/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Drivers/VL53L0x/platform/inc -I../Drivers/VL53L0x/core/inc -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-VL53L0x-2f-platform-2f-src

clean-Drivers-2f-VL53L0x-2f-platform-2f-src:
	-$(RM) ./Drivers/VL53L0x/platform/src/vl53l0x_platform.cyclo ./Drivers/VL53L0x/platform/src/vl53l0x_platform.d ./Drivers/VL53L0x/platform/src/vl53l0x_platform.o ./Drivers/VL53L0x/platform/src/vl53l0x_platform.su ./Drivers/VL53L0x/platform/src/vl53l0x_platform_log.cyclo ./Drivers/VL53L0x/platform/src/vl53l0x_platform_log.d ./Drivers/VL53L0x/platform/src/vl53l0x_platform_log.o ./Drivers/VL53L0x/platform/src/vl53l0x_platform_log.su

.PHONY: clean-Drivers-2f-VL53L0x-2f-platform-2f-src

