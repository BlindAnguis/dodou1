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
include CMakeFiles/Node.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Node.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Node.dir/flags.make

CMakeFiles/Node.dir/main.c.o: CMakeFiles/Node.dir/flags.make
CMakeFiles/Node.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tobias/CLionProjects/Node/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Node.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Node.dir/main.c.o   -c /home/tobias/CLionProjects/Node/main.c

CMakeFiles/Node.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Node.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tobias/CLionProjects/Node/main.c > CMakeFiles/Node.dir/main.c.i

CMakeFiles/Node.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Node.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tobias/CLionProjects/Node/main.c -o CMakeFiles/Node.dir/main.c.s

CMakeFiles/Node.dir/TcpServer.c.o: CMakeFiles/Node.dir/flags.make
CMakeFiles/Node.dir/TcpServer.c.o: ../TcpServer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tobias/CLionProjects/Node/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Node.dir/TcpServer.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Node.dir/TcpServer.c.o   -c /home/tobias/CLionProjects/Node/TcpServer.c

CMakeFiles/Node.dir/TcpServer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Node.dir/TcpServer.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tobias/CLionProjects/Node/TcpServer.c > CMakeFiles/Node.dir/TcpServer.c.i

CMakeFiles/Node.dir/TcpServer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Node.dir/TcpServer.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tobias/CLionProjects/Node/TcpServer.c -o CMakeFiles/Node.dir/TcpServer.c.s

CMakeFiles/Node.dir/TcpClient.c.o: CMakeFiles/Node.dir/flags.make
CMakeFiles/Node.dir/TcpClient.c.o: ../TcpClient.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tobias/CLionProjects/Node/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/Node.dir/TcpClient.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Node.dir/TcpClient.c.o   -c /home/tobias/CLionProjects/Node/TcpClient.c

CMakeFiles/Node.dir/TcpClient.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Node.dir/TcpClient.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tobias/CLionProjects/Node/TcpClient.c > CMakeFiles/Node.dir/TcpClient.c.i

CMakeFiles/Node.dir/TcpClient.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Node.dir/TcpClient.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tobias/CLionProjects/Node/TcpClient.c -o CMakeFiles/Node.dir/TcpClient.c.s

CMakeFiles/Node.dir/global.c.o: CMakeFiles/Node.dir/flags.make
CMakeFiles/Node.dir/global.c.o: ../global.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tobias/CLionProjects/Node/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/Node.dir/global.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Node.dir/global.c.o   -c /home/tobias/CLionProjects/Node/global.c

CMakeFiles/Node.dir/global.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Node.dir/global.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tobias/CLionProjects/Node/global.c > CMakeFiles/Node.dir/global.c.i

CMakeFiles/Node.dir/global.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Node.dir/global.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tobias/CLionProjects/Node/global.c -o CMakeFiles/Node.dir/global.c.s

# Object files for target Node
Node_OBJECTS = \
"CMakeFiles/Node.dir/main.c.o" \
"CMakeFiles/Node.dir/TcpServer.c.o" \
"CMakeFiles/Node.dir/TcpClient.c.o" \
"CMakeFiles/Node.dir/global.c.o"

# External object files for target Node
Node_EXTERNAL_OBJECTS =

Node: CMakeFiles/Node.dir/main.c.o
Node: CMakeFiles/Node.dir/TcpServer.c.o
Node: CMakeFiles/Node.dir/TcpClient.c.o
Node: CMakeFiles/Node.dir/global.c.o
Node: CMakeFiles/Node.dir/build.make
Node: CMakeFiles/Node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tobias/CLionProjects/Node/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable Node"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Node.dir/build: Node

.PHONY : CMakeFiles/Node.dir/build

CMakeFiles/Node.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Node.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Node.dir/clean

CMakeFiles/Node.dir/depend:
	cd /home/tobias/CLionProjects/Node/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tobias/CLionProjects/Node /home/tobias/CLionProjects/Node /home/tobias/CLionProjects/Node/cmake-build-debug /home/tobias/CLionProjects/Node/cmake-build-debug /home/tobias/CLionProjects/Node/cmake-build-debug/CMakeFiles/Node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Node.dir/depend

