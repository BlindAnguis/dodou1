# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tobias/CLionProjects/Node

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tobias/CLionProjects/Node/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/tcpNode.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tcpNode.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tcpNode.dir/flags.make

CMakeFiles/tcpNode.dir/TCP/main.c.o: CMakeFiles/tcpNode.dir/flags.make
CMakeFiles/tcpNode.dir/TCP/main.c.o: ../TCP/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tobias/CLionProjects/Node/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/tcpNode.dir/TCP/main.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tcpNode.dir/TCP/main.c.o   -c /home/tobias/CLionProjects/Node/TCP/main.c

CMakeFiles/tcpNode.dir/TCP/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tcpNode.dir/TCP/main.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tobias/CLionProjects/Node/TCP/main.c > CMakeFiles/tcpNode.dir/TCP/main.c.i

CMakeFiles/tcpNode.dir/TCP/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tcpNode.dir/TCP/main.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tobias/CLionProjects/Node/TCP/main.c -o CMakeFiles/tcpNode.dir/TCP/main.c.s

CMakeFiles/tcpNode.dir/TCP/main.c.o.requires:

.PHONY : CMakeFiles/tcpNode.dir/TCP/main.c.o.requires

CMakeFiles/tcpNode.dir/TCP/main.c.o.provides: CMakeFiles/tcpNode.dir/TCP/main.c.o.requires
	$(MAKE) -f CMakeFiles/tcpNode.dir/build.make CMakeFiles/tcpNode.dir/TCP/main.c.o.provides.build
.PHONY : CMakeFiles/tcpNode.dir/TCP/main.c.o.provides

CMakeFiles/tcpNode.dir/TCP/main.c.o.provides.build: CMakeFiles/tcpNode.dir/TCP/main.c.o


CMakeFiles/tcpNode.dir/TCP/TcpServer.c.o: CMakeFiles/tcpNode.dir/flags.make
CMakeFiles/tcpNode.dir/TCP/TcpServer.c.o: ../TCP/TcpServer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tobias/CLionProjects/Node/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/tcpNode.dir/TCP/TcpServer.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tcpNode.dir/TCP/TcpServer.c.o   -c /home/tobias/CLionProjects/Node/TCP/TcpServer.c

CMakeFiles/tcpNode.dir/TCP/TcpServer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tcpNode.dir/TCP/TcpServer.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tobias/CLionProjects/Node/TCP/TcpServer.c > CMakeFiles/tcpNode.dir/TCP/TcpServer.c.i

CMakeFiles/tcpNode.dir/TCP/TcpServer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tcpNode.dir/TCP/TcpServer.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tobias/CLionProjects/Node/TCP/TcpServer.c -o CMakeFiles/tcpNode.dir/TCP/TcpServer.c.s

CMakeFiles/tcpNode.dir/TCP/TcpServer.c.o.requires:

.PHONY : CMakeFiles/tcpNode.dir/TCP/TcpServer.c.o.requires

CMakeFiles/tcpNode.dir/TCP/TcpServer.c.o.provides: CMakeFiles/tcpNode.dir/TCP/TcpServer.c.o.requires
	$(MAKE) -f CMakeFiles/tcpNode.dir/build.make CMakeFiles/tcpNode.dir/TCP/TcpServer.c.o.provides.build
.PHONY : CMakeFiles/tcpNode.dir/TCP/TcpServer.c.o.provides

CMakeFiles/tcpNode.dir/TCP/TcpServer.c.o.provides.build: CMakeFiles/tcpNode.dir/TCP/TcpServer.c.o


CMakeFiles/tcpNode.dir/TCP/TcpClient.c.o: CMakeFiles/tcpNode.dir/flags.make
CMakeFiles/tcpNode.dir/TCP/TcpClient.c.o: ../TCP/TcpClient.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tobias/CLionProjects/Node/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/tcpNode.dir/TCP/TcpClient.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tcpNode.dir/TCP/TcpClient.c.o   -c /home/tobias/CLionProjects/Node/TCP/TcpClient.c

CMakeFiles/tcpNode.dir/TCP/TcpClient.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tcpNode.dir/TCP/TcpClient.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tobias/CLionProjects/Node/TCP/TcpClient.c > CMakeFiles/tcpNode.dir/TCP/TcpClient.c.i

CMakeFiles/tcpNode.dir/TCP/TcpClient.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tcpNode.dir/TCP/TcpClient.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tobias/CLionProjects/Node/TCP/TcpClient.c -o CMakeFiles/tcpNode.dir/TCP/TcpClient.c.s

CMakeFiles/tcpNode.dir/TCP/TcpClient.c.o.requires:

.PHONY : CMakeFiles/tcpNode.dir/TCP/TcpClient.c.o.requires

CMakeFiles/tcpNode.dir/TCP/TcpClient.c.o.provides: CMakeFiles/tcpNode.dir/TCP/TcpClient.c.o.requires
	$(MAKE) -f CMakeFiles/tcpNode.dir/build.make CMakeFiles/tcpNode.dir/TCP/TcpClient.c.o.provides.build
.PHONY : CMakeFiles/tcpNode.dir/TCP/TcpClient.c.o.provides

CMakeFiles/tcpNode.dir/TCP/TcpClient.c.o.provides.build: CMakeFiles/tcpNode.dir/TCP/TcpClient.c.o


