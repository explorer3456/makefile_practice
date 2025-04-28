# external tool dependencies

# external tools location
EXTERNAL_TOOL_DIR=$(PWD)/external

# toolchain location
TOOLCHAIN_DIR=$(PWD)/toolchain

.PHONY: debug
.PHONY: all

# source files directory.
common_dir=common
drivers_dir=drivers
app_dir=appplication

SOURCE_COMMON=$(wildcard $(common_dir)/*/*.c)
SOURCE_DRIVERS=$(shell find $(drivers_dir) -name "*.c")


debug:
	@echo $(TOOLCHAIN_DIR)
	@echo $(EXTERNAL_TOOL_DIR)
	$(info this is debug message $(TOOLCHAIN_DIR))
	$(info debug $(SOURCE_COMMON))
	$(info debug $(SOURCE_DRIVERS))

all:
	$(info make all)