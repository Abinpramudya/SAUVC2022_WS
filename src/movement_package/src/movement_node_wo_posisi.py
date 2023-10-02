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
pub = rospy.Publisher('movement_pub', master_ros,queue_size=10)
kirim = master_ros()
kirim.ros_movement = gerakan
flag = 0 # Variabel pembantu agar gerakan scanning tepat terlaksana satu kali


class movement_class():
    def __init__(self):
        #subscribtion starts here
        self.sub = rospy.Subscriber('master_pub' , master_stm32 , self.master)
        self.sub = rospy.Subscriber('mission_pub', misi , self.mission)
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

    def mission(self,msg):
        global mission , submission
        mission = msg.misi 
        submission = msg.submisi
   
    def kamera(self,msg):
        global xcenter,flag , ycenter, labelName , gerakan , labelName
        xcenter = msg.xcenter_cv
        ycenter = msg.ycenter_cv
        labelName = msg.object_label
        probability = msg.probability

        #algoritma movement tanpa vision ======================================
        if labelName == "Null" or probability < 0.6:
            print(flag)
            print("Ini Null")
        #     #misi 1 ===============================================
        #     if mission == 1 and submission == 1 and depth > 30:
        #         gerakan = "A"
        #         print("maju misi 1 ")

        #     if posisi_z > 800 and posisi_z < 950  and depth > 40 and flag == 0 :
        #         gerakan = "S" #scanning
        #         flag = 1
        #         print("scanning misi 1 ")
        #     #misi 1 ===============================================
             
        #     #misi 2 ================================================
        #     if mission == 2 and submission == 1 and depth > 30 :
        #         gerakan = "A"
        #         print("maju misi 2")
            
        #     if mission == 2 and submission == 2:
        #         gerakan = "D"
        #         print("kiri misi 2 ")
        #     #misi 2 ================================================
            
        #     kirim.ros_movement = gerakan
        #     pub.publish(kirim)
        #algoritma movement tanpa vision ======================================

        #algoritma movement dengan vision =====================================
        else:     
            print("Terdeteksi" , labelName)
            if (labelName == "Qualification_Gate" or labelName == "Main_Gate") :
                xcenter = msg.xcenter_cv
                ycenter = msg.ycenter_cv
                labelName = msg.object_label
                print("Fungsi if gate")

                #centering ==============================
                if heading in range(-5, 5):
                # Objek di tengah
                    if xcenter in range(210,420):
                        gerakan = "A" #Maju
                        print("Gerakan",gerakan)

                    #Objek di kiri
                    elif xcenter < 210:
                        gerakan = "D" #Sway kiri
                        print("Gerakan",gerakan)

                    #Objek di kanan    
                    elif xcenter > 420:
                        gerakan = "C" #Sway Kanan
                        print("Gerakan",gerakan)
                #centering ==============================
                
                #mencari ================================
                if gerakan == "S":
                    if heading < -5:
                        gerakan = "C"

                    if heading > 5:
                        gerakan = "D"
                #mencari ================================
                kirim.ros_movement = gerakan
                pub.publish(kirim)

            elif(labelName == "Red_Flare"):
                print("Fungsi if red flare")
                # Objek di tengah
                if xcenter in range(210,420) :
                    gerakan = "C" #sesuaiin arus kolam
                    print("Gerakan",gerakan)
                    kirim.ros_movement = gerakan
                    pub.publish(kirim)

                #Objek di kiri 
                elif xcenter < 210:
                    gerakan = "C" #Sway kanan
                    print("Gerakan",gerakan)
                    kirim.ros_movement = gerakan
                    pub.publish(kirim)

                #Objek di kanan    
                elif xcenter > 420:
                    gerakan = "D" #Sway Kiri
                    print("Gerakan",gerakan)
                    kirim.ros_movement = gerakan
                    pub.publish(kirim)

            elif(labelName == "Blue_Drum"):
                if xcenter in range (210,420) and submission == 2 and mission == 2:
                    gerakan = "A" #sesuaiin arus kolam
                    print("Gerakan",gerakan)
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