# Makefile for the MCU firmware

# Must supply TOOLPATH, ARCH, MCU either in local.mk or in the make command line
# Example (toolchain in the system default location):
#TOOLPATH := /usr
#ARCH     := msp430-elf
#MCU      := msp430fr2433

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
CFLAGS = -mmcu=$(MCU) -g -I $(INC)
LDFLAGS = -mmcu=$(MCU) -g

.SUFFIXES: .elf .hex
.PRECIOUS: %.o %.elf

all: main.hex

%.elf: %.o
	$(CC) $(LDFLAGS) -o $@ $<

%.hex: %.elf
	$(OBC) -O ihex $< $@

clean:
	rm -f *.o *.elf
