cmake_minimum_required(VERSION 3.12)
project(Node C)

set(CCOMPILE_OPTIONS -Wall -Werror -std=c99)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -pthread")


add_executable(Node main.c TcpServer.h TcpServer.c TcpClient.h TcpClient.c global.h global.c)