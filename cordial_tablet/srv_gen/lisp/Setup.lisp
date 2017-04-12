; Auto-generated. Do not edit!


(cl:in-package cordial_tablet-srv)


;//! \htmlinclude Setup-request.msg.html

(cl:defclass <Setup-request> (roslisp-msg-protocol:ros-message)
  ((window_w
    :reader window_w
    :initarg :window_w
    :type cl:float
    :initform 0.0)
   (window_h
    :reader window_h
    :initarg :window_h
    :type cl:float
    :initform 0.0)
   (id
    :reader id
    :initarg :id
    :type cl:string
    :initform ""))
)

(cl:defclass Setup-request (<Setup-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Setup-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Setup-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cordial_tablet-srv:<Setup-request> is deprecated: use cordial_tablet-srv:Setup-request instead.")))

(cl:ensure-generic-function 'window_w-val :lambda-list '(m))
(cl:defmethod window_w-val ((m <Setup-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_tablet-srv:window_w-val is deprecated.  Use cordial_tablet-srv:window_w instead.")
  (window_w m))

(cl:ensure-generic-function 'window_h-val :lambda-list '(m))
(cl:defmethod window_h-val ((m <Setup-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_tablet-srv:window_h-val is deprecated.  Use cordial_tablet-srv:window_h instead.")
  (window_h m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Setup-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_tablet-srv:id-val is deprecated.  Use cordial_tablet-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Setup-request>) ostream)
  "Serializes a message object of type '<Setup-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'window_w))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'window_h))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Setup-request>) istream)
  "Deserializes a message object of type '<Setup-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'window_w) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'window_h) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Setup-request>)))
  "Returns string type for a service object of type '<Setup-request>"
  "cordial_tablet/SetupRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Setup-request)))
  "Returns string type for a service object of type 'Setup-request"
  "cordial_tablet/SetupRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Setup-request>)))
  "Returns md5sum for a message object of type '<Setup-request>"
  "66d843b2d280a4400370e68ca5dd5eb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Setup-request)))
  "Returns md5sum for a message object of type 'Setup-request"
  "66d843b2d280a4400370e68ca5dd5eb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Setup-request>)))
  "Returns full string definition for message of type '<Setup-request>"
  (cl:format cl:nil "float64 window_w~%float64 window_h~%string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Setup-request)))
  "Returns full string definition for message of type 'Setup-request"
  (cl:format cl:nil "float64 window_w~%float64 window_h~%string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Setup-request>))
  (cl:+ 0
     8
     8
     4 (cl:length (cl:slot-value msg 'id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Setup-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Setup-request
    (cl:cons ':window_w (window_w msg))
    (cl:cons ':window_h (window_h msg))
    (cl:cons ':id (id msg))
))
;//! \htmlinclude Setup-response.msg.html

(cl:defclass <Setup-response> (roslisp-msg-protocol:ros-message)
  ((tokens
    :reader tokens
    :initarg :tokens
    :type (cl:vector cordial_tablet-msg:ChangeToken)
   :initform (cl:make-array 0 :element-type 'cordial_tablet-msg:ChangeToken :initial-element (cl:make-instance 'cordial_tablet-msg:ChangeToken)))
   (areas
    :reader areas
    :initarg :areas
    :type (cl:vector cordial_tablet-msg:AddRemoveArea)
   :initform (cl:make-array 0 :element-type 'cordial_tablet-msg:AddRemoveArea :initial-element (cl:make-instance 'cordial_tablet-msg:AddRemoveArea)))
   (background
    :reader background
    :initarg :background
    :type cl:string
    :initform ""))
)

(cl:defclass Setup-response (<Setup-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Setup-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Setup-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cordial_tablet-srv:<Setup-response> is deprecated: use cordial_tablet-srv:Setup-response instead.")))

(cl:ensure-generic-function 'tokens-val :lambda-list '(m))
(cl:defmethod tokens-val ((m <Setup-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_tablet-srv:tokens-val is deprecated.  Use cordial_tablet-srv:tokens instead.")
  (tokens m))

(cl:ensure-generic-function 'areas-val :lambda-list '(m))
(cl:defmethod areas-val ((m <Setup-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_tablet-srv:areas-val is deprecated.  Use cordial_tablet-srv:areas instead.")
  (areas m))

(cl:ensure-generic-function 'background-val :lambda-list '(m))
(cl:defmethod background-val ((m <Setup-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_tablet-srv:background-val is deprecated.  Use cordial_tablet-srv:background instead.")
  (background m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Setup-response>) ostream)
  "Serializes a message object of type '<Setup-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tokens))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'tokens))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'areas))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'areas))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'background))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'background))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Setup-response>) istream)
  "Deserializes a message object of type '<Setup-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tokens) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tokens)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cordial_tablet-msg:ChangeToken))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'areas) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'areas)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cordial_tablet-msg:AddRemoveArea))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'background) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'background) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Setup-response>)))
  "Returns string type for a service object of type '<Setup-response>"
  "cordial_tablet/SetupResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Setup-response)))
  "Returns string type for a service object of type 'Setup-response"
  "cordial_tablet/SetupResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Setup-response>)))
  "Returns md5sum for a message object of type '<Setup-response>"
  "66d843b2d280a4400370e68ca5dd5eb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Setup-response)))
  "Returns md5sum for a message object of type 'Setup-response"
  "66d843b2d280a4400370e68ca5dd5eb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Setup-response>)))
  "Returns full string definition for message of type '<Setup-response>"
  (cl:format cl:nil "cordial_tablet/ChangeToken[] tokens~%cordial_tablet/AddRemoveArea[] areas~%string background~%~%================================================================================~%MSG: cordial_tablet/ChangeToken~%string id~%string name~%string action~%string img_loc~%string type~%string text~%int64 textsize~%int64 x~%int64 y~%int64 tint~%bool filled~%int64 bcolor~%float64 angle~%float64 scalex~%float64 scaley~%================================================================================~%MSG: cordial_tablet/AddRemoveArea~%string id~%string name~%string text~%int64 x~%int64 y~%int64 width~%int64 height~%bool drawn~%bool filled~%int64 bcolor~%string arrange~%string img~%int64 textx~%int64 texty~%int64 textsize~%int64 xpadding~%int64 ypadding~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Setup-response)))
  "Returns full string definition for message of type 'Setup-response"
  (cl:format cl:nil "cordial_tablet/ChangeToken[] tokens~%cordial_tablet/AddRemoveArea[] areas~%string background~%~%================================================================================~%MSG: cordial_tablet/ChangeToken~%string id~%string name~%string action~%string img_loc~%string type~%string text~%int64 textsize~%int64 x~%int64 y~%int64 tint~%bool filled~%int64 bcolor~%float64 angle~%float64 scalex~%float64 scaley~%================================================================================~%MSG: cordial_tablet/AddRemoveArea~%string id~%string name~%string text~%int64 x~%int64 y~%int64 width~%int64 height~%bool drawn~%bool filled~%int64 bcolor~%string arrange~%string img~%int64 textx~%int64 texty~%int64 textsize~%int64 xpadding~%int64 ypadding~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Setup-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tokens) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'areas) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'background))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Setup-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Setup-response
    (cl:cons ':tokens (tokens msg))
    (cl:cons ':areas (areas msg))
    (cl:cons ':background (background msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Setup)))
  'Setup-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Setup)))
  'Setup-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Setup)))
  "Returns string type for a service object of type '<Setup>"
  "cordial_tablet/Setup")