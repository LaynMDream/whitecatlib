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
CMAKE_SOURCE_DIR = C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\zlib-1.2.8\build

# Include any dependencies generated for this target.
include CMakeFiles/zlib.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/zlib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/zlib.dir/flags.make

zlib1rc.obj:
	$(CMAKE_COMMAND) -E cmake_progress_report C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\zlib-1.2.8\build\CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating zlib1rc.obj"
	C:\MinGW\bin\windres.exe -D GCC_WINDRES -I C:/whitecat_crossplateform/lib/libsource/zlib-1.2.8 -I C:/Users/bibi/Documents/GitHub/whitecatlib/lib/libsource/zlib-1.2.8/build -o C:/Users/bibi/Documents/GitHub/whitecatlib/lib/libsource/zlib-1.2.8/build/zlib1rc.obj -i C:/whitecat_crossplateform/lib/libsource/zlib-1.2.8/win32/zlib1.rc

CMakeFiles/zlib.dir/adler32.obj: CMakeFiles/zlib.dir/flags.make
CMakeFiles/zlib.dir/adler32.obj: CMakeFiles/zlib.dir/includes_C.rsp
CMakeFiles/zlib.dir/adler32.obj: C:/whitecat_crossplateform/lib/libsource/zlib-1.2.8/adler32.c
	$(CMAKE_COMMAND) -E cmake_progress_report C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\zlib-1.2.8\build\CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/zlib.dir/adler32.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles\zlib.dir\adler32.obj   -c C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\adler32.c

CMakeFiles/zlib.dir/adler32.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/adler32.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -E C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\adler32.c > CMakeFiles\zlib.dir\adler32.i

CMakeFiles/zlib.dir/adler32.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/adler32.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -S C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\adler32.c -o CMakeFiles\zlib.dir\adler32.s

CMakeFiles/zlib.dir/adler32.obj.requires:
.PHONY : CMakeFiles/zlib.dir/adler32.obj.requires

CMakeFiles/zlib.dir/adler32.obj.provides: CMakeFiles/zlib.dir/adler32.obj.requires
	$(MAKE) -f CMakeFiles\zlib.dir\build.make CMakeFiles/zlib.dir/adler32.obj.provides.build
.PHONY : CMakeFiles/zlib.dir/adler32.obj.provides

CMakeFiles/zlib.dir/adler32.obj.provides.build: CMakeFiles/zlib.dir/adler32.obj

CMakeFiles/zlib.dir/compress.obj: CMakeFiles/zlib.dir/flags.make
CMakeFiles/zlib.dir/compress.obj: CMakeFiles/zlib.dir/includes_C.rsp
CMakeFiles/zlib.dir/compress.obj: C:/whitecat_crossplateform/lib/libsource/zlib-1.2.8/compress.c
	$(CMAKE_COMMAND) -E cmake_progress_report C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\zlib-1.2.8\build\CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/zlib.dir/compress.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles\zlib.dir\compress.obj   -c C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\compress.c

CMakeFiles/zlib.dir/compress.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/compress.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -E C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\compress.c > CMakeFiles\zlib.dir\compress.i

CMakeFiles/zlib.dir/compress.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/compress.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -S C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\compress.c -o CMakeFiles\zlib.dir\compress.s

CMakeFiles/zlib.dir/compress.obj.requires:
.PHONY : CMakeFiles/zlib.dir/compress.obj.requires

CMakeFiles/zlib.dir/compress.obj.provides: CMakeFiles/zlib.dir/compress.obj.requires
	$(MAKE) -f CMakeFiles\zlib.dir\build.make CMakeFiles/zlib.dir/compress.obj.provides.build
.PHONY : CMakeFiles/zlib.dir/compress.obj.provides

CMakeFiles/zlib.dir/compress.obj.provides.build: CMakeFiles/zlib.dir/compress.obj

