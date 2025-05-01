# external tool dependencies

# external tools location
EXTERNAL_TOOL_DIR=$(PWD)/external

# toolchain location
TOOLCHAIN_DIR=$(PWD)/toolchain

# input source files directory.
drivers_dir=drivers
app_dir=application

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
#CFLAGS += -mcpu=cortex-m3
#CFLAGS += -mfpu=fpv4-sp-d16
#CFLAGS += -mfloat-abi=soft
CFLAGS += -ggdb
CFLAGS += -gdwarf-3
CFLAGS += -std=c99
CFLAGS += -static-libgcc

# add include folder path to CFLAGS
CFLAGS += -Iinclude

# add header file and object file dependency
CFLAGS += -MD

### C Linker flags
#LDFLAGS += -T $(linkerdir)/linker.ld
#LDFLAGS += -Ttext=0x0
LDFLAGS += -Xlinker -static
# LDFLAGS += -nostartfiles
LDFLAGS += -Wl,-Map=$(output_dir)/map.txt
LDFLAGS += -static-libgcc

# OBJECT_LIST will be filled by other module.mk files
OBJECT_LIST := 

.PHONY: debug
.PHONY: all
.PHONY: clean

-include common/common.mk

# input source file list
# SOURCE_COMMON=$(wildcard $(common_dir)/*/*.c)
SOURCE_DRIVERS=$(shell find $(drivers_dir) -name "*.c")
SOURCE_APP=$(shell find $(app_dir) -name "*.c")

# output files list
# OUTPUT_COMMON=$(SOURCE_COMMON:.c=.o)
OUTPUT_DRIVERS=$(SOURCE_DRIVERS:.c=.o)
OUTPUT_APP=$(SOURCE_APP:.c=.o)

# output files - object lists
# OBJECT_COMMON=$(addprefix $(objects_dir), $(notdir $(OUTPUT_COMMON)))
OBJECT_DRIVERS=$(addprefix $(objects_dir), $(notdir $(OUTPUT_DRIVERS)))
OBJECT_APP=$(addprefix $(objects_dir), $(notdir $(OUTPUT_APP)))
# OBJECT_LIST = $(OBJECT_COMMON) $(OBJECT_DRIVERS) $(OBJECT_APP)
OBJECT_LIST += $(OBJECT_DRIVERS) $(OBJECT_APP)




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

# according to software type, build rule can be different.
# device driver may need non-optimization flags becuase it mostly control registers.
# where application may need high optimization flags. 
# So it is possible that build rules applies differently to different software types.

# common software build rule
#$(objects_dir)%.o: $(common_dir)/*/%.c
#	$(CC) $(CFLAGS) -c $(<) -o $(@)

# common software build rule
$(objects_dir)%.o: $(drivers_dir)/*/%.c
	$(CC) $(CFLAGS) -c $(<) -o $(@)

# common software build rule
$(objects_dir)%.o: $(app_dir)/*/%.c
	$(CC) $(CFLAGS) -c $(<) -o $(@)
