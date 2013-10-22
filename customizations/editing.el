; encoding
(prefer-coding-system 'utf-8)
(set-language-environment 'utf-8)
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)

; tab width
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)

; show column number in bar
(column-number-mode t)

; highlight URLs in comments/strings
(add-hook 'find-file-hooks 'goto-address-prog-mode)

; highlight matching parens
(show-paren-mode t)

; apply syntax highlighting to all buffers
(global-font-lock-mode t)

; wrap lines in a tasteful way
(global-visual-line-mode 1)

; recognize camelCase as a word boundary
(global-subword-mode 1)

;; no border chrome
(set-fringe-style 0)

;; no tooltips. put them in the minibuffer
(tooltip-mode -1)

; y/n
(fset 'yes-or-no-p 'y-or-n-p)

; backups
(setq backup-directory-alist `(("." . "~/.emacs.d/.backups")))
