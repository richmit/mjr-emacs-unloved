;;; mjr-misc-emacs-goodies.el --- Miscellaneous Functions. -*- lexical-binding:t; coding: utf-8; mode:emacs-lisp; fill-column:158 -*-

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
;; Version:     0.3
;; Keywords:    
;; URL:         https://github.com/richmit/misc

;; This file is not part of Emacs

;;; Commentary:
;;
;; This package contains stuff I don't use much, but are not yet condemned git oblivion.  
;; 
;;  - Autoloaded
;;   - mjr-grep                           An eshell friendly, pure Emacs grep-like function with xref capablity
;;   - mjr-insert-random-printable-string Insert a random string sutable for temporary passwords.
;;   - mjr-kill-from-web.el               Pull content from a URL and place it on the kill ring
;;  - Not Autoloaded
;;   - mjr-nema-checksum.el               Compute NEMA checksum for region, and place it on the kill ring
;;   - mjr-print-ps-file.el               Print the current buffer as a postscript file
;;   - mjr-rev-line.el                    Reverse characters in a string
;;

;;; Code:

(provide 'mjr-misc-emacs-goodies)

;; (mjr-install-mjr-packages :reinstall :git 'mjr-misc-emacs-goodies)

;;; mjr-misc-emacs-goodies.el ends here

