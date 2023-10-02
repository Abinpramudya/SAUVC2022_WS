; Auto-generated. Do not edit!


(cl:in-package master_package-msg)


;//! \htmlinclude master_stm32.msg.html

(cl:defclass <master_stm32> (roslisp-msg-protocol:ros-message)
  ((stm32_movement
    :reader stm32_movement
    :initarg :stm32_movement
    :type cl:string
    :initform "")
   (stm32_heading
    :reader stm32_heading
    :initarg :stm32_heading
    :type cl:integer
    :initform 0)
   (stm32_depth
    :reader stm32_depth
    :initarg :stm32_depth
    :type cl:integer
    :initform 0))
)

(cl:defclass master_stm32 (<master_stm32>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <master_stm32>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'master_stm32)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name master_package-msg:<master_stm32> is deprecated: use master_package-msg:master_stm32 instead.")))

(cl:ensure-generic-function 'stm32_movement-val :lambda-list '(m))
(cl:defmethod stm32_movement-val ((m <master_stm32>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader master_package-msg:stm32_movement-val is deprecated.  Use master_package-msg:stm32_movement instead.")
  (stm32_movement m))

(cl:ensure-generic-function 'stm32_heading-val :lambda-list '(m))
(cl:defmethod stm32_heading-val ((m <master_stm32>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader master_package-msg:stm32_heading-val is deprecated.  Use master_package-msg:stm32_heading instead.")
  (stm32_heading m))

(cl:ensure-generic-function 'stm32_depth-val :lambda-list '(m))
(cl:defmethod stm32_depth-val ((m <master_stm32>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader master_package-msg:stm32_depth-val is deprecated.  Use master_package-msg:stm32_depth instead.")
  (stm32_depth m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <master_stm32>) ostream)
  "Serializes a message object of type '<master_stm32>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'stm32_movement))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'stm32_movement))
  (cl:let* ((signed (cl:slot-value msg 'stm32_heading)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'stm32_depth)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <master_stm32>) istream)
  "Deserializes a message object of type '<master_stm32>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stm32_movement) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'stm32_movement) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stm32_heading) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stm32_depth) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<master_stm32>)))
  "Returns string type for a message object of type '<master_stm32>"
  "master_package/master_stm32")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'master_stm32)))
  "Returns string type for a message object of type 'master_stm32"
  "master_package/master_stm32")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<master_stm32>)))
  "Returns md5sum for a message object of type '<master_stm32>"
  "ee71efa32a1481ff27ebaa2bab653120")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'master_stm32)))
  "Returns md5sum for a message object of type 'master_stm32"
  "ee71efa32a1481ff27ebaa2bab653120")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<master_stm32>)))
  "Returns full string definition for message of type '<master_stm32>"
  (cl:format cl:nil "string stm32_movement~%int64 stm32_heading~%int64 stm32_depth~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'master_stm32)))
  "Returns full string definition for message of type 'master_stm32"
  (cl:format cl:nil "string stm32_movement~%int64 stm32_heading~%int64 stm32_depth~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <master_stm32>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'stm32_movement))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <master_stm32>))
  "Converts a ROS message object to a list"
  (cl:list 'master_stm32
    (cl:cons ':stm32_movement (stm32_movement msg))
    (cl:cons ':stm32_heading (stm32_heading msg))
    (cl:cons ':stm32_depth (stm32_depth msg))
))
