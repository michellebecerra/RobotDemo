; Auto-generated. Do not edit!


(cl:in-package cordial_face-msg)


;//! \htmlinclude Keyframe.msg.html

(cl:defclass <Keyframe> (roslisp-msg-protocol:ros-message)
  ((positions
    :reader positions
    :initarg :positions
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Keyframe (<Keyframe>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Keyframe>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Keyframe)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cordial_face-msg:<Keyframe> is deprecated: use cordial_face-msg:Keyframe instead.")))

(cl:ensure-generic-function 'positions-val :lambda-list '(m))
(cl:defmethod positions-val ((m <Keyframe>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_face-msg:positions-val is deprecated.  Use cordial_face-msg:positions instead.")
  (positions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Keyframe>) ostream)
  "Serializes a message object of type '<Keyframe>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'positions))))
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
   (cl:slot-value msg 'positions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Keyframe>) istream)
  "Deserializes a message object of type '<Keyframe>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'positions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'positions)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Keyframe>)))
  "Returns string type for a message object of type '<Keyframe>"
  "cordial_face/Keyframe")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Keyframe)))
  "Returns string type for a message object of type 'Keyframe"
  "cordial_face/Keyframe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Keyframe>)))
  "Returns md5sum for a message object of type '<Keyframe>"
  "3b33cf2d1f9005e741ee291d519b97ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Keyframe)))
  "Returns md5sum for a message object of type 'Keyframe"
  "3b33cf2d1f9005e741ee291d519b97ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Keyframe>)))
  "Returns full string definition for message of type '<Keyframe>"
  (cl:format cl:nil "float64[] positions~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Keyframe)))
  "Returns full string definition for message of type 'Keyframe"
  (cl:format cl:nil "float64[] positions~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Keyframe>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'positions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Keyframe>))
  "Converts a ROS message object to a list"
  (cl:list 'Keyframe
    (cl:cons ':positions (positions msg))
))
