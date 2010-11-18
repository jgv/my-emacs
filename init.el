; enable Common Lisp support
(require 'cl)

;;; This was installed by package-install.el.                                                                                                             
;;; This provides support for the package system and                                                                                                     
;;; interfacing with ELPA, the package archive.                                                                                                           
;;; Move this code earlier if you want to reference                                                                                                      
;;; packages in your .emacs.                                                                                                                              
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))


; directories for the load path
(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/customizations")
(add-to-list 'load-path "~/.emacs.d/util")
(add-to-list 'load-path "~/.emacs.d/vendor")

; handy function to load all elisp files in a directory
(load-file "~/.emacs.d/load-directory.el")

; load functions (like vendor)
(mapcar 'load-directory '("~/.emacs.d/util"))

; load some modes
(vendor 'color-theme)
(vendor 'textmate)
(vendor 'yaml-mode)
(vendor 'rinari)
(vendor 'centered-cursor-mode)

(mapcar 'load-directory '("~/.emacs.d/customizations"))