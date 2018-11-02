#include "global.h"

bool postMessage(Message message) {
  bool retValue = false;
  sem_wait(&mutex);
  if (!messagePosted) {
    postedMessage = message;
    messagePosted = true;
    retValue = true;
  }
  sem_post(&mutex);
  return retValue;
}

bool getMessage(Message* message) {
  bool foundMessage = false;

  sem_wait(&mutex);

  if (messagePosted) {
    memcpy(message, &postedMessage, sizeof(Message));
    messagePosted = false;
    foundMessage = true;
  }

  sem_post(&mutex);

  return foundMessage;
}

void init() {
  messagePosted = false;
  sem_init(&mutex, 0, 1);
}

void unInit() {
  sem_destroy(&mutex);
}