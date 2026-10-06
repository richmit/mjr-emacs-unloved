;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;###autoload
(defun mjr-insert-random-printable-string (len)
  "Insert random printable string -- useful for temporary passwords.  String length = Prefix, or 20 with no prefix"
  (interactive "P")
  (cl-loop repeat (if len (prefix-numeric-value len) 20)
           do (insert (+ 33 (random 94)))))
