; Auto-generated. Do not edit!


(cl:in-package master_package-msg)


;//! \htmlinclude master_ros.msg.html

(cl:defclass <master_ros> (roslisp-msg-protocol:ros-message)
  ((ros_movement
    :reader ros_movement
    :initarg :ros_movement
    :type cl:string
    :initform "")
   (ros_servo_kamera
    :reader ros_servo_kamera
    :initarg :ros_servo_kamera
    :type cl:fixnum
    :initform 0)
   (ros_speed_maju
    :reader ros_speed_maju
    :initarg :ros_speed_maju
    :type cl:integer
    :initform 0)
   (ros_speed_mundur
    :reader ros_speed_mundur
    :initarg :ros_speed_mundur
    :type cl:integer
    :initform 0)
   (ros_speed_kiri
    :reader ros_speed_kiri
    :initarg :ros_speed_kiri
    :type cl:integer
    :initform 0)
   (ros_speed_kanan
    :reader ros_speed_kanan
    :initarg :ros_speed_kanan
    :type cl:integer
    :initform 0)
   (servo_kamera
    :reader servo_kamera
    :initarg :servo_kamera
    :type cl:integer
    :initform 0)
   (ros_servo_gripper
    :reader ros_servo_gripper
    :initarg :ros_servo_gripper
    :type cl:integer
    :initform 0))
)

(cl:defclass master_ros (<master_ros>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <master_ros>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'master_ros)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name master_package-msg:<master_ros> is deprecated: use master_package-msg:master_ros instead.")))

(cl:ensure-generic-function 'ros_movement-val :lambda-list '(m))
(cl:defmethod ros_movement-val ((m <master_ros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader master_package-msg:ros_movement-val is deprecated.  Use master_package-msg:ros_movement instead.")
  (ros_movement m))

(cl:ensure-generic-function 'ros_servo_kamera-val :lambda-list '(m))
(cl:defmethod ros_servo_kamera-val ((m <master_ros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader master_package-msg:ros_servo_kamera-val is deprecated.  Use master_package-msg:ros_servo_kamera instead.")
  (ros_servo_kamera m))

(cl:ensure-generic-function 'ros_speed_maju-val :lambda-list '(m))
(cl:defmethod ros_speed_maju-val ((m <master_ros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader master_package-msg:ros_speed_maju-val is deprecated.  Use master_package-msg:ros_speed_maju instead.")
  (ros_speed_maju m))

(cl:ensure-generic-function 'ros_speed_mundur-val :lambda-list '(m))
(cl:defmethod ros_speed_mundur-val ((m <master_ros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader master_package-msg:ros_speed_mundur-val is deprecated.  Use master_package-msg:ros_speed_mundur instead.")
  (ros_speed_mundur m))

(cl:ensure-generic-function 'ros_speed_kiri-val :lambda-list '(m))
(cl:defmethod ros_speed_kiri-val ((m <master_ros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader master_package-msg:ros_speed_kiri-val is deprecated.  Use master_package-msg:ros_speed_kiri instead.")
  (ros_speed_kiri m))

(cl:ensure-generic-function 'ros_speed_kanan-val :lambda-list '(m))
(cl:defmethod ros_speed_kanan-val ((m <master_ros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader master_package-msg:ros_speed_kanan-val is deprecated.  Use master_package-msg:ros_speed_kanan instead.")
  (ros_speed_kanan m))

(cl:ensure-generic-function 'servo_kamera-val :lambda-list '(m))
(cl:defmethod servo_kamera-val ((m <master_ros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader master_package-msg:servo_kamera-val is deprecated.  Use master_package-msg:servo_kamera instead.")
  (servo_kamera m))

(cl:ensure-generic-function 'ros_servo_gripper-val :lambda-list '(m))
(cl:defmethod ros_servo_gripper-val ((m <master_ros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader master_package-msg:ros_servo_gripper-val is deprecated.  Use master_package-msg:ros_servo_gripper instead.")
  (ros_servo_gripper m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <master_ros>) ostream)
  "Serializes a message object of type '<master_ros>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ros_movement))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ros_movement))
  (cl:let* ((signed (cl:slot-value msg 'ros_servo_kamera)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ros_speed_maju)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ros_speed_mundur)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ros_speed_kiri)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ros_speed_kanan)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'servo_kamera)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ros_servo_gripper)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <master_ros>) istream)
  "Deserializes a message object of type '<master_ros>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ros_movement) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ros_movement) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ros_servo_kamera) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ros_speed_maju) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ros_speed_mundur) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ros_speed_kiri) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ros_speed_kanan) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'servo_kamera) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ros_servo_gripper) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<master_ros>)))
  "Returns string type for a message object of type '<master_ros>"
  "master_package/master_ros")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'master_ros)))
  "Returns string type for a message object of type 'master_ros"
  "master_package/master_ros")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<master_ros>)))
  "Returns md5sum for a message object of type '<master_ros>"
  "da1819055561b8d77300168d2e0c6289")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'master_ros)))
  "Returns md5sum for a message object of type 'master_ros"
  "da1819055561b8d77300168d2e0c6289")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<master_ros>)))
  "Returns full string definition for message of type '<master_ros>"
  (cl:format cl:nil "string ros_movement~%int16 ros_servo_kamera~%int64 ros_speed_maju~%int64 ros_speed_mundur~%int64 ros_speed_kiri~%int64 ros_speed_kanan~%int64 servo_kamera~%int64 ros_servo_gripper~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'master_ros)))
  "Returns full string definition for message of type 'master_ros"
  (cl:format cl:nil "string ros_movement~%int16 ros_servo_kamera~%int64 ros_speed_maju~%int64 ros_speed_mundur~%int64 ros_speed_kiri~%int64 ros_speed_kanan~%int64 servo_kamera~%int64 ros_servo_gripper~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <master_ros>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'ros_movement))
     2
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <master_ros>))
  "Converts a ROS message object to a list"
  (cl:list 'master_ros
    (cl:cons ':ros_movement (ros_movement msg))
    (cl:cons ':ros_servo_kamera (ros_servo_kamera msg))
    (cl:cons ':ros_speed_maju (ros_speed_maju msg))
    (cl:cons ':ros_speed_mundur (ros_speed_mundur msg))
    (cl:cons ':ros_speed_kiri (ros_speed_kiri msg))
    (cl:cons ':ros_speed_kanan (ros_speed_kanan msg))
    (cl:cons ':servo_kamera (servo_kamera msg))
    (cl:cons ':ros_servo_gripper (ros_servo_gripper msg))
))
