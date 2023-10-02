#!/usr/bin/env python3
import rospy

#import message
from cv_package.msg import kamera
from cv_package.msg import vision

#value kamera
global jarak
object_label = ""
jarak = 0
class vision_class():
    def __init__(self):
        #subscribtion starts here
        self.sub = rospy.Subscriber('kamera_pub' , kamera , self.kamera)

    def kamera(self,msg):
        global jarak
        object_label = msg.object_label
        xmin = msg.xmin_cv
        xmax = msg.xmax_cv
        ymin = msg.ymin_cv
        ymax = msg.ymax_cv
        xcenter = msg.xcenter_cv
        width = msg.width
        height = msg.height

        if object_label == "Qualification_Gate" or object_label == "Main_Gate":
            if width > 250 and width < 290:
                jarak = 5

            if width > 290 and width < 375:
                jarak = 4
            
            if width > 390 and width < 450:
                jarak = 3
            
            if width > 450:
                jarak = 2


      
        #pengiriman
        pub = rospy.Publisher('vision_pub',vision ,queue_size=10)
        rate = rospy.Rate(10)
        print("vision node have been published")
        kirim = vision()
        kirim.jarak_objek = jarak
        pub.publish(kirim)
        rate.sleep()
            



if __name__ == '__main__':
    try:
        rospy.init_node('vision_node')
        vision_class()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass