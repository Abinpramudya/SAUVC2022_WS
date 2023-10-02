# Workspace Main Stage ROS SAUVC 2022 Banyubramanta ITS
Repository Banyubramanta ITS for the Singapore Autonomous Underwater Vehicle Challange (SAUVC) 2022 competition with the implementation of the Robot Operating System (ROS).

## Notes
Created and developed using ROS Noetic from June 2022 to September 2022 with Ubuntu 20.04 LTS operating system. This workspace was developed by Crew 3, 4, and 5 consisting of:
1. Muhammad Firman Riyadi  
2. Husnan  
3. Muhammad Ghiffari Astaudi  
4. Muhammad Azka Bintang Pramudya  
5. Fadhil Rasyidin Parinduri  
6. Alfito Bramoda
7. Rere Arga Dewanata

## Table of Contents  
- [Robot Specifications](#robot-specifications)  
- [Requirements](#requirements)  
- [List of Package](#list-of-packages-in-ros)
- [Explanation of Each Package](#explanation-of-each-package)  
- [How to Label with Roboflow](#how-to-label-with-roboflow)  
- [STM32 Connection Instruction with ROS](#stm32-connection-instructions-with-ROS)       
- [Connection Instruction between Mini PC and Laptop](#connection-instruction-between-mini-pc-with-laptop)  
- [Procedure for Recording Log Data on ROS](#procedure-for-recording-log-data-in-ros) 
- [Obstacles and Solutions](#obstacles-and-solutions)    
- [Obstacles and Solutions in Singapore](#obstacles-and-solutions-in-singapore)  
- [ROS Teaching Recordings](#ros-teaching-tecordings) 

  
## Robot Specifications
The robot we developed for this competition is called Narudaka. Derived from the Javanese language consisting of the words "Nara = King" and "Udaka = water" when combined merge into "NARUDAKA" meaning the king of the waters. Narudaka has several core components, namely:
1. Mini PC: Intel NUC11PAHi7 (Intel Core i7 Gen 11)
2. Microcontroller: STM32F407G
3. Camera: Rexus Daxa Trusight 
4. Battery: Li-Po 4 Cell 5000 MAH 2 pieces (for other than mini pc) & Li-Ion 5 cell 3000 MAH 1 piece (for mini pc)  
5. Depth Sensor: MS5837 Blue Robotics  
6. Gyro: GY-25  


## Requirements
1. ROS installed (see [here](https://wiki.ros.org/Installation/Ubuntu))
2. Install all python libraries required by YoloV5
   
   `cd src/cv_package/scripts/yolov5`  
   `pip install -r requirements.txt`  
   NB: Make sure the connection is stable  
3. Delete the existing build   
   Make sure it is in the `ROS_SAUVC_2022_Main_WS` directory    
   Delete existing build `catkin clean`  
4. Perform catkin build  
   `catkin build`  

  
## list of package in ROS  
[Explanation Chart](https://drive.google.com/file/d/1_YcntQp2rwqfWeKyqn3RxTwLYM25xT1f/view)  

| Package Name | Function |
| ----------- | ----------- |
| master_package | Provides input data and output data of STM32 |
| cv_package | Computer Vision
| mission_package | Defines mission conditions |
| positioning_package | Mapping Robot Location |
| movement_package | Robot Movement
| servo_package | Front camera servo movement


## Explanation of Each Package
The following is an explanation of each package used (the order of program execution must be in order):  

### A.master_package
1. Description:   
   Package used to provide STM32 input and output data.  
2. Message:   
   master_ros.msg  
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;string ros_movement  
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int16 ros_servo_camera  
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int64 servo_camera  
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int64 servo_gripper  
   master_stm32.msg    
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;stm32_movement string  
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int64 stm32_heading  
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int64 stm32_depth  
3. Explanation:   
   Send and receive data using PySerial. In using PySerial, it is required to encode ASCII to get the correct value.  
4. Usage:  
   Make sure it is in the `ROS_SAUVC_2022_Main_WS` directory.  
   Run the command `source devel/setup
   
### B.cv_package
1. Description:  
   Package used for computer vision to recognize obstacle objects.  
2. Message:   
   BoundingBox.msg    
      - string object_label -> detected object label  
      - float64 probability -> probability of object belief predicted by the model  
      - int64 xmin_cv -> xmin of the bounding box    
      - int64 ymin_cv -> ymin of the bounding box  
      - int64 xmax_cv -> xmax on bounding box    
      - int64 ymax_cv -> ymax on the bounding box    
      - float64 xcenter_cv -> (xmin_cv + xmax_cv) / 2 to find out the center point of the bounding box on the x axis  
      - float64 ycenter_cv -> (ymin_cv + ymax_cv) / 2 to find the center point of the bounding box on the y-axis    
      - int64 width -> Length of the bounding box (xmax_cv - xmin_cv)  
      - int64 height -> Width of the bounding box (ymax_cv - ymin_cv)   
3. Explanation:    
   Using YoloV5 to detect objects. The dataset was captured manually using a camera placed on the robot. The dataset which was originally a video was broken down per frame into several images using python. After being broken down into several images, labeling is done using the roboflow website.   
   The following is the performance table data of the model that has been made [this graph table](https://docs.google.com/spreadsheets/d/1157I22orbFMWEaR6L0gVjATIULxJ4jFFhGWhwDqeAGY/edit#gid=0)  
   Our robot does not really need a high FPS because the movement of our robot is quite slow because it is affected by underwater pressure and current (10-15 FPS is enough).
4. Usage:   
   Make sure you are in the `ROS_SAUVC_2022_Main_WS/src/cv_package/scripts/yolov5` directory.  
   Run the command `python3 detect.py`   
   
### C.positioning_package     
1. Description:  
   Package used to determine the position of the robot when in the pool.  
2. Message:
   positioning.msg  
     int16 position_x
     int16 position_z  
3. Explanation:  
   Uses a homemade odometry algorithm to determine the current position of the robot.    
4. Usage:    
   Make sure it is in the `ROS_SAUVC_2022_Main_WS` directory.  
   Run the command `source devel/setup.bash`  
   Run the command `rosrun positioning_package positioning.py`   

### D. mission_package
1. Description:  
   Package used to determine the state of the mission.  
2. Message:  
   mission.msg
      int64 mission
      int64 submission
3. Explanation:  
   Uses the results from odometry to determine the state of the mission.   
4. Usage:  
   Make sure it is in the `ROS_SAUVC_2022_Main_WS` directory.  
   Run the `source devel/setup.bash` command  
   Run the command `rosrun mission_package mission_node.py`  
   
### E.movement_package
1. Description:  
   Package used for robot movement using a one-character letter code.
2. Explanation:
   Case sensitive so make sure to use CAPITAL LETTERS for the heading: (-) negative is to the right | (+) positive is to the left
   | Movement Name | Letter
   | ----------- | ----------- |
   | forward |A |		 
   | backward |B |
   | right |C |
   | left |D |
   | pivot45R |E |
   | pivot90R |F |
   | pivot45L |G |
   | pivot90L |H |
   | depth40 |I |
   | depth100 |J |
   | depth150 |K |
   | depth180 |L |
   | stop |M |
   | surfacing |N |
   | scanning |S |
   !!! WHEN MOVING THE MOVEMENT MUST STOP FIRST SO THAT THE THRUSTER IS DURABLE !!! 
   
   There is a movement to make a square as requested by our coach. To run the program `rosrun movement box_movement.py`
   
3. Usage:  
   Make sure it is in the `ROS_SAUVC_2022_Main_WS` directory.
   Run the command `source devel/setup.bash`  
   Run the command `rosrun movement_package movement_node.py` -> Autonomous
   Run command `rosrun movement_package keyboard.py` -> Keyboard
   
   
## How to Label with Roboflow  
- Create a roboflow account first  
- Roboflow can do labeling in collaboration by inviting email members  
- Upload the dataset that has been taken to roboflow (prioritize unique names :) so that it is not easily found by the opposing team), the upload limit is 10 thousand images    
- Create a project with the Bounding Box project  
- Determine the name and index of the dataset first  
- do labeling by dragging the image to be trained  
- Set data train 70%, validation 15%, test 15%  
- If you want to change or add, you can take people's data first and then use the preprocessing feature with modified class, use the order and adjust the index in the txt.  
- After being labeled to add a dataset, you can use augmentation and check the dataset first.  
- Augmentation that has been used (Crop: 0% Minimum Zoom, 10% Maximum Zoom; Brightness: Between -5% and +5%; Blur: Up to 1px)  
- Also check related to dataset health or dataset health, namely the balance of the dataset, for example 1000, try to be 900 or 1000, don't let the difference be too far. 

## STM32 Connection Instructions with ROS  
1. Make sure you have the STM32CubeIDE application  
2. Create a workspace if it does not already exist
3. Do a git clone on [Link-this](https://github.com/BanyubramantaITS/STM32_SAUVC2022_F407) by doing this  
   `git clone https://github.com/BanyubramantaITS/STM32_SAUVC2022_F407.git`  
4. Open the STM32CubeIDE application  
5. Debug by pressing the bug button on the top toolbar 5.
6. Turn on live expression
7. Press the run button  
NB: For more information, please refer to [this link](https://github.com/BanyubramantaITS/STM32_SAUVC2022_F407)

## Connection Instructions Between Mini PC and Laptop  
Set the IP of Mini PC and laptop based on [this] video link (https://www.youtube.com/watch?v=ck6wtrkdjzs&ab_channel=DemonKiller).   
If you are connected, you can wake on lan and remote desktop.

Use of Wake On Lan:    
a. Download all files at [this] link (https://drive.google.com/drive/folders/1PzbhCUMmDWD-AJTcCxMhVdLwtvLPjTpf?usp=sharing)    
b. Open the WakeMeOnLan.exe application  
c. Perform IP scanning with the green play button.  
d. Select the IP that matches the one that has been previously set.  
e. Right-click on the IP and click "Wake Up Selected Computer".
f. The Mini PC is successfully powered on if there is a blue LED indicator.  
f. Wait for 15 - 20 seconds to give the mini pc time to boot. 
g. After that, you can use the remote desktop.  
   
Remote Desktop:  
a. Boot with Windows 10 or Windows 11.  
b. Fill in the computer field with the IP that was previously set.  
c. If you want to run lighter, change the settings in the display column in the colors column to High Color (15 bits).  
d. Click the connect button  
e. Enter the Username and Password of the mini pc with all lowercase letters.  

How to disable Mini PC: 
1. Terminate all terminal tabs by pressing ctrl+c (In the order of movement->positioning->vision->master->roscore).   
2. Stop the STM32 operation by pressing the terminate button (red square).  
3. Exit all previously opened applications.  
4. Shutdown in the usual way.   

## Procedure for Recording Log Data in ROS
1. Make sure you have run all commands in all packages above
2. Open a new terminal tab `rosbag record -a`.  
3. If so, you can do `ctrl+c` on the record tab.
4. The file will be saved in `.bag` extension.
5. This file can be played by `rosbag play [filename .bag]`
6. Not the `rosnode list` and `rostopic list` functions.  
   
## Obstacles and Solutions  
1. Constraints:  
   ROS and YOLOv5 would not publish the correct values when used by different nodes.  
   Solution:  
   Use `rospy.Rate(100)` in the `detect.py` file which was originally only 10.  
   
2. Constraints:  
   The `Pip install -r requirements.txt` fails.  
   Solution:  
   Repeat the process with a more stable connection.  
   
3. Obstacle:  
   Python cannot read the Serial library module  
   Solution:  
   Uninstall the library and repeat with the command `sudo python -m pip install pyserial`. ([source](https://stackoverflow.com/questions/11403932/python-attributeerror-module-object-has-no-attribute-serial)) 
   
4. Constraints:  
   The python library "Keyboard" must run when sudo. When running the command `sudo python3 ....` instead rospy is not detected. 
   Solution:  
   Using python library "getch"  
   
5. Constraints:  
   This repo once lost all its commit history.  
   Solution:  
   Never use `git commit -f` as it will replace the history of this repo into a local repo.
   
6. Obstacle:    
   Variable or message is not read or published.    
   Solution:    
   Make sure all messages or variables are in order and have been published or subscribed. For obstacle number 6, you can try it first before going to the trial site for time efficiency.  
   
7. Constraints:    
   There was a delay between programs due to subscribing multiple times.  
   Solution:    
   Remove the subscriber declaration from while      
   
8. Obstacle:  
   The camera is too high in exposure.  
   Solution:  
   Using an ND Filter or lowering with obs.  
   
9. Obstacle:  
   `Catkin Build` cannot be used because the command was not found.  
   Solution:  
   Run the command `sudo apt-get install python3-catkin-tools` to install catkin-tools.  
   
## Obstacles and Solutions in Singapore     
1. Obstacles:  
   Depth sensor reading error when 3 digits
   Solution:
   Trying all the possibilities. This can happen because so far the depth can only read 2 digits while in the puker.   
   
2. Obstacle:  
   Changing the variable value when next to the pool during the race is difficult.  
   Solution:  
   Prepare more before going to the main stage or make several programs with different variables. Creating an open loop program
   program as a backup.   
   
3. Obstacle:    
   The camera servo broke so that it could not take the dataset.      
   Solution:   
   Preparing spare parts. However, we were still able to take the dataset from the committee for 1 minute.    

4. Obstacle:  
   Lack of problem-solving links    
   Solution:     
   Adding a link that can solve the problem in the readme.     

5. Obstacle:    
   Invalid detection results because the props from the rulebook are different from real-life.      
   Solution:      
   Take a new dataset on the day of running test.
   
## ROS Teaching Recordings
1. ROS: https://drive.google.com/drive/folders/1meryANbCTKu3QCdOLsgfH-7Zj-HfMsAd?usp=sharing
2. Vision: https://drive.google.com/file/d/1rsrxlHd_GfA7oRx8_ec4-OzL_cBGpoL8/view?usp=sharing


##  Wise man said....

Being a pioneer is not easy, but it will be a strong foothold for the next generation 🏆

By: HIM
