;;(require 'textmate)
;;(textmate-mode t)

;;(require 'centered-cursor-mode)
;;(global-centered-cursor-mode +1)

;; js, json, ejs, coffee
(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))
(add-to-list 'auto-mode-alist '("\\.ejs$" . html-mode))

;; hooks

(defun ruby-mode-hook ()
  (autoload 'ruby-mode "ruby-mode" nil t)
  (add-to-list 'auto-mode-alist '("Capfile" . ruby-mode))
  (add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
  (add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
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

(defun css-mode-hook ()
  (autoload 'css-mode "css-mode" nil t)
  (add-hook 'css-mode-hook '(lambda ()
                              (setq css-indent-level 2)
                              (setq css-indent-offset 2))))

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
  (autoload 'rainbow-mode "rainbow-mode" nil t)
  (add-to-list 'auto-mode-alist '("\\.scss\\'" . rainbow-mode))
  (add-to-list 'auto-mode-alist '("\\.css\\'" . rainbow-mode)))

(defun textile-mode-hook ()
  (autoload 'textile-mode "textile-mode" nil t)
  (add-to-list 'auto-mode-alist '("\\.textile\\'" . textile-mode)))
  
(defun coffee-mode-hook ()
  (autoload 'textile-mode "coffee-mode" nil t)
  (add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
  (add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode)))