CMakeFiles/zlib.dir/crc32.obj: CMakeFiles/zlib.dir/flags.make
CMakeFiles/zlib.dir/crc32.obj: CMakeFiles/zlib.dir/includes_C.rsp
CMakeFiles/zlib.dir/crc32.obj: C:/whitecat_crossplateform/lib/libsource/zlib-1.2.8/crc32.c
	$(CMAKE_COMMAND) -E cmake_progress_report C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\zlib-1.2.8\build\CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/zlib.dir/crc32.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles\zlib.dir\crc32.obj   -c C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\crc32.c

CMakeFiles/zlib.dir/crc32.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/crc32.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -E C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\crc32.c > CMakeFiles\zlib.dir\crc32.i

CMakeFiles/zlib.dir/crc32.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/crc32.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -S C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\crc32.c -o CMakeFiles\zlib.dir\crc32.s

CMakeFiles/zlib.dir/crc32.obj.requires:
.PHONY : CMakeFiles/zlib.dir/crc32.obj.requires

CMakeFiles/zlib.dir/crc32.obj.provides: CMakeFiles/zlib.dir/crc32.obj.requires
	$(MAKE) -f CMakeFiles\zlib.dir\build.make CMakeFiles/zlib.dir/crc32.obj.provides.build
.PHONY : CMakeFiles/zlib.dir/crc32.obj.provides

CMakeFiles/zlib.dir/crc32.obj.provides.build: CMakeFiles/zlib.dir/crc32.obj

CMakeFiles/zlib.dir/deflate.obj: CMakeFiles/zlib.dir/flags.make
CMakeFiles/zlib.dir/deflate.obj: CMakeFiles/zlib.dir/includes_C.rsp
CMakeFiles/zlib.dir/deflate.obj: C:/whitecat_crossplateform/lib/libsource/zlib-1.2.8/deflate.c
	$(CMAKE_COMMAND) -E cmake_progress_report C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\zlib-1.2.8\build\CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/zlib.dir/deflate.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles\zlib.dir\deflate.obj   -c C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\deflate.c

CMakeFiles/zlib.dir/deflate.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/deflate.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -E C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\deflate.c > CMakeFiles\zlib.dir\deflate.i

CMakeFiles/zlib.dir/deflate.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/deflate.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -S C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\deflate.c -o CMakeFiles\zlib.dir\deflate.s

CMakeFiles/zlib.dir/deflate.obj.requires:
.PHONY : CMakeFiles/zlib.dir/deflate.obj.requires

CMakeFiles/zlib.dir/deflate.obj.provides: CMakeFiles/zlib.dir/deflate.obj.requires
	$(MAKE) -f CMakeFiles\zlib.dir\build.make CMakeFiles/zlib.dir/deflate.obj.provides.build
.PHONY : CMakeFiles/zlib.dir/deflate.obj.provides

CMakeFiles/zlib.dir/deflate.obj.provides.build: CMakeFiles/zlib.dir/deflate.obj

CMakeFiles/zlib.dir/gzclose.obj: CMakeFiles/zlib.dir/flags.make
CMakeFiles/zlib.dir/gzclose.obj: CMakeFiles/zlib.dir/includes_C.rsp
CMakeFiles/zlib.dir/gzclose.obj: C:/whitecat_crossplateform/lib/libsource/zlib-1.2.8/gzclose.c
	$(CMAKE_COMMAND) -E cmake_progress_report C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\zlib-1.2.8\build\CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/zlib.dir/gzclose.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles\zlib.dir\gzclose.obj   -c C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\gzclose.c

CMakeFiles/zlib.dir/gzclose.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/gzclose.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -E C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\gzclose.c > CMakeFiles\zlib.dir\gzclose.i

CMakeFiles/zlib.dir/gzclose.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/gzclose.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -S C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\gzclose.c -o CMakeFiles\zlib.dir\gzclose.s

CMakeFiles/zlib.dir/gzclose.obj.requires:
.PHONY : CMakeFiles/zlib.dir/gzclose.obj.requires

CMakeFiles/zlib.dir/gzclose.obj.provides: CMakeFiles/zlib.dir/gzclose.obj.requires
	$(MAKE) -f CMakeFiles\zlib.dir\build.make CMakeFiles/zlib.dir/gzclose.obj.provides.build
.PHONY : CMakeFiles/zlib.dir/gzclose.obj.provides

