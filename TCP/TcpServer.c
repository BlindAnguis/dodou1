#include "TcpServer.h"

void serverMain(ServerArgs serverArgs) {
  int server = setupServerConnection(serverArgs.port, SOCK_STREAM);
  int socket = listenForIncomingConnection(server);
  close(server);

  if (socket != -1) {
    char *myID = buildID(serverArgs.message);

    Message electionMessage = createElectionMessage(myID);
    postMessageWithWait(electionMessage);
    bool running = true;
    while (running) {
      char buffer[MESSAGE_SIZE] = {0};
      ssize_t ret = read(socket, buffer, MESSAGE_SIZE);

      if (ret == 0) {
        fprintf(stdout, "Client have shut down the connection, quitting\n");
        postMessageWithWait(createQuitMessage());
        running = false;
      } else if (ret != MESSAGE_SIZE) {
        fprintf(stderr, "Client sent message of wrong size\n");
        continue;
      } else {
        //printf("Received: %s, which is: %lu\n", buffer, ret);
        Message message = readMessage(buffer);

        switch (message.messageType) {
          case ELECTION:
            handleElectionMessage(message, myID);
            break;
          case ELECTION_OVER:
            handleElectionOverMessage(message, myID);
            break;
          case MESSAGE:
            handleMessageMessage(message, myID);
            break;
          default:
            // ERROR trace please
            break;
        }
      }
    }
    free(myID);
  }
  close(socket);
}