# external tool dependencies

# external tools location
EXTERNAL_TOOL_DIR=$(PWD)/external

# toolchain location
TOOLCHAIN_DIR=$(PWD)/toolchain

# output file directory
root_dir=$(shell pwd)
output_dir=$(root_dir)/build
objects_dir=$(output_dir)/objs/

# Compiler variable
# toolchain
CC = arm-linux-gnueabi-gcc
AS = arm-linux-gnueabi-gcc
LD = arm-linux-gnueabi-gcc

### C compiler flags
CFLAGS += -c
CFLAGS += -ggdb
CFLAGS += -gdwarf-3
CFLAGS += -std=c99
CFLAGS += -static-libgcc

# add include folder path to CFLAGS
CFLAGS += -Iinclude
# add header file and object file dependency
CFLAGS += -MD

### C Linker flags
LDFLAGS += -Xlinker -static
# LDFLAGS += -nostartfiles
LDFLAGS += -Wl,-Map=$(output_dir)/map.txt
LDFLAGS += -static-libgcc

# OBJECT_LIST will be filled by other module.mk files
OBJECT_LIST := 

.PHONY: debug
.PHONY: all
.PHONY: clean

-include common/rules.mk
-include drivers/rules.mk
-include application/rules.mk

DEPS=$(OBJECT_LIST:%.o=%.d)
-include $(DEPS)

prepare:
	mkdir -p $(output_dir)
	mkdir -p $(objects_dir)

# create directory first
all: prepare $(output_dir)/program.elf
	

clean:
	rm -rf $(output_dir)

debug:
#	$(info debug $(CFLAGS))
#	$(info debug $(DEPS))
	$(info debug $(OBJECT_LIST))
	

$(output_dir)/program.elf: $(OBJECT_LIST)
	$(info --target is build with $(OBJECT_LIST))
	$(LD) $(LDFLAGS) $(^) -o $(@)
