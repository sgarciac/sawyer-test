;;;; sawyer-test.asd

(asdf:defsystem #:sawyer-test
  :description "Describe sawyer-test here"
  :author "Your Name <your.name@example.com>"
  :license "Specify license here"
  :depends-on (#:sawyer #:jsown)
  :serial t
  :components ((:file "package")
               (:file "sawyer-test")))

