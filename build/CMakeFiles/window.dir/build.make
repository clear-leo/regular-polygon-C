# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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
CMAKE_SOURCE_DIR = /home/clearleo/projects/brainfuck

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/clearleo/projects/brainfuck/build

# Include any dependencies generated for this target.
include CMakeFiles/window.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/window.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/window.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/window.dir/flags.make

CMakeFiles/window.dir/codegen:
.PHONY : CMakeFiles/window.dir/codegen

CMakeFiles/window.dir/src/window.c.o: CMakeFiles/window.dir/flags.make
CMakeFiles/window.dir/src/window.c.o: /home/clearleo/projects/brainfuck/src/window.c
CMakeFiles/window.dir/src/window.c.o: CMakeFiles/window.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/clearleo/projects/brainfuck/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/window.dir/src/window.c.o"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/window.dir/src/window.c.o -MF CMakeFiles/window.dir/src/window.c.o.d -o CMakeFiles/window.dir/src/window.c.o -c /home/clearleo/projects/brainfuck/src/window.c

CMakeFiles/window.dir/src/window.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/window.dir/src/window.c.i"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/clearleo/projects/brainfuck/src/window.c > CMakeFiles/window.dir/src/window.c.i

CMakeFiles/window.dir/src/window.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/window.dir/src/window.c.s"
	/usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/clearleo/projects/brainfuck/src/window.c -o CMakeFiles/window.dir/src/window.c.s

# Object files for target window
window_OBJECTS = \
"CMakeFiles/window.dir/src/window.c.o"

# External object files for target window
window_EXTERNAL_OBJECTS =

libwindow.a: CMakeFiles/window.dir/src/window.c.o
libwindow.a: CMakeFiles/window.dir/build.make
libwindow.a: CMakeFiles/window.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/clearleo/projects/brainfuck/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libwindow.a"
	$(CMAKE_COMMAND) -P CMakeFiles/window.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/window.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/window.dir/build: libwindow.a
.PHONY : CMakeFiles/window.dir/build

CMakeFiles/window.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/window.dir/cmake_clean.cmake
.PHONY : CMakeFiles/window.dir/clean

CMakeFiles/window.dir/depend:
	cd /home/clearleo/projects/brainfuck/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/clearleo/projects/brainfuck /home/clearleo/projects/brainfuck /home/clearleo/projects/brainfuck/build /home/clearleo/projects/brainfuck/build /home/clearleo/projects/brainfuck/build/CMakeFiles/window.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/window.dir/depend

