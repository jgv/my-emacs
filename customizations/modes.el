;; json, ejs, cljs
(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))
(add-to-list 'auto-mode-alist '("\\.ejs$" . html-mode))
(add-to-list 'auto-mode-alist '("\\.cljs$" . clojure-mode))

(setq js-indent-level 2)

;; hooks

(defun ruby-mode-hook ()
  (autoload 'ruby-mode "ruby-mode" nil t)
  (add-to-list 'auto-mode-alist '("Capfile" . ruby-mode))
  (add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
  (add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.gemspec\\'" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.rb\\'" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.ru\\'" . ruby-mode))
  (add-hook 'ruby-mode-hook '(lambda ()
                               (setq ruby-deep-arglist t)
                               (setq ruby-deep-indent-paren nil)
                               (setq c-tab-always-indent nil)
                               (require 'inf-ruby)
                               (require 'ruby-compilation))))

(defun yaml-mode-hook ()
  (autoload 'yaml-mode "yaml-mode" nil t)
  (add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
  (add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode)))

(defun php-mode-hook ()
  (autoload 'css-mode "php-mode" nil t)
  (add-to-list 'auto-mode-alist '("\\.php$" . php-mode)))

(defun css-mode-hook ()
  (autoload 'css-mode "css-mode")
  (add-to-list 'auto-mode-alist '("\\.css\\'"))
  (add-hook 'css-mode-hook '(lambda ()
                              (setq css-indent-level 2)
                              (setq css-indent-offset 2))))

(defun scss-mode-hook ()
  (autoload 'scss-mode "scss-mode")
  (setq-default scss-compile-at-save nil)
  (add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode)))

(defun rhtml-mode-hook ()
  (autoload 'rhtml-mode "rhtml-mode" nil t)
  (add-to-list 'auto-mode-alist '("\\.erb\\'" . rhtml-mode))
  (add-hook 'rhtml-mode '(lambda ()
                           (define-key rhtml-mode-map (kbd "M-s") 'save-buffer))))

(defun smart-tab-hook ()
  (global-smart-tab-mode 1)
  (setq smart-tab-using-hippie-expand t)
  (setq smart-tab-completion-functions-alist
        '((emacs-lisp-mode . lisp-complete-symbol)
          (text-mode . dabbrev-completion))))

(defun rainbow-mode-hook ()
  (autoload 'rainbow-mode "rainbow-mode" nil t))

(defun textile-mode-hook ()
  (autoload 'textile-mode "textile-mode" nil t)
  (add-to-list 'auto-mode-alist '("\\.textile\\'" . textile-mode)))

(defun markdown-mode-hook ()
  (autoload 'textile-mode "markdown-mode" nil t)
  (add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode)))
  
(defun coffee-mode-hook ()
  (autoload 'textile-mode "coffee-mode" nil t)
  (add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
  (add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode)))

(defun magit-hook ()
  (global-set-key (kbd "C-x C-z") 'magit-status))

(defun centered-cursor-hook ()
  (global-centered-cursor-mode +1))

(defun textmate-hook ()
  (textmate-mode t))

(defun yasnippet-hook ()
  (require 'yasnippet)
  (setq yas/snippet-dir "~/.emacs.d/customizations/snippets")
  (yas/global-mode 1))

(defun io-mode-inf-hook ()
  (require 'io-mode-inf))

(defun io-mode-hook ()
  (require 'io-mode)
  (add-to-list 'auto-mode-alist '("\\.io\\'" . io-mode)))

(defun js-comint-hook ()
  (require 'js-comint)
  (setq inferior-js-program-command "node")
  (setq inferior-js-mode-hook 
        (lambda ()
          ;; We like nice colors
          (ansi-color-for-comint-mode-on)
          ;; Deal with some prompt nonsense
          (add-to-list 'comint-preoutput-filter-functions
                       (lambda (output)
                         (replace-regexp-in-string ".*1G\.\.\..*5G" "..."
                                                   (replace-regexp-in-string ".*1G.*3G" "> " output)))))))
