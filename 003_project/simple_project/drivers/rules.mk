# module makefile

drv_dir=$(root_dir)/drivers

SOURCE_DRV=$(shell find $(drv_dir)/ -name "*.c")
OUTPUT_DRV=$(SOURCE_DRV:.c=.o)
OBJECT_DRV=$(addprefix $(objects_dir), $(notdir $(OUTPUT_DRV)))

OBJECT_LIST += $(OBJECT_DRV)

$(objects_dir)%.o: $(drv_dir)/*/%.c
	$(CC) $(CFLAGS) -c $(<) -o $(@)