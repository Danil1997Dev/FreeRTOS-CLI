################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/wolfSSL_wolfSSH_wolfSSH/wolfssh/tests/api.c \
../Middlewares/Third_Party/wolfSSL_wolfSSH_wolfSSH/wolfssh/tests/sftp.c \
../Middlewares/Third_Party/wolfSSL_wolfSSH_wolfSSH/wolfssh/tests/unit.c 

OBJS += \
./Middlewares/Third_Party/wolfSSL_wolfSSH_wolfSSH/wolfssh/tests/api.o \
./Middlewares/Third_Party/wolfSSL_wolfSSH_wolfSSH/wolfssh/tests/sftp.o \
./Middlewares/Third_Party/wolfSSL_wolfSSH_wolfSSH/wolfssh/tests/unit.o 

C_DEPS += \
./Middlewares/Third_Party/wolfSSL_wolfSSH_wolfSSH/wolfssh/tests/api.d \
./Middlewares/Third_Party/wolfSSL_wolfSSH_wolfSSH/wolfssh/tests/sftp.d \
./Middlewares/Third_Party/wolfSSL_wolfSSH_wolfSSH/wolfssh/tests/unit.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/wolfSSL_wolfSSH_wolfSSH/wolfssh/tests/%.o Middlewares/Third_Party/wolfSSL_wolfSSH_wolfSSH/wolfssh/tests/%.su Middlewares/Third_Party/wolfSSL_wolfSSH_wolfSSH/wolfssh/tests/%.cyclo: ../Middlewares/Third_Party/wolfSSL_wolfSSH_wolfSSH/wolfssh/tests/%.c Middlewares/Third_Party/wolfSSL_wolfSSH_wolfSSH/wolfssh/tests/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../FATFS/Target -I../FATFS/App -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/Third_Party/FatFs/src -I../Drivers/BSP/Components/dp83848 -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -I../wolfSSL -I../Middlewares/Third_Party/wolfSSL_wolfSSL_wolfSSL/wolfssl/ -I../wolfSSH -I../Middlewares/Third_Party/wolfSSL_wolfSSH_wolfSSH/wolfssh/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-wolfSSL_wolfSSH_wolfSSH-2f-wolfssh-2f-tests

clean-Middlewares-2f-Third_Party-2f-wolfSSL_wolfSSH_wolfSSH-2f-wolfssh-2f-tests:
	-$(RM) ./Middlewares/Third_Party/wolfSSL_wolfSSH_wolfSSH/wolfssh/tests/api.cyclo ./Middlewares/Third_Party/wolfSSL_wolfSSH_wolfSSH/wolfssh/tests/api.d ./Middlewares/Third_Party/wolfSSL_wolfSSH_wolfSSH/wolfssh/tests/api.o ./Middlewares/Third_Party/wolfSSL_wolfSSH_wolfSSH/wolfssh/tests/api.su ./Middlewares/Third_Party/wolfSSL_wolfSSH_wolfSSH/wolfssh/tests/sftp.cyclo ./Middlewares/Third_Party/wolfSSL_wolfSSH_wolfSSH/wolfssh/tests/sftp.d ./Middlewares/Third_Party/wolfSSL_wolfSSH_wolfSSH/wolfssh/tests/sftp.o ./Middlewares/Third_Party/wolfSSL_wolfSSH_wolfSSH/wolfssh/tests/sftp.su ./Middlewares/Third_Party/wolfSSL_wolfSSH_wolfSSH/wolfssh/tests/unit.cyclo ./Middlewares/Third_Party/wolfSSL_wolfSSH_wolfSSH/wolfssh/tests/unit.d ./Middlewares/Third_Party/wolfSSL_wolfSSH_wolfSSH/wolfssh/tests/unit.o ./Middlewares/Third_Party/wolfSSL_wolfSSH_wolfSSH/wolfssh/tests/unit.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-wolfSSL_wolfSSH_wolfSSH-2f-wolfssh-2f-tests