CMakeFiles/tcpNode.dir/Common/global.c.o: CMakeFiles/tcpNode.dir/flags.make
CMakeFiles/tcpNode.dir/Common/global.c.o: ../Common/global.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tobias/CLionProjects/Node/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/tcpNode.dir/Common/global.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tcpNode.dir/Common/global.c.o   -c /home/tobias/CLionProjects/Node/Common/global.c

CMakeFiles/tcpNode.dir/Common/global.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tcpNode.dir/Common/global.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tobias/CLionProjects/Node/Common/global.c > CMakeFiles/tcpNode.dir/Common/global.c.i

CMakeFiles/tcpNode.dir/Common/global.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tcpNode.dir/Common/global.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tobias/CLionProjects/Node/Common/global.c -o CMakeFiles/tcpNode.dir/Common/global.c.s

CMakeFiles/tcpNode.dir/Common/global.c.o.requires:

.PHONY : CMakeFiles/tcpNode.dir/Common/global.c.o.requires

CMakeFiles/tcpNode.dir/Common/global.c.o.provides: CMakeFiles/tcpNode.dir/Common/global.c.o.requires
	$(MAKE) -f CMakeFiles/tcpNode.dir/build.make CMakeFiles/tcpNode.dir/Common/global.c.o.provides.build
.PHONY : CMakeFiles/tcpNode.dir/Common/global.c.o.provides

CMakeFiles/tcpNode.dir/Common/global.c.o.provides.build: CMakeFiles/tcpNode.dir/Common/global.c.o


CMakeFiles/tcpNode.dir/Common/common.c.o: CMakeFiles/tcpNode.dir/flags.make
CMakeFiles/tcpNode.dir/Common/common.c.o: ../Common/common.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tobias/CLionProjects/Node/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/tcpNode.dir/Common/common.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tcpNode.dir/Common/common.c.o   -c /home/tobias/CLionProjects/Node/Common/common.c

CMakeFiles/tcpNode.dir/Common/common.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tcpNode.dir/Common/common.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tobias/CLionProjects/Node/Common/common.c > CMakeFiles/tcpNode.dir/Common/common.c.i

CMakeFiles/tcpNode.dir/Common/common.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tcpNode.dir/Common/common.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tobias/CLionProjects/Node/Common/common.c -o CMakeFiles/tcpNode.dir/Common/common.c.s

CMakeFiles/tcpNode.dir/Common/common.c.o.requires:

.PHONY : CMakeFiles/tcpNode.dir/Common/common.c.o.requires

CMakeFiles/tcpNode.dir/Common/common.c.o.provides: CMakeFiles/tcpNode.dir/Common/common.c.o.requires
	$(MAKE) -f CMakeFiles/tcpNode.dir/build.make CMakeFiles/tcpNode.dir/Common/common.c.o.provides.build
.PHONY : CMakeFiles/tcpNode.dir/Common/common.c.o.provides

CMakeFiles/tcpNode.dir/Common/common.c.o.provides.build: CMakeFiles/tcpNode.dir/Common/common.c.o


# Object files for target tcpNode
tcpNode_OBJECTS = \
"CMakeFiles/tcpNode.dir/TCP/main.c.o" \
"CMakeFiles/tcpNode.dir/TCP/TcpServer.c.o" \
"CMakeFiles/tcpNode.dir/TCP/TcpClient.c.o" \
"CMakeFiles/tcpNode.dir/Common/global.c.o" \
"CMakeFiles/tcpNode.dir/Common/common.c.o"

# External object files for target tcpNode
tcpNode_EXTERNAL_OBJECTS =

tcpNode: CMakeFiles/tcpNode.dir/TCP/main.c.o
tcpNode: CMakeFiles/tcpNode.dir/TCP/TcpServer.c.o
tcpNode: CMakeFiles/tcpNode.dir/TCP/TcpClient.c.o
tcpNode: CMakeFiles/tcpNode.dir/Common/global.c.o
tcpNode: CMakeFiles/tcpNode.dir/Common/common.c.o
tcpNode: CMakeFiles/tcpNode.dir/build.make
tcpNode: CMakeFiles/tcpNode.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tobias/CLionProjects/Node/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C executable tcpNode"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tcpNode.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tcpNode.dir/build: tcpNode

.PHONY : CMakeFiles/tcpNode.dir/build

CMakeFiles/tcpNode.dir/requires: CMakeFiles/tcpNode.dir/TCP/main.c.o.requires
CMakeFiles/tcpNode.dir/requires: CMakeFiles/tcpNode.dir/TCP/TcpServer.c.o.requires
CMakeFiles/tcpNode.dir/requires: CMakeFiles/tcpNode.dir/TCP/TcpClient.c.o.requires
CMakeFiles/tcpNode.dir/requires: CMakeFiles/tcpNode.dir/Common/global.c.o.requires
CMakeFiles/tcpNode.dir/requires: CMakeFiles/tcpNode.dir/Common/common.c.o.requires

.PHONY : CMakeFiles/tcpNode.dir/requires

CMakeFiles/tcpNode.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tcpNode.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tcpNode.dir/clean

CMakeFiles/tcpNode.dir/depend:
	cd /home/tobias/CLionProjects/Node/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tobias/CLionProjects/Node /home/tobias/CLionProjects/Node /home/tobias/CLionProjects/Node/cmake-build-debug /home/tobias/CLionProjects/Node/cmake-build-debug /home/tobias/CLionProjects/Node/cmake-build-debug/CMakeFiles/tcpNode.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tcpNode.dir/depend
