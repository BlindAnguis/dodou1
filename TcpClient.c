#include <malloc.h>
#include "TcpClient.h"

int setupClientSocket(char* ip, uint16_t port) {
    sock = 0;
    struct sockaddr_in serv_addr;

    if ((sock = socket(AF_INET, SOCK_STREAM, 0)) < 0) {
        printf("\n Socket creation error \n");
        return -1;
    }

    memset(&serv_addr, '\0', sizeof(serv_addr));

    serv_addr.sin_family = AF_INET;
    serv_addr.sin_port = htons(port);

    // Covert IPv4 and IPv6 addresses from text to binary form
    if (inet_pton(AF_INET, ip, &serv_addr.sin_addr) <= 0) {
        printf("\nInvalidAddress/ Address not supported\n");
        return -1;
    }

    while (connect(sock, (struct sockaddr*) &serv_addr, sizeof(serv_addr)) == -1) {
        printf("Unable to connect, retrying in 1 sec...\n");
        sleep(1);
    }

    return sock;
}

void sendMessage(Message message) {
    if (sock != -1) {
        char* messageData = calloc(MESSAGE_SIZE, sizeof(char));
        createMessage(message.messageType, message.content, messageData);
        printf("Sending message: %s", messageData);
        send(sock, messageData, MESSAGE_SIZE, 0);
        free(messageData);
    }
}

void* clientMain(void* clientArgs) {
    ClientArgs args = * (ClientArgs*) clientArgs;
    setupClientSocket(args.ip, args.port);

    if (sock != -1) {
        char* message = calloc(MESSAGE_SIZE, sizeof(char));
        createMessage(ELECTION, args.message, message);
        printf("Sending message: %s", message);
        send(sock, message, MESSAGE_SIZE, 0);
        free(message);

        for (int i = 0; i < 100; i++) {
            Message messageToSend = getMessage();

            sendMessage(messageToSend);
        }
    }

    close(sock);
    pthread_exit(NULL);
}
