
(cl:in-package :asdf)

(defsystem "positioning_package-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "positioning" :depends-on ("_package_positioning"))
    (:file "_package_positioning" :depends-on ("_package"))
  ))