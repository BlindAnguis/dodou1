#include "global.h"
#include "common.h"

Message createElectionMessage(char *content) {
  return createCommonMessage(ELECTION, content);
}

Message createElectionOverMessage(char *content) {
  return createCommonMessage(ELECTION_OVER, content);
}

Message createMessage(char *content) {
  return createCommonMessage(MESSAGE, content);
}

Message createQuitMessage() {
  return createCommonMessage(QUIT, NULL);
}

Message createCommonMessage(MessageType messageType, char *content) {
  Message message;
  message.messageType = messageType;
  if (content != NULL) {
    message.content = calloc(MESSAGE_SIZE, sizeof(char));
    strcpy(message.content, content);
  }
  return message;
}

void convertMessageToData(MessageType messageType, char *content, char *message) {
  strcpy(message, messageTypeToString(messageType));
  strcat(message, content);
}

Message readMessage(char *message) {
  Message mess;
  size_t index = 0;
  while (message[index] != '\n' && index <= MESSAGE_SIZE) {
    index++;
  }

  char *mts = calloc(index + 1, sizeof(char));
  strncpy(mts, message, index);
  mess.messageType = messageStringToType(mts);
  free(mts);

  mess.content = calloc(strlen(message) - index + 1, sizeof(char));
  strncpy(mess.content, message + index + 1, strlen(message) - index);

  return mess;
}

char *messageTypeToString(MessageType messageType) {
  switch (messageType) {
    case ELECTION:
      return "ELECTION\n";
    case ELECTION_OVER:
      return "ELECTION_OVER\n";
    case MESSAGE:
      return "MESSAGE\n";
    default:
      printf("ERROR! MessageType not handled\n");
      return "";
  }
}

MessageType messageStringToType(char *messageType) {
  if (strcmp(messageType, "ELECTION") == 0) {
    return ELECTION;
  } else if (strcmp(messageType, "ELECTION_OVER") == 0) {
    return ELECTION_OVER;
  } else if (strcmp(messageType, "MESSAGE") == 0) {
    return MESSAGE;
  }
  printf("ERROR! MessageType (%s) not handled\n", messageType);
  return MESSAGE;
}

int getFQDN(char *fqdn, size_t n) {
  char hostname[256];
  int r = gethostname(hostname, 256);

  if (r != 0) {
    return 1;
  }

  struct addrinfo h = {0};
  h.ai_family = AF_INET;
  h.ai_socktype = SOCK_STREAM;
  h.ai_flags = AI_CANONNAME;

  struct addrinfo *info;
  if (getaddrinfo(hostname, NULL, &h, &info) != 0) {
    return 2;
  }

  strncpy(fqdn, info->ai_canonname, n);
  freeaddrinfo(info);

  return 0;
}

char *buildID(char *port) {

  char fqdn[256];
  int res = getFQDN(fqdn, 256);

  char *ID = calloc(strlen(fqdn) + strlen(port) + 3, sizeof(char));
  strcpy(ID, fqdn);
  strcat(ID, ",");
  strcat(ID, port);
  strcat(ID, "\n");

  return ID;
}

int setupServerConnection(const int port, const int sockType) {
  int server_fd;
  struct addrinfo *addrInfo = 0;

  fillInAddrInfo(&addrInfo, port, NULL, AI_PASSIVE, sockType);

  server_fd = socket(addrInfo->ai_family, addrInfo->ai_socktype, addrInfo->ai_protocol);
  if (server_fd == -1) {
    fprintf(stderr, "Failed to create socket\n");
    exit(EXIT_FAILURE);
  }

  // Allow reuse of local addresses.
  int resueAddr = 1;
  if (setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR, &(resueAddr), sizeof(&resueAddr)) == -1) {
    close(server_fd);
    fprintf(stderr, "Failed to set socket optionals\n");
    exit(EXIT_FAILURE);
  }

  if (bind(server_fd, addrInfo->ai_addr, addrInfo->ai_addrlen) == -1) {
    close(server_fd);
    fprintf(stderr, "Failed to bind socket\n");
    exit(EXIT_FAILURE);
  }
  freeaddrinfo(addrInfo);

  if (sockType == SOCK_DGRAM) {
    return server_fd;
  }

  if (listen(server_fd, SOMAXCONN)) {
    fprintf(stderr, "Failed to listen to socket\n");
    exit(EXIT_FAILURE);
  }
  return server_fd;
}

