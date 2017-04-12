; Auto-generated. Do not edit!


(cl:in-package cordial_face-msg)


;//! \htmlinclude FaceKeyframeRequest.msg.html

(cl:defclass <FaceKeyframeRequest> (roslisp-msg-protocol:ros-message)
  ((face_dofs
    :reader face_dofs
    :initarg :face_dofs
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (times
    :reader times
    :initarg :times
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (frames
    :reader frames
    :initarg :frames
    :type (cl:vector cordial_face-msg:Keyframe)
   :initform (cl:make-array 0 :element-type 'cordial_face-msg:Keyframe :initial-element (cl:make-instance 'cordial_face-msg:Keyframe))))
)

(cl:defclass FaceKeyframeRequest (<FaceKeyframeRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaceKeyframeRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaceKeyframeRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cordial_face-msg:<FaceKeyframeRequest> is deprecated: use cordial_face-msg:FaceKeyframeRequest instead.")))

(cl:ensure-generic-function 'face_dofs-val :lambda-list '(m))
(cl:defmethod face_dofs-val ((m <FaceKeyframeRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_face-msg:face_dofs-val is deprecated.  Use cordial_face-msg:face_dofs instead.")
  (face_dofs m))

(cl:ensure-generic-function 'times-val :lambda-list '(m))
(cl:defmethod times-val ((m <FaceKeyframeRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_face-msg:times-val is deprecated.  Use cordial_face-msg:times instead.")
  (times m))

(cl:ensure-generic-function 'frames-val :lambda-list '(m))
(cl:defmethod frames-val ((m <FaceKeyframeRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_face-msg:frames-val is deprecated.  Use cordial_face-msg:frames instead.")
  (frames m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaceKeyframeRequest>) ostream)
  "Serializes a message object of type '<FaceKeyframeRequest>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'face_dofs))))
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
   (cl:slot-value msg 'face_dofs))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'times))))
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
   (cl:slot-value msg 'times))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'frames))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'frames))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaceKeyframeRequest>) istream)
  "Deserializes a message object of type '<FaceKeyframeRequest>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'face_dofs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'face_dofs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'times) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'times)))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'frames) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'frames)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cordial_face-msg:Keyframe))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaceKeyframeRequest>)))
  "Returns string type for a message object of type '<FaceKeyframeRequest>"
  "cordial_face/FaceKeyframeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceKeyframeRequest)))
  "Returns string type for a message object of type 'FaceKeyframeRequest"
  "cordial_face/FaceKeyframeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaceKeyframeRequest>)))
  "Returns md5sum for a message object of type '<FaceKeyframeRequest>"
  "770284344a311c0881d4b0831856af00")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaceKeyframeRequest)))
  "Returns md5sum for a message object of type 'FaceKeyframeRequest"
  "770284344a311c0881d4b0831856af00")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaceKeyframeRequest>)))
  "Returns full string definition for message of type '<FaceKeyframeRequest>"
  (cl:format cl:nil "#Request string of face keyframes~%string[] face_dofs~%float64[] times~%cordial_face/Keyframe[] frames~%================================================================================~%MSG: cordial_face/Keyframe~%float64[] positions~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaceKeyframeRequest)))
  "Returns full string definition for message of type 'FaceKeyframeRequest"
  (cl:format cl:nil "#Request string of face keyframes~%string[] face_dofs~%float64[] times~%cordial_face/Keyframe[] frames~%================================================================================~%MSG: cordial_face/Keyframe~%float64[] positions~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaceKeyframeRequest>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'face_dofs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'times) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'frames) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaceKeyframeRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'FaceKeyframeRequest
    (cl:cons ':face_dofs (face_dofs msg))
    (cl:cons ':times (times msg))
    (cl:cons ':frames (frames msg))
))