CMakeFiles/zlib.dir/gzclose.obj.provides.build: CMakeFiles/zlib.dir/gzclose.obj

CMakeFiles/zlib.dir/gzlib.obj: CMakeFiles/zlib.dir/flags.make
CMakeFiles/zlib.dir/gzlib.obj: CMakeFiles/zlib.dir/includes_C.rsp
CMakeFiles/zlib.dir/gzlib.obj: C:/whitecat_crossplateform/lib/libsource/zlib-1.2.8/gzlib.c
	$(CMAKE_COMMAND) -E cmake_progress_report C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\zlib-1.2.8\build\CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/zlib.dir/gzlib.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles\zlib.dir\gzlib.obj   -c C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\gzlib.c

CMakeFiles/zlib.dir/gzlib.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/gzlib.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -E C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\gzlib.c > CMakeFiles\zlib.dir\gzlib.i

CMakeFiles/zlib.dir/gzlib.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/gzlib.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -S C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\gzlib.c -o CMakeFiles\zlib.dir\gzlib.s

CMakeFiles/zlib.dir/gzlib.obj.requires:
.PHONY : CMakeFiles/zlib.dir/gzlib.obj.requires

CMakeFiles/zlib.dir/gzlib.obj.provides: CMakeFiles/zlib.dir/gzlib.obj.requires
	$(MAKE) -f CMakeFiles\zlib.dir\build.make CMakeFiles/zlib.dir/gzlib.obj.provides.build
.PHONY : CMakeFiles/zlib.dir/gzlib.obj.provides

CMakeFiles/zlib.dir/gzlib.obj.provides.build: CMakeFiles/zlib.dir/gzlib.obj

CMakeFiles/zlib.dir/gzread.obj: CMakeFiles/zlib.dir/flags.make
CMakeFiles/zlib.dir/gzread.obj: CMakeFiles/zlib.dir/includes_C.rsp
CMakeFiles/zlib.dir/gzread.obj: C:/whitecat_crossplateform/lib/libsource/zlib-1.2.8/gzread.c
	$(CMAKE_COMMAND) -E cmake_progress_report C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\zlib-1.2.8\build\CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/zlib.dir/gzread.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles\zlib.dir\gzread.obj   -c C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\gzread.c

CMakeFiles/zlib.dir/gzread.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/gzread.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -E C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\gzread.c > CMakeFiles\zlib.dir\gzread.i

CMakeFiles/zlib.dir/gzread.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/gzread.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -S C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\gzread.c -o CMakeFiles\zlib.dir\gzread.s

CMakeFiles/zlib.dir/gzread.obj.requires:
.PHONY : CMakeFiles/zlib.dir/gzread.obj.requires

CMakeFiles/zlib.dir/gzread.obj.provides: CMakeFiles/zlib.dir/gzread.obj.requires
	$(MAKE) -f CMakeFiles\zlib.dir\build.make CMakeFiles/zlib.dir/gzread.obj.provides.build
.PHONY : CMakeFiles/zlib.dir/gzread.obj.provides

CMakeFiles/zlib.dir/gzread.obj.provides.build: CMakeFiles/zlib.dir/gzread.obj

CMakeFiles/zlib.dir/gzwrite.obj: CMakeFiles/zlib.dir/flags.make
CMakeFiles/zlib.dir/gzwrite.obj: CMakeFiles/zlib.dir/includes_C.rsp
CMakeFiles/zlib.dir/gzwrite.obj: C:/whitecat_crossplateform/lib/libsource/zlib-1.2.8/gzwrite.c
	$(CMAKE_COMMAND) -E cmake_progress_report C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\zlib-1.2.8\build\CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/zlib.dir/gzwrite.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles\zlib.dir\gzwrite.obj   -c C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\gzwrite.c

CMakeFiles/zlib.dir/gzwrite.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/gzwrite.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -E C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\gzwrite.c > CMakeFiles\zlib.dir\gzwrite.i

CMakeFiles/zlib.dir/gzwrite.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/gzwrite.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -S C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\gzwrite.c -o CMakeFiles\zlib.dir\gzwrite.s

