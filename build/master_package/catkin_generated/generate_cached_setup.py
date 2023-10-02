# -*- coding: utf-8 -*-
from __future__ import print_function

import os
import stat
import sys

# find the import for catkin's python package - either from source space or from an installed underlay
if os.path.exists(os.path.join('/opt/ros/noetic/share/catkin/cmake', 'catkinConfig.cmake.in')):
    sys.path.insert(0, os.path.join('/opt/ros/noetic/share/catkin/cmake', '..', 'python'))
try:
    from catkin.environment_cache import generate_environment_script
except ImportError:
    # search for catkin package in all workspaces and prepend to path
<<<<<<< HEAD
    for workspace in '/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/devel;/opt/ros/noetic'.split(';'):
=======
    for workspace in '/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/devel;/opt/ros/noetic'.split(';'):
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
        python_path = os.path.join(workspace, 'lib/python3/dist-packages')
        if os.path.isdir(os.path.join(python_path, 'catkin')):
            sys.path.insert(0, python_path)
            break
    from catkin.environment_cache import generate_environment_script

<<<<<<< HEAD
code = generate_environment_script('/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/devel/.private/master_package/env.sh')

output_filename = '/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/ROS_SAUVC_2022_Main_WS/build/master_package/catkin_generated/setup_cached.sh'
=======
code = generate_environment_script('/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/devel/.private/master_package/env.sh')

output_filename = '/home/abin/kumpulan_workspace/git/ROS_SAUVC_2022_Main_WS/build/master_package/catkin_generated/setup_cached.sh'
>>>>>>> fbdd64b166b645d189148d2a559d8287f156108d
with open(output_filename, 'w') as f:
    # print('Generate script for cached setup "%s"' % output_filename)
    f.write('\n'.join(code))

mode = os.stat(output_filename).st_mode
os.chmod(output_filename, mode | stat.S_IXUSR)
