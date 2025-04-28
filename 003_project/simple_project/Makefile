# external tool dependencies

# external tools location
EXTERNAL_TOOL_DIR=$(PWD)/external

# toolchain location
TOOLCHAIN_DIR=$(PWD)/toolchain

.PHONY: debug
.PHONY: all

# input source files directory.
common_dir=common
drivers_dir=drivers
app_dir=appplication

# output file directory
output_dir=build
objects_dir=$(output_dir)/objs/


# input source file list
SOURCE_COMMON=$(wildcard $(common_dir)/*/*.c)
SOURCE_DRIVERS=$(shell find $(drivers_dir) -name "*.c")
SOURCE_APP=$(shell find $(app_dir) -name "*.c")

# output files list
OUTPUT_COMMON=$(SOURCE_COMMON:.c=.o)
OUTPUT_DRIVERS=$(SOURCE_DRIVERS:.c=.o)
OUTPUT_APP=$(SOURCE_APP:.c=.o)

# output files - object lists



debug:
	@echo $(TOOLCHAIN_DIR)
	@echo $(EXTERNAL_TOOL_DIR)
	$(info this is debug message $(TOOLCHAIN_DIR))
	$(info debug $(SOURCE_COMMON))
	$(info debug $(SOURCE_DRIVERS))
	$(info debug $(OUTPUT_COMMON))

all:
	$(info make all)