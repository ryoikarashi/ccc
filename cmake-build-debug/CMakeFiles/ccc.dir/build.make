# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /home/ryo/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/192.6817.18/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/ryo/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/192.6817.18/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ryo/Sites/studies/cccc

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ryo/Sites/studies/cccc/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ccc.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ccc.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ccc.dir/flags.make

CMakeFiles/ccc.dir/ccc.c.o: CMakeFiles/ccc.dir/flags.make
CMakeFiles/ccc.dir/ccc.c.o: ../ccc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ryo/Sites/studies/cccc/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/ccc.dir/ccc.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ccc.dir/ccc.c.o   -c /home/ryo/Sites/studies/cccc/ccc.c

CMakeFiles/ccc.dir/ccc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ccc.dir/ccc.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ryo/Sites/studies/cccc/ccc.c > CMakeFiles/ccc.dir/ccc.c.i

CMakeFiles/ccc.dir/ccc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ccc.dir/ccc.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ryo/Sites/studies/cccc/ccc.c -o CMakeFiles/ccc.dir/ccc.c.s

# Object files for target ccc
ccc_OBJECTS = \
"CMakeFiles/ccc.dir/ccc.c.o"

# External object files for target ccc
ccc_EXTERNAL_OBJECTS =

ccc: CMakeFiles/ccc.dir/ccc.c.o
ccc: CMakeFiles/ccc.dir/build.make
ccc: CMakeFiles/ccc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ryo/Sites/studies/cccc/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ccc"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ccc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ccc.dir/build: ccc

.PHONY : CMakeFiles/ccc.dir/build

CMakeFiles/ccc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ccc.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ccc.dir/clean

CMakeFiles/ccc.dir/depend:
	cd /home/ryo/Sites/studies/cccc/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ryo/Sites/studies/cccc /home/ryo/Sites/studies/cccc /home/ryo/Sites/studies/cccc/cmake-build-debug /home/ryo/Sites/studies/cccc/cmake-build-debug /home/ryo/Sites/studies/cccc/cmake-build-debug/CMakeFiles/ccc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ccc.dir/depend
