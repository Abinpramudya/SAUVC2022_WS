#!/usr/bin/env python3

import rospy
import keyboard
import getch
from master_package.msg import master_ros

def teleop():
    rospy.init_node('teleop_node')
    pub = rospy.Publisher('movement_pub', master_ros,queue_size= 10)
    rate = rospy.Rate(10)
    print("Reading from keyboard")
    print("===========================================")
    print("A=Maju, B=Mundur, C=Kanan, D=Kiri, E=Pivot45R, F=Pivot45L, J=Naik, K=Turun, L=Stop, X=SetDepth50, Y=SetDepth100")

    while not rospy.is_shutdown():

        isi = input()
        kirim = master_ros()
        kirim.ros_movement = isi.capitalize()
        pub.publish(kirim)
        rate.sleep()


if __name__ == '__main__':
    try:
        teleop()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass