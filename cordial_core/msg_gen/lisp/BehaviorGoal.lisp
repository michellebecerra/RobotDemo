; Auto-generated. Do not edit!


(cl:in-package cordial_core-msg)


;//! \htmlinclude BehaviorGoal.msg.html

(cl:defclass <BehaviorGoal> (roslisp-msg-protocol:ros-message)
  ((behavior
    :reader behavior
    :initarg :behavior
    :type cl:string
    :initform "")
   (end_move
    :reader end_move
    :initarg :end_move
    :type cl:real
    :initform 0)
   (end_hold
    :reader end_hold
    :initarg :end_hold
    :type cl:real
    :initform 0)
   (return_to_prior
    :reader return_to_prior
    :initarg :return_to_prior
    :type cl:boolean
    :initform cl:nil)
   (if_conflict
    :reader if_conflict
    :initarg :if_conflict
    :type cl:integer
    :initform 0)
   (args
    :reader args
    :initarg :args
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (wait_and_block
    :reader wait_and_block
    :initarg :wait_and_block
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BehaviorGoal (<BehaviorGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BehaviorGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BehaviorGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cordial_core-msg:<BehaviorGoal> is deprecated: use cordial_core-msg:BehaviorGoal instead.")))

(cl:ensure-generic-function 'behavior-val :lambda-list '(m))
(cl:defmethod behavior-val ((m <BehaviorGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_core-msg:behavior-val is deprecated.  Use cordial_core-msg:behavior instead.")
  (behavior m))

(cl:ensure-generic-function 'end_move-val :lambda-list '(m))
(cl:defmethod end_move-val ((m <BehaviorGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_core-msg:end_move-val is deprecated.  Use cordial_core-msg:end_move instead.")
  (end_move m))

(cl:ensure-generic-function 'end_hold-val :lambda-list '(m))
(cl:defmethod end_hold-val ((m <BehaviorGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_core-msg:end_hold-val is deprecated.  Use cordial_core-msg:end_hold instead.")
  (end_hold m))

(cl:ensure-generic-function 'return_to_prior-val :lambda-list '(m))
(cl:defmethod return_to_prior-val ((m <BehaviorGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_core-msg:return_to_prior-val is deprecated.  Use cordial_core-msg:return_to_prior instead.")
  (return_to_prior m))

(cl:ensure-generic-function 'if_conflict-val :lambda-list '(m))
(cl:defmethod if_conflict-val ((m <BehaviorGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_core-msg:if_conflict-val is deprecated.  Use cordial_core-msg:if_conflict instead.")
  (if_conflict m))

(cl:ensure-generic-function 'args-val :lambda-list '(m))
(cl:defmethod args-val ((m <BehaviorGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_core-msg:args-val is deprecated.  Use cordial_core-msg:args instead.")
  (args m))

(cl:ensure-generic-function 'wait_and_block-val :lambda-list '(m))
(cl:defmethod wait_and_block-val ((m <BehaviorGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_core-msg:wait_and_block-val is deprecated.  Use cordial_core-msg:wait_and_block instead.")
  (wait_and_block m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BehaviorGoal>)))
    "Constants for message type '<BehaviorGoal>"
  '((:QUEUE . 0)
    (:DROP . 1)
    (:OVERRIDE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BehaviorGoal)))
    "Constants for message type 'BehaviorGoal"
  '((:QUEUE . 0)
    (:DROP . 1)
    (:OVERRIDE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BehaviorGoal>) ostream)
  "Serializes a message object of type '<BehaviorGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'behavior))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'behavior))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'end_move)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'end_move) (cl:floor (cl:slot-value msg 'end_move)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'end_hold)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'end_hold) (cl:floor (cl:slot-value msg 'end_hold)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'return_to_prior) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'if_conflict)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wait_and_block) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BehaviorGoal>) istream)
  "Deserializes a message object of type '<BehaviorGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'behavior) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'behavior) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'end_move) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'end_hold) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:slot-value msg 'return_to_prior) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'if_conflict) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
    (cl:setf (cl:slot-value msg 'wait_and_block) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BehaviorGoal>)))
  "Returns string type for a message object of type '<BehaviorGoal>"
  "cordial_core/BehaviorGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BehaviorGoal)))
  "Returns string type for a message object of type 'BehaviorGoal"
  "cordial_core/BehaviorGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BehaviorGoal>)))
  "Returns md5sum for a message object of type '<BehaviorGoal>"
  "cc266de8892cd33b779cfc3612c47b8f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BehaviorGoal)))
  "Returns md5sum for a message object of type 'BehaviorGoal"
  "cc266de8892cd33b779cfc3612c47b8f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BehaviorGoal>)))
  "Returns full string definition for message of type '<BehaviorGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%# name of the behavior~%string behavior~%~%# at what time should we be finished moving/holding~%# holding only meaningful if blocking or return to prior is true~%time end_move~%time end_hold~%~%# return to previous pose when behavior is done?~%bool return_to_prior~%~%# if the relevant DOFs are in conflict, what to do?~%# Queue: play behavior once DOFs are free; end_move and end_hold are taken to be relative to time.now~%# Drop: never play the behavior~%# Override: cancel the current behavior and play the new one~%int32 if_conflict~%int32 QUEUE = 0~%int32 DROP = 1~%int32 OVERRIDE = 2~%~%# some behaviors may take arguments, e.g., a frame for lookat~%string[] args~%~%# have robot controller block on this~%# if true, then wait_for_result will block until the behavior is done~%bool wait_and_block~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BehaviorGoal)))
  "Returns full string definition for message of type 'BehaviorGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%# name of the behavior~%string behavior~%~%# at what time should we be finished moving/holding~%# holding only meaningful if blocking or return to prior is true~%time end_move~%time end_hold~%~%# return to previous pose when behavior is done?~%bool return_to_prior~%~%# if the relevant DOFs are in conflict, what to do?~%# Queue: play behavior once DOFs are free; end_move and end_hold are taken to be relative to time.now~%# Drop: never play the behavior~%# Override: cancel the current behavior and play the new one~%int32 if_conflict~%int32 QUEUE = 0~%int32 DROP = 1~%int32 OVERRIDE = 2~%~%# some behaviors may take arguments, e.g., a frame for lookat~%string[] args~%~%# have robot controller block on this~%# if true, then wait_for_result will block until the behavior is done~%bool wait_and_block~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BehaviorGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'behavior))
     8
     8
     1
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'args) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BehaviorGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'BehaviorGoal
    (cl:cons ':behavior (behavior msg))
    (cl:cons ':end_move (end_move msg))
    (cl:cons ':end_hold (end_hold msg))
    (cl:cons ':return_to_prior (return_to_prior msg))
    (cl:cons ':if_conflict (if_conflict msg))
    (cl:cons ':args (args msg))
    (cl:cons ':wait_and_block (wait_and_block msg))
))
