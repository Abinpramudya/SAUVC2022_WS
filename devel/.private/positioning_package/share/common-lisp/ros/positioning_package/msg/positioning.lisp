; Auto-generated. Do not edit!


(cl:in-package positioning_package-msg)


;//! \htmlinclude positioning.msg.html

(cl:defclass <positioning> (roslisp-msg-protocol:ros-message)
  ((posisi_x
    :reader posisi_x
    :initarg :posisi_x
    :type cl:float
    :initform 0.0)
   (posisi_z
    :reader posisi_z
    :initarg :posisi_z
    :type cl:float
    :initform 0.0))
)

(cl:defclass positioning (<positioning>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <positioning>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'positioning)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name positioning_package-msg:<positioning> is deprecated: use positioning_package-msg:positioning instead.")))

(cl:ensure-generic-function 'posisi_x-val :lambda-list '(m))
(cl:defmethod posisi_x-val ((m <positioning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader positioning_package-msg:posisi_x-val is deprecated.  Use positioning_package-msg:posisi_x instead.")
  (posisi_x m))

(cl:ensure-generic-function 'posisi_z-val :lambda-list '(m))
(cl:defmethod posisi_z-val ((m <positioning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader positioning_package-msg:posisi_z-val is deprecated.  Use positioning_package-msg:posisi_z instead.")
  (posisi_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <positioning>) ostream)
  "Serializes a message object of type '<positioning>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'posisi_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'posisi_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <positioning>) istream)
  "Deserializes a message object of type '<positioning>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'posisi_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'posisi_z) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<positioning>)))
  "Returns string type for a message object of type '<positioning>"
  "positioning_package/positioning")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'positioning)))
  "Returns string type for a message object of type 'positioning"
  "positioning_package/positioning")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<positioning>)))
  "Returns md5sum for a message object of type '<positioning>"
  "f9577dd741c8df9c418dcd1145425041")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'positioning)))
  "Returns md5sum for a message object of type 'positioning"
  "f9577dd741c8df9c418dcd1145425041")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<positioning>)))
  "Returns full string definition for message of type '<positioning>"
  (cl:format cl:nil "float64 posisi_x~%float64 posisi_z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'positioning)))
  "Returns full string definition for message of type 'positioning"
  (cl:format cl:nil "float64 posisi_x~%float64 posisi_z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <positioning>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <positioning>))
  "Converts a ROS message object to a list"
  (cl:list 'positioning
    (cl:cons ':posisi_x (posisi_x msg))
    (cl:cons ':posisi_z (posisi_z msg))
))
