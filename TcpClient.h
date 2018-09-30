#ifndef NODE_TCPCLIENT_H
#define NODE_TCPCLIENT_H

#include <printf.h>
#include <unistd.h>
#include <stdio.h>
#include <memory.h>
#include <pthread.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <sys/socket.h>

#include "global.h"

int sock;

int setupClientSocket(char* ip, uint16_t port);

void sendMessage(Message message);

void* clientMain(void* clientArgs);

#endif //NODE_TCPCLIENT_H
