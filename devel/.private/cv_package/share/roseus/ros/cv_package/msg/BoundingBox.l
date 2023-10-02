;; Auto-generated. Do not edit!


(when (boundp 'cv_package::BoundingBox)
  (if (not (find-package "CV_PACKAGE"))
    (make-package "CV_PACKAGE"))
  (shadow 'BoundingBox (find-package "CV_PACKAGE")))
(unless (find-package "CV_PACKAGE::BOUNDINGBOX")
  (make-package "CV_PACKAGE::BOUNDINGBOX"))

(in-package "ROS")
;;//! \htmlinclude BoundingBox.msg.html


(defclass cv_package::BoundingBox
  :super ros::object
  :slots (_object_label _probability _xmin_cv _ymin_cv _xmax_cv _ymax_cv _xcenter_cv _ycenter_cv _width _height ))

(defmethod cv_package::BoundingBox
  (:init
   (&key
    ((:object_label __object_label) "")
    ((:probability __probability) 0.0)
    ((:xmin_cv __xmin_cv) 0)
    ((:ymin_cv __ymin_cv) 0)
    ((:xmax_cv __xmax_cv) 0)
    ((:ymax_cv __ymax_cv) 0)
    ((:xcenter_cv __xcenter_cv) 0.0)
    ((:ycenter_cv __ycenter_cv) 0.0)
    ((:width __width) 0)
    ((:height __height) 0)
    )
   (send-super :init)
   (setq _object_label (string __object_label))
   (setq _probability (float __probability))
   (setq _xmin_cv (round __xmin_cv))
   (setq _ymin_cv (round __ymin_cv))
   (setq _xmax_cv (round __xmax_cv))
   (setq _ymax_cv (round __ymax_cv))
   (setq _xcenter_cv (float __xcenter_cv))
   (setq _ycenter_cv (float __ycenter_cv))
   (setq _width (round __width))
   (setq _height (round __height))
   self)
  (:object_label
   (&optional __object_label)
   (if __object_label (setq _object_label __object_label)) _object_label)
  (:probability
   (&optional __probability)
   (if __probability (setq _probability __probability)) _probability)
  (:xmin_cv
   (&optional __xmin_cv)
   (if __xmin_cv (setq _xmin_cv __xmin_cv)) _xmin_cv)
  (:ymin_cv
   (&optional __ymin_cv)
   (if __ymin_cv (setq _ymin_cv __ymin_cv)) _ymin_cv)
  (:xmax_cv
   (&optional __xmax_cv)
   (if __xmax_cv (setq _xmax_cv __xmax_cv)) _xmax_cv)
  (:ymax_cv
   (&optional __ymax_cv)
   (if __ymax_cv (setq _ymax_cv __ymax_cv)) _ymax_cv)
  (:xcenter_cv
   (&optional __xcenter_cv)
   (if __xcenter_cv (setq _xcenter_cv __xcenter_cv)) _xcenter_cv)
  (:ycenter_cv
   (&optional __ycenter_cv)
   (if __ycenter_cv (setq _ycenter_cv __ycenter_cv)) _ycenter_cv)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; string _object_label
    4 (length _object_label)
    ;; float64 _probability
    8
    ;; int64 _xmin_cv
    8
    ;; int64 _ymin_cv
    8
    ;; int64 _xmax_cv
    8
    ;; int64 _ymax_cv
    8
    ;; float64 _xcenter_cv
    8
    ;; float64 _ycenter_cv
    8
    ;; int64 _width
    8
    ;; int64 _height
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object_label
       (write-long (length _object_label) s) (princ _object_label s)
     ;; float64 _probability
       (sys::poke _probability (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _xmin_cv
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _xmin_cv (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _xmin_cv) (= (length (_xmin_cv . bv)) 2)) ;; bignum
              (write-long (ash (elt (_xmin_cv . bv) 0) 0) s)
              (write-long (ash (elt (_xmin_cv . bv) 1) -1) s))
             ((and (class _xmin_cv) (= (length (_xmin_cv . bv)) 1)) ;; big1
              (write-long (elt (_xmin_cv . bv) 0) s)
              (write-long (if (>= _xmin_cv 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _xmin_cv s)(write-long (if (>= _xmin_cv 0) 0 #xffffffff) s)))
     ;; int64 _ymin_cv
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ymin_cv (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ymin_cv) (= (length (_ymin_cv . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ymin_cv . bv) 0) 0) s)
              (write-long (ash (elt (_ymin_cv . bv) 1) -1) s))
             ((and (class _ymin_cv) (= (length (_ymin_cv . bv)) 1)) ;; big1
              (write-long (elt (_ymin_cv . bv) 0) s)
              (write-long (if (>= _ymin_cv 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ymin_cv s)(write-long (if (>= _ymin_cv 0) 0 #xffffffff) s)))
     ;; int64 _xmax_cv
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _xmax_cv (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _xmax_cv) (= (length (_xmax_cv . bv)) 2)) ;; bignum
              (write-long (ash (elt (_xmax_cv . bv) 0) 0) s)
              (write-long (ash (elt (_xmax_cv . bv) 1) -1) s))
             ((and (class _xmax_cv) (= (length (_xmax_cv . bv)) 1)) ;; big1
              (write-long (elt (_xmax_cv . bv) 0) s)
              (write-long (if (>= _xmax_cv 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _xmax_cv s)(write-long (if (>= _xmax_cv 0) 0 #xffffffff) s)))
     ;; int64 _ymax_cv
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ymax_cv (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ymax_cv) (= (length (_ymax_cv . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ymax_cv . bv) 0) 0) s)
              (write-long (ash (elt (_ymax_cv . bv) 1) -1) s))
             ((and (class _ymax_cv) (= (length (_ymax_cv . bv)) 1)) ;; big1
              (write-long (elt (_ymax_cv . bv) 0) s)
              (write-long (if (>= _ymax_cv 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ymax_cv s)(write-long (if (>= _ymax_cv 0) 0 #xffffffff) s)))
     ;; float64 _xcenter_cv
       (sys::poke _xcenter_cv (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ycenter_cv
       (sys::poke _ycenter_cv (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _width
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _width (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _width) (= (length (_width . bv)) 2)) ;; bignum
              (write-long (ash (elt (_width . bv) 0) 0) s)
              (write-long (ash (elt (_width . bv) 1) -1) s))
             ((and (class _width) (= (length (_width . bv)) 1)) ;; big1
              (write-long (elt (_width . bv) 0) s)
              (write-long (if (>= _width 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _width s)(write-long (if (>= _width 0) 0 #xffffffff) s)))
     ;; int64 _height
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _height (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _height) (= (length (_height . bv)) 2)) ;; bignum
              (write-long (ash (elt (_height . bv) 0) 0) s)
              (write-long (ash (elt (_height . bv) 1) -1) s))
             ((and (class _height) (= (length (_height . bv)) 1)) ;; big1
              (write-long (elt (_height . bv) 0) s)
              (write-long (if (>= _height 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _height s)(write-long (if (>= _height 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object_label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _probability
     (setq _probability (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _xmin_cv
#+(or :alpha :irix6 :x86_64)
      (setf _xmin_cv (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _xmin_cv (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _ymin_cv
#+(or :alpha :irix6 :x86_64)
      (setf _ymin_cv (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ymin_cv (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _xmax_cv
#+(or :alpha :irix6 :x86_64)
      (setf _xmax_cv (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _xmax_cv (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _ymax_cv
#+(or :alpha :irix6 :x86_64)
      (setf _ymax_cv (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ymax_cv (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _xcenter_cv
     (setq _xcenter_cv (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ycenter_cv
     (setq _ycenter_cv (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _width
#+(or :alpha :irix6 :x86_64)
      (setf _width (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _width (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _height
#+(or :alpha :irix6 :x86_64)
      (setf _height (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _height (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get cv_package::BoundingBox :md5sum-) "16489477eaaf0dbca582174d9a0d8936")
(setf (get cv_package::BoundingBox :datatype-) "cv_package/BoundingBox")
(setf (get cv_package::BoundingBox :definition-)
      "string object_label
float64 probability
int64 xmin_cv
int64 ymin_cv
int64 xmax_cv
int64 ymax_cv
float64 xcenter_cv
float64 ycenter_cv
int64 width
int64 height

")



(provide :cv_package/BoundingBox "16489477eaaf0dbca582174d9a0d8936")


