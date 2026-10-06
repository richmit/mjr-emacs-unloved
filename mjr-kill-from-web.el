
(require 'ffap)
(require 'thingatpt)
(require 'url)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;###autoload
(defun mjr-kill-from-web (url)
  "Place content pulled from web on the kill ring"
  (interactive (list (read-string "URL: " (or (when (use-region-p)
                                                (ffap-url-p (string-trim (buffer-substring-no-properties (region-beginning) (region-end)))))
                                              (thing-at-point-url-at-point)
                                              "https://www.mitchr.me/"))))
  (unless (when-let* ((res-buf (url-retrieve-synchronously url t t 10))
                      (res-str (with-current-buffer res-buf
                                 (goto-char (point-min))
                                 (re-search-forward "\n\n" nil 'move) ;; Jump to start of body
                                 (buffer-substring-no-properties (point) (point-max)))))
            (kill-buffer res-buf)
            (when (stringp res-str)
              (let ((len (length res-str)))
                (when (< 0 len)
                  (kill-new res-str)
                  (message "mjr-insert-from-web: %d characters placed on kill ring." len)))))
    (error "mjr-insert-from-web: Something went wrong"))
