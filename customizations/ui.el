(setq inhibit-startup-message t) ; no startup message

(set-variable 'truncate-lines t) ; truncate whitespace

(transient-mark-mode 1) 

(setq query-replace-highlight t) ;; highlight in search and replace

(setq search-highlight t) ;; highlight searches

(setq scroll-step 1) ; smooth scroll

(setq visible-bell 1)

(setq ring-bell-function 'ignore) ;; no bell

(set-face-attribute 'default nil :font "Inconsolata-dz-12")

;; no scrollbar, toolbar, menu
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

(global-hl-line-mode 0)

;; show full path of file
(setq-default
 frame-title-format
 (list '((buffer-file-name " %f" (dired-directory 
	 			  dired-directory
				  (revert-buffer-function " %b"
				  ("%b - Dir:  " default-directory)))))))
