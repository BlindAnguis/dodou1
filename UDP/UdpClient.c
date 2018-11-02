#include "UdpClient.h"

void mySleep() {
  struct timespec sleepTime;
  sleepTime.tv_sec = 0;
  sleepTime.tv_nsec = 100*1000;
  nanosleep(&sleepTime, NULL);
}

void *clientMain(void *clientArgs) {
  ClientArgs args = *(ClientArgs *) clientArgs;
  sock = setupConnectionToServer(args.ip, args.port, SOCK_DGRAM);

  Message* myMessage = calloc(1, sizeof(Message));
  bool foundMessage;
  while (!getMessage(myMessage)) {

  }
  foundMessage = false;

  Message* messageToSend = calloc(1, sizeof(Message));
  memcpy(messageToSend, myMessage, sizeof(Message));
  bool running = true;
  bool resend = true;
  while (running) {
    if (foundMessage) {
      free(messageToSend->content);
      memcpy(messageToSend, myMessage, sizeof(Message));
    }
    if (resend) {
      if (messageToSend->messageType == QUIT) {
        running = false;
      } else {
        if (messageToSend->messageType == MESSAGE) {
          resend = false;
        }
        sendMessage(messageToSend, sock);
        mySleep();
      }
    } else if (foundMessage) {
      if (messageToSend->messageType == QUIT) {
        running = false;
      } else {
        sendMessage(messageToSend, sock);
      }
    }
    foundMessage = getMessage(myMessage);
  }

  free(messageToSend);

  close(sock);
  pthread_exit(NULL);
}
