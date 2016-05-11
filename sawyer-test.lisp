;;;; sawyer-test.lisp

(in-package #:sawyer-test)

(defun read-stdin-into-string (&key (buffer-size 4096) external-format)
  (let ((*print-pretty* nil))
    (with-output-to-string (datum)
      (let ((buffer (make-array buffer-size :element-type 'character)))
        (loop
           :for bytes-read = (read-sequence buffer *standard-input*)
           :do (write-sequence buffer datum :start 0 :end bytes-read)
           :while (= bytes-read buffer-size))))))
