# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\CMake\bin\cmake.exe

# The command to remove a file.
RM = C:\CMake\bin\cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\projects\Lab1_MMPS\Runge_KuttaMethod

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\projects\Lab1_MMPS\Runge_KuttaMethod\build

# Include any dependencies generated for this target.
include CMakeFiles/runge_kutta.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/runge_kutta.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/runge_kutta.dir/flags.make

CMakeFiles/runge_kutta.dir/src/func.cpp.obj: CMakeFiles/runge_kutta.dir/flags.make
CMakeFiles/runge_kutta.dir/src/func.cpp.obj: ../src/func.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\projects\Lab1_MMPS\Runge_KuttaMethod\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/runge_kutta.dir/src/func.cpp.obj"
	C:\mingw-w64\x86_64-8.1.0-win32-seh-rt_v6-rev0\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\runge_kutta.dir\src\func.cpp.obj -c C:\projects\Lab1_MMPS\Runge_KuttaMethod\src\func.cpp

CMakeFiles/runge_kutta.dir/src/func.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runge_kutta.dir/src/func.cpp.i"
	C:\mingw-w64\x86_64-8.1.0-win32-seh-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\projects\Lab1_MMPS\Runge_KuttaMethod\src\func.cpp > CMakeFiles\runge_kutta.dir\src\func.cpp.i

CMakeFiles/runge_kutta.dir/src/func.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runge_kutta.dir/src/func.cpp.s"
	C:\mingw-w64\x86_64-8.1.0-win32-seh-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\projects\Lab1_MMPS\Runge_KuttaMethod\src\func.cpp -o CMakeFiles\runge_kutta.dir\src\func.cpp.s

# Object files for target runge_kutta
runge_kutta_OBJECTS = \
"CMakeFiles/runge_kutta.dir/src/func.cpp.obj"

# External object files for target runge_kutta
runge_kutta_EXTERNAL_OBJECTS =

../Debug/librunge_kutta.dll: CMakeFiles/runge_kutta.dir/src/func.cpp.obj
../Debug/librunge_kutta.dll: CMakeFiles/runge_kutta.dir/build.make
../Debug/librunge_kutta.dll: CMakeFiles/runge_kutta.dir/linklibs.rsp
../Debug/librunge_kutta.dll: CMakeFiles/runge_kutta.dir/objects1.rsp
../Debug/librunge_kutta.dll: CMakeFiles/runge_kutta.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\projects\Lab1_MMPS\Runge_KuttaMethod\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ..\Debug\librunge_kutta.dll"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\runge_kutta.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/runge_kutta.dir/build: ../Debug/librunge_kutta.dll

.PHONY : CMakeFiles/runge_kutta.dir/build

CMakeFiles/runge_kutta.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\runge_kutta.dir\cmake_clean.cmake
.PHONY : CMakeFiles/runge_kutta.dir/clean

CMakeFiles/runge_kutta.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\projects\Lab1_MMPS\Runge_KuttaMethod C:\projects\Lab1_MMPS\Runge_KuttaMethod C:\projects\Lab1_MMPS\Runge_KuttaMethod\build C:\projects\Lab1_MMPS\Runge_KuttaMethod\build C:\projects\Lab1_MMPS\Runge_KuttaMethod\build\CMakeFiles\runge_kutta.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/runge_kutta.dir/depend

