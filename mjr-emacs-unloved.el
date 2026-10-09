;;; mjr-emacs-unloved.el --- Miscellaneous Functions. -*- lexical-binding:t; coding: utf-8; mode:emacs-lisp; fill-column:158 -*-

;; Copyright (c) 2026-2026 Mitch Richling <https://www.mitchr.me>.  All rights reserved.
;;
;; Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
;;
;; 1. Redistributions of source code must retain the above copyright notice, this list of conditions, and the following disclaimer.
;;
;; 2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions, and the following disclaimer in the documentation
;;    and/or other materials provided with the distribution.
;;
;; 3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without
;;    specific prior written permission.
;;
;; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
;; IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
;; FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
;; SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
;; TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

;; Author:      Mitch Richling <https://www.mitchr.me/>
;; Version:     0.4
;; Keywords:    
;; URL:         https://github.com/richmit/mjr-emacs-unloved

;; This file is not part of Emacs

;;; Commentary:
;;
;; * `mjr-emacs-unloved': The land of unloved Emacs functions
;;
;; Official Repository: https://github.com/richmit/mjr-emacs-unloved
;;
;; ** Introduction
;;
;; This package contains things I don't use much, but have yet to condemn to git oblivion.  
;; 
;; The slightly more useful items are autoloaded:
;;  - `mjr-grep'                           An eshell friendly, pure Emacs grep-like function with xref capability
;;  - `mjr-insert-random-printable-string' Insert a random string suitable for temporary passwords.
;;  - `mjr-kill-from-web'                  Pull content from a URL and place it on the kill ring
;;   
;; Those closer to git oblivion are not autoloaded:
;;  - `mjr-nema-checksum' Compute NEMA checksum for region, and place it on the kill ring
;;  - `mjr-print-ps-file' Print the current buffer as a postscript file
;;  - `mjr-rev-line'      Reverse characters in a string
;;
;; Each of the above functions is contained in an Emacs lisp code file by itself.  These files to not `provide' anything, so they should not be used with
;; `require'.  Instead use `load-library' to access the functions that are not autoloaded.
;;
;; * Installing
;;
;; The easiest way to install `mjr-preview' is to pull it directly from github:
;;
;;      (package-vc-install (list 'mjr-emacs-unloved
;;                           :url "https://github.com/richmit/mjr-emacs-unloved"
;;                           :rev 'newest))
;;
;; You can also just download the primary Lisp file, load it into a buffer, and then run 'M-x package-install-from-buffer'.
;;

;;; Code:

(provide 'mjr-emacs-unloved)

;; (mjr-install-mjr-packages :reinstall :git 'mjr-emacs-unloved)

;;; mjr-emacs-unloved.el ends here

