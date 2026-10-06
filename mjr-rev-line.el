;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;###autoload
(defun mjr-rev-line ()
 "Reverse the characters on the current line"
  (interactive)
  (beginning-of-line)
  (insert (reverse (delete-and-extract-region (line-beginning-position)
                                              (line-end-position)))))
