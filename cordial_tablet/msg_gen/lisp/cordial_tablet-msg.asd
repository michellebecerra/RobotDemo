
(cl:in-package :asdf)

(defsystem "cordial_tablet-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "TokenLocation" :depends-on ("_package_TokenLocation"))
    (:file "_package_TokenLocation" :depends-on ("_package"))
    (:file "TokenPoses" :depends-on ("_package_TokenPoses"))
    (:file "_package_TokenPoses" :depends-on ("_package"))
    (:file "ChangeToken" :depends-on ("_package_ChangeToken"))
    (:file "_package_ChangeToken" :depends-on ("_package"))
    (:file "TabletStatus" :depends-on ("_package_TabletStatus"))
    (:file "_package_TabletStatus" :depends-on ("_package"))
    (:file "Reload" :depends-on ("_package_Reload"))
    (:file "_package_Reload" :depends-on ("_package"))
    (:file "TokenPose" :depends-on ("_package_TokenPose"))
    (:file "_package_TokenPose" :depends-on ("_package"))
    (:file "AddRemoveArea" :depends-on ("_package_AddRemoveArea"))
    (:file "_package_AddRemoveArea" :depends-on ("_package"))
    (:file "TokenLocations" :depends-on ("_package_TokenLocations"))
    (:file "_package_TokenLocations" :depends-on ("_package"))
    (:file "DispBanner" :depends-on ("_package_DispBanner"))
    (:file "_package_DispBanner" :depends-on ("_package"))
  ))