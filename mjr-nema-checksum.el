;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;###autoload
(defun mjr-nema-checksum (str)
  "Compute NEMA checksum for region, and place it on the kill ring.
The region should not include the NEMA sentence prefix ($) or suffix (CR LF)"
  (interactive (list (if (use-region-p)
                         (buffer-substring-no-properties (region-beginning) (region-end))
                         (error "mjr-nema-checksum: No active region!"))))
  (if (stringp str)
      (let ((cs (format "*%02x" (apply #'logxor (string-to-list str)))))
        (kill-new cs)
        (message "mjr-nema-checksum: Checksum copied to kill ring: %s" cs))
      (error "mjr-nema-checksum: STR must be a string!")))
