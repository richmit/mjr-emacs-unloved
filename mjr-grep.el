;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;###autoload
(defun mjr-grep (regex file-name-or-list-of-same )
  "Search the file, or list of files, for the given REGEX.
Results are presented in an xref buffer if xref is available, and in a grep-mode buffer otherwise.  Automatically ignores non-regular (directories, special,
etc) and non-readable files.  This function is 100% pure Emacs lisp -- no external tools are required.  Works well when used as an eshell command.
Example:
     (mjr-grep \"ramCanvasPixelFilter\" (file-expand-wildcards \"*.cpp\"))
The example above may be called as an e-shell command like this:
     $ mjr-grep ramCanvasPixelFilter *.cpp"
  (let ((good-file-names (cl-remove-if (lambda (file-name)
                                         (or (unless (file-exists-p   file-name) (message "mjr-grep: File not found: %s" file-name))
                                             (unless (file-regular-p  file-name) (message "mjr-grep: File not regular: %s" file-name))
                                             (unless (file-readable-p file-name) (message "mjr-grep: File not readable: %s" file-name))))
                                       (mapcar #'expand-file-name
                                               (mapcan (lambda (wildcard)
                                                         (let ((file-list (file-expand-wildcards wildcard)))
                                                           (or file-list
                                                               (null (message "mjr-grep: Did not match any files: %s" wildcard)))))
                                                       (if (listp file-name-or-list-of-same)
                                                           file-name-or-list-of-same
                                                           (list file-name-or-list-of-same)))))))
    (if good-file-names
        (let ((hits (mapcan (lambda (file-name)
                              (cl-loop for line-str in (ignore-errors
                                                         (with-temp-buffer
                                                           (insert-file-contents file-name)
                                                           (split-string (buffer-string) "\\(\r\n\\|\n\\|\r\\)")))
                                       for line-num from 1
                                       when (string-match-p regex line-str)
                                       collect (list line-num file-name line-str)))
                            good-file-names)))
          (if hits
              (if (and (fboundp 'xref--show-xrefs)
                       (fboundp 'xref--convert-hits))
                  (xref--show-xrefs (xref--convert-hits hits regex) nil 't)
                  (progn (if (version< emacs-version "25.2")
                             (message "mjr-grep: Falling back to grep-mode. Emacs is too old to use xref.  ")
                             (message "mjr-grep: Falling back to grep-mode. Emacs is new enough it should have xref, so something is probably broken."))
                         (switch-to-buffer (generate-new-buffer "mjr-grep"))
                         (dolist (hit hits)
                           (cl-destructuring-bind (line-num file-name line-str) hit
                             (insert (format "%s:%d:%s\n" file-name line-num line-str))))
                         (grep-mode)
                         (goto-char 0)))
              (message "mjr-grep: No matches found")))
        (message "mjr-grep: No searchable files found"))))