void fillInAddrInfo(struct addrinfo **addrInfo, const int port, const char *IPAddress, int flags, int sockType) {
  char portId[15];
  sprintf(portId, "%d", port);
  struct addrinfo info;
  memset(&info, 0, sizeof(info));
  info.ai_family = AF_INET;
  info.ai_socktype = sockType;
  info.ai_protocol = 0;
  info.ai_flags = flags;

  if (getaddrinfo(IPAddress, portId, &info, addrInfo) != 0) {
    fprintf(stderr, "Failed to get address info\n");
    exit(EXIT_FAILURE);
  }
}


int listenForIncomingConnection(int server_fd) {
  int connection_fd;
  fprintf(stdout, "Listening for connections...\n");
  // Listen for ONE incoming connection.
  while ((connection_fd = accept(server_fd, 0, 0)) == -1) {
    fprintf(stderr, "SERVER ERROR: %s", strerror(errno));
  }
  return connection_fd;
}


int setupConnectionToServer(const char *ip, const uint16_t port, int sockType) {
  // Convert Port to String
  char portId[15];
  sprintf(portId, "%d", port);
  struct addrinfo *addrInfo = 0;

  fillInAddrInfo(&addrInfo, port, ip, AI_ADDRCONFIG, sockType);

  int sock = socket(addrInfo->ai_family, addrInfo->ai_socktype, addrInfo->ai_protocol);
  if (sock == -1) {
    freeaddrinfo(addrInfo);
    fprintf(stderr, "Socket creation error\n");
    exit(EXIT_FAILURE);
  }

  // Used to prioritize packets from this socket.
  int optval = 6;
  if (setsockopt(sock, SOL_SOCKET, SO_PRIORITY, &optval, sizeof(int)) == -1) {
    close(sock);
    fprintf(stderr, "Failed to prioritize packets\n");
    exit(EXIT_FAILURE);
  }

  // Try to connect to Server. Retry if unsuccessful.
  while (connect(sock, addrInfo->ai_addr, addrInfo->ai_addrlen) == -1) {
    fprintf(stderr, "Unable to connect, retrying in 1 sec...\n");

    sleep(1);
  }
  freeaddrinfo(addrInfo);
  return sock;
}

void postMessageWithWait(Message message) {
  while (!postMessage(message)) {
    //printf("Cant post electionOverMessage, waiting...\n");
  }
}

uint32_t getCurrentTime() {
  return (uint32_t )clock();
}

void handleElectionMessage(Message message, char *myID) {
  int result = strcmp(myID, message.content);
  if (result == 0) {
    // My electionOverMessage
    Message electionOverMessage = createElectionOverMessage(myID);
    postMessageWithWait(electionOverMessage);
    free(message.content);
  } else if (result < 0) {
    // Someone else is better, forward
    postMessageWithWait(message);
  } else {
    // I'm better, don't forward
    free(message.content);
  }
}

void handleElectionOverMessage(Message message, char *myID) {
  printf("Election Over\n");
  if (strcmp(myID, message.content) == 0) {
    Message messagePhase = createMessage(myID);
    postMessageWithWait(messagePhase);
    start = getCurrentTime();
    free(message.content);
  } else {
    postMessageWithWait(message);
  }
}

void handleMessageMessage(Message message, char *myID) {
  if (strcmp(myID, message.content) == 0) {
    // My message
    printf("Time: %u\n", getCurrentTime() - start);
    postMessageWithWait(message);
    start = getCurrentTime();
  } else {
    postMessageWithWait(message);
  }
}

void sendMessage(Message* message, int socket) {
  if (socket != -1) {
    char *messageData = calloc(MESSAGE_SIZE, sizeof(char));
    convertMessageToData(message->messageType, message->content, messageData);
    printf("Sending message: %s\n", messageData);
    send(socket, messageData, MESSAGE_SIZE, 0);
    free(messageData);
  }
}