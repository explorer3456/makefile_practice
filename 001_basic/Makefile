CC=gcc

all: build

build: a.o b.o prog.o
	$(CC) -o $@ $^

%.o:%.c
	$(CC) -c -o $@ $^


