# Makefile for the MCU firmware

# Must supply TOOLPATH, ARCH, MCU either in local.mk or in the make command line
# Example (toolchain in the system default location):
#TOOLPATH ?= /usr
#ARCH     ?= msp430-elf
#MCU      ?= msp430fr2433

-include local.mk

ifdef TOOLPATH
 # OK
else
 $(error Must supply TOOLPATH, ARCH, MCU)
endif

BIN = $(TOOLPATH)/bin
INC = $(TOOLPATH)/$(ARCH)/include
LIB = $(TOOLPATH)/$(ARCH)/lib
CC  = $(BIN)/$(ARCH)-gcc
OBC = $(BIN)/$(ARCH)-objcopy
CFLAGS = -mmcu=$(MCU) -g -ffunction-sections -fdata-sections -DDEPRECATED -I $(INC)
LDFLAGS = -mmcu=$(MCU) -g -ffunction-sections -fdata-sections -Wl,--gc-sections -L $(INC)
ifneq (,$(findstring msp430g2,$(MCU)))
  LOAD = mspdebug rf2500 'prog main'
else
  LOAD = MSP430Flasher -w main.hex
endif

.PRECIOUS: main %.o

all: main.hex

main: main.o

main.hex: main
	$(OBC) -O ihex $< $@

load: main.hex
	$(LOAD)

clean:
	rm -f *.o
