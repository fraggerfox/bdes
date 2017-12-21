# For BSD or Linux systems, compliler tools should be in your
# normal search path, so you should not need any special defines.
#
CC =	cc
INC =
LIB =	-lcrypto
WARNS =	-Wsystem-headers -Wall -Wno-format-y2k -Wno-uninitialized

# When compiling on Apple, you need the Apple developer tools
# (e.g., C compiler). If you do not have these tools available
# on your system, they can be downloaded for free from the
# developer.apple.com web site. Once installed, you will need to
# define the following (modifying the MacOSX10 version as needed):
#
# CC =	/Developer/usr/bin/cc
# INC =	-I/Developer/SDKs/MacOSX10.6.sdk/usr/include
# LIB =	-L/Developer/SDKs/MacOSX10.6.sdk/usr/lib libcrypto.a

all:
	${CC} ${WARNS} -O2 ${INC} -c bdes.c
	${CC} -o bdes bdes.o ${LIB}
	gzip -cn bdes.1 >bdes.1.gz

install:
	install -s -o bin -g bin -m 755 bdes /usr/local/bin
	install -o root -g wheel -m 444 bdes.1.gz /usr/local/man/man1

clean:
	rm -f bdes.o bdes bdes.1.gz
