(setq inhibit-startup-message t) ; no startup message

(set-variable 'truncate-lines t) ; truncate whitespace

(transient-mark-mode 1) 

(setq query-replace-highlight t) ;; highlight in search and replace

(setq search-highlight t) ;; highlight searches

(setq font-lock-maximum-decoration t)

(setq display-time-day-and-date t) (display-time)

(setq scroll-conservatively 10000
      scroll-step 1) ; smooth scroll

(setq visible-bell 1)

(setq ring-bell-function 'ignore) ;; no bell

(set-scroll-bar-mode nil) ;; no scrollbar

(menu-bar-mode 1) ;; no menu

(tool-bar-mode 0) ;; no toolbar

(global-hl-line-mode 1)

(require 'color-theme) ; give it some color
(color-theme-initialize)
(color-theme-clarity)

(set-face-background 'hl-line "#1A1A1A")

;; show full path of file
(setq-default
 frame-title-format
 (list '((buffer-file-name " %f" (dired-directory 
	 			  dired-directory
				  (revert-buffer-function " %b"
				  ("%b - Dir:  " default-directory)))))))
