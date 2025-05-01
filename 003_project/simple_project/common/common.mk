# module makefile

common_dir=$(root_dir)/common

SOURCE_COMMON=$(shell find $(common_dir)/ -name "*.c")
OUTPUT_COMMON=$(SOURCE_COMMON:.c=.o)
OBJECT_COMMON=$(addprefix $(objects_dir), $(notdir $(OUTPUT_COMMON)))

OBJECT_LIST += $(OBJECT_COMMON)

$(objects_dir)%.o: $(common_dir)/*/%.c
	$(CC) $(CFLAGS) -c $(<) -o $(@)
