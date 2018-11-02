#ifndef NODE_TCPCLIENT_H
#define NODE_TCPCLIENT_H

#include <pthread.h>

#include "../Common/common.h"
#include "../Common/global.h"

int sock;

void* clientMain(void* clientArgs);

#endif //NODE_TCPCLIENT_H
