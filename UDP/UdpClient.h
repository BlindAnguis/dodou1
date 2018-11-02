#ifndef NODE_UDPCLIENT_H
#define NODE_UDPCLIENT_H

#include <stdbool.h>
#include <pthread.h>

#include "../Common/global.h"
#include "../Common/common.h"

int sock;

void mySleep();

void* clientMain(void* clientArgs);

#endif //NODE_UDPCLIENT_H
