;; Auto-generated. Do not edit!


(when (boundp 'mission_package::misi)
  (if (not (find-package "MISSION_PACKAGE"))
    (make-package "MISSION_PACKAGE"))
  (shadow 'misi (find-package "MISSION_PACKAGE")))
(unless (find-package "MISSION_PACKAGE::MISI")
  (make-package "MISSION_PACKAGE::MISI"))

(in-package "ROS")
;;//! \htmlinclude misi.msg.html


(defclass mission_package::misi
  :super ros::object
  :slots (_misi _submisi ))

(defmethod mission_package::misi
  (:init
   (&key
    ((:misi __misi) 0)
    ((:submisi __submisi) 0)
    )
   (send-super :init)
   (setq _misi (round __misi))
   (setq _submisi (round __submisi))
   self)
  (:misi
   (&optional __misi)
   (if __misi (setq _misi __misi)) _misi)
  (:submisi
   (&optional __submisi)
   (if __submisi (setq _submisi __submisi)) _submisi)
  (:serialization-length
   ()
   (+
    ;; int64 _misi
    8
    ;; int64 _submisi
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _misi
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _misi (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _misi) (= (length (_misi . bv)) 2)) ;; bignum
              (write-long (ash (elt (_misi . bv) 0) 0) s)
              (write-long (ash (elt (_misi . bv) 1) -1) s))
             ((and (class _misi) (= (length (_misi . bv)) 1)) ;; big1
              (write-long (elt (_misi . bv) 0) s)
              (write-long (if (>= _misi 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _misi s)(write-long (if (>= _misi 0) 0 #xffffffff) s)))
     ;; int64 _submisi
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _submisi (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _submisi) (= (length (_submisi . bv)) 2)) ;; bignum
              (write-long (ash (elt (_submisi . bv) 0) 0) s)
              (write-long (ash (elt (_submisi . bv) 1) -1) s))
             ((and (class _submisi) (= (length (_submisi . bv)) 1)) ;; big1
              (write-long (elt (_submisi . bv) 0) s)
              (write-long (if (>= _submisi 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _submisi s)(write-long (if (>= _submisi 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _misi
#+(or :alpha :irix6 :x86_64)
      (setf _misi (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _misi (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _submisi
#+(or :alpha :irix6 :x86_64)
      (setf _submisi (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _submisi (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get mission_package::misi :md5sum-) "e8bcd0b04052275aff2eac8c31be06a0")
(setf (get mission_package::misi :datatype-) "mission_package/misi")
(setf (get mission_package::misi :definition-)
      "int64 misi
int64 submisi
")



(provide :mission_package/misi "e8bcd0b04052275aff2eac8c31be06a0")


