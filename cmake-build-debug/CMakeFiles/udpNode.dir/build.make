# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/clion-2018.2.4/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /opt/clion-2018.2.4/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tobias/CLionProjects/Node

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tobias/CLionProjects/Node/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/udpNode.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/udpNode.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/udpNode.dir/flags.make

CMakeFiles/udpNode.dir/UDP/main.c.o: CMakeFiles/udpNode.dir/flags.make
CMakeFiles/udpNode.dir/UDP/main.c.o: ../UDP/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tobias/CLionProjects/Node/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/udpNode.dir/UDP/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/udpNode.dir/UDP/main.c.o   -c /home/tobias/CLionProjects/Node/UDP/main.c

CMakeFiles/udpNode.dir/UDP/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/udpNode.dir/UDP/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tobias/CLionProjects/Node/UDP/main.c > CMakeFiles/udpNode.dir/UDP/main.c.i

CMakeFiles/udpNode.dir/UDP/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/udpNode.dir/UDP/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tobias/CLionProjects/Node/UDP/main.c -o CMakeFiles/udpNode.dir/UDP/main.c.s

CMakeFiles/udpNode.dir/Common/global.c.o: CMakeFiles/udpNode.dir/flags.make
CMakeFiles/udpNode.dir/Common/global.c.o: ../Common/global.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tobias/CLionProjects/Node/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/udpNode.dir/Common/global.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/udpNode.dir/Common/global.c.o   -c /home/tobias/CLionProjects/Node/Common/global.c

CMakeFiles/udpNode.dir/Common/global.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/udpNode.dir/Common/global.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tobias/CLionProjects/Node/Common/global.c > CMakeFiles/udpNode.dir/Common/global.c.i

CMakeFiles/udpNode.dir/Common/global.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/udpNode.dir/Common/global.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tobias/CLionProjects/Node/Common/global.c -o CMakeFiles/udpNode.dir/Common/global.c.s

CMakeFiles/udpNode.dir/Common/common.c.o: CMakeFiles/udpNode.dir/flags.make
CMakeFiles/udpNode.dir/Common/common.c.o: ../Common/common.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tobias/CLionProjects/Node/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/udpNode.dir/Common/common.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/udpNode.dir/Common/common.c.o   -c /home/tobias/CLionProjects/Node/Common/common.c

CMakeFiles/udpNode.dir/Common/common.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/udpNode.dir/Common/common.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tobias/CLionProjects/Node/Common/common.c > CMakeFiles/udpNode.dir/Common/common.c.i

CMakeFiles/udpNode.dir/Common/common.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/udpNode.dir/Common/common.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tobias/CLionProjects/Node/Common/common.c -o CMakeFiles/udpNode.dir/Common/common.c.s

CMakeFiles/udpNode.dir/UDP/UdpClient.c.o: CMakeFiles/udpNode.dir/flags.make
CMakeFiles/udpNode.dir/UDP/UdpClient.c.o: ../UDP/UdpClient.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tobias/CLionProjects/Node/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/udpNode.dir/UDP/UdpClient.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/udpNode.dir/UDP/UdpClient.c.o   -c /home/tobias/CLionProjects/Node/UDP/UdpClient.c

CMakeFiles/udpNode.dir/UDP/UdpClient.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/udpNode.dir/UDP/UdpClient.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tobias/CLionProjects/Node/UDP/UdpClient.c > CMakeFiles/udpNode.dir/UDP/UdpClient.c.i

CMakeFiles/udpNode.dir/UDP/UdpClient.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/udpNode.dir/UDP/UdpClient.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tobias/CLionProjects/Node/UDP/UdpClient.c -o CMakeFiles/udpNode.dir/UDP/UdpClient.c.s

CMakeFiles/udpNode.dir/UDP/UdpServer.c.o: CMakeFiles/udpNode.dir/flags.make
CMakeFiles/udpNode.dir/UDP/UdpServer.c.o: ../UDP/UdpServer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tobias/CLionProjects/Node/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/udpNode.dir/UDP/UdpServer.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/udpNode.dir/UDP/UdpServer.c.o   -c /home/tobias/CLionProjects/Node/UDP/UdpServer.c

CMakeFiles/udpNode.dir/UDP/UdpServer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/udpNode.dir/UDP/UdpServer.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tobias/CLionProjects/Node/UDP/UdpServer.c > CMakeFiles/udpNode.dir/UDP/UdpServer.c.i

CMakeFiles/udpNode.dir/UDP/UdpServer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/udpNode.dir/UDP/UdpServer.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tobias/CLionProjects/Node/UDP/UdpServer.c -o CMakeFiles/udpNode.dir/UDP/UdpServer.c.s

# Object files for target udpNode
udpNode_OBJECTS = \
"CMakeFiles/udpNode.dir/UDP/main.c.o" \
"CMakeFiles/udpNode.dir/Common/global.c.o" \
"CMakeFiles/udpNode.dir/Common/common.c.o" \
"CMakeFiles/udpNode.dir/UDP/UdpClient.c.o" \
"CMakeFiles/udpNode.dir/UDP/UdpServer.c.o"

# External object files for target udpNode
udpNode_EXTERNAL_OBJECTS =

udpNode: CMakeFiles/udpNode.dir/UDP/main.c.o
udpNode: CMakeFiles/udpNode.dir/Common/global.c.o
udpNode: CMakeFiles/udpNode.dir/Common/common.c.o
udpNode: CMakeFiles/udpNode.dir/UDP/UdpClient.c.o
udpNode: CMakeFiles/udpNode.dir/UDP/UdpServer.c.o
udpNode: CMakeFiles/udpNode.dir/build.make
udpNode: CMakeFiles/udpNode.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tobias/CLionProjects/Node/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C executable udpNode"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/udpNode.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/udpNode.dir/build: udpNode

.PHONY : CMakeFiles/udpNode.dir/build

CMakeFiles/udpNode.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/udpNode.dir/cmake_clean.cmake
.PHONY : CMakeFiles/udpNode.dir/clean

CMakeFiles/udpNode.dir/depend:
	cd /home/tobias/CLionProjects/Node/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tobias/CLionProjects/Node /home/tobias/CLionProjects/Node /home/tobias/CLionProjects/Node/cmake-build-debug /home/tobias/CLionProjects/Node/cmake-build-debug /home/tobias/CLionProjects/Node/cmake-build-debug/CMakeFiles/udpNode.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/udpNode.dir/depend

