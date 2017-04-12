
(cl:in-package :asdf)

(defsystem "cordial_sprite-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "KeyframePlayerGoal" :depends-on ("_package_KeyframePlayerGoal"))
    (:file "_package_KeyframePlayerGoal" :depends-on ("_package"))
    (:file "KeyframePlayerActionResult" :depends-on ("_package_KeyframePlayerActionResult"))
    (:file "_package_KeyframePlayerActionResult" :depends-on ("_package"))
    (:file "KeyframePlayerActionGoal" :depends-on ("_package_KeyframePlayerActionGoal"))
    (:file "_package_KeyframePlayerActionGoal" :depends-on ("_package"))
    (:file "KeyframePlayerFeedback" :depends-on ("_package_KeyframePlayerFeedback"))
    (:file "_package_KeyframePlayerFeedback" :depends-on ("_package"))
    (:file "KeyframePlayerAction" :depends-on ("_package_KeyframePlayerAction"))
    (:file "_package_KeyframePlayerAction" :depends-on ("_package"))
    (:file "KeyframePlayerActionFeedback" :depends-on ("_package_KeyframePlayerActionFeedback"))
    (:file "_package_KeyframePlayerActionFeedback" :depends-on ("_package"))
    (:file "KeyframePlayerResult" :depends-on ("_package_KeyframePlayerResult"))
    (:file "_package_KeyframePlayerResult" :depends-on ("_package"))
  ))