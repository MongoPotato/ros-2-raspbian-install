# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-build

# Include any dependencies generated for this target.
include test/CMakeFiles/foo.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/foo.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/foo.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/foo.dir/flags.make

test/CMakeFiles/foo.dir/libfoo.c.o: test/CMakeFiles/foo.dir/flags.make
test/CMakeFiles/foo.dir/libfoo.c.o: /home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7/test/libfoo.c
test/CMakeFiles/foo.dir/libfoo.c.o: test/CMakeFiles/foo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/CMakeFiles/foo.dir/libfoo.c.o"
	cd /home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-build/test && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT test/CMakeFiles/foo.dir/libfoo.c.o -MF CMakeFiles/foo.dir/libfoo.c.o.d -o CMakeFiles/foo.dir/libfoo.c.o -c /home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7/test/libfoo.c

test/CMakeFiles/foo.dir/libfoo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/foo.dir/libfoo.c.i"
	cd /home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-build/test && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7/test/libfoo.c > CMakeFiles/foo.dir/libfoo.c.i

test/CMakeFiles/foo.dir/libfoo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/foo.dir/libfoo.c.s"
	cd /home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-build/test && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7/test/libfoo.c -o CMakeFiles/foo.dir/libfoo.c.s

# Object files for target foo
foo_OBJECTS = \
"CMakeFiles/foo.dir/libfoo.c.o"

# External object files for target foo
foo_EXTERNAL_OBJECTS =

test/libfoo.so: test/CMakeFiles/foo.dir/libfoo.c.o
test/libfoo.so: test/CMakeFiles/foo.dir/build.make
test/libfoo.so: test/CMakeFiles/foo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library libfoo.so"
	cd /home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/foo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/foo.dir/build: test/libfoo.so
.PHONY : test/CMakeFiles/foo.dir/build

test/CMakeFiles/foo.dir/clean:
	cd /home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-build/test && $(CMAKE_COMMAND) -P CMakeFiles/foo.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/foo.dir/clean

test/CMakeFiles/foo.dir/depend:
	cd /home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7 /home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7/test /home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-build /home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-build/test /home/pitemp/ros2_humble/src/ros2/mimick_vendor/build/mimick_vendor/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-prefix/src/mimick-de11f8377eb95f932a03707b583bf3d4ce5bd3e7-build/test/CMakeFiles/foo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/foo.dir/depend
