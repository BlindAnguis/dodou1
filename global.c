#include <unistd.h>
#include "global.h"

void createMessage(MessageType messageType, char* content, char* message) {
    strcpy(message, messageTypeToString(messageType));
    strcat(message, content);
}

Message readMessage(char* message) {
    Message mess;
    int index = 0;
    while (message[index] != '\n' && index <= MESSAGE_SIZE) {
        index++;
    }

    char* mts = calloc(index + 1, sizeof(char));
    strncpy(mts, message, index);
    mess.messageType = messageStringToType(mts);
    free(mts);

    mess.content = calloc(strlen(message) - index + 1, sizeof(char));
    strncpy(mess.content, message + index + 1, strlen(message) - index);

    return mess;
}

char* messageTypeToString(MessageType messageType) {
    switch (messageType) {
        case ELECTION:
            return "ELECTION\n";
        case ELECTION_OVER:
            return "ELECTION_OVER\n";
        case MESSAGE:
            return "MESSAGE\n";
        default:
            printf("ERROR! MessageType not handled\n");
            return"";
    }
}

MessageType messageStringToType(char* messageType) {
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

Message getMessage() {
    bool foundMessage = false;
    Message message;

    while (!foundMessage) {
        sem_wait(&mutex);

        if (messagePosted) {
            message = postedMessage;
            messagePosted = false;
            foundMessage = true;
        } else {
            // Wait for message
        }

        sem_post(&mutex);
    }
    return message;
}

void init() {
    messagePosted = false;
    sem_init(&mutex, 0, 1);
}

void unInit() {
    sem_destroy(&mutex);
}