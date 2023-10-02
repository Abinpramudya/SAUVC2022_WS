;; Auto-generated. Do not edit!


(when (boundp 'master_package::master_ros)
  (if (not (find-package "MASTER_PACKAGE"))
    (make-package "MASTER_PACKAGE"))
  (shadow 'master_ros (find-package "MASTER_PACKAGE")))
(unless (find-package "MASTER_PACKAGE::MASTER_ROS")
  (make-package "MASTER_PACKAGE::MASTER_ROS"))

(in-package "ROS")
;;//! \htmlinclude master_ros.msg.html


(defclass master_package::master_ros
  :super ros::object
  :slots (_ros_movement _ros_servo_kamera _ros_speed_maju _ros_speed_mundur _ros_speed_kiri _ros_speed_kanan _servo_kamera _ros_servo_gripper ))

(defmethod master_package::master_ros
  (:init
   (&key
    ((:ros_movement __ros_movement) "")
    ((:ros_servo_kamera __ros_servo_kamera) 0)
    ((:ros_speed_maju __ros_speed_maju) 0)
    ((:ros_speed_mundur __ros_speed_mundur) 0)
    ((:ros_speed_kiri __ros_speed_kiri) 0)
    ((:ros_speed_kanan __ros_speed_kanan) 0)
    ((:servo_kamera __servo_kamera) 0)
    ((:ros_servo_gripper __ros_servo_gripper) 0)
    )
   (send-super :init)
   (setq _ros_movement (string __ros_movement))
   (setq _ros_servo_kamera (round __ros_servo_kamera))
   (setq _ros_speed_maju (round __ros_speed_maju))
   (setq _ros_speed_mundur (round __ros_speed_mundur))
   (setq _ros_speed_kiri (round __ros_speed_kiri))
   (setq _ros_speed_kanan (round __ros_speed_kanan))
   (setq _servo_kamera (round __servo_kamera))
   (setq _ros_servo_gripper (round __ros_servo_gripper))
   self)
  (:ros_movement
   (&optional __ros_movement)
   (if __ros_movement (setq _ros_movement __ros_movement)) _ros_movement)
  (:ros_servo_kamera
   (&optional __ros_servo_kamera)
   (if __ros_servo_kamera (setq _ros_servo_kamera __ros_servo_kamera)) _ros_servo_kamera)
  (:ros_speed_maju
   (&optional __ros_speed_maju)
   (if __ros_speed_maju (setq _ros_speed_maju __ros_speed_maju)) _ros_speed_maju)
  (:ros_speed_mundur
   (&optional __ros_speed_mundur)
   (if __ros_speed_mundur (setq _ros_speed_mundur __ros_speed_mundur)) _ros_speed_mundur)
  (:ros_speed_kiri
   (&optional __ros_speed_kiri)
   (if __ros_speed_kiri (setq _ros_speed_kiri __ros_speed_kiri)) _ros_speed_kiri)
  (:ros_speed_kanan
   (&optional __ros_speed_kanan)
   (if __ros_speed_kanan (setq _ros_speed_kanan __ros_speed_kanan)) _ros_speed_kanan)
  (:servo_kamera
   (&optional __servo_kamera)
   (if __servo_kamera (setq _servo_kamera __servo_kamera)) _servo_kamera)
  (:ros_servo_gripper
   (&optional __ros_servo_gripper)
   (if __ros_servo_gripper (setq _ros_servo_gripper __ros_servo_gripper)) _ros_servo_gripper)
  (:serialization-length
   ()
   (+
    ;; string _ros_movement
    4 (length _ros_movement)
    ;; int16 _ros_servo_kamera
    2
    ;; int64 _ros_speed_maju
    8
    ;; int64 _ros_speed_mundur
    8
    ;; int64 _ros_speed_kiri
    8
    ;; int64 _ros_speed_kanan
    8
    ;; int64 _servo_kamera
    8
    ;; int64 _ros_servo_gripper
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _ros_movement
       (write-long (length _ros_movement) s) (princ _ros_movement s)
     ;; int16 _ros_servo_kamera
       (write-word _ros_servo_kamera s)
     ;; int64 _ros_speed_maju
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ros_speed_maju (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ros_speed_maju) (= (length (_ros_speed_maju . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ros_speed_maju . bv) 0) 0) s)
              (write-long (ash (elt (_ros_speed_maju . bv) 1) -1) s))
             ((and (class _ros_speed_maju) (= (length (_ros_speed_maju . bv)) 1)) ;; big1
              (write-long (elt (_ros_speed_maju . bv) 0) s)
              (write-long (if (>= _ros_speed_maju 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ros_speed_maju s)(write-long (if (>= _ros_speed_maju 0) 0 #xffffffff) s)))
     ;; int64 _ros_speed_mundur
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ros_speed_mundur (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ros_speed_mundur) (= (length (_ros_speed_mundur . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ros_speed_mundur . bv) 0) 0) s)
              (write-long (ash (elt (_ros_speed_mundur . bv) 1) -1) s))
             ((and (class _ros_speed_mundur) (= (length (_ros_speed_mundur . bv)) 1)) ;; big1
              (write-long (elt (_ros_speed_mundur . bv) 0) s)
              (write-long (if (>= _ros_speed_mundur 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ros_speed_mundur s)(write-long (if (>= _ros_speed_mundur 0) 0 #xffffffff) s)))
     ;; int64 _ros_speed_kiri
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ros_speed_kiri (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ros_speed_kiri) (= (length (_ros_speed_kiri . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ros_speed_kiri . bv) 0) 0) s)
              (write-long (ash (elt (_ros_speed_kiri . bv) 1) -1) s))
             ((and (class _ros_speed_kiri) (= (length (_ros_speed_kiri . bv)) 1)) ;; big1
              (write-long (elt (_ros_speed_kiri . bv) 0) s)
              (write-long (if (>= _ros_speed_kiri 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ros_speed_kiri s)(write-long (if (>= _ros_speed_kiri 0) 0 #xffffffff) s)))
     ;; int64 _ros_speed_kanan
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ros_speed_kanan (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ros_speed_kanan) (= (length (_ros_speed_kanan . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ros_speed_kanan . bv) 0) 0) s)
              (write-long (ash (elt (_ros_speed_kanan . bv) 1) -1) s))
             ((and (class _ros_speed_kanan) (= (length (_ros_speed_kanan . bv)) 1)) ;; big1
              (write-long (elt (_ros_speed_kanan . bv) 0) s)
              (write-long (if (>= _ros_speed_kanan 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ros_speed_kanan s)(write-long (if (>= _ros_speed_kanan 0) 0 #xffffffff) s)))
     ;; int64 _servo_kamera
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _servo_kamera (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _servo_kamera) (= (length (_servo_kamera . bv)) 2)) ;; bignum
              (write-long (ash (elt (_servo_kamera . bv) 0) 0) s)
              (write-long (ash (elt (_servo_kamera . bv) 1) -1) s))
             ((and (class _servo_kamera) (= (length (_servo_kamera . bv)) 1)) ;; big1
              (write-long (elt (_servo_kamera . bv) 0) s)
              (write-long (if (>= _servo_kamera 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _servo_kamera s)(write-long (if (>= _servo_kamera 0) 0 #xffffffff) s)))
     ;; int64 _ros_servo_gripper
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ros_servo_gripper (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ros_servo_gripper) (= (length (_ros_servo_gripper . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ros_servo_gripper . bv) 0) 0) s)
              (write-long (ash (elt (_ros_servo_gripper . bv) 1) -1) s))
             ((and (class _ros_servo_gripper) (= (length (_ros_servo_gripper . bv)) 1)) ;; big1
              (write-long (elt (_ros_servo_gripper . bv) 0) s)
              (write-long (if (>= _ros_servo_gripper 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ros_servo_gripper s)(write-long (if (>= _ros_servo_gripper 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _ros_movement
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ros_movement (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _ros_servo_kamera
     (setq _ros_servo_kamera (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int64 _ros_speed_maju
#+(or :alpha :irix6 :x86_64)
      (setf _ros_speed_maju (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ros_speed_maju (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _ros_speed_mundur
#+(or :alpha :irix6 :x86_64)
      (setf _ros_speed_mundur (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ros_speed_mundur (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _ros_speed_kiri
#+(or :alpha :irix6 :x86_64)
      (setf _ros_speed_kiri (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ros_speed_kiri (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _ros_speed_kanan
#+(or :alpha :irix6 :x86_64)
      (setf _ros_speed_kanan (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ros_speed_kanan (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _servo_kamera
#+(or :alpha :irix6 :x86_64)
      (setf _servo_kamera (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _servo_kamera (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _ros_servo_gripper
#+(or :alpha :irix6 :x86_64)
      (setf _ros_servo_gripper (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ros_servo_gripper (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get master_package::master_ros :md5sum-) "da1819055561b8d77300168d2e0c6289")
(setf (get master_package::master_ros :datatype-) "master_package/master_ros")
(setf (get master_package::master_ros :definition-)
      "string ros_movement
int16 ros_servo_kamera
int64 ros_speed_maju
int64 ros_speed_mundur
int64 ros_speed_kiri
int64 ros_speed_kanan
int64 servo_kamera
int64 ros_servo_gripper
")



(provide :master_package/master_ros "da1819055561b8d77300168d2e0c6289")


