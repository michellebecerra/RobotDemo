
(cl:in-package :asdf)

(defsystem "cordial_sound-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SoundRequest" :depends-on ("_package_SoundRequest"))
    (:file "_package_SoundRequest" :depends-on ("_package"))
  ))