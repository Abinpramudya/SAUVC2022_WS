
(cl:in-package :asdf)

(defsystem "master_package-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "master_ros" :depends-on ("_package_master_ros"))
    (:file "_package_master_ros" :depends-on ("_package"))
    (:file "master_stm32" :depends-on ("_package_master_stm32"))
    (:file "_package_master_stm32" :depends-on ("_package"))
  ))