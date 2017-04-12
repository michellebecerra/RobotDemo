; Auto-generated. Do not edit!


(cl:in-package cordial_tablet-msg)


;//! \htmlinclude TokenPoses.msg.html

(cl:defclass <TokenPoses> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (poses
    :reader poses
    :initarg :poses
    :type (cl:vector cordial_tablet-msg:TokenPose)
   :initform (cl:make-array 0 :element-type 'cordial_tablet-msg:TokenPose :initial-element (cl:make-instance 'cordial_tablet-msg:TokenPose))))
)

(cl:defclass TokenPoses (<TokenPoses>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TokenPoses>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TokenPoses)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cordial_tablet-msg:<TokenPoses> is deprecated: use cordial_tablet-msg:TokenPoses instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <TokenPoses>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_tablet-msg:id-val is deprecated.  Use cordial_tablet-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'poses-val :lambda-list '(m))
(cl:defmethod poses-val ((m <TokenPoses>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_tablet-msg:poses-val is deprecated.  Use cordial_tablet-msg:poses instead.")
  (poses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TokenPoses>) ostream)
  "Serializes a message object of type '<TokenPoses>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'poses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TokenPoses>) istream)
  "Deserializes a message object of type '<TokenPoses>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cordial_tablet-msg:TokenPose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TokenPoses>)))
  "Returns string type for a message object of type '<TokenPoses>"
  "cordial_tablet/TokenPoses")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TokenPoses)))
  "Returns string type for a message object of type 'TokenPoses"
  "cordial_tablet/TokenPoses")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TokenPoses>)))
  "Returns md5sum for a message object of type '<TokenPoses>"
  "c7d71c5ca97bccf8800e375b39cdb2f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TokenPoses)))
  "Returns md5sum for a message object of type 'TokenPoses"
  "c7d71c5ca97bccf8800e375b39cdb2f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TokenPoses>)))
  "Returns full string definition for message of type '<TokenPoses>"
  (cl:format cl:nil "string id~%cordial_tablet/TokenPose[] poses~%================================================================================~%MSG: cordial_tablet/TokenPose~%string instanceid~%string tokenid~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TokenPoses)))
  "Returns full string definition for message of type 'TokenPoses"
  (cl:format cl:nil "string id~%cordial_tablet/TokenPose[] poses~%================================================================================~%MSG: cordial_tablet/TokenPose~%string instanceid~%string tokenid~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TokenPoses>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TokenPoses>))
  "Converts a ROS message object to a list"
  (cl:list 'TokenPoses
    (cl:cons ':id (id msg))
    (cl:cons ':poses (poses msg))
))
