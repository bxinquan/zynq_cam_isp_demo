################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/emio_sccb_cfg/emio_sccb_cfg.c 

OBJS += \
./src/emio_sccb_cfg/emio_sccb_cfg.o 

C_DEPS += \
./src/emio_sccb_cfg/emio_sccb_cfg.d 


# Each subdirectory must supply rules for building sources it contributes
src/emio_sccb_cfg/%.o: ../src/emio_sccb_cfg/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../zynq_camera_vdma_lcd_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


