; enable Common Lisp support
(require 'cl)

(push "/usr/local/bin" exec-path)

(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(load-file "~/.emacs.d/load-directory.el")
(add-to-list 'load-path "~/.emacs.d/customizations")
(add-to-list 'load-path "~/.emacs.d/utils")

(mapcar 'load-directory '("~/.emacs.d/utils"))
(mapcar 'load-directory '("~/.emacs.d/customizations"))

(unless (require 'el-get nil t) 
  (url-retrieve "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
                (lambda (s) 
                  (end-of-buffer) 
                  (eval-print-last-sexp))))

(require 'el-get)
(load-file "~/.emacs.d/sources.el")
