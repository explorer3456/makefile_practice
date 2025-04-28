#include <stdio.h>
#include <stdlib.h>

int ditto_malloc(size_t size)
{
	int ret;

	ret = size + 1;

	return ret;
}
