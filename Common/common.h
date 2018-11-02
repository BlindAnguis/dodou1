#ifndef NODE_COMMON_H
#define NODE_COMMON_H

#include <stdint.h>
#include <stdlib.h>
#include <memory.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/socket.h>
#include <sys/time.h>
#include <netdb.h>
#include <errno.h>
#include <time.h>

#define MESSAGE_SIZE 100

typedef struct {
  uint16_t port;
  char *message;
} ServerArgs;

typedef struct {
  char *ip;
  uint16_t port;
} ClientArgs;

typedef enum {
  ELECTION, ELECTION_OVER, MESSAGE, QUIT
} MessageType;

typedef struct {
  MessageType messageType;
  char *content;
} Message;

uint32_t start;

Message createElectionMessage(char *content);

Message createElectionOverMessage(char *content);

Message createMessage(char *content);

Message createQuitMessage();

Message createCommonMessage(MessageType messageType, char *content);

void convertMessageToData(MessageType messageType, char *content, char *message);

Message readMessage(char *message);

char *messageTypeToString(MessageType messageType);

MessageType messageStringToType(char *messageType);

int getFQDN(char *fqdn, size_t n);

char *buildID(char *port);

int setupServerConnection(int port, int sockType);

void fillInAddrInfo(struct addrinfo **addrInfo, int port, const char *IPAddress, int flags, int sockType);

int listenForIncomingConnection(int server_fd);

int setupConnectionToServer(const char *ip, uint16_t port, int sockType);

void postMessageWithWait(Message message);

uint32_t getCurrentTime();
void handleElectionMessage(Message message, char* myID);
void handleElectionOverMessage(Message message, char* myID);
void handleMessageMessage(Message message, char* myID);

void sendMessage(Message* message, int socket);

#endif //NODE_COMMON_H
