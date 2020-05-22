NAME = negative
CC = gcc
VERSION = 0.1.0
CSTD = -ansi
WARN = -Wall -Werror -Wextra -Wunused -Wstrict-prototypes \
	-pedantic -pedantic-errors
CFLAGS = -O3 $(CSTD) $(WARN)

.PHONY: all clean pack

all: $(NAME)

$(NAME): $(NAME).c
	$(CC) -o $@ $(CFLAGS) $<

clean:
	rm -f $(NAME) *.o *~ core.*

pack:
	tar czf $(NAME)_$(VERSION).tgz $(NAME).c Makefile README* LICENSE
