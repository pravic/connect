all: connect

clean:
	rm -f connect

connect: connect.c
	gcc -O2 -std=gnu99 -fno-strict-aliasing -lresolv -o connect connect.c

install: connect
	mkdir -p /usr/local/bin
	install -m 0755 gitproxy /usr/local/bin
	install -m 0755 connect /usr/local/bin
