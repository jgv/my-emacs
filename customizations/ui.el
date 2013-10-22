; no startup message
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message t
      inhibit-startup-screen t)

; truncate whitespace
(set-variable 'truncate-lines t)

;; region highlighting etc
(transient-mark-mode 1)

;; highlight in search and replace
(setq query-replace-highlight t)

;; highlight searches
(setq search-highlight t)

; smooth scroll
(setq scroll-step 1)

;; no bell at all ever
(setq ring-bell-function 'ignore)

;; use inconsolata
(set-face-attribute 'default nil :font "Inconsolata-dz-12")

;; no scrollbar, toolbar, menu
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; highlight current line
(global-hl-line-mode 0)

;; show full path of file
(setq-default
 frame-title-format
 (list '((buffer-file-name " %f" (dired-directory
          dired-directory
          (revert-buffer-function " %b"
          ("%b - Dir:  " default-directory)))))))

