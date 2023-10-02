;; Auto-generated. Do not edit!


(when (boundp 'cv_package::BoundingBoxes)
  (if (not (find-package "CV_PACKAGE"))
    (make-package "CV_PACKAGE"))
  (shadow 'BoundingBoxes (find-package "CV_PACKAGE")))
(unless (find-package "CV_PACKAGE::BOUNDINGBOXES")
  (make-package "CV_PACKAGE::BOUNDINGBOXES"))

(in-package "ROS")
;;//! \htmlinclude BoundingBoxes.msg.html


(defclass cv_package::BoundingBoxes
  :super ros::object
  :slots (_bounding_boxes ))

(defmethod cv_package::BoundingBoxes
  (:init
   (&key
    ((:bounding_boxes __bounding_boxes) ())
    )
   (send-super :init)
   (setq _bounding_boxes __bounding_boxes)
   self)
  (:bounding_boxes
   (&rest __bounding_boxes)
   (if (keywordp (car __bounding_boxes))
       (send* _bounding_boxes __bounding_boxes)
     (progn
       (if __bounding_boxes (setq _bounding_boxes (car __bounding_boxes)))
       _bounding_boxes)))
  (:serialization-length
   ()
   (+
    ;; cv_package/BoundingBox[] _bounding_boxes
    (apply #'+ (send-all _bounding_boxes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cv_package/BoundingBox[] _bounding_boxes
     (write-long (length _bounding_boxes) s)
     (dolist (elem _bounding_boxes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cv_package/BoundingBox[] _bounding_boxes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bounding_boxes (let (r) (dotimes (i n) (push (instance cv_package::BoundingBox :init) r)) r))
     (dolist (elem- _bounding_boxes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cv_package::BoundingBoxes :md5sum-) "6c35f598a64a1ba7d1d789178ae581ac")
(setf (get cv_package::BoundingBoxes :datatype-) "cv_package/BoundingBoxes")
(setf (get cv_package::BoundingBoxes :definition-)
      "BoundingBox[] bounding_boxes

================================================================================
MSG: cv_package/BoundingBox
string object_label
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



(provide :cv_package/BoundingBoxes "6c35f598a64a1ba7d1d789178ae581ac")


