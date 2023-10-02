#!/usr/bin/env python3
import rospy
import serial
import random

#import message
from master_package.msg import master_stm32
from positioning_package.msg import positioning

#value positioning
global starting_x , starting_z , posisi_z, posisi_x , posisi_x_increase , posisi_z_increase , posisi_x_decrease , posisi_z_decrease  , A , B , C , D
starting_x = 1330
starting_z = 0

posisi_z = 0 
posisi_x = 0

posisi_x_increase = 0
posisi_x_decrease = 0
posisi_z_increase = 0
posisi_z_decrease = 0

A = 0
B = 0
C = 0
D = 0

class positioning_class():
    def __init__(self):
        #subscribtion starts here
        self.sub = rospy.Subscriber('master_pub' , master_stm32 , self.master , queue_size= 1)

    def master(self,msg):
        global starting_x , starting_z , posisi_z, posisi_x , posisi_x_increase , posisi_z_increase , posisi_x_decrease , posisi_z_decrease , rate_data , A , B , C , D

        #algoritma positioning starts here
        #satuan cm
        movement = msg.stm32_movement
        heading = msg.stm32_heading

        #algoritma positioning
        # print("Membaca gerakan dari STM32:", movement)
        print(movement)
        if movement !="Z":
            #maju
            if movement == "A":
                A = A + 0.01
                posisi_z_increase = 50 * A
                print(A)
            
            elif movement == "B":
                B = B + 0.01
                posisi_z_decrease = 38 * B
            
            elif movement == "C":
                C = C + 0.01
                posisi_x_increase = 18 * C
            
            elif movement == "D":
                D = D + 0.01
                posisi_x_decrease = 23 * D
            
            elif movement == "M":
                posisi_x_increase = posisi_x_increase + 0
                posisi_z_decrease = posisi_z_decrease + 0
                posisi_x_decrease = posisi_x_decrease + 0
                posisi_z_increase = posisi_z_increase + 0
            
        posisi_z = round((starting_z + posisi_z_increase - posisi_z_decrease),2)
        posisi_x = round((starting_x + posisi_x_increase - posisi_x_decrease),2)

        #algoritma positioning ends here

        print("=====================================")
        # print(movement)
        # print(posisi_z_increase)
        # print("x:",round(posisi_x,2))
        # print("z:",round(posisi_z,2))

        #pengiriman
        pub = rospy.Publisher('positioning_pub',positioning ,queue_size=10)
        rate = rospy.Rate(100)
        print("[Positioning node have been published]")
        kirim = positioning()
        kirim.posisi_x = posisi_x
        kirim.posisi_z = posisi_z
        pub.publish(kirim)
        rate.sleep()
            

if __name__ == '__main__':
    try:
        rospy.init_node('positioning_node')
        positioning_class()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass