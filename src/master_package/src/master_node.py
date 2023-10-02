#!/usr/bin/env python3

from shutil import move
import rospy
import serial

#import message
from master_package.msg import master_stm32
from master_package.msg import master_ros

#value random
# global movement
movement = "Z"
servo_kamera = 1

# heading = 90
depth = 100
repetitif = 0
gabungan = (movement + str(servo_kamera))


#serial reading
ser = serial.Serial('/dev/ttyACM0', 9600)
ser.write(gabungan.encode(encoding="ascii"))


#bagian subscribing
def movement_node(master_receive):
    global movement , repetitif
    # rate_write = rospy.Rate(5000) #default 1000
    print("[Master Node]")
    # print("Mengirim Gerakan ke STM:", master_receive.ros_movement)
    movement = master_receive.ros_movement
    servo_kamera = master_receive.ros_servo_kamera

    gabungan = (movement + str(servo_kamera))
    print(gabungan)
    ser.write(gabungan.encode(encoding="ascii"))

#pengiriman 
def master():
    rospy.init_node('master_node')
    pub = rospy.Publisher('master_pub',master_stm32 , queue_size=1)
    rospy.Subscriber('movement_pub',master_ros,movement_node)

    rate = rospy.Rate(1000) #banyaknya pesan yang dikirim persekon
    print("[Master node sudah ngepublish]")
    while not rospy.is_shutdown():

        #========================================================================

        # print("hey")
        dataTerima = ser.read(10)
        # print("dataTerima")
        # print(dataTerima)
        # print(type(dataTerima))
        # print("===============")
        dum0,dum1,dum2,dum3,dum4,dum5,dum6,dum7,dum8,dum9 = dataTerima
        # print("dum0")
        # print(dum0)
        # print(type(dum0))
        # print(chr(dum0))
        # print("===============")
        # print("dum1")
        # print(dum1)
        # print(type(dum1))
        # print(chr(dum1))
        # print("===============")
        # print("dum2")
        # print(dum2)
        # print(type(dum2))
        # print(chr(dum2))
        # print("===============")
        # print("dum3")
        # print(dum3)
        # print(type(dum3))
        # print(chr(dum3))
        # print("===============")
        # print("dum4")
        # print(dum4)
        # print(type(dum4))
        # print(chr(dum4))
        # print("===============")
        # print("dum5")
        # print(dum5)
        # print(type(dum5))
        # print(chr(dum5))
        # print("===============")
        # print("dum6")
        # print(dum6)
        # print(type(dum6))
        # print(chr(dum6))
        # print("===============")
        # print("dum7")
        # print(dum7)
        # print(type(dum7))
        # print(chr(dum7))
        # print("===============")
        # print("dum8")
        # print(dum8)
        # print(type(dum8))
        # print(chr(dum8))
        # print("===============")
        # print("dum9")
        # print(dum9)
        # print(type(dum9))
        # print(chr(dum9))
        # print("===============")
        
        # Membaca Heading
        # ===============
            #satuan
        if dum1 == 44:
            heading = int(str(chr(dum0)))
            # print("koma di indeks 1")
            # print(heading)
            # print(type(heading))
            # print("===============")

            # puluhan
        elif dum2 == 44:
            heading = int(str(chr(dum0))+str(chr(dum1)))
            # print("koma di indeks 2")
            # print(heading)
            # print("===============") 
           
            # ratusan
        elif dum3 == 44:
            heading = int(str(chr(dum0))+str(chr(dum1)+str(chr(dum2))))
            # print("koma di indeks 3")
            # print(heading)
            # print(type(heading))
            # print("===============")
             
        elif dum4 == 44:
            heading = int(str(chr(dum0))+str(chr(dum1)+str(chr(dum2))+str(chr(dum3))))
            # print("koma di indeks 4")
            # print(heading)

        # Membaca Depth
        # ==============
        # Depan Satuan 
        if dum1 == 44:
                # belakang satuan
            if dum3 == 44:
                depth = int(str(chr(dum2)))
            # belakang puluhan
            elif dum4 == 44:
                depth = int(str(chr(dum2))+str(chr(dum3))) 
            # belakang ratusan    
            elif dum5 == 44:
                 depth = int(str(chr(dum2))+str(chr(dum3))+str(chr(dum4)))  
        # Depan Puluhan
        if dum2 == 44: 
            # belakang satuan
            if dum4 == 44:
                depth = int(str(chr(dum3)))
            # belakang puluhan
            elif dum5 == 44:
                depth = int(str(chr(dum3))+str(chr(dum4))) 
            # belakang ratusan    
            elif dum6 == 44:
                 depth = int(str(chr(dum3))+str(chr(dum4))+str(chr(dum5)))
        # Depan Ratusan
        if dum3 == 44: 
            # belakang satuan
            if dum5 == 44:
                depth = int(str(chr(dum4)))
            # belakang puluhan
            elif dum6 == 44:
                depth = int(str(chr(dum4))+str(chr(dum5))) 
            # belakang ratusan    
            elif dum7 == 44:
                 depth = int(str(chr(dum4))+str(chr(dum5))+str(chr(dum6)))    
        
        # Membaca Movement
        # ======================================
        # if (dum3 == 44):
        #     movement = str(chr(dum4))
        # elif(dum4 == 44):
        #     movement = str(chr(dum5))
        # elif(dum5 == 44):
        #     movement = str(chr(dum6))
        # elif(dum6 == 44):
        #     movement = str(chr(dum7))
        # elif(dum7 == 44):
        #     movement = str(chr(dum8)) 

        # if (movement == '@'):
        #     movement = "Belum Bergerak"

        #========================================================================
        # Pengiriman

        kirim = master_stm32()
        kirim.stm32_movement = movement
        kirim.stm32_heading = heading
        kirim.stm32_depth = depth
        pub.publish(kirim)

        #Subscribing
        rate.sleep()

#executor
if __name__ == '__main__':
    try:
        master()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass    
