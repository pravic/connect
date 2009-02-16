all: connect

clean:
	rm -f connect

connect: connect.c
	gcc -O2 -std=gnu99 -Wall -Wextra -Wundef -pedantic -fno-strict-aliasing -lresolv -o connect connect.c

install: connect
	install -m 0755 gitproxy /usr/local/bin
	install -m 0755 connect /usr/local/bin
