; Auto-generated. Do not edit!


(cl:in-package cordial_tablet-msg)


;//! \htmlinclude Reload.msg.html

(cl:defclass <Reload> (roslisp-msg-protocol:ros-message)
  ((s
    :reader s
    :initarg :s
    :type cl:string
    :initform ""))
)

(cl:defclass Reload (<Reload>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Reload>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Reload)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cordial_tablet-msg:<Reload> is deprecated: use cordial_tablet-msg:Reload instead.")))

(cl:ensure-generic-function 's-val :lambda-list '(m))
(cl:defmethod s-val ((m <Reload>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_tablet-msg:s-val is deprecated.  Use cordial_tablet-msg:s instead.")
  (s m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Reload>) ostream)
  "Serializes a message object of type '<Reload>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 's))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 's))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Reload>) istream)
  "Deserializes a message object of type '<Reload>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 's) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 's) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Reload>)))
  "Returns string type for a message object of type '<Reload>"
  "cordial_tablet/Reload")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Reload)))
  "Returns string type for a message object of type 'Reload"
  "cordial_tablet/Reload")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Reload>)))
  "Returns md5sum for a message object of type '<Reload>"
  "81af3411577d82a6786258523fc891ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Reload)))
  "Returns md5sum for a message object of type 'Reload"
  "81af3411577d82a6786258523fc891ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Reload>)))
  "Returns full string definition for message of type '<Reload>"
  (cl:format cl:nil "string s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Reload)))
  "Returns full string definition for message of type 'Reload"
  (cl:format cl:nil "string s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Reload>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 's))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Reload>))
  "Converts a ROS message object to a list"
  (cl:list 'Reload
    (cl:cons ':s (s msg))
))
