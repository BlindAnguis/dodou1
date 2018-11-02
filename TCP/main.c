#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <string.h>
#include <errno.h>
#include <inttypes.h>

#include <pthread.h>

#include "TcpServer.h"
#include "TcpClient.h"
#include "../Common/global.h"

int main(int argc, char *argv[]) {

  char *localPortString = argv[1];
  char *nextHost = argv[2];
  char *nextPortString = argv[3];
  printf("local-port: %s\n", localPortString);
  printf("next-host: %s\n", nextHost);
  printf("next-port: %s\n", nextPortString);

  uintmax_t localPort = strtoumax(localPortString, NULL, 10);
  if (localPort == UINTMAX_MAX && errno == ERANGE) {
    printf("ERROR: could not covert %s to integer", localPortString);
  }

  uintmax_t nextPort = strtoumax(nextPortString, NULL, 10);
  if (nextPort == UINTMAX_MAX && errno == ERANGE) {
    printf("ERROR: could not convert %s to integer", nextPortString);
  }

  init();

  ClientArgs clientArgs;

  pthread_t clientThread;
  clientArgs.port = htons((uint16_t) nextPort);
  clientArgs.ip = nextHost;
  pthread_create(&clientThread, NULL, clientMain, (void *) &clientArgs);

  ServerArgs serverArgs;
  serverArgs.port = htons((uint16_t) localPort);
  serverArgs.message = localPortString;
  serverMain(serverArgs);

  pthread_join(clientThread, NULL);

  unInit();

  return 0;
}