; enable Common Lisp support
(require 'cl)

(push "/usr/local/bin" exec-path)

;; we're using packages from marmalade
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(add-to-list 'load-path "~/.emacs.d/customizations")
(add-to-list 'load-path "~/.emacs.d/themes")
(add-to-list 'load-path "~/.emacs.d/utils")


(setq dirs '("~/.emacs.d/utils/" "~/.emacs.d/customizations/"))

(loop for dir in dirs do
      (loop for file in (directory-files dir) do
            (unless (string-match "^\\." file)
              (load-file
               (expand-file-name
                (format (concat dir file)))))))

;; do we have el get?  it wont be present on a new machine so load it up if thats the case
(unless (require 'el-get nil t)
  (url-retrieve "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
                (lambda (s)
                  (end-of-buffer)
                  (eval-print-last-sexp))))


;; most of our stuff is coming from el-get
(require 'el-get)
(load-file "~/.emacs.d/sources.el")

(loop for file in (directory-files "~/.emacs.d/themes/") do
      (unless (string-match "^\\." file)
        (load-file
         (expand-file-name
          (format (concat "~/.emacs.d/themes/" file))))))

;; custom color theme
(require 'color-theme)
;;(color-theme-initialize)
(load-theme 'tomorrow-night-eighties t)