CMakeFiles/zlib.dir/gzwrite.obj.requires:
.PHONY : CMakeFiles/zlib.dir/gzwrite.obj.requires

CMakeFiles/zlib.dir/gzwrite.obj.provides: CMakeFiles/zlib.dir/gzwrite.obj.requires
	$(MAKE) -f CMakeFiles\zlib.dir\build.make CMakeFiles/zlib.dir/gzwrite.obj.provides.build
.PHONY : CMakeFiles/zlib.dir/gzwrite.obj.provides

CMakeFiles/zlib.dir/gzwrite.obj.provides.build: CMakeFiles/zlib.dir/gzwrite.obj

CMakeFiles/zlib.dir/inflate.obj: CMakeFiles/zlib.dir/flags.make
CMakeFiles/zlib.dir/inflate.obj: CMakeFiles/zlib.dir/includes_C.rsp
CMakeFiles/zlib.dir/inflate.obj: C:/whitecat_crossplateform/lib/libsource/zlib-1.2.8/inflate.c
	$(CMAKE_COMMAND) -E cmake_progress_report C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\zlib-1.2.8\build\CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/zlib.dir/inflate.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles\zlib.dir\inflate.obj   -c C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\inflate.c

CMakeFiles/zlib.dir/inflate.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/inflate.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -E C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\inflate.c > CMakeFiles\zlib.dir\inflate.i

CMakeFiles/zlib.dir/inflate.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/inflate.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -S C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\inflate.c -o CMakeFiles\zlib.dir\inflate.s

CMakeFiles/zlib.dir/inflate.obj.requires:
.PHONY : CMakeFiles/zlib.dir/inflate.obj.requires

CMakeFiles/zlib.dir/inflate.obj.provides: CMakeFiles/zlib.dir/inflate.obj.requires
	$(MAKE) -f CMakeFiles\zlib.dir\build.make CMakeFiles/zlib.dir/inflate.obj.provides.build
.PHONY : CMakeFiles/zlib.dir/inflate.obj.provides

CMakeFiles/zlib.dir/inflate.obj.provides.build: CMakeFiles/zlib.dir/inflate.obj

CMakeFiles/zlib.dir/infback.obj: CMakeFiles/zlib.dir/flags.make
CMakeFiles/zlib.dir/infback.obj: CMakeFiles/zlib.dir/includes_C.rsp
CMakeFiles/zlib.dir/infback.obj: C:/whitecat_crossplateform/lib/libsource/zlib-1.2.8/infback.c
	$(CMAKE_COMMAND) -E cmake_progress_report C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\zlib-1.2.8\build\CMakeFiles $(CMAKE_PROGRESS_11)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/zlib.dir/infback.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles\zlib.dir\infback.obj   -c C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\infback.c

CMakeFiles/zlib.dir/infback.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/infback.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -E C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\infback.c > CMakeFiles\zlib.dir\infback.i

CMakeFiles/zlib.dir/infback.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/infback.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -S C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\infback.c -o CMakeFiles\zlib.dir\infback.s

CMakeFiles/zlib.dir/infback.obj.requires:
.PHONY : CMakeFiles/zlib.dir/infback.obj.requires

CMakeFiles/zlib.dir/infback.obj.provides: CMakeFiles/zlib.dir/infback.obj.requires
	$(MAKE) -f CMakeFiles\zlib.dir\build.make CMakeFiles/zlib.dir/infback.obj.provides.build
.PHONY : CMakeFiles/zlib.dir/infback.obj.provides

CMakeFiles/zlib.dir/infback.obj.provides.build: CMakeFiles/zlib.dir/infback.obj

CMakeFiles/zlib.dir/inftrees.obj: CMakeFiles/zlib.dir/flags.make
CMakeFiles/zlib.dir/inftrees.obj: CMakeFiles/zlib.dir/includes_C.rsp
CMakeFiles/zlib.dir/inftrees.obj: C:/whitecat_crossplateform/lib/libsource/zlib-1.2.8/inftrees.c
	$(CMAKE_COMMAND) -E cmake_progress_report C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\zlib-1.2.8\build\CMakeFiles $(CMAKE_PROGRESS_12)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/zlib.dir/inftrees.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles\zlib.dir\inftrees.obj   -c C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\inftrees.c

