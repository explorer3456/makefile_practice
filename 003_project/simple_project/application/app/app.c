#include <stdio.h>
#include <stdlib.h>
#include <drivers/uart/uart.h>
#include <drivers/i2c/i2c.h>
#include <drivers/dram/dram.h>
#include <application/shell/shell.h>

int main(void)
{
	int ret;

	printf("hello world \n");

	// activate power open.
	ret = ditto_power_open();

	// activate i2c open.
	ret = ditto_i2c_open();

	// get mem size
	ret get_mem_size();

	// activate uart open.
	ret = ditto_uart_open();

	// run shell.
	while(1) {
		ret = ditto_run_shell();
	}

	printf("assert\n");
}


