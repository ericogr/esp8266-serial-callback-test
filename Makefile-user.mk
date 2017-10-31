## Add your source directories here separated by space
MODULES = src
EXTRA_INCDIR = include

## ESP_HOME sets the path where ESP tools and SDK are located.
#ESP_HOME = /opt/esp-open-sdk

## SMING_HOME sets the path where Sming framework is located.
#SMING_HOME = /opt/Sming/Sming

## COM port parameter is required to flash firmware correctly.
COM_PORT = /dev/ttyUSB0

## Com port speed
COM_SPEED = 1500000
COM_SPEED_SERIAL = 115200

## Configure flash parameters (for ESP12-E and other new boards):
SPI_MODE = dio


## SPIFFS options
## set environment SMING_DISABLE_SPIFFS=1 to disable spiffs
DISABLE_SPIFFS ?= 1

#adicionamos as libs extras padroes
EXTRA_LIBS = stdc++

## enable big flash support (for multiple roms, each in separate 1mb block of flash)
RBOOT_ENABLED ?= 0
RBOOT_BIG_FLASH ?= 0
RBOOT_TWO_ROMS  ?= 0
RBOOT_INTEGRATION ?= 0
SPI_SIZE ?= 4M

## flash offsets for spiffs, set if using two rom mode or not on a 4mb flash
## (spiffs location defaults to the mb after the rom slot on 4mb flash)
#RBOOT_SPIFFS_0  ?= 0x100000
#RBOOT_SPIFFS_1  ?= 0x300000

#release and debug
SMING_RELEASE ?= 0
ENABLE_GDB ?= 0

# If you use custom LWIP compilation make sure to enable espconn because libsmartconfig uses it
ENABLE_ESPCONN ?= 0
ENABLE_CUSTOM_HEAP ?= 0
ENABLE_SSL ?= 0
DEBUG_VERBOSE_LEVEL ?= 3
ENABLE_CMD_EXECUTOR ?= 0
DEBUG_PRINT_FILENAME_AND_LINE ?= 0
