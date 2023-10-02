<<<<<<< HEAD
# Install script for directory: /home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/movement_package

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/install")
=======
# Install script for directory: /home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/movement_package

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/install")
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
   "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/install/_setup_util.py")
=======
   "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/install/_setup_util.py")
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/install" TYPE PROGRAM FILES "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/build/movement_package/catkin_generated/installspace/_setup_util.py")
=======
file(INSTALL DESTINATION "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/install" TYPE PROGRAM FILES "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/build/movement_package/catkin_generated/installspace/_setup_util.py")
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
   "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/install/env.sh")
=======
   "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/install/env.sh")
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/install" TYPE PROGRAM FILES "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/build/movement_package/catkin_generated/installspace/env.sh")
=======
file(INSTALL DESTINATION "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/install" TYPE PROGRAM FILES "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/build/movement_package/catkin_generated/installspace/env.sh")
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
   "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/install/setup.bash;/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/install/local_setup.bash")
=======
   "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/install/setup.bash;/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/install/local_setup.bash")
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/install" TYPE FILE FILES
    "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/build/movement_package/catkin_generated/installspace/setup.bash"
    "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/build/movement_package/catkin_generated/installspace/local_setup.bash"
=======
file(INSTALL DESTINATION "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/install" TYPE FILE FILES
    "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/build/movement_package/catkin_generated/installspace/setup.bash"
    "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/build/movement_package/catkin_generated/installspace/local_setup.bash"
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
   "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/install/setup.sh;/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/install/local_setup.sh")
=======
   "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/install/setup.sh;/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/install/local_setup.sh")
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/install" TYPE FILE FILES
    "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/build/movement_package/catkin_generated/installspace/setup.sh"
    "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/build/movement_package/catkin_generated/installspace/local_setup.sh"
=======
file(INSTALL DESTINATION "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/install" TYPE FILE FILES
    "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/build/movement_package/catkin_generated/installspace/setup.sh"
    "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/build/movement_package/catkin_generated/installspace/local_setup.sh"
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
   "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/install/setup.zsh;/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/install/local_setup.zsh")
=======
   "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/install/setup.zsh;/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/install/local_setup.zsh")
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/install" TYPE FILE FILES
    "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/build/movement_package/catkin_generated/installspace/setup.zsh"
    "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/build/movement_package/catkin_generated/installspace/local_setup.zsh"
=======
file(INSTALL DESTINATION "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/install" TYPE FILE FILES
    "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/build/movement_package/catkin_generated/installspace/setup.zsh"
    "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/build/movement_package/catkin_generated/installspace/local_setup.zsh"
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
   "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/install/.rosinstall")
=======
   "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/install/.rosinstall")
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/install" TYPE FILE FILES "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/build/movement_package/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/build/movement_package/catkin_generated/installspace/movement_package.pc")
=======
file(INSTALL DESTINATION "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/install" TYPE FILE FILES "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/build/movement_package/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/build/movement_package/catkin_generated/installspace/movement_package.pc")
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/movement_package/cmake" TYPE FILE FILES
<<<<<<< HEAD
    "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/build/movement_package/catkin_generated/installspace/movement_packageConfig.cmake"
    "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/build/movement_package/catkin_generated/installspace/movement_packageConfig-version.cmake"
=======
    "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/build/movement_package/catkin_generated/installspace/movement_packageConfig.cmake"
    "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/build/movement_package/catkin_generated/installspace/movement_packageConfig-version.cmake"
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
<<<<<<< HEAD
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/movement_package" TYPE FILE FILES "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/movement_package/package.xml")
=======
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/movement_package" TYPE FILE FILES "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/movement_package/package.xml")
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
<<<<<<< HEAD
  include("/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/build/movement_package/gtest/cmake_install.cmake")
=======
  include("/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/build/movement_package/gtest/cmake_install.cmake")
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
<<<<<<< HEAD
file(WRITE "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/build/movement_package/${CMAKE_INSTALL_MANIFEST}"
=======
file(WRITE "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/build/movement_package/${CMAKE_INSTALL_MANIFEST}"
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
