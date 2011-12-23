; tabs and indentation
(setq standard-indent 2)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)

; encoding
(prefer-coding-system 'utf-8)
(set-language-environment 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)

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
(subword-mode 1)

; flymake mode
(add-hook 'find-file-hook 'flymake-find-file-hook)