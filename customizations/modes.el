; TextMate
(require 'textmate)
(textmate-mode t)

; Git
(require 'magit)
(autoload 'magit-status "magit" nil t)
(autoload 'mo-git-blame-file "mo-git-blame" nil t)
(autoload 'mo-git-blame-current "mo-git-blame" nil t)

;;centered-cursor mode
(load "~/.emacs.d/vendor/centered-cursor-mode.el")
(and (require 'centered-cursor-mode)
     (global-centered-cursor-mode +1))

; Textile
(require 'textile-minor-mode)
(add-to-list 'auto-mode-alist '("\\.textile\\'" . textile-minor-mode))


; Rails
(require 'rinari)
(setq rinari-tags-file-name "TAGS")
(add-to-list 'auto-mode-alist '("\\.html\\.erb\\'" . eruby-nxhtml-mumamo))

(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle 'overlay)

(autoload 'ruby-mode "ruby-mode" "Mode for editing ruby source files" t)
(autoload 'run-ruby "inf-ruby" "Run an inferior Ruby process")
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(setq auto-mode-alist (cons '("Rakefile" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.rake" . ruby-mode) auto-mode-alist))


(require 'rvm)
(rvm-use-default)

; YAML
(autoload 'yaml-mode "YAML" nil t)
(add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

; nxhtml for (html/erb)
(load "~/.emacs.d/vendor/nxhtml/autostart.el")
(setq
  nxhtml-global-minor-mode t
  mumamo-chunk-coloring 'submode-colored
  nxhtml-skip-welcome t
  indent-region-mode t
  rng-nxml-auto-validate-flag nil
  nxml-degraded t)

(add-to-list 'auto-mode-alist '("\\.html\\.erb\\'" . eruby-nxhtml-mumamo-mode))

; rainbow mode
(require 'rainbow-mode)
(autoload 'rainbow-mode "rainbow-mode" nil t)
(setq auto-mode-alist (cons '("\\.css\\.scss$" . rainbow-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.scss$" . rainbow-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.css$" . rainbow-mode) auto-mode-alist))

; JavaScript

(autoload 'js-mode "js-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))

; sass
(require 'scss-mode)
(autoload 'scss-mode "scss-mode" nil t)
(setq auto-mode-alist (cons '("\\.scss$" . scss-mode) auto-mode-alist))

; perspectives
(require 'perspective)

; smart-tab
(require 'smart-tab)
(global-smart-tab-mode 1)
(setq smart-tab-using-hippie-expand nil)
(setq smart-tab-completion-functions-alist
  '((emacs-lisp-mode . lisp-complete-symbol)
    (text-mode . dabbrev-completion)))

; processing
(add-to-list 'load-path "~/.emacs.d/vendor/processing")
(autoload 'processing-mode "processing-mode" "Processing mode" t)
(add-to-list 'auto-mode-alist '("\\.pde$" . processing-mode))
(setq processing-location "~/.emacs.d/vendor/processing")

; tweets
(require 'twittering-mode)

; simplenote
(require 'simplenote)
(setq simplenote-email "jvingiano@gmail.com")
(simplenote-setup)
