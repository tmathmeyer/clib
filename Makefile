# See LICENSE file for copyright and license details.

include config.mk

all: data_structures

data_structures: json.o dmap.o charstream.o

.c.o: config.mk
	@echo CC -c $< ${CFLAGS}
	@${CC} -c $< ${CFLAGS}

data_structures:
	@echo ld -r -o $@.o $+
	@ld      -r -o $@.o $+ ${LDFLAGS}

clean:
	@echo cleaning
	@rm -f data_structures *.o colors

update: clean all
