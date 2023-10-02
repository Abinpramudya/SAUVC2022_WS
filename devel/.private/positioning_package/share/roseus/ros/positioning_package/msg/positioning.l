;; Auto-generated. Do not edit!


(when (boundp 'positioning_package::positioning)
  (if (not (find-package "POSITIONING_PACKAGE"))
    (make-package "POSITIONING_PACKAGE"))
  (shadow 'positioning (find-package "POSITIONING_PACKAGE")))
(unless (find-package "POSITIONING_PACKAGE::POSITIONING")
  (make-package "POSITIONING_PACKAGE::POSITIONING"))

(in-package "ROS")
;;//! \htmlinclude positioning.msg.html


(defclass positioning_package::positioning
  :super ros::object
  :slots (_posisi_x _posisi_z ))

(defmethod positioning_package::positioning
  (:init
   (&key
    ((:posisi_x __posisi_x) 0.0)
    ((:posisi_z __posisi_z) 0.0)
    )
   (send-super :init)
   (setq _posisi_x (float __posisi_x))
   (setq _posisi_z (float __posisi_z))
   self)
  (:posisi_x
   (&optional __posisi_x)
   (if __posisi_x (setq _posisi_x __posisi_x)) _posisi_x)
  (:posisi_z
   (&optional __posisi_z)
   (if __posisi_z (setq _posisi_z __posisi_z)) _posisi_z)
  (:serialization-length
   ()
   (+
    ;; float64 _posisi_x
    8
    ;; float64 _posisi_z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _posisi_x
       (sys::poke _posisi_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _posisi_z
       (sys::poke _posisi_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _posisi_x
     (setq _posisi_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _posisi_z
     (setq _posisi_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get positioning_package::positioning :md5sum-) "f9577dd741c8df9c418dcd1145425041")
(setf (get positioning_package::positioning :datatype-) "positioning_package/positioning")
(setf (get positioning_package::positioning :definition-)
      "float64 posisi_x
float64 posisi_z
")



(provide :positioning_package/positioning "f9577dd741c8df9c418dcd1145425041")


