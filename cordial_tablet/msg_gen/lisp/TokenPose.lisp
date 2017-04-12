; Auto-generated. Do not edit!


(cl:in-package cordial_tablet-msg)


;//! \htmlinclude TokenPose.msg.html

(cl:defclass <TokenPose> (roslisp-msg-protocol:ros-message)
  ((instanceid
    :reader instanceid
    :initarg :instanceid
    :type cl:string
    :initform "")
   (tokenid
    :reader tokenid
    :initarg :tokenid
    :type cl:string
    :initform "")
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass TokenPose (<TokenPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TokenPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TokenPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cordial_tablet-msg:<TokenPose> is deprecated: use cordial_tablet-msg:TokenPose instead.")))

(cl:ensure-generic-function 'instanceid-val :lambda-list '(m))
(cl:defmethod instanceid-val ((m <TokenPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_tablet-msg:instanceid-val is deprecated.  Use cordial_tablet-msg:instanceid instead.")
  (instanceid m))

(cl:ensure-generic-function 'tokenid-val :lambda-list '(m))
(cl:defmethod tokenid-val ((m <TokenPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_tablet-msg:tokenid-val is deprecated.  Use cordial_tablet-msg:tokenid instead.")
  (tokenid m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <TokenPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_tablet-msg:x-val is deprecated.  Use cordial_tablet-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <TokenPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_tablet-msg:y-val is deprecated.  Use cordial_tablet-msg:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TokenPose>) ostream)
  "Serializes a message object of type '<TokenPose>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'instanceid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'instanceid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tokenid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tokenid))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TokenPose>) istream)
  "Deserializes a message object of type '<TokenPose>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'instanceid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'instanceid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tokenid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tokenid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TokenPose>)))
  "Returns string type for a message object of type '<TokenPose>"
  "cordial_tablet/TokenPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TokenPose)))
  "Returns string type for a message object of type 'TokenPose"
  "cordial_tablet/TokenPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TokenPose>)))
  "Returns md5sum for a message object of type '<TokenPose>"
  "1e813942c94f6206f7a0d20ad04559d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TokenPose)))
  "Returns md5sum for a message object of type 'TokenPose"
  "1e813942c94f6206f7a0d20ad04559d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TokenPose>)))
  "Returns full string definition for message of type '<TokenPose>"
  (cl:format cl:nil "string instanceid~%string tokenid~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TokenPose)))
  "Returns full string definition for message of type 'TokenPose"
  (cl:format cl:nil "string instanceid~%string tokenid~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TokenPose>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'instanceid))
     4 (cl:length (cl:slot-value msg 'tokenid))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TokenPose>))
  "Converts a ROS message object to a list"
  (cl:list 'TokenPose
    (cl:cons ':instanceid (instanceid msg))
    (cl:cons ':tokenid (tokenid msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
