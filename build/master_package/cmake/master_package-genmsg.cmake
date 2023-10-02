# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "master_package: 2 messages, 0 services")

<<<<<<< HEAD
set(MSG_I_FLAGS "-Imaster_package:/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/master_package/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")
=======
set(MSG_I_FLAGS "-Imaster_package:/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/master_package/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(master_package_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



<<<<<<< HEAD
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_stm32.msg" NAME_WE)
add_custom_target(_master_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "master_package" "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_stm32.msg" ""
)

get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_ros.msg" NAME_WE)
add_custom_target(_master_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "master_package" "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_ros.msg" ""
=======
get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_stm32.msg" NAME_WE)
add_custom_target(_master_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "master_package" "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_stm32.msg" ""
)

get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_ros.msg" NAME_WE)
add_custom_target(_master_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "master_package" "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_ros.msg" ""
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(master_package
<<<<<<< HEAD
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_stm32.msg"
=======
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_stm32.msg"
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/master_package
)
_generate_msg_cpp(master_package
<<<<<<< HEAD
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_ros.msg"
=======
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_ros.msg"
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/master_package
)

### Generating Services

### Generating Module File
_generate_module_cpp(master_package
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/master_package
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(master_package_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(master_package_generate_messages master_package_generate_messages_cpp)

# add dependencies to all check dependencies targets
<<<<<<< HEAD
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_stm32.msg" NAME_WE)
add_dependencies(master_package_generate_messages_cpp _master_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_ros.msg" NAME_WE)
=======
get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_stm32.msg" NAME_WE)
add_dependencies(master_package_generate_messages_cpp _master_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_ros.msg" NAME_WE)
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
add_dependencies(master_package_generate_messages_cpp _master_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(master_package_gencpp)
add_dependencies(master_package_gencpp master_package_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS master_package_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(master_package
<<<<<<< HEAD
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_stm32.msg"
=======
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_stm32.msg"
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/master_package
)
_generate_msg_eus(master_package
<<<<<<< HEAD
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_ros.msg"
=======
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_ros.msg"
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/master_package
)

### Generating Services

### Generating Module File
_generate_module_eus(master_package
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/master_package
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(master_package_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(master_package_generate_messages master_package_generate_messages_eus)

# add dependencies to all check dependencies targets
<<<<<<< HEAD
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_stm32.msg" NAME_WE)
add_dependencies(master_package_generate_messages_eus _master_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_ros.msg" NAME_WE)
=======
get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_stm32.msg" NAME_WE)
add_dependencies(master_package_generate_messages_eus _master_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_ros.msg" NAME_WE)
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
add_dependencies(master_package_generate_messages_eus _master_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(master_package_geneus)
add_dependencies(master_package_geneus master_package_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS master_package_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(master_package
<<<<<<< HEAD
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_stm32.msg"
=======
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_stm32.msg"
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/master_package
)
_generate_msg_lisp(master_package
<<<<<<< HEAD
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_ros.msg"
=======
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_ros.msg"
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/master_package
)

### Generating Services

### Generating Module File
_generate_module_lisp(master_package
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/master_package
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(master_package_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(master_package_generate_messages master_package_generate_messages_lisp)

# add dependencies to all check dependencies targets
<<<<<<< HEAD
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_stm32.msg" NAME_WE)
add_dependencies(master_package_generate_messages_lisp _master_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_ros.msg" NAME_WE)
=======
get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_stm32.msg" NAME_WE)
add_dependencies(master_package_generate_messages_lisp _master_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_ros.msg" NAME_WE)
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
add_dependencies(master_package_generate_messages_lisp _master_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(master_package_genlisp)
add_dependencies(master_package_genlisp master_package_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS master_package_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(master_package
<<<<<<< HEAD
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_stm32.msg"
=======
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_stm32.msg"
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/master_package
)
_generate_msg_nodejs(master_package
<<<<<<< HEAD
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_ros.msg"
=======
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_ros.msg"
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/master_package
)

### Generating Services

### Generating Module File
_generate_module_nodejs(master_package
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/master_package
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(master_package_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(master_package_generate_messages master_package_generate_messages_nodejs)

# add dependencies to all check dependencies targets
<<<<<<< HEAD
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_stm32.msg" NAME_WE)
add_dependencies(master_package_generate_messages_nodejs _master_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_ros.msg" NAME_WE)
=======
get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_stm32.msg" NAME_WE)
add_dependencies(master_package_generate_messages_nodejs _master_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_ros.msg" NAME_WE)
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
add_dependencies(master_package_generate_messages_nodejs _master_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(master_package_gennodejs)
add_dependencies(master_package_gennodejs master_package_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS master_package_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(master_package
<<<<<<< HEAD
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_stm32.msg"
=======
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_stm32.msg"
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/master_package
)
_generate_msg_py(master_package
<<<<<<< HEAD
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_ros.msg"
=======
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_ros.msg"
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/master_package
)

### Generating Services

### Generating Module File
_generate_module_py(master_package
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/master_package
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(master_package_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(master_package_generate_messages master_package_generate_messages_py)

# add dependencies to all check dependencies targets
<<<<<<< HEAD
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_stm32.msg" NAME_WE)
add_dependencies(master_package_generate_messages_py _master_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_ros.msg" NAME_WE)
=======
get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_stm32.msg" NAME_WE)
add_dependencies(master_package_generate_messages_py _master_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/master_package/msg/master_ros.msg" NAME_WE)
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
add_dependencies(master_package_generate_messages_py _master_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(master_package_genpy)
add_dependencies(master_package_genpy master_package_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS master_package_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/master_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/master_package
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(master_package_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/master_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/master_package
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(master_package_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/master_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/master_package
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(master_package_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/master_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/master_package
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(master_package_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/master_package)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/master_package\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/master_package
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(master_package_generate_messages_py std_msgs_generate_messages_py)
endif()
