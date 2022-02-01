################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/main.c \
../src/main_h264.c \
../src/ov5640_init.c \
../src/sys_intr.c \
../src/vdma_api.c 

OBJS += \
./src/main.o \
./src/main_h264.o \
./src/ov5640_init.o \
./src/sys_intr.o \
./src/vdma_api.o 

C_DEPS += \
./src/main.d \
./src/main_h264.d \
./src/ov5640_init.d \
./src/sys_intr.d \
./src/vdma_api.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O2 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../zynq_camera_vdma_lcd_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


