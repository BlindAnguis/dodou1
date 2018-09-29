#ifndef NODE_TCPSERVER_H
#define NODE_TCPSERVER_H

#include <sys/socket.h>
#include <stdio.h>
#include <stdlib.h>
#include <netinet/in.h>
#include <unistd.h>

#include "global.h"

int setupServerSocket(uint16_t port);

void serverMain(ServerArgs serverArgs);

#endif //NODE_TCPSERVER_H
