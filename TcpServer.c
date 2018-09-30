#include "TcpServer.h"

int setupServerSocket(uint16_t port) {
    int server_fd;
    int new_socket;

    struct sockaddr_in address;
    int opt = 1;
    int addrlen = sizeof(address);

    // Creating socket file descriptor
    if ((server_fd = socket(AF_INET, SOCK_STREAM, 0)) == 0) {
        perror ("Socket failure!");
        exit (EXIT_FAILURE);
    }

    // Forcefully attaching socket to the port
    if (setsockopt(server_fd, SOL_SOCKET,
                   SO_REUSEADDR | SO_REUSEPORT,
                   &opt, sizeof(opt))) {
        perror ("setsockopt");
        exit (EXIT_FAILURE);
    }

    address.sin_family = AF_INET;
    address.sin_addr.s_addr = INADDR_ANY;
    address.sin_port = htons(port);

    // Forecully attaching socket to the port
    if (bind(server_fd, (struct sockaddr *) &address,
             sizeof(address)) < 0) {
        perror ("Bind failed");
        exit (EXIT_FAILURE);
    }

    if (listen(server_fd, 3) < 0) {
        perror ("Listen failed");
        exit (EXIT_FAILURE);
    }
    if ((new_socket = accept(server_fd, (struct sockaddr *) &address,
                             (socklen_t*) &addrlen)) < 0) {
        perror ("Accept failed");
        exit (EXIT_FAILURE);
    }
    return new_socket;

}

void serverMain(ServerArgs serverArgs) {
    int socket = setupServerSocket(serverArgs.port);

    if (socket != -1) {

        for (int i = 0; i < 100; i++) {
            char buffer[MESSAGE_SIZE] = {0};
            ssize_t valread = read(socket, buffer, MESSAGE_SIZE);
            printf("Received: %s\n", buffer);
            Message message;
            message = readMessage(buffer);

            switch (message.messageType) {
                case ELECTION:
                    // Only forward if greater
                    break;
                case ELECTION_OVER:
                    // Tell next person about the winner
                    break;
                case MESSAGE:
                    // Just forward this
                    break;
                default:
                    // ERROR trace please
                    break;
            }

            while (!postMessage(message)) {
                printf("Cant post message, waiting...\n");
            }
        }
    }

    close(socket);
}