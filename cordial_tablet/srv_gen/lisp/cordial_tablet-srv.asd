
(cl:in-package :asdf)

(defsystem "cordial_tablet-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :cordial_tablet-msg
)
  :components ((:file "_package")
    (:file "Setup" :depends-on ("_package_Setup"))
    (:file "_package_Setup" :depends-on ("_package"))
  ))