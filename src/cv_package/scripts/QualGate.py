import numpy as np
import cv2

GRID_COLOR = (255,255,255) #White (BGR Values)
GRID_THICKNESS = 1 

cap = cv2.VideoCapture(0)

while True:
    ret,frame = cap.read()
    width = int(cap.get(3))
    height = int(cap.get(4))

    hsv = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)

    Main_Frame = cv2.line(frame,(0,0),(0,0),GRID_COLOR,1)
    
                                              #Start   #End
    first_vertical_line = cv2.line(Main_Frame,(213,0),(213,480),GRID_COLOR,GRID_THICKNESS)
    second_vertical_line = cv2.line(Main_Frame,(426,0),(426,480),GRID_COLOR,GRID_THICKNESS)

    first_horizontal_line = cv2.line(Main_Frame,(0,160),(640,160),GRID_COLOR,GRID_THICKNESS)
    second_horizontal_line = cv2.line(Main_Frame,(0,320),(640,320),GRID_COLOR,GRID_THICKNESS)

    cv2.imshow('Main_Frame',Main_Frame)

    if cv2.waitKey(1) == ord('q'):
        break

cap.release()
cv2.destroyAllWindows()