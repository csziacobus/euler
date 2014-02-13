SRCS = $(wildcard *.c)

PROGS = $(patsubst %.c,%,$(SRCS))

CC = gcc

CFLAGS = -g -Wall

all: $(PROGS)

%: %.c
	$(CC) $(CFLAGS)  -o $@ $<
