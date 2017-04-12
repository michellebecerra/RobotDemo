; Auto-generated. Do not edit!


(cl:in-package cordial_tablet-msg)


;//! \htmlinclude TokenLocations.msg.html

(cl:defclass <TokenLocations> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (locations
    :reader locations
    :initarg :locations
    :type (cl:vector cordial_tablet-msg:TokenLocation)
   :initform (cl:make-array 0 :element-type 'cordial_tablet-msg:TokenLocation :initial-element (cl:make-instance 'cordial_tablet-msg:TokenLocation))))
)

(cl:defclass TokenLocations (<TokenLocations>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TokenLocations>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TokenLocations)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cordial_tablet-msg:<TokenLocations> is deprecated: use cordial_tablet-msg:TokenLocations instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <TokenLocations>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_tablet-msg:id-val is deprecated.  Use cordial_tablet-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'locations-val :lambda-list '(m))
(cl:defmethod locations-val ((m <TokenLocations>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_tablet-msg:locations-val is deprecated.  Use cordial_tablet-msg:locations instead.")
  (locations m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TokenLocations>) ostream)
  "Serializes a message object of type '<TokenLocations>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'locations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'locations))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TokenLocations>) istream)
  "Deserializes a message object of type '<TokenLocations>"
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
  (cl:setf (cl:slot-value msg 'locations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'locations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cordial_tablet-msg:TokenLocation))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TokenLocations>)))
  "Returns string type for a message object of type '<TokenLocations>"
  "cordial_tablet/TokenLocations")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TokenLocations)))
  "Returns string type for a message object of type 'TokenLocations"
  "cordial_tablet/TokenLocations")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TokenLocations>)))
  "Returns md5sum for a message object of type '<TokenLocations>"
  "75fff0208301d539b57e1de8f7c3e40e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TokenLocations)))
  "Returns md5sum for a message object of type 'TokenLocations"
  "75fff0208301d539b57e1de8f7c3e40e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TokenLocations>)))
  "Returns full string definition for message of type '<TokenLocations>"
  (cl:format cl:nil "string id~%cordial_tablet/TokenLocation[] locations~%================================================================================~%MSG: cordial_tablet/TokenLocation~%string instanceid~%string tokenid~%float64 x~%float64 y~%string[] areas~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TokenLocations)))
  "Returns full string definition for message of type 'TokenLocations"
  (cl:format cl:nil "string id~%cordial_tablet/TokenLocation[] locations~%================================================================================~%MSG: cordial_tablet/TokenLocation~%string instanceid~%string tokenid~%float64 x~%float64 y~%string[] areas~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TokenLocations>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'locations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TokenLocations>))
  "Converts a ROS message object to a list"
  (cl:list 'TokenLocations
    (cl:cons ':id (id msg))
    (cl:cons ':locations (locations msg))
))
