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
CMAKE_SOURCE_DIR = C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\openlayer-2.1perso\openlayer-2.1+borderless\openlayer-2.1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\openlayer-2.1perso\openlayer-2.1+borderless\openlayer-2.1MinGW

# Include any dependencies generated for this target.
include demos/CMakeFiles/textdemo.dir/depend.make

# Include the progress variables for this target.
include demos/CMakeFiles/textdemo.dir/progress.make

# Include the compile flags for this target's objects.
include demos/CMakeFiles/textdemo.dir/flags.make

demos/CMakeFiles/textdemo.dir/textdemo/Main.obj: demos/CMakeFiles/textdemo.dir/flags.make
demos/CMakeFiles/textdemo.dir/textdemo/Main.obj: demos/CMakeFiles/textdemo.dir/includes_CXX.rsp
demos/CMakeFiles/textdemo.dir/textdemo/Main.obj: C:/Users/bibi/Documents/GitHub/whitecatlib/lib/libsource/openlayer-2.1perso/openlayer-2.1+borderless/openlayer-2.1/demos/textdemo/Main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\openlayer-2.1perso\openlayer-2.1+borderless\openlayer-2.1MinGW\CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object demos/CMakeFiles/textdemo.dir/textdemo/Main.obj"
	cd /d C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\openlayer-2.1perso\openlayer-2.1+borderless\openlayer-2.1MinGW\demos && C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles\textdemo.dir\textdemo\Main.obj -c C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\openlayer-2.1perso\openlayer-2.1+borderless\openlayer-2.1\demos\textdemo\Main.cpp

demos/CMakeFiles/textdemo.dir/textdemo/Main.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/textdemo.dir/textdemo/Main.i"
	cd /d C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\openlayer-2.1perso\openlayer-2.1+borderless\openlayer-2.1MinGW\demos && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -E C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\openlayer-2.1perso\openlayer-2.1+borderless\openlayer-2.1\demos\textdemo\Main.cpp > CMakeFiles\textdemo.dir\textdemo\Main.i

demos/CMakeFiles/textdemo.dir/textdemo/Main.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/textdemo.dir/textdemo/Main.s"
	cd /d C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\openlayer-2.1perso\openlayer-2.1+borderless\openlayer-2.1MinGW\demos && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -S C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\openlayer-2.1perso\openlayer-2.1+borderless\openlayer-2.1\demos\textdemo\Main.cpp -o CMakeFiles\textdemo.dir\textdemo\Main.s

demos/CMakeFiles/textdemo.dir/textdemo/Main.obj.requires:
.PHONY : demos/CMakeFiles/textdemo.dir/textdemo/Main.obj.requires

demos/CMakeFiles/textdemo.dir/textdemo/Main.obj.provides: demos/CMakeFiles/textdemo.dir/textdemo/Main.obj.requires
	$(MAKE) -f demos\CMakeFiles\textdemo.dir\build.make demos/CMakeFiles/textdemo.dir/textdemo/Main.obj.provides.build
.PHONY : demos/CMakeFiles/textdemo.dir/textdemo/Main.obj.provides

demos/CMakeFiles/textdemo.dir/textdemo/Main.obj.provides.build: demos/CMakeFiles/textdemo.dir/textdemo/Main.obj

# Object files for target textdemo
textdemo_OBJECTS = \
"CMakeFiles/textdemo.dir/textdemo/Main.obj"

# External object files for target textdemo
textdemo_EXTERNAL_OBJECTS =

bin/textdemo.exe: demos/CMakeFiles/textdemo.dir/textdemo/Main.obj
bin/textdemo.exe: demos/CMakeFiles/textdemo.dir/build.make
bin/textdemo.exe: lib/libopenlayer.a
bin/textdemo.exe: C:/compiledlibsforGCC4_8_1/lib/liballeggl.a
bin/textdemo.exe: C:/MinGW/bin/libpng12.dll
bin/textdemo.exe: lib/libglyph-agl.a
bin/textdemo.exe: C:/compiledlibsforGCC4_8_1/lib/libfreetype.a
bin/textdemo.exe: C:/MinGW/lib/libz.dll.a
bin/textdemo.exe: C:/compiledlibsforGCC4_8_1/lib/liballeg.a
bin/textdemo.exe: demos/CMakeFiles/textdemo.dir/objects1.rsp
bin/textdemo.exe: demos/CMakeFiles/textdemo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ..\bin\textdemo.exe"
	cd /d C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\openlayer-2.1perso\openlayer-2.1+borderless\openlayer-2.1MinGW\demos && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\textdemo.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
demos/CMakeFiles/textdemo.dir/build: bin/textdemo.exe
.PHONY : demos/CMakeFiles/textdemo.dir/build

demos/CMakeFiles/textdemo.dir/requires: demos/CMakeFiles/textdemo.dir/textdemo/Main.obj.requires
.PHONY : demos/CMakeFiles/textdemo.dir/requires

demos/CMakeFiles/textdemo.dir/clean:
	cd /d C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\openlayer-2.1perso\openlayer-2.1+borderless\openlayer-2.1MinGW\demos && $(CMAKE_COMMAND) -P CMakeFiles\textdemo.dir\cmake_clean.cmake
.PHONY : demos/CMakeFiles/textdemo.dir/clean

demos/CMakeFiles/textdemo.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\openlayer-2.1perso\openlayer-2.1+borderless\openlayer-2.1 C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\openlayer-2.1perso\openlayer-2.1+borderless\openlayer-2.1\demos C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\openlayer-2.1perso\openlayer-2.1+borderless\openlayer-2.1MinGW C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\openlayer-2.1perso\openlayer-2.1+borderless\openlayer-2.1MinGW\demos C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\openlayer-2.1perso\openlayer-2.1+borderless\openlayer-2.1MinGW\demos\CMakeFiles\textdemo.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : demos/CMakeFiles/textdemo.dir/depend

