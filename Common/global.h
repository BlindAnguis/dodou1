#ifndef NODE_GLOBAL_H
#define NODE_GLOBAL_H

#include <semaphore.h>
#include <stdbool.h>

#include "common.h"

sem_t mutex;
bool messagePosted;
Message postedMessage;

void init();

void unInit();

bool postMessage(Message message);
bool getMessage(Message* message);

#endif //NODE_GLOBAL_H
