;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;###autoload
(defun mjr-print-ps-file (filename)
  "Print the current buffer as a postscript file"
  (interactive (list (read-file-name "PS Print Output File:" "~/tmp/ps-out/" nil nil "out.ps")))
  (require 'ps-print)
  (unless (string-match "\\.ps$" filename)
      (setq filename (concat filename ".ps")))
  (ps-print-with-faces (point-min) (point-max) filename)
  (dired (file-name-parent-directory filename)))
