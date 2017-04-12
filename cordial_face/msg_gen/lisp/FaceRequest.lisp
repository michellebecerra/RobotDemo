; Auto-generated. Do not edit!


(cl:in-package cordial_face-msg)


;//! \htmlinclude FaceRequest.msg.html

(cl:defclass <FaceRequest> (roslisp-msg-protocol:ros-message)
  ((aus
    :reader aus
    :initarg :aus
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (au_degrees
    :reader au_degrees
    :initarg :au_degrees
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (au_ms
    :reader au_ms
    :initarg :au_ms
    :type cl:integer
    :initform 0)
   (side
    :reader side
    :initarg :side
    :type cl:integer
    :initform 0)
   (visemes
    :reader visemes
    :initarg :visemes
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (viseme_ms
    :reader viseme_ms
    :initarg :viseme_ms
    :type cl:integer
    :initform 0)
   (times
    :reader times
    :initarg :times
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (start
    :reader start
    :initarg :start
    :type cl:integer
    :initform 0)
   (hold_gaze
    :reader hold_gaze
    :initarg :hold_gaze
    :type cl:integer
    :initform 0)
   (retarget_gaze
    :reader retarget_gaze
    :initarg :retarget_gaze
    :type cl:boolean
    :initform cl:nil)
   (gaze_target
    :reader gaze_target
    :initarg :gaze_target
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (gaze_vel
    :reader gaze_vel
    :initarg :gaze_vel
    :type cl:float
    :initform 0.0))
)

(cl:defclass FaceRequest (<FaceRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaceRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaceRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cordial_face-msg:<FaceRequest> is deprecated: use cordial_face-msg:FaceRequest instead.")))

(cl:ensure-generic-function 'aus-val :lambda-list '(m))
(cl:defmethod aus-val ((m <FaceRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_face-msg:aus-val is deprecated.  Use cordial_face-msg:aus instead.")
  (aus m))

(cl:ensure-generic-function 'au_degrees-val :lambda-list '(m))
(cl:defmethod au_degrees-val ((m <FaceRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_face-msg:au_degrees-val is deprecated.  Use cordial_face-msg:au_degrees instead.")
  (au_degrees m))

(cl:ensure-generic-function 'au_ms-val :lambda-list '(m))
(cl:defmethod au_ms-val ((m <FaceRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_face-msg:au_ms-val is deprecated.  Use cordial_face-msg:au_ms instead.")
  (au_ms m))

(cl:ensure-generic-function 'side-val :lambda-list '(m))
(cl:defmethod side-val ((m <FaceRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_face-msg:side-val is deprecated.  Use cordial_face-msg:side instead.")
  (side m))

(cl:ensure-generic-function 'visemes-val :lambda-list '(m))
(cl:defmethod visemes-val ((m <FaceRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_face-msg:visemes-val is deprecated.  Use cordial_face-msg:visemes instead.")
  (visemes m))

(cl:ensure-generic-function 'viseme_ms-val :lambda-list '(m))
(cl:defmethod viseme_ms-val ((m <FaceRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_face-msg:viseme_ms-val is deprecated.  Use cordial_face-msg:viseme_ms instead.")
  (viseme_ms m))

(cl:ensure-generic-function 'times-val :lambda-list '(m))
(cl:defmethod times-val ((m <FaceRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_face-msg:times-val is deprecated.  Use cordial_face-msg:times instead.")
  (times m))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <FaceRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_face-msg:start-val is deprecated.  Use cordial_face-msg:start instead.")
  (start m))

(cl:ensure-generic-function 'hold_gaze-val :lambda-list '(m))
(cl:defmethod hold_gaze-val ((m <FaceRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_face-msg:hold_gaze-val is deprecated.  Use cordial_face-msg:hold_gaze instead.")
  (hold_gaze m))

(cl:ensure-generic-function 'retarget_gaze-val :lambda-list '(m))
(cl:defmethod retarget_gaze-val ((m <FaceRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_face-msg:retarget_gaze-val is deprecated.  Use cordial_face-msg:retarget_gaze instead.")
  (retarget_gaze m))

(cl:ensure-generic-function 'gaze_target-val :lambda-list '(m))
(cl:defmethod gaze_target-val ((m <FaceRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_face-msg:gaze_target-val is deprecated.  Use cordial_face-msg:gaze_target instead.")
  (gaze_target m))

(cl:ensure-generic-function 'gaze_vel-val :lambda-list '(m))
(cl:defmethod gaze_vel-val ((m <FaceRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cordial_face-msg:gaze_vel-val is deprecated.  Use cordial_face-msg:gaze_vel instead.")
  (gaze_vel m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FaceRequest>)))
    "Constants for message type '<FaceRequest>"
  '((:BOTH . 0)
    (:RIGHT . 1)
    (:LEFT . 2)
    (:IDLE_OFF . 1)
    (:IDLE_ON . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FaceRequest)))
    "Constants for message type 'FaceRequest"
  '((:BOTH . 0)
    (:RIGHT . 1)
    (:LEFT . 2)
    (:IDLE_OFF . 1)
    (:IDLE_ON . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaceRequest>) ostream)
  "Serializes a message object of type '<FaceRequest>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'aus))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'aus))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'au_degrees))))
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
   (cl:slot-value msg 'au_degrees))
  (cl:let* ((signed (cl:slot-value msg 'au_ms)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'side)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'visemes))))
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
   (cl:slot-value msg 'visemes))
  (cl:let* ((signed (cl:slot-value msg 'viseme_ms)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'times))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'times))
  (cl:let* ((signed (cl:slot-value msg 'start)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'hold_gaze)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'retarget_gaze) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gaze_target) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'gaze_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaceRequest>) istream)
  "Deserializes a message object of type '<FaceRequest>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'aus) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'aus)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'au_degrees) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'au_degrees)))
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'au_ms) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'side) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'visemes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'visemes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'viseme_ms) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
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
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'start) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hold_gaze) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'retarget_gaze) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gaze_target) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gaze_vel) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaceRequest>)))
  "Returns string type for a message object of type '<FaceRequest>"
  "cordial_face/FaceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceRequest)))
  "Returns string type for a message object of type 'FaceRequest"
  "cordial_face/FaceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaceRequest>)))
  "Returns md5sum for a message object of type '<FaceRequest>"
  "0efdbed36edf5411ac89ea3bb0295c90")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaceRequest)))
  "Returns md5sum for a message object of type 'FaceRequest"
  "0efdbed36edf5411ac89ea3bb0295c90")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaceRequest>)))
  "Returns full string definition for message of type '<FaceRequest>"
  (cl:format cl:nil "# request AUs and/or viseme for the face~%# multiple AUs possible, but only one viseme~%~%#the numbers of the action units~%int32[] aus~%#the degree to which to express the AU, in (0,1]~%float64[] au_degrees~%#the time to make the expression, in ms~%int64 au_ms~%~%#specify a side of the face to move (eye and eyebrow movements only)~%int32 side~%int32 BOTH=0~%int32 RIGHT=1~%int32 LEFT=2~%~%#the name of the viseme~%string[] visemes~%#the time to make the viseme, in ms~%int64 viseme_ms~%#the times (from zero) at which to play the visemes~%float32[] times~%int64 start~%~%#toggles idle gaze behavior~%int32 hold_gaze~%int32 IDLE_OFF=1~%int32 IDLE_ON=2~%~%#3D gaze target, relative to center of face~%# if retarget_gaze is false, ignore gaze_target~%bool retarget_gaze~%geometry_msgs/Point gaze_target~%~%# velocity to move gaze, in rad/s~%float64 gaze_vel~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaceRequest)))
  "Returns full string definition for message of type 'FaceRequest"
  (cl:format cl:nil "# request AUs and/or viseme for the face~%# multiple AUs possible, but only one viseme~%~%#the numbers of the action units~%int32[] aus~%#the degree to which to express the AU, in (0,1]~%float64[] au_degrees~%#the time to make the expression, in ms~%int64 au_ms~%~%#specify a side of the face to move (eye and eyebrow movements only)~%int32 side~%int32 BOTH=0~%int32 RIGHT=1~%int32 LEFT=2~%~%#the name of the viseme~%string[] visemes~%#the time to make the viseme, in ms~%int64 viseme_ms~%#the times (from zero) at which to play the visemes~%float32[] times~%int64 start~%~%#toggles idle gaze behavior~%int32 hold_gaze~%int32 IDLE_OFF=1~%int32 IDLE_ON=2~%~%#3D gaze target, relative to center of face~%# if retarget_gaze is false, ignore gaze_target~%bool retarget_gaze~%geometry_msgs/Point gaze_target~%~%# velocity to move gaze, in rad/s~%float64 gaze_vel~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaceRequest>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'aus) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'au_degrees) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'visemes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'times) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     8
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gaze_target))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaceRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'FaceRequest
    (cl:cons ':aus (aus msg))
    (cl:cons ':au_degrees (au_degrees msg))
    (cl:cons ':au_ms (au_ms msg))
    (cl:cons ':side (side msg))
    (cl:cons ':visemes (visemes msg))
    (cl:cons ':viseme_ms (viseme_ms msg))
    (cl:cons ':times (times msg))
    (cl:cons ':start (start msg))
    (cl:cons ':hold_gaze (hold_gaze msg))
    (cl:cons ':retarget_gaze (retarget_gaze msg))
    (cl:cons ':gaze_target (gaze_target msg))
    (cl:cons ':gaze_vel (gaze_vel msg))
))
