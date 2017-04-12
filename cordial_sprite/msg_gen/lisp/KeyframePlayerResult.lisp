; Auto-generated. Do not edit!


(cl:in-package cordial_sprite-msg)


;//! \htmlinclude KeyframePlayerResult.msg.html

(cl:defclass <KeyframePlayerResult> (roslisp-msg-protocol:ros-message)
  ((final_pose
    :reader final_pose
    :initarg :final_pose
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass KeyframePlayerResult (<KeyframePlayerResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KeyframePlayerResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KeyframePlayerResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cordial_sprite-msg:<KeyframePlayerResult> is deprecated: use cordial_sprite-msg:KeyframePlayerResult instead.")))

(cl:ensure-generic-function 'final_pose-val :lambda-list '(m))
(cl:defmethod final_pose-val ((m <KeyframePlayerResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_sprite-msg:final_pose-val is deprecated.  Use cordial_sprite-msg:final_pose instead.")
  (final_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KeyframePlayerResult>) ostream)
  "Serializes a message object of type '<KeyframePlayerResult>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'final_pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'final_pose))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KeyframePlayerResult>) istream)
  "Deserializes a message object of type '<KeyframePlayerResult>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'final_pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'final_pose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KeyframePlayerResult>)))
  "Returns string type for a message object of type '<KeyframePlayerResult>"
  "cordial_sprite/KeyframePlayerResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KeyframePlayerResult)))
  "Returns string type for a message object of type 'KeyframePlayerResult"
  "cordial_sprite/KeyframePlayerResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KeyframePlayerResult>)))
  "Returns md5sum for a message object of type '<KeyframePlayerResult>"
  "15b63b7b1b7cfbd8ac973b14f88c5450")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KeyframePlayerResult)))
  "Returns md5sum for a message object of type 'KeyframePlayerResult"
  "15b63b7b1b7cfbd8ac973b14f88c5450")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KeyframePlayerResult>)))
  "Returns full string definition for message of type '<KeyframePlayerResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%float64[] final_pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KeyframePlayerResult)))
  "Returns full string definition for message of type 'KeyframePlayerResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%float64[] final_pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KeyframePlayerResult>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'final_pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KeyframePlayerResult>))
  "Converts a ROS message object to a list"
  (cl:list 'KeyframePlayerResult
    (cl:cons ':final_pose (final_pose msg))
))