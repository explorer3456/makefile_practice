#include <stdio.h>
#include <common/cache/cache.h>

int ditto_uart_open(void)
{
	int ret;

	ret = ditto_cache_sync();

	printf("%s\n", __func__);
}
