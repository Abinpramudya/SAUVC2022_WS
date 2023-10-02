; Auto-generated. Do not edit!


(cl:in-package mission_package-msg)


;//! \htmlinclude misi.msg.html

(cl:defclass <misi> (roslisp-msg-protocol:ros-message)
  ((misi
    :reader misi
    :initarg :misi
    :type cl:integer
    :initform 0)
   (submisi
    :reader submisi
    :initarg :submisi
    :type cl:integer
    :initform 0))
)

(cl:defclass misi (<misi>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <misi>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'misi)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mission_package-msg:<misi> is deprecated: use mission_package-msg:misi instead.")))

(cl:ensure-generic-function 'misi-val :lambda-list '(m))
(cl:defmethod misi-val ((m <misi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mission_package-msg:misi-val is deprecated.  Use mission_package-msg:misi instead.")
  (misi m))

(cl:ensure-generic-function 'submisi-val :lambda-list '(m))
(cl:defmethod submisi-val ((m <misi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mission_package-msg:submisi-val is deprecated.  Use mission_package-msg:submisi instead.")
  (submisi m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <misi>) ostream)
  "Serializes a message object of type '<misi>"
  (cl:let* ((signed (cl:slot-value msg 'misi)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'submisi)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <misi>) istream)
  "Deserializes a message object of type '<misi>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'misi) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'submisi) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<misi>)))
  "Returns string type for a message object of type '<misi>"
  "mission_package/misi")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'misi)))
  "Returns string type for a message object of type 'misi"
  "mission_package/misi")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<misi>)))
  "Returns md5sum for a message object of type '<misi>"
  "e8bcd0b04052275aff2eac8c31be06a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'misi)))
  "Returns md5sum for a message object of type 'misi"
  "e8bcd0b04052275aff2eac8c31be06a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<misi>)))
  "Returns full string definition for message of type '<misi>"
  (cl:format cl:nil "int64 misi~%int64 submisi~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'misi)))
  "Returns full string definition for message of type 'misi"
  (cl:format cl:nil "int64 misi~%int64 submisi~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <misi>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <misi>))
  "Converts a ROS message object to a list"
  (cl:list 'misi
    (cl:cons ':misi (misi msg))
    (cl:cons ':submisi (submisi msg))
))
