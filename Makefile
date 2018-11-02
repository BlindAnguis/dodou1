CC=gcc

SRCSTCP         = $(wildcard TCP/*)
SRCSUDP         = $(wildcard UDP/*)

COMMONHEADER    = Common/global.h Common/common.h
COMMONDSRC      = Common/global.c Common/common.c

OUT_MAINTCP=tcpNode
OUT_MAINUDP=udpNode



CFLAGS = -std=c99 -Wall -Werror -D_POSIX_C_SOURCE=200112L -lpthread -pthread 

tcp: tcpNode.o

udp: udpNode.o

udpNode.o:  $(SRCSUDP) $(RINGHEADER)
	$(CC) $(COMMONDSRC) $(CFLAGS) $(SRCSUDP) -I. -o $(OUT_MAINUDP) -g

tcpNode.o:  $(SRCSTCP)  $(RINGHEADER)
	$(CC) $(CFLAGS) $(RINGHEADER) $(SRCSTCP) $(COMMONDSRC) -I. -o $(OUT_MAINTCP) -g

clean:
	rm -f *.o *.o core
