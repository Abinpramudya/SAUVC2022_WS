
(cl:in-package :asdf)

(defsystem "mission_package-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "misi" :depends-on ("_package_misi"))
    (:file "_package_misi" :depends-on ("_package"))
  ))