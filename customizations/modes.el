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
(and
      (require 'centered-cursor-mode)
      (global-centered-cursor-mode +1))

; Textile
(require 'textile-minor-mode)
(add-to-list 'auto-mode-alist '("\\.textile\\'" . textile-minor-mode))


; Rails
(require 'rinari)
(setq rinari-tags-file-name "TAGS")

; YAML
(autoload 'yaml-mode "YAML" nil t)
(add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

; JavaScript
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))


; nxhtml for (html/erb)
(load "~/.emacs.d/vendor/nxhtml/autostart.el")
(setq
  nxhtml-global-minor-mode t
  mumamo-chunk-coloring 'submode-colored
  nxhtml-skip-welcome t
  indent-region-mode t
  rng-nxml-auto-validate-flag nil
  nxml-degraded t)

(add-to-list 'auto-mode-alist '("\\.html\\.erb\\'" . eruby-nxhtml-mumamo))
(eval-after-load 'nxhtml
  '(eval-after-load 'color-theme
     (custom-set-faces
       '(mumamo-background-chunk-major ((((class color) (min-colors 88) (background dark)) (:background "#000000"))))
       '(mumamo-background-chunk-submode1 ((((class color) (min-colors 88) (background dark)) (:background "#000000"))))
)))

; html/css
(require 'rainbow-mode)
(autoload 'rainbow-mode "rainbow-mode" nil t)
(setq auto-mode-alist (cons '("\\.scss$" . rainbow-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.css$" . rainbow-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.js$" . rainbow-mode) auto-mode-alist))

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
