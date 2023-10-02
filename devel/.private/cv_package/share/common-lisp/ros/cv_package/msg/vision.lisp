; Auto-generated. Do not edit!


(cl:in-package cv_package-msg)


;//! \htmlinclude vision.msg.html

(cl:defclass <vision> (roslisp-msg-protocol:ros-message)
  ((jarak_objek
    :reader jarak_objek
    :initarg :jarak_objek
    :type cl:integer
    :initform 0))
)

(cl:defclass vision (<vision>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <vision>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'vision)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cv_package-msg:<vision> is deprecated: use cv_package-msg:vision instead.")))

(cl:ensure-generic-function 'jarak_objek-val :lambda-list '(m))
(cl:defmethod jarak_objek-val ((m <vision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cv_package-msg:jarak_objek-val is deprecated.  Use cv_package-msg:jarak_objek instead.")
  (jarak_objek m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <vision>) ostream)
  "Serializes a message object of type '<vision>"
  (cl:let* ((signed (cl:slot-value msg 'jarak_objek)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <vision>) istream)
  "Deserializes a message object of type '<vision>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'jarak_objek) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<vision>)))
  "Returns string type for a message object of type '<vision>"
  "cv_package/vision")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'vision)))
  "Returns string type for a message object of type 'vision"
  "cv_package/vision")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<vision>)))
  "Returns md5sum for a message object of type '<vision>"
  "e5db1e3e1b216d22cf080e8124bd6b36")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'vision)))
  "Returns md5sum for a message object of type 'vision"
  "e5db1e3e1b216d22cf080e8124bd6b36")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<vision>)))
  "Returns full string definition for message of type '<vision>"
  (cl:format cl:nil "int64 jarak_objek~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'vision)))
  "Returns full string definition for message of type 'vision"
  (cl:format cl:nil "int64 jarak_objek~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <vision>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <vision>))
  "Converts a ROS message object to a list"
  (cl:list 'vision
    (cl:cons ':jarak_objek (jarak_objek msg))
))
