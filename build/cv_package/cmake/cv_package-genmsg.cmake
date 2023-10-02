# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cv_package: 4 messages, 0 services")

<<<<<<< HEAD
set(MSG_I_FLAGS "-Icv_package:/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")
=======
set(MSG_I_FLAGS "-Icv_package:/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cv_package_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



<<<<<<< HEAD
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg" NAME_WE)
add_custom_target(_cv_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cv_package" "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg" ""
)

get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBoxes.msg" NAME_WE)
add_custom_target(_cv_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cv_package" "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBoxes.msg" "cv_package/BoundingBox"
)

get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/kamera.msg" NAME_WE)
add_custom_target(_cv_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cv_package" "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/kamera.msg" ""
)

get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/vision.msg" NAME_WE)
add_custom_target(_cv_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cv_package" "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/vision.msg" ""
=======
get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg" NAME_WE)
add_custom_target(_cv_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cv_package" "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg" ""
)

get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBoxes.msg" NAME_WE)
add_custom_target(_cv_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cv_package" "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBoxes.msg" "cv_package/BoundingBox"
)

get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/kamera.msg" NAME_WE)
add_custom_target(_cv_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cv_package" "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/kamera.msg" ""
)

get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/vision.msg" NAME_WE)
add_custom_target(_cv_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cv_package" "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/vision.msg" ""
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(cv_package
<<<<<<< HEAD
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg"
=======
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg"
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cv_package
)
_generate_msg_cpp(cv_package
<<<<<<< HEAD
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cv_package
)
_generate_msg_cpp(cv_package
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/kamera.msg"
=======
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cv_package
)
_generate_msg_cpp(cv_package
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/kamera.msg"
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cv_package
)
_generate_msg_cpp(cv_package
<<<<<<< HEAD
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/vision.msg"
=======
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/vision.msg"
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cv_package
)

### Generating Services

### Generating Module File
_generate_module_cpp(cv_package
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cv_package
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cv_package_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cv_package_generate_messages cv_package_generate_messages_cpp)

# add dependencies to all check dependencies targets
<<<<<<< HEAD
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg" NAME_WE)
add_dependencies(cv_package_generate_messages_cpp _cv_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(cv_package_generate_messages_cpp _cv_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/kamera.msg" NAME_WE)
add_dependencies(cv_package_generate_messages_cpp _cv_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/vision.msg" NAME_WE)
=======
get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg" NAME_WE)
add_dependencies(cv_package_generate_messages_cpp _cv_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(cv_package_generate_messages_cpp _cv_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/kamera.msg" NAME_WE)
add_dependencies(cv_package_generate_messages_cpp _cv_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/vision.msg" NAME_WE)
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
add_dependencies(cv_package_generate_messages_cpp _cv_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cv_package_gencpp)
add_dependencies(cv_package_gencpp cv_package_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cv_package_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(cv_package
<<<<<<< HEAD
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg"
=======
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg"
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cv_package
)
_generate_msg_eus(cv_package
<<<<<<< HEAD
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cv_package
)
_generate_msg_eus(cv_package
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/kamera.msg"
=======
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cv_package
)
_generate_msg_eus(cv_package
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/kamera.msg"
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cv_package
)
_generate_msg_eus(cv_package
<<<<<<< HEAD
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/vision.msg"
=======
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/vision.msg"
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cv_package
)

### Generating Services

### Generating Module File
_generate_module_eus(cv_package
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cv_package
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cv_package_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cv_package_generate_messages cv_package_generate_messages_eus)

# add dependencies to all check dependencies targets
<<<<<<< HEAD
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg" NAME_WE)
add_dependencies(cv_package_generate_messages_eus _cv_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(cv_package_generate_messages_eus _cv_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/kamera.msg" NAME_WE)
add_dependencies(cv_package_generate_messages_eus _cv_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/vision.msg" NAME_WE)
=======
get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg" NAME_WE)
add_dependencies(cv_package_generate_messages_eus _cv_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(cv_package_generate_messages_eus _cv_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/kamera.msg" NAME_WE)
add_dependencies(cv_package_generate_messages_eus _cv_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/vision.msg" NAME_WE)
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
add_dependencies(cv_package_generate_messages_eus _cv_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cv_package_geneus)
add_dependencies(cv_package_geneus cv_package_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cv_package_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(cv_package
<<<<<<< HEAD
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg"
=======
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg"
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cv_package
)
_generate_msg_lisp(cv_package
<<<<<<< HEAD
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cv_package
)
_generate_msg_lisp(cv_package
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/kamera.msg"
=======
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cv_package
)
_generate_msg_lisp(cv_package
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/kamera.msg"
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cv_package
)
_generate_msg_lisp(cv_package
<<<<<<< HEAD
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/vision.msg"
=======
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/vision.msg"
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cv_package
)

### Generating Services

### Generating Module File
_generate_module_lisp(cv_package
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cv_package
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cv_package_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cv_package_generate_messages cv_package_generate_messages_lisp)

# add dependencies to all check dependencies targets
<<<<<<< HEAD
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg" NAME_WE)
add_dependencies(cv_package_generate_messages_lisp _cv_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(cv_package_generate_messages_lisp _cv_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/kamera.msg" NAME_WE)
add_dependencies(cv_package_generate_messages_lisp _cv_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/vision.msg" NAME_WE)
=======
get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg" NAME_WE)
add_dependencies(cv_package_generate_messages_lisp _cv_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(cv_package_generate_messages_lisp _cv_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/kamera.msg" NAME_WE)
add_dependencies(cv_package_generate_messages_lisp _cv_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/vision.msg" NAME_WE)
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
add_dependencies(cv_package_generate_messages_lisp _cv_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cv_package_genlisp)
add_dependencies(cv_package_genlisp cv_package_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cv_package_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(cv_package
<<<<<<< HEAD
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg"
=======
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg"
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cv_package
)
_generate_msg_nodejs(cv_package
<<<<<<< HEAD
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cv_package
)
_generate_msg_nodejs(cv_package
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/kamera.msg"
=======
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cv_package
)
_generate_msg_nodejs(cv_package
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/kamera.msg"
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cv_package
)
_generate_msg_nodejs(cv_package
<<<<<<< HEAD
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/vision.msg"
=======
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/vision.msg"
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cv_package
)

### Generating Services

### Generating Module File
_generate_module_nodejs(cv_package
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cv_package
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cv_package_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cv_package_generate_messages cv_package_generate_messages_nodejs)

# add dependencies to all check dependencies targets
<<<<<<< HEAD
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg" NAME_WE)
add_dependencies(cv_package_generate_messages_nodejs _cv_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(cv_package_generate_messages_nodejs _cv_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/kamera.msg" NAME_WE)
add_dependencies(cv_package_generate_messages_nodejs _cv_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/vision.msg" NAME_WE)
=======
get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg" NAME_WE)
add_dependencies(cv_package_generate_messages_nodejs _cv_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(cv_package_generate_messages_nodejs _cv_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/kamera.msg" NAME_WE)
add_dependencies(cv_package_generate_messages_nodejs _cv_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/vision.msg" NAME_WE)
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
add_dependencies(cv_package_generate_messages_nodejs _cv_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cv_package_gennodejs)
add_dependencies(cv_package_gennodejs cv_package_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cv_package_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(cv_package
<<<<<<< HEAD
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg"
=======
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg"
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cv_package
)
_generate_msg_py(cv_package
<<<<<<< HEAD
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cv_package
)
_generate_msg_py(cv_package
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/kamera.msg"
=======
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cv_package
)
_generate_msg_py(cv_package
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/kamera.msg"
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cv_package
)
_generate_msg_py(cv_package
<<<<<<< HEAD
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/vision.msg"
=======
  "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/vision.msg"
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cv_package
)

### Generating Services

### Generating Module File
_generate_module_py(cv_package
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cv_package
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cv_package_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cv_package_generate_messages cv_package_generate_messages_py)

# add dependencies to all check dependencies targets
<<<<<<< HEAD
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg" NAME_WE)
add_dependencies(cv_package_generate_messages_py _cv_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(cv_package_generate_messages_py _cv_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/kamera.msg" NAME_WE)
add_dependencies(cv_package_generate_messages_py _cv_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/vision.msg" NAME_WE)
=======
get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBox.msg" NAME_WE)
add_dependencies(cv_package_generate_messages_py _cv_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(cv_package_generate_messages_py _cv_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/kamera.msg" NAME_WE)
add_dependencies(cv_package_generate_messages_py _cv_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/src/cv_package/msg/vision.msg" NAME_WE)
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
add_dependencies(cv_package_generate_messages_py _cv_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cv_package_genpy)
add_dependencies(cv_package_genpy cv_package_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cv_package_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cv_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cv_package
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(cv_package_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cv_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cv_package
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(cv_package_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cv_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cv_package
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(cv_package_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cv_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cv_package
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(cv_package_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cv_package)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cv_package\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cv_package
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(cv_package_generate_messages_py std_msgs_generate_messages_py)
endif()
