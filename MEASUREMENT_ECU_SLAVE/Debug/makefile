################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
LSS += \
MEASUREMENT_ECU_SLAVE.lss \

FLASH_IMAGE += \
MEASUREMENT_ECU_SLAVE.hex \

SIZEDUMMY += \
sizedummy \


# All Target
all: MEASUREMENT_ECU_SLAVE.elf secondary-outputs

# Tool invocations
MEASUREMENT_ECU_SLAVE.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: AVR C Linker'
	avr-gcc -Wl,-Map,MEASUREMENT_ECU_SLAVE.map -mmcu=atmega32 -o "MEASUREMENT_ECU_SLAVE.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

MEASUREMENT_ECU_SLAVE.lss: MEASUREMENT_ECU_SLAVE.elf
	@echo 'Invoking: AVR Create Extended Listing'
	-avr-objdump -h -S MEASUREMENT_ECU_SLAVE.elf  >"MEASUREMENT_ECU_SLAVE.lss"
	@echo 'Finished building: $@'
	@echo ' '

MEASUREMENT_ECU_SLAVE.hex: MEASUREMENT_ECU_SLAVE.elf
	@echo 'Create Flash image (ihex format)'
	-avr-objcopy -R .eeprom -R .fuse -R .lock -R .signature -O ihex MEASUREMENT_ECU_SLAVE.elf  "MEASUREMENT_ECU_SLAVE.hex"
	@echo 'Finished building: $@'
	@echo ' '

sizedummy: MEASUREMENT_ECU_SLAVE.elf
	@echo 'Invoking: Print Size'
	-avr-size --format=avr --mcu=atmega32 MEASUREMENT_ECU_SLAVE.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(FLASH_IMAGE)$(ELFS)$(OBJS)$(ASM_DEPS)$(S_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(LSS)$(C_DEPS) MEASUREMENT_ECU_SLAVE.elf
	-@echo ' '

secondary-outputs: $(LSS) $(FLASH_IMAGE) $(SIZEDUMMY)

.PHONY: all clean dependents

-include ../makefile.targets
