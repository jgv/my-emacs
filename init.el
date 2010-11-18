; enable Common Lisp support
(require 'cl)

; directories for the load path
(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/customizations")
(add-to-list 'load-path "~/.emacs.d/util")
(add-to-list 'load-path "~/.emacs.d/vendor")

; load some modes
(vendor 'color-theme)
(vendor 'textmate)
(vendor 'yaml-mode)
(vendor 'rinari)
(vendor 'centered-cursor-mode)

(mapcar 'load-directory '("~/.emacs.d/customizations"))