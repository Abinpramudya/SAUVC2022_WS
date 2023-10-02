#!/usr/bin/env python3
from pickle import TRUE
import rospy

from master_package.msg import master_ros
from master_package.msg import master_stm32
from positioning_package.msg import positioning
from cv_package.msg import kamera
from mission_package.msg import misi

rospy.init_node('movement_node')

#contekan : https://pastebin.com/3euxARfi
gerakan = "O"
percobaan = 1
pub = rospy.Publisher('movement_pub', master_ros,queue_size=10)#Default size 1
kirim = master_ros()
kirim.ros_movement = gerakan
servo_kamera = 0
servo_gripper = 0
flag = 0 # Variabel pembantu agar gerakan scanning tepat terlaksana satu kali


class movement_class():
    def __init__(self):
        #subscribtion starts here
        self.sub = rospy.Subscriber('master_pub' , master_stm32 , self.master)
        self.sub = rospy.Subscriber('kamera_pub',kamera , self.kamera , queue_size=1) #default size 1
        self.sub = rospy.Subscriber('positioning_pub' , positioning , self.positioning)
        
    def master(self,msg):
        global heading , depth , percobaan , gerakan , kirim , pub , movement
        heading = msg.stm32_heading
        depth = msg.stm32_depth
        movement = msg.stm32_movement
        #algoritma diving ========================================
        if depth < 35:
            gerakan = "I"
            #pengiriman ==========================================
            kirim.ros_movement = gerakan
            pub.publish(kirim)
            print("[dive ! dive ! dive !]")
            #pengiriman ==========================================
        #algoritma diving ========================================
        
        
    def positioning(self,msg):
        global posisi_x , posisi_z , gerakan , depth , mission , submission , kirim , pub , labelName
        posisi_x = msg.posisi_x
        posisi_z = msg.posisi_z

   
    def kamera(self,msg):
        global xcenter,flag , ycenter, labelName , gerakan , labelName ,servo_kamera
        xcenter = msg.xcenter_cv
        ycenter = msg.ycenter_cv
        labelName = msg.object_label

        #algoritma movement tanpa vision ======================================
        if posisi_z in range(0,700) or labelName == "Null":
            #misi 1 ===============================================
            if depth > 30:
                gerakan = "A"
                print("maju misi 1 ")
            #misi 1 ===============================================
            kirim.ros_movement = gerakan
            pub.publish(kirim)
        #algoritma movement tanpa vision ======================================

        #algoritma movement dengan vision =====================================
        if posisi_z in range(700,1200):     
            if (labelName == "Qualification_Gate" or labelName == "Main_Gate" and mission == 1) :
                xcenter = msg.xcenter_cv
                ycenter = msg.ycenter_cv
                labelName = msg.object_label
                print("Fungsi if gate")

                #centering ==============================
                if heading in range(-5, 5):
                # Objek di tengah
                    if xcenter in range(210,420):
                        gerakan = "A" #Maju
                        print("maju karena gate")

                    #Objek di kiri
                    elif xcenter < 210:
                        gerakan = "D" #Sway kiri
                        print("kanan karena gate")

                    #Objek di kanan    
                    elif xcenter > 420:
                        gerakan = "C" #Sway Kanan
                        print("kiri karena gate")
                #centering ==============================
        kirim.ros_movement = gerakan
        pub.publish(kirim)

        #algoritma movement dengan vision =====================================

    

if __name__ == '__main__':
    try:
        movement_class()
        rate = rospy.Rate(100) #default size 1
        rate.sleep()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass