# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
<<<<<<< HEAD
CMAKE_SOURCE_DIR = /home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/mission_package

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/build/mission_package
=======
CMAKE_SOURCE_DIR = /home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/mission_package

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/build/mission_package
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d

# Include any dependencies generated for this target.
include gtest/googletest/CMakeFiles/gtest_main.dir/depend.make

# Include the progress variables for this target.
include gtest/googletest/CMakeFiles/gtest_main.dir/progress.make

# Include the compile flags for this target's objects.
include gtest/googletest/CMakeFiles/gtest_main.dir/flags.make

gtest/googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o: gtest/googletest/CMakeFiles/gtest_main.dir/flags.make
gtest/googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o: /usr/src/googletest/googletest/src/gtest_main.cc
<<<<<<< HEAD
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/build/mission_package/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object gtest/googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o"
	cd /home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/build/mission_package/gtest/googletest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gtest_main.dir/src/gtest_main.cc.o -c /usr/src/googletest/googletest/src/gtest_main.cc

gtest/googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gtest_main.dir/src/gtest_main.cc.i"
	cd /home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/build/mission_package/gtest/googletest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /usr/src/googletest/googletest/src/gtest_main.cc > CMakeFiles/gtest_main.dir/src/gtest_main.cc.i

gtest/googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gtest_main.dir/src/gtest_main.cc.s"
	cd /home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/build/mission_package/gtest/googletest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /usr/src/googletest/googletest/src/gtest_main.cc -o CMakeFiles/gtest_main.dir/src/gtest_main.cc.s
=======
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/build/mission_package/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object gtest/googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o"
	cd /home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/build/mission_package/gtest/googletest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gtest_main.dir/src/gtest_main.cc.o -c /usr/src/googletest/googletest/src/gtest_main.cc

gtest/googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gtest_main.dir/src/gtest_main.cc.i"
	cd /home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/build/mission_package/gtest/googletest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /usr/src/googletest/googletest/src/gtest_main.cc > CMakeFiles/gtest_main.dir/src/gtest_main.cc.i

gtest/googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gtest_main.dir/src/gtest_main.cc.s"
	cd /home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/build/mission_package/gtest/googletest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /usr/src/googletest/googletest/src/gtest_main.cc -o CMakeFiles/gtest_main.dir/src/gtest_main.cc.s
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d

# Object files for target gtest_main
gtest_main_OBJECTS = \
"CMakeFiles/gtest_main.dir/src/gtest_main.cc.o"

# External object files for target gtest_main
gtest_main_EXTERNAL_OBJECTS =

gtest/lib/libgtest_main.so: gtest/googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o
gtest/lib/libgtest_main.so: gtest/googletest/CMakeFiles/gtest_main.dir/build.make
gtest/lib/libgtest_main.so: gtest/lib/libgtest.so
gtest/lib/libgtest_main.so: gtest/googletest/CMakeFiles/gtest_main.dir/link.txt
<<<<<<< HEAD
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/build/mission_package/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ../lib/libgtest_main.so"
	cd /home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/build/mission_package/gtest/googletest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gtest_main.dir/link.txt --verbose=$(VERBOSE)
=======
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/build/mission_package/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ../lib/libgtest_main.so"
	cd /home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/build/mission_package/gtest/googletest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gtest_main.dir/link.txt --verbose=$(VERBOSE)
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d

# Rule to build all files generated by this target.
gtest/googletest/CMakeFiles/gtest_main.dir/build: gtest/lib/libgtest_main.so

.PHONY : gtest/googletest/CMakeFiles/gtest_main.dir/build

gtest/googletest/CMakeFiles/gtest_main.dir/clean:
<<<<<<< HEAD
	cd /home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/build/mission_package/gtest/googletest && $(CMAKE_COMMAND) -P CMakeFiles/gtest_main.dir/cmake_clean.cmake
.PHONY : gtest/googletest/CMakeFiles/gtest_main.dir/clean

gtest/googletest/CMakeFiles/gtest_main.dir/depend:
	cd /home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/build/mission_package && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/mission_package /usr/src/googletest/googletest /home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/build/mission_package /home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/build/mission_package/gtest/googletest /home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/build/mission_package/gtest/googletest/CMakeFiles/gtest_main.dir/DependInfo.cmake --color=$(COLOR)
=======
	cd /home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/build/mission_package/gtest/googletest && $(CMAKE_COMMAND) -P CMakeFiles/gtest_main.dir/cmake_clean.cmake
.PHONY : gtest/googletest/CMakeFiles/gtest_main.dir/clean

gtest/googletest/CMakeFiles/gtest_main.dir/depend:
	cd /home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/build/mission_package && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/mission_package /usr/src/googletest/googletest /home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/build/mission_package /home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/build/mission_package/gtest/googletest /home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/build/mission_package/gtest/googletest/CMakeFiles/gtest_main.dir/DependInfo.cmake --color=$(COLOR)
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
.PHONY : gtest/googletest/CMakeFiles/gtest_main.dir/depend

