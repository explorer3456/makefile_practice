#include <stdio.h>
#include <stdlib.h>
#include <common/malloc/malloc.h>

int ditto_run_shell(void)
{
	int ret;

	ret = ditto_malloc(sizeof(256));

	printf("run shell\n");
}
