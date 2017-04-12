; Auto-generated. Do not edit!


(cl:in-package cordial_sprite-msg)


;//! \htmlinclude KeyframePlayerGoal.msg.html

(cl:defclass <KeyframePlayerGoal> (roslisp-msg-protocol:ros-message)
  ((behavior
    :reader behavior
    :initarg :behavior
    :type cl:string
    :initform "")
   (args
    :reader args
    :initarg :args
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass KeyframePlayerGoal (<KeyframePlayerGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KeyframePlayerGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KeyframePlayerGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cordial_sprite-msg:<KeyframePlayerGoal> is deprecated: use cordial_sprite-msg:KeyframePlayerGoal instead.")))

(cl:ensure-generic-function 'behavior-val :lambda-list '(m))
(cl:defmethod behavior-val ((m <KeyframePlayerGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_sprite-msg:behavior-val is deprecated.  Use cordial_sprite-msg:behavior instead.")
  (behavior m))

(cl:ensure-generic-function 'args-val :lambda-list '(m))
(cl:defmethod args-val ((m <KeyframePlayerGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_sprite-msg:args-val is deprecated.  Use cordial_sprite-msg:args instead.")
  (args m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KeyframePlayerGoal>) ostream)
  "Serializes a message object of type '<KeyframePlayerGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'behavior))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'behavior))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'args))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'args))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KeyframePlayerGoal>) istream)
  "Deserializes a message object of type '<KeyframePlayerGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'behavior) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'behavior) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'args) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'args)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KeyframePlayerGoal>)))
  "Returns string type for a message object of type '<KeyframePlayerGoal>"
  "cordial_sprite/KeyframePlayerGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KeyframePlayerGoal)))
  "Returns string type for a message object of type 'KeyframePlayerGoal"
  "cordial_sprite/KeyframePlayerGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KeyframePlayerGoal>)))
  "Returns md5sum for a message object of type '<KeyframePlayerGoal>"
  "4a45daf5330f8aa20ddeb4a78b462fd7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KeyframePlayerGoal)))
  "Returns md5sum for a message object of type 'KeyframePlayerGoal"
  "4a45daf5330f8aa20ddeb4a78b462fd7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KeyframePlayerGoal>)))
  "Returns full string definition for message of type '<KeyframePlayerGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string behavior~%string[] args~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KeyframePlayerGoal)))
  "Returns full string definition for message of type 'KeyframePlayerGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%string behavior~%string[] args~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KeyframePlayerGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'behavior))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'args) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KeyframePlayerGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'KeyframePlayerGoal
    (cl:cons ':behavior (behavior msg))
    (cl:cons ':args (args msg))
))
