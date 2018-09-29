#ifndef NODE_GLOBAL_H
#define NODE_GLOBAL_H

#include <stdint.h>
#include <string.h>

#define MESSAGE_SIZE 100

typedef struct {
    uint16_t port;
    char* message;
} ServerArgs;

typedef struct {
    char* ip;
    uint16_t port;
    char* message;
} ClientArgs;

typedef enum {
    ELECTION, ELECTION_OVER, MESSAGE
} MessageType;

typedef struct {
    MessageType messageType;
    char* content;
} Message;

void createMessage(MessageType messageType, char* content, char* message);
Message readMessage(char* message);

char* messageTypeToString(MessageType messageType);
MessageType messageStringToType(char* messageType);

#endif //NODE_GLOBAL_H