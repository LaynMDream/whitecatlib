# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 2.8

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files (x86)\CMake 2.8\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files (x86)\CMake 2.8\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = "C:\Program Files (x86)\CMake 2.8\bin\cmake-gui.exe"

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\whitecat_crossplateform\lib\libsource\allegro4.4.2_sources_dep\allegro4.4.2_sources_dep\zlib-1.2.8\zlib-1.2.8

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\whitecat_crossplateform\lib\libsource\allegro4.4.2_sources_dep\allegro4.4.2_sources_dep\zlib-1.2.8\zlib-1.2.8\build

# Include any dependencies generated for this target.
include CMakeFiles/minigzip64.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/minigzip64.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/minigzip64.dir/flags.make

CMakeFiles/minigzip64.dir/test/minigzip.obj: CMakeFiles/minigzip64.dir/flags.make
CMakeFiles/minigzip64.dir/test/minigzip.obj: CMakeFiles/minigzip64.dir/includes_C.rsp
CMakeFiles/minigzip64.dir/test/minigzip.obj: ../test/minigzip.c
	$(CMAKE_COMMAND) -E cmake_progress_report C:\whitecat_crossplateform\lib\libsource\allegro4.4.2_sources_dep\allegro4.4.2_sources_dep\zlib-1.2.8\zlib-1.2.8\build\CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/minigzip64.dir/test/minigzip.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles\minigzip64.dir\test\minigzip.obj   -c C:\whitecat_crossplateform\lib\libsource\allegro4.4.2_sources_dep\allegro4.4.2_sources_dep\zlib-1.2.8\zlib-1.2.8\test\minigzip.c

CMakeFiles/minigzip64.dir/test/minigzip.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/minigzip64.dir/test/minigzip.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -E C:\whitecat_crossplateform\lib\libsource\allegro4.4.2_sources_dep\allegro4.4.2_sources_dep\zlib-1.2.8\zlib-1.2.8\test\minigzip.c > CMakeFiles\minigzip64.dir\test\minigzip.i

CMakeFiles/minigzip64.dir/test/minigzip.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/minigzip64.dir/test/minigzip.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -S C:\whitecat_crossplateform\lib\libsource\allegro4.4.2_sources_dep\allegro4.4.2_sources_dep\zlib-1.2.8\zlib-1.2.8\test\minigzip.c -o CMakeFiles\minigzip64.dir\test\minigzip.s

CMakeFiles/minigzip64.dir/test/minigzip.obj.requires:
.PHONY : CMakeFiles/minigzip64.dir/test/minigzip.obj.requires

CMakeFiles/minigzip64.dir/test/minigzip.obj.provides: CMakeFiles/minigzip64.dir/test/minigzip.obj.requires
	$(MAKE) -f CMakeFiles\minigzip64.dir\build.make CMakeFiles/minigzip64.dir/test/minigzip.obj.provides.build
.PHONY : CMakeFiles/minigzip64.dir/test/minigzip.obj.provides

CMakeFiles/minigzip64.dir/test/minigzip.obj.provides.build: CMakeFiles/minigzip64.dir/test/minigzip.obj

# Object files for target minigzip64
minigzip64_OBJECTS = \
"CMakeFiles/minigzip64.dir/test/minigzip.obj"

# External object files for target minigzip64
minigzip64_EXTERNAL_OBJECTS =

minigzip64.exe: CMakeFiles/minigzip64.dir/test/minigzip.obj
minigzip64.exe: CMakeFiles/minigzip64.dir/build.make
minigzip64.exe: libzlib.dll.a
minigzip64.exe: CMakeFiles/minigzip64.dir/objects1.rsp
minigzip64.exe: CMakeFiles/minigzip64.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable minigzip64.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\minigzip64.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/minigzip64.dir/build: minigzip64.exe
.PHONY : CMakeFiles/minigzip64.dir/build

CMakeFiles/minigzip64.dir/requires: CMakeFiles/minigzip64.dir/test/minigzip.obj.requires
.PHONY : CMakeFiles/minigzip64.dir/requires

CMakeFiles/minigzip64.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\minigzip64.dir\cmake_clean.cmake
.PHONY : CMakeFiles/minigzip64.dir/clean

CMakeFiles/minigzip64.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\whitecat_crossplateform\lib\libsource\allegro4.4.2_sources_dep\allegro4.4.2_sources_dep\zlib-1.2.8\zlib-1.2.8 C:\whitecat_crossplateform\lib\libsource\allegro4.4.2_sources_dep\allegro4.4.2_sources_dep\zlib-1.2.8\zlib-1.2.8 C:\whitecat_crossplateform\lib\libsource\allegro4.4.2_sources_dep\allegro4.4.2_sources_dep\zlib-1.2.8\zlib-1.2.8\build C:\whitecat_crossplateform\lib\libsource\allegro4.4.2_sources_dep\allegro4.4.2_sources_dep\zlib-1.2.8\zlib-1.2.8\build C:\whitecat_crossplateform\lib\libsource\allegro4.4.2_sources_dep\allegro4.4.2_sources_dep\zlib-1.2.8\zlib-1.2.8\build\CMakeFiles\minigzip64.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/minigzip64.dir/depend
