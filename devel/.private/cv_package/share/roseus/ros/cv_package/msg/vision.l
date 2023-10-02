;; Auto-generated. Do not edit!


(when (boundp 'cv_package::vision)
  (if (not (find-package "CV_PACKAGE"))
    (make-package "CV_PACKAGE"))
  (shadow 'vision (find-package "CV_PACKAGE")))
(unless (find-package "CV_PACKAGE::VISION")
  (make-package "CV_PACKAGE::VISION"))

(in-package "ROS")
;;//! \htmlinclude vision.msg.html


(defclass cv_package::vision
  :super ros::object
  :slots (_jarak_objek ))

(defmethod cv_package::vision
  (:init
   (&key
    ((:jarak_objek __jarak_objek) 0)
    )
   (send-super :init)
   (setq _jarak_objek (round __jarak_objek))
   self)
  (:jarak_objek
   (&optional __jarak_objek)
   (if __jarak_objek (setq _jarak_objek __jarak_objek)) _jarak_objek)
  (:serialization-length
   ()
   (+
    ;; int64 _jarak_objek
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _jarak_objek
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _jarak_objek (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _jarak_objek) (= (length (_jarak_objek . bv)) 2)) ;; bignum
              (write-long (ash (elt (_jarak_objek . bv) 0) 0) s)
              (write-long (ash (elt (_jarak_objek . bv) 1) -1) s))
             ((and (class _jarak_objek) (= (length (_jarak_objek . bv)) 1)) ;; big1
              (write-long (elt (_jarak_objek . bv) 0) s)
              (write-long (if (>= _jarak_objek 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _jarak_objek s)(write-long (if (>= _jarak_objek 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _jarak_objek
#+(or :alpha :irix6 :x86_64)
      (setf _jarak_objek (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _jarak_objek (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get cv_package::vision :md5sum-) "e5db1e3e1b216d22cf080e8124bd6b36")
(setf (get cv_package::vision :datatype-) "cv_package/vision")
(setf (get cv_package::vision :definition-)
      "int64 jarak_objek
")



(provide :cv_package/vision "e5db1e3e1b216d22cf080e8124bd6b36")


