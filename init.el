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
(add-to-list 'load-path "~/.emacs.d/themes")

(mapcar 'load-directory '("~/.emacs.d/utils"))
(mapcar 'load-directory '("~/.emacs.d/themes"))
(mapcar 'load-directory '("~/.emacs.d/customizations"))

(unless (require 'el-get nil t)
  (url-retrieve "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
                (lambda (s)
                  (end-of-buffer)
                  (eval-print-last-sexp))))

(require 'el-get)
(load-file "~/.emacs.d/sources.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("4870e6cb6f0a70c14ee73db30b69a8a1f08d6ec9a689c366e88636fb81e8022d" "cf2bb5e8046ca363183c87e8d33932f2a76a3d705b9db2721631777bbce92968" "e439d894bf9406baf73056cf7e3c913ee5c794b6adadbbb9f614aebed0fd9ce7" "9117c98819cfdeb59780cb43e5d360ff8a5964d7dd9783b01708bda83098b9fd" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
