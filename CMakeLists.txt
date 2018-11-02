cmake_minimum_required(VERSION 3.5)
project(Node C)

set(CCOMPILE_OPTIONS -Wall -Werror -std=c99)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -pthread")


add_executable(tcpNode TCP/main.c TCP/TcpServer.h TCP/TcpServer.c TCP/TcpClient.h TCP/TcpClient.c Common/global.h Common/global.c Common/common.c Common/common.h Common/common.c)

add_executable(udpNode UDP/main.c Common/global.h Common/global.c Common/common.c Common/common.h UDP/UdpClient.c UDP/UdpClient.h UDP/UdpServer.c UDP/UdpServer.h)