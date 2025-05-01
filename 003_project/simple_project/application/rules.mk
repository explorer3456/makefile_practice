# module makefile

app_dir=application

SOURCE_APP=$(shell find $(app_dir)/ -name "*.c")
OUTPUT_APP=$(SOURCE_APP:.c=.o)
OBJECT_APP=$(addprefix $(objects_dir), $(notdir $(OUTPUT_APP)))

OBJECT_LIST += $(OBJECT_APP)

$(objects_dir)%.o: $(app_dir)/*/%.c
	$(CC) $(CFLAGS) -c $(<) -o $(@)
