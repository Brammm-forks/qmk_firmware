## chip/board settings
# - the next two should match the directories in
#   <chibios>/os/hal/ports/$(MCU_FAMILY)/$(MCU_SERIES)
MCU_FAMILY = STM32
MCU_SERIES = STM32F4xx

# Linker script to use
# - it should exist either in <chibios>/os/common/ports/ARMCMx/compilers/GCC/ld/
#   or <this_dir>/ld/
MCU_LDSCRIPT = noah_boot

# Startup code to use
#  - it should exist in <chibios>/os/common/startup/ARMCMx/compilers/GCC/mk/
MCU_STARTUP = stm32f4xx

# Board: it should exist either in <chibios>/os/hal/boards/
#  or <this_dir>/boards
BOARD = noah_bd

# Cortex version
MCU  = cortex-m4

# ARM version, CORTEX-M0/M1 are 6, CORTEX-M3/M4/M7 are 7
ARMV = 7

USE_FPU = yes

# Vector table for application
# 0x00000000-0x00001000 area is occupied by bootlaoder.*/
OPT_DEFS =

# Options to pass to dfu-util when flashing
#DFU_ARGS = -d 0483:df11 -a 0 -s 0x08000000:leave
#DFU_SUFFIX_ARGS = -p DF11 -v 0483

# Build Options
#   comment out to disable the options.
#
BOOTMAGIC_ENABLE = yes      # Virtual DIP switch configuration
MOUSEKEY_ENABLE = no        # Mouse keys
EXTRAKEY_ENABLE = yes	    # Audio control and System control
CONSOLE_ENABLE = no         # Console for debug
COMMAND_ENABLE = no         # Commands for debug and configuration
NKRO_ENABLE = no            # USB Nkey Rollover
NO_USB_STARTUP_CHECK = yes   # Disable initialization only when usb is plugged in

CUSTOM_MATRIX = yes
RGB_MATRIX_ENABLE = yes

RGBLIGHT_ENABLE = yes
RGBLIGHT_CUSTOM_DRIVER = yes

# project specific files
SRC += \
    matrix.c \
    ws2812_f4.c
