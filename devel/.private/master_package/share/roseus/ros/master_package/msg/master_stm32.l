;; Auto-generated. Do not edit!


(when (boundp 'master_package::master_stm32)
  (if (not (find-package "MASTER_PACKAGE"))
    (make-package "MASTER_PACKAGE"))
  (shadow 'master_stm32 (find-package "MASTER_PACKAGE")))
(unless (find-package "MASTER_PACKAGE::MASTER_STM32")
  (make-package "MASTER_PACKAGE::MASTER_STM32"))

(in-package "ROS")
;;//! \htmlinclude master_stm32.msg.html


(defclass master_package::master_stm32
  :super ros::object
  :slots (_stm32_movement _stm32_heading _stm32_depth ))

(defmethod master_package::master_stm32
  (:init
   (&key
    ((:stm32_movement __stm32_movement) "")
    ((:stm32_heading __stm32_heading) 0)
    ((:stm32_depth __stm32_depth) 0)
    )
   (send-super :init)
   (setq _stm32_movement (string __stm32_movement))
   (setq _stm32_heading (round __stm32_heading))
   (setq _stm32_depth (round __stm32_depth))
   self)
  (:stm32_movement
   (&optional __stm32_movement)
   (if __stm32_movement (setq _stm32_movement __stm32_movement)) _stm32_movement)
  (:stm32_heading
   (&optional __stm32_heading)
   (if __stm32_heading (setq _stm32_heading __stm32_heading)) _stm32_heading)
  (:stm32_depth
   (&optional __stm32_depth)
   (if __stm32_depth (setq _stm32_depth __stm32_depth)) _stm32_depth)
  (:serialization-length
   ()
   (+
    ;; string _stm32_movement
    4 (length _stm32_movement)
    ;; int64 _stm32_heading
    8
    ;; int64 _stm32_depth
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _stm32_movement
       (write-long (length _stm32_movement) s) (princ _stm32_movement s)
     ;; int64 _stm32_heading
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _stm32_heading (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _stm32_heading) (= (length (_stm32_heading . bv)) 2)) ;; bignum
              (write-long (ash (elt (_stm32_heading . bv) 0) 0) s)
              (write-long (ash (elt (_stm32_heading . bv) 1) -1) s))
             ((and (class _stm32_heading) (= (length (_stm32_heading . bv)) 1)) ;; big1
              (write-long (elt (_stm32_heading . bv) 0) s)
              (write-long (if (>= _stm32_heading 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _stm32_heading s)(write-long (if (>= _stm32_heading 0) 0 #xffffffff) s)))
     ;; int64 _stm32_depth
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _stm32_depth (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _stm32_depth) (= (length (_stm32_depth . bv)) 2)) ;; bignum
              (write-long (ash (elt (_stm32_depth . bv) 0) 0) s)
              (write-long (ash (elt (_stm32_depth . bv) 1) -1) s))
             ((and (class _stm32_depth) (= (length (_stm32_depth . bv)) 1)) ;; big1
              (write-long (elt (_stm32_depth . bv) 0) s)
              (write-long (if (>= _stm32_depth 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _stm32_depth s)(write-long (if (>= _stm32_depth 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _stm32_movement
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _stm32_movement (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _stm32_heading
#+(or :alpha :irix6 :x86_64)
      (setf _stm32_heading (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _stm32_heading (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _stm32_depth
#+(or :alpha :irix6 :x86_64)
      (setf _stm32_depth (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _stm32_depth (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get master_package::master_stm32 :md5sum-) "ee71efa32a1481ff27ebaa2bab653120")
(setf (get master_package::master_stm32 :datatype-) "master_package/master_stm32")
(setf (get master_package::master_stm32 :definition-)
      "string stm32_movement
int64 stm32_heading
int64 stm32_depth
")



(provide :master_package/master_stm32 "ee71efa32a1481ff27ebaa2bab653120")


