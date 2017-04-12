; Auto-generated. Do not edit!


(cl:in-package cordial_face-msg)


;//! \htmlinclude LookatRequest.msg.html

(cl:defclass <LookatRequest> (roslisp-msg-protocol:ros-message)
  ((follow_frame
    :reader follow_frame
    :initarg :follow_frame
    :type cl:boolean
    :initform cl:nil)
   (frameid
    :reader frameid
    :initarg :frameid
    :type cl:string
    :initform ""))
)

(cl:defclass LookatRequest (<LookatRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LookatRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LookatRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cordial_face-msg:<LookatRequest> is deprecated: use cordial_face-msg:LookatRequest instead.")))

(cl:ensure-generic-function 'follow_frame-val :lambda-list '(m))
(cl:defmethod follow_frame-val ((m <LookatRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_face-msg:follow_frame-val is deprecated.  Use cordial_face-msg:follow_frame instead.")
  (follow_frame m))

(cl:ensure-generic-function 'frameid-val :lambda-list '(m))
(cl:defmethod frameid-val ((m <LookatRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_face-msg:frameid-val is deprecated.  Use cordial_face-msg:frameid instead.")
  (frameid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LookatRequest>) ostream)
  "Serializes a message object of type '<LookatRequest>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'follow_frame) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frameid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frameid))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LookatRequest>) istream)
  "Deserializes a message object of type '<LookatRequest>"
    (cl:setf (cl:slot-value msg 'follow_frame) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frameid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frameid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LookatRequest>)))
  "Returns string type for a message object of type '<LookatRequest>"
  "cordial_face/LookatRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LookatRequest)))
  "Returns string type for a message object of type 'LookatRequest"
  "cordial_face/LookatRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LookatRequest>)))
  "Returns md5sum for a message object of type '<LookatRequest>"
  "e587150e3c50903a016b6056449cab70")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LookatRequest)))
  "Returns md5sum for a message object of type 'LookatRequest"
  "e587150e3c50903a016b6056449cab70")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LookatRequest>)))
  "Returns full string definition for message of type '<LookatRequest>"
  (cl:format cl:nil "#toggles gaze following behavior~%bool follow_frame~%~%#the name of the frame to follow~%string frameid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LookatRequest)))
  "Returns full string definition for message of type 'LookatRequest"
  (cl:format cl:nil "#toggles gaze following behavior~%bool follow_frame~%~%#the name of the frame to follow~%string frameid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LookatRequest>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'frameid))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LookatRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'LookatRequest
    (cl:cons ':follow_frame (follow_frame msg))
    (cl:cons ':frameid (frameid msg))
))
