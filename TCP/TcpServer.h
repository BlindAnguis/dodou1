#ifndef NODE_TCPSERVER_H
#define NODE_TCPSERVER_H

#include <sys/socket.h>
#include <stdio.h>
#include <stdlib.h>
#include <netinet/in.h>
#include <unistd.h>
#include <netdb.h>
#include <sys/time.h>
#include <errno.h>

#include "../Common/common.h"
#include "../Common/global.h"

void serverMain(ServerArgs serverArgs);

#endif //NODE_TCPSERVER_H