CMakeFiles/zlib.dir/inftrees.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/inftrees.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -E C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\inftrees.c > CMakeFiles\zlib.dir\inftrees.i

CMakeFiles/zlib.dir/inftrees.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/inftrees.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -S C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\inftrees.c -o CMakeFiles\zlib.dir\inftrees.s

CMakeFiles/zlib.dir/inftrees.obj.requires:
.PHONY : CMakeFiles/zlib.dir/inftrees.obj.requires

CMakeFiles/zlib.dir/inftrees.obj.provides: CMakeFiles/zlib.dir/inftrees.obj.requires
	$(MAKE) -f CMakeFiles\zlib.dir\build.make CMakeFiles/zlib.dir/inftrees.obj.provides.build
.PHONY : CMakeFiles/zlib.dir/inftrees.obj.provides

CMakeFiles/zlib.dir/inftrees.obj.provides.build: CMakeFiles/zlib.dir/inftrees.obj

CMakeFiles/zlib.dir/inffast.obj: CMakeFiles/zlib.dir/flags.make
CMakeFiles/zlib.dir/inffast.obj: CMakeFiles/zlib.dir/includes_C.rsp
CMakeFiles/zlib.dir/inffast.obj: C:/whitecat_crossplateform/lib/libsource/zlib-1.2.8/inffast.c
	$(CMAKE_COMMAND) -E cmake_progress_report C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\zlib-1.2.8\build\CMakeFiles $(CMAKE_PROGRESS_13)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/zlib.dir/inffast.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles\zlib.dir\inffast.obj   -c C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\inffast.c

CMakeFiles/zlib.dir/inffast.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/inffast.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -E C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\inffast.c > CMakeFiles\zlib.dir\inffast.i

CMakeFiles/zlib.dir/inffast.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/inffast.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -S C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\inffast.c -o CMakeFiles\zlib.dir\inffast.s

CMakeFiles/zlib.dir/inffast.obj.requires:
.PHONY : CMakeFiles/zlib.dir/inffast.obj.requires

CMakeFiles/zlib.dir/inffast.obj.provides: CMakeFiles/zlib.dir/inffast.obj.requires
	$(MAKE) -f CMakeFiles\zlib.dir\build.make CMakeFiles/zlib.dir/inffast.obj.provides.build
.PHONY : CMakeFiles/zlib.dir/inffast.obj.provides

CMakeFiles/zlib.dir/inffast.obj.provides.build: CMakeFiles/zlib.dir/inffast.obj

CMakeFiles/zlib.dir/trees.obj: CMakeFiles/zlib.dir/flags.make
CMakeFiles/zlib.dir/trees.obj: CMakeFiles/zlib.dir/includes_C.rsp
CMakeFiles/zlib.dir/trees.obj: C:/whitecat_crossplateform/lib/libsource/zlib-1.2.8/trees.c
	$(CMAKE_COMMAND) -E cmake_progress_report C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\zlib-1.2.8\build\CMakeFiles $(CMAKE_PROGRESS_14)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/zlib.dir/trees.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles\zlib.dir\trees.obj   -c C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\trees.c

CMakeFiles/zlib.dir/trees.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/trees.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -E C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\trees.c > CMakeFiles\zlib.dir\trees.i

CMakeFiles/zlib.dir/trees.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/trees.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -S C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\trees.c -o CMakeFiles\zlib.dir\trees.s

CMakeFiles/zlib.dir/trees.obj.requires:
.PHONY : CMakeFiles/zlib.dir/trees.obj.requires

CMakeFiles/zlib.dir/trees.obj.provides: CMakeFiles/zlib.dir/trees.obj.requires
	$(MAKE) -f CMakeFiles\zlib.dir\build.make CMakeFiles/zlib.dir/trees.obj.provides.build
.PHONY : CMakeFiles/zlib.dir/trees.obj.provides

CMakeFiles/zlib.dir/trees.obj.provides.build: CMakeFiles/zlib.dir/trees.obj

