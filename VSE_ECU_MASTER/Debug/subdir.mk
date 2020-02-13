################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LCD.c \
../SPI.c \
../UART.c \
../VSE_main.c \
../gpio.c \
../led.c \
../pushButton.c \
../timers.c 

OBJS += \
./LCD.o \
./SPI.o \
./UART.o \
./VSE_main.o \
./gpio.o \
./led.o \
./pushButton.o \
./timers.o 

C_DEPS += \
./LCD.d \
./SPI.d \
./UART.d \
./VSE_main.d \
./gpio.d \
./led.d \
./pushButton.d \
./timers.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega32 -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


