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
CMAKE_SOURCE_DIR = C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW

# Include any dependencies generated for this target.
include examples/CMakeFiles/exshade.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/exshade.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/exshade.dir/flags.make

examples/CMakeFiles/exshade.dir/exshade.c.obj: examples/CMakeFiles/exshade.dir/flags.make
examples/CMakeFiles/exshade.dir/exshade.c.obj: examples/CMakeFiles/exshade.dir/includes_C.rsp
examples/CMakeFiles/exshade.dir/exshade.c.obj: C:/whitecat_crossplateform/lib/libsource/allegro-4.4.2+borderless/allegro/examples/exshade.c
	$(CMAKE_COMMAND) -E cmake_progress_report C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object examples/CMakeFiles/exshade.dir/exshade.c.obj"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\examples && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles\exshade.dir\exshade.c.obj   -c C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\examples\exshade.c

examples/CMakeFiles/exshade.dir/exshade.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/exshade.dir/exshade.c.i"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\examples && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -E C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\examples\exshade.c > CMakeFiles\exshade.dir\exshade.c.i

examples/CMakeFiles/exshade.dir/exshade.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/exshade.dir/exshade.c.s"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\examples && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -S C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\examples\exshade.c -o CMakeFiles\exshade.dir\exshade.c.s

examples/CMakeFiles/exshade.dir/exshade.c.obj.requires:
.PHONY : examples/CMakeFiles/exshade.dir/exshade.c.obj.requires

examples/CMakeFiles/exshade.dir/exshade.c.obj.provides: examples/CMakeFiles/exshade.dir/exshade.c.obj.requires
	$(MAKE) -f examples\CMakeFiles\exshade.dir\build.make examples/CMakeFiles/exshade.dir/exshade.c.obj.provides.build
.PHONY : examples/CMakeFiles/exshade.dir/exshade.c.obj.provides

examples/CMakeFiles/exshade.dir/exshade.c.obj.provides.build: examples/CMakeFiles/exshade.dir/exshade.c.obj

# Object files for target exshade
exshade_OBJECTS = \
"CMakeFiles/exshade.dir/exshade.c.obj"

# External object files for target exshade
exshade_EXTERNAL_OBJECTS =

examples/exshade.exe: examples/CMakeFiles/exshade.dir/exshade.c.obj
examples/exshade.exe: examples/CMakeFiles/exshade.dir/build.make
examples/exshade.exe: lib/liballeg44.dll.a
examples/exshade.exe: C:/MinGW/lib/libdinput.a
examples/exshade.exe: C:/MinGW/lib/libddraw.a
examples/exshade.exe: C:/MinGW/lib/libdxguid.a
examples/exshade.exe: C:/MinGW/lib/libdsound.a
examples/exshade.exe: examples/CMakeFiles/exshade.dir/objects1.rsp
examples/exshade.exe: examples/CMakeFiles/exshade.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable exshade.exe"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\exshade.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/exshade.dir/build: examples/exshade.exe
.PHONY : examples/CMakeFiles/exshade.dir/build

examples/CMakeFiles/exshade.dir/requires: examples/CMakeFiles/exshade.dir/exshade.c.obj.requires
.PHONY : examples/CMakeFiles/exshade.dir/requires

examples/CMakeFiles/exshade.dir/clean:
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\examples && $(CMAKE_COMMAND) -P CMakeFiles\exshade.dir\cmake_clean.cmake
.PHONY : examples/CMakeFiles/exshade.dir/clean

examples/CMakeFiles/exshade.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\examples C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\examples C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\examples\CMakeFiles\exshade.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/exshade.dir/depend