CMakeFiles/zlib.dir/uncompr.obj: CMakeFiles/zlib.dir/flags.make
CMakeFiles/zlib.dir/uncompr.obj: CMakeFiles/zlib.dir/includes_C.rsp
CMakeFiles/zlib.dir/uncompr.obj: C:/whitecat_crossplateform/lib/libsource/zlib-1.2.8/uncompr.c
	$(CMAKE_COMMAND) -E cmake_progress_report C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\zlib-1.2.8\build\CMakeFiles $(CMAKE_PROGRESS_15)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/zlib.dir/uncompr.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles\zlib.dir\uncompr.obj   -c C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\uncompr.c

CMakeFiles/zlib.dir/uncompr.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/uncompr.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -E C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\uncompr.c > CMakeFiles\zlib.dir\uncompr.i

CMakeFiles/zlib.dir/uncompr.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/uncompr.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -S C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\uncompr.c -o CMakeFiles\zlib.dir\uncompr.s

CMakeFiles/zlib.dir/uncompr.obj.requires:
.PHONY : CMakeFiles/zlib.dir/uncompr.obj.requires

CMakeFiles/zlib.dir/uncompr.obj.provides: CMakeFiles/zlib.dir/uncompr.obj.requires
	$(MAKE) -f CMakeFiles\zlib.dir\build.make CMakeFiles/zlib.dir/uncompr.obj.provides.build
.PHONY : CMakeFiles/zlib.dir/uncompr.obj.provides

CMakeFiles/zlib.dir/uncompr.obj.provides.build: CMakeFiles/zlib.dir/uncompr.obj

CMakeFiles/zlib.dir/zutil.obj: CMakeFiles/zlib.dir/flags.make
CMakeFiles/zlib.dir/zutil.obj: CMakeFiles/zlib.dir/includes_C.rsp
CMakeFiles/zlib.dir/zutil.obj: C:/whitecat_crossplateform/lib/libsource/zlib-1.2.8/zutil.c
	$(CMAKE_COMMAND) -E cmake_progress_report C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\zlib-1.2.8\build\CMakeFiles $(CMAKE_PROGRESS_16)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/zlib.dir/zutil.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles\zlib.dir\zutil.obj   -c C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\zutil.c

CMakeFiles/zlib.dir/zutil.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/zlib.dir/zutil.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -E C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\zutil.c > CMakeFiles\zlib.dir\zutil.i

CMakeFiles/zlib.dir/zutil.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/zlib.dir/zutil.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -S C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8\zutil.c -o CMakeFiles\zlib.dir\zutil.s

CMakeFiles/zlib.dir/zutil.obj.requires:
.PHONY : CMakeFiles/zlib.dir/zutil.obj.requires

CMakeFiles/zlib.dir/zutil.obj.provides: CMakeFiles/zlib.dir/zutil.obj.requires
	$(MAKE) -f CMakeFiles\zlib.dir\build.make CMakeFiles/zlib.dir/zutil.obj.provides.build
.PHONY : CMakeFiles/zlib.dir/zutil.obj.provides

CMakeFiles/zlib.dir/zutil.obj.provides.build: CMakeFiles/zlib.dir/zutil.obj

# Object files for target zlib
zlib_OBJECTS = \
"CMakeFiles/zlib.dir/adler32.obj" \
"CMakeFiles/zlib.dir/compress.obj" \
"CMakeFiles/zlib.dir/crc32.obj" \
"CMakeFiles/zlib.dir/deflate.obj" \
"CMakeFiles/zlib.dir/gzclose.obj" \
"CMakeFiles/zlib.dir/gzlib.obj" \
"CMakeFiles/zlib.dir/gzread.obj" \
"CMakeFiles/zlib.dir/gzwrite.obj" \
"CMakeFiles/zlib.dir/inflate.obj" \
"CMakeFiles/zlib.dir/infback.obj" \
"CMakeFiles/zlib.dir/inftrees.obj" \
"CMakeFiles/zlib.dir/inffast.obj" \
"CMakeFiles/zlib.dir/trees.obj" \
"CMakeFiles/zlib.dir/uncompr.obj" \
"CMakeFiles/zlib.dir/zutil.obj"

