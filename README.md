<!-- :shell>>> ~/core/codeBits/bin/emacs_package_com_to_md.rb mjr-emacs-unloved.el -->
# `mjr-emacs-unloved`: The land of unloved Emacs functions

Official Repository: https://github.com/richmit/mjr-emacs-unloved

## Introduction

This package contains things I don't use much, but have yet to condemn to git oblivion.  

The slightly more useful items are autoloaded:
 - `mjr-grep`                           An eshell friendly, pure Emacs grep-like function with xref capability
 - `mjr-insert-random-printable-string` Insert a random string suitable for temporary passwords.
 - `mjr-kill-from-web`                  Pull content from a URL and place it on the kill ring
  
Those closer to git oblivion are not autoloaded:
 - `mjr-nema-checksum` Compute NEMA checksum for region, and place it on the kill ring
 - `mjr-print-ps-file` Print the current buffer as a postscript file
 - `mjr-rev-line`      Reverse characters in a string

Each of the above functions is contained in an Emacs lisp code file by itself.  These files to not `provide` anything, so they should not be used with
`require`.  Instead use `load-library` to access the functions that are not autoloaded.

# Installing

The easiest way to install `mjr-preview` is to pull it directly from github:

     (package-vc-install (list 'mjr-emacs-unloved
                          :url "https://github.com/richmit/mjr-emacs-unloved"
                          :rev 'newest))

You can also just download the primary Lisp file, load it into a buffer, and then run 'M-x package-install-from-buffer'.
