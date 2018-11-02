#include "TcpClient.h"

void *clientMain(void *clientArgs) {
  ClientArgs args = *(ClientArgs *) clientArgs;
  sock = setupConnectionToServer(args.ip, args.port, SOCK_STREAM);
  Message* messageToSend = calloc(1, sizeof(Message));

  bool running = true;
  while (running) {
    while(!getMessage(messageToSend)) { /* Wait for message */ }
    if (messageToSend->messageType == QUIT) {
      running = false;
    } else {
      sendMessage(messageToSend, sock);
      free(messageToSend->content);
    }
  }
  free(messageToSend);

  close(sock);
  pthread_exit(NULL);
}