# External object files for target zlib
zlib_EXTERNAL_OBJECTS = \
"C:/Users/bibi/Documents/GitHub/whitecatlib/lib/libsource/zlib-1.2.8/build/zlib1rc.obj"

libzlib.dll: CMakeFiles/zlib.dir/adler32.obj
libzlib.dll: CMakeFiles/zlib.dir/compress.obj
libzlib.dll: CMakeFiles/zlib.dir/crc32.obj
libzlib.dll: CMakeFiles/zlib.dir/deflate.obj
libzlib.dll: CMakeFiles/zlib.dir/gzclose.obj
libzlib.dll: CMakeFiles/zlib.dir/gzlib.obj
libzlib.dll: CMakeFiles/zlib.dir/gzread.obj
libzlib.dll: CMakeFiles/zlib.dir/gzwrite.obj
libzlib.dll: CMakeFiles/zlib.dir/inflate.obj
libzlib.dll: CMakeFiles/zlib.dir/infback.obj
libzlib.dll: CMakeFiles/zlib.dir/inftrees.obj
libzlib.dll: CMakeFiles/zlib.dir/inffast.obj
libzlib.dll: CMakeFiles/zlib.dir/trees.obj
libzlib.dll: CMakeFiles/zlib.dir/uncompr.obj
libzlib.dll: CMakeFiles/zlib.dir/zutil.obj
libzlib.dll: zlib1rc.obj
libzlib.dll: CMakeFiles/zlib.dir/build.make
libzlib.dll: CMakeFiles/zlib.dir/objects1.rsp
libzlib.dll: CMakeFiles/zlib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library libzlib.dll"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\zlib.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/zlib.dir/build: libzlib.dll
.PHONY : CMakeFiles/zlib.dir/build

CMakeFiles/zlib.dir/requires: CMakeFiles/zlib.dir/adler32.obj.requires
CMakeFiles/zlib.dir/requires: CMakeFiles/zlib.dir/compress.obj.requires
CMakeFiles/zlib.dir/requires: CMakeFiles/zlib.dir/crc32.obj.requires
CMakeFiles/zlib.dir/requires: CMakeFiles/zlib.dir/deflate.obj.requires
CMakeFiles/zlib.dir/requires: CMakeFiles/zlib.dir/gzclose.obj.requires
CMakeFiles/zlib.dir/requires: CMakeFiles/zlib.dir/gzlib.obj.requires
CMakeFiles/zlib.dir/requires: CMakeFiles/zlib.dir/gzread.obj.requires
CMakeFiles/zlib.dir/requires: CMakeFiles/zlib.dir/gzwrite.obj.requires
CMakeFiles/zlib.dir/requires: CMakeFiles/zlib.dir/inflate.obj.requires
CMakeFiles/zlib.dir/requires: CMakeFiles/zlib.dir/infback.obj.requires
CMakeFiles/zlib.dir/requires: CMakeFiles/zlib.dir/inftrees.obj.requires
CMakeFiles/zlib.dir/requires: CMakeFiles/zlib.dir/inffast.obj.requires
CMakeFiles/zlib.dir/requires: CMakeFiles/zlib.dir/trees.obj.requires
CMakeFiles/zlib.dir/requires: CMakeFiles/zlib.dir/uncompr.obj.requires
CMakeFiles/zlib.dir/requires: CMakeFiles/zlib.dir/zutil.obj.requires
.PHONY : CMakeFiles/zlib.dir/requires

CMakeFiles/zlib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\zlib.dir\cmake_clean.cmake
.PHONY : CMakeFiles/zlib.dir/clean

CMakeFiles/zlib.dir/depend: zlib1rc.obj
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8 C:\whitecat_crossplateform\lib\libsource\zlib-1.2.8 C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\zlib-1.2.8\build C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\zlib-1.2.8\build C:\Users\bibi\Documents\GitHub\whitecatlib\lib\libsource\zlib-1.2.8\build\CMakeFiles\zlib.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/zlib.dir/depend

