#!/usr/local/bin/sbcl --script
(let ((quicklisp-init (merge-pathnames "quicklisp/setup.lisp"
                                       (user-homedir-pathname))))
  (when (probe-file quicklisp-init)
    (load quicklisp-init)))
(require "jsown")
(require "sawyer-test")
(require "sawyer")

(let ((input (sawyer-test:read-stdin-into-string)))
  (princ (jsown:to-json (sawyer:parse-toml-string input :jsown t))))
