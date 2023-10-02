#!/usr/bin/env python3
import rospy
import serial
import random
from time import localtime, strftime

#import message
from master_package.msg import master_stm32
from positioning_package.msg import positioning
from mission_package.msg import misi

#value positioning

global mission, heading
mission = 0
submission = 0

rate_data = 0

class mission_class():
    def __init__(self):
        #subscribtion starts here
        self.sub = rospy.Subscriber('master_pub' , master_stm32 , self.master)
        self.sub = rospy.Subscriber('positioning_pub', positioning , self.position)

    def master(self,msg):
        global heading
        heading = msg.stm32_heading
        print("Heading dari STM32:", heading)
        print("==================================")

    def position(self,msg):
        global heading, mission , submission
        posisi_x = msg.posisi_x
        posisi_z = msg.posisi_z

        #misi 1 ======================================================
        if posisi_z < 1300:
            mission = 1
            if posisi_z < 400 and posisi_z > -1:
                submission = 1
            elif posisi_z < 800 and posisi_z > 400:
                submission = 2
            elif posisi_z <1200 and posisi_z > 800:
                submission = 3

        #misi 2 ======================================================
        if posisi_z > 1300 and posisi_z < 2000:
            mission = 2
            submission = 1
            #sweeping kiri sampai ketemu 
            if posisi_x < 1330 and posisi_z > 1800:
                submission = 2
                

        #pengiriman
        pub = rospy.Publisher('mission_pub', misi ,queue_size=10)
        rate = rospy.Rate(10)
        print("[Mission node have been published]")
        kirim = misi()
        kirim.misi = mission
        kirim.submisi = submission
        pub.publish(kirim)
        rate.sleep()
            

if __name__ == '__main__':
    try:
        rospy.init_node('mission_node')
        mission_class()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass
