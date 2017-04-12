
(cl:in-package :asdf)

(defsystem "cordial_face-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "FaceKeyframeRequest" :depends-on ("_package_FaceKeyframeRequest"))
    (:file "_package_FaceKeyframeRequest" :depends-on ("_package"))
    (:file "LookatRequest" :depends-on ("_package_LookatRequest"))
    (:file "_package_LookatRequest" :depends-on ("_package"))
    (:file "FaceRequest" :depends-on ("_package_FaceRequest"))
    (:file "_package_FaceRequest" :depends-on ("_package"))
    (:file "Keyframe" :depends-on ("_package_Keyframe"))
    (:file "_package_Keyframe" :depends-on ("_package"))
  ))