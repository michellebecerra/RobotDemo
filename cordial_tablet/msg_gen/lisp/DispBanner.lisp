; Auto-generated. Do not edit!


(cl:in-package cordial_tablet-msg)


;//! \htmlinclude DispBanner.msg.html

(cl:defclass <DispBanner> (roslisp-msg-protocol:ros-message)
  ((s
    :reader s
    :initarg :s
    :type cl:string
    :initform "")
   (action
    :reader action
    :initarg :action
    :type cl:string
    :initform ""))
)

(cl:defclass DispBanner (<DispBanner>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DispBanner>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DispBanner)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cordial_tablet-msg:<DispBanner> is deprecated: use cordial_tablet-msg:DispBanner instead.")))

(cl:ensure-generic-function 's-val :lambda-list '(m))
(cl:defmethod s-val ((m <DispBanner>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_tablet-msg:s-val is deprecated.  Use cordial_tablet-msg:s instead.")
  (s m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <DispBanner>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_tablet-msg:action-val is deprecated.  Use cordial_tablet-msg:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DispBanner>) ostream)
  "Serializes a message object of type '<DispBanner>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 's))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 's))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DispBanner>) istream)
  "Deserializes a message object of type '<DispBanner>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 's) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 's) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DispBanner>)))
  "Returns string type for a message object of type '<DispBanner>"
  "cordial_tablet/DispBanner")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DispBanner)))
  "Returns string type for a message object of type 'DispBanner"
  "cordial_tablet/DispBanner")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DispBanner>)))
  "Returns md5sum for a message object of type '<DispBanner>"
  "e9a2ee18d894534f8508fce210184419")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DispBanner)))
  "Returns md5sum for a message object of type 'DispBanner"
  "e9a2ee18d894534f8508fce210184419")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DispBanner>)))
  "Returns full string definition for message of type '<DispBanner>"
  (cl:format cl:nil "string s~%string action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DispBanner)))
  "Returns full string definition for message of type 'DispBanner"
  (cl:format cl:nil "string s~%string action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DispBanner>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 's))
     4 (cl:length (cl:slot-value msg 'action))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DispBanner>))
  "Converts a ROS message object to a list"
  (cl:list 'DispBanner
    (cl:cons ':s (s msg))
    (cl:cons ':action (action msg))
))
