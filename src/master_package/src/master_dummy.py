#!/usr/bin/env python3
import rospy
import random
from time import localtime, strftime

#import message
from master_package.msg import master_stm32
from master_package.msg import master_ros

#value random
global movement
movement = "M"
heading = 0
depth = 50
    
#bagian subscribing
def movement_node(master_receive):
    global movement
    print("pergerakan auv", rospy.get_rostime())
    print(master_receive.ros_movement)
    movement = master_receive.ros_movement

#pengiriman 
def master():
    global movement
    rospy.init_node('master_node')
    pub = rospy.Publisher('master_pub',master_stm32 , queue_size= 1)
    rate = rospy.Rate(10) #banyaknya pesan yang dikirim persekon #tadinya 200
    print("master node sudah ngepublish")
    while not rospy.is_shutdown():

        kirim = master_stm32()  
        kirim.stm32_movement =  movement
        kirim.stm32_heading = heading
        kirim.stm32_depth = depth
        pub.publish(kirim)

        #pengiriman

        #subscribing
        rospy.Subscriber('movement_pub',master_ros,movement_node , queue_size=1)
        rate.sleep()

#executor
if __name__ == '__main__':
    try:
        master()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass
#executor         