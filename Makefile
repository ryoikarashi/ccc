CFLAGS=-std=c11 -g -static

ccc: ccc.c

test: ccc
	./test.sh

clean:
	rm -f ccc *.o *~ tmp*

.PHONY: test clean