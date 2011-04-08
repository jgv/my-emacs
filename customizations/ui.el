(setq inhibit-startup-message t) ; no startup message

(set-variable 'truncate-lines t) ; truncate whitespace

(transient-mark-mode 1) 

(setq query-replace-highlight t) ;; highlight in search and replace

(setq search-highlight t) ;; highlight searches

;;(setq font-lock-maximum-decoration t)

(setq display-time-day-and-date t) (display-time)

(setq scroll-conservatively 10000)

(setq scroll-step 1) ; smooth scroll

(setq visible-bell 1)

(setq ring-bell-function 'ignore) ;; no bell

;; no scrollbar, toolbar, menu
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

(global-hl-line-mode 1)

(add-to-list 'load-path "~/emacs.d/vendor/solarized/color-theme-solarized.el")
(require 'color-theme) ; give it some color
(color-theme-initialize)

;; set the color theme based on time of day
(if (>  (decimal-number (format-time-string "%H" (current-time))) 19)
    (color-theme-solarized 'dark)
  (color-theme-solarized 'light))


;;(set-face-background 'hl-line "#1A1A1A")

;; show full path of file
(setq-default
 frame-title-format
 (list '((buffer-file-name " %f" (dired-directory 
	 			  dired-directory
				  (revert-buffer-function " %b"
				  ("%b - Dir:  " default-directory)))))))

;; fix shell
(add-hook 'shell 'ansi-color-for-comint-mode-on)

;; fullscreen
(defun maximize-frame () 
  (interactive)
  (set-frame-position (selected-frame) 0 0)
  (set-frame-size (selected-frame) 1000 1000))

(global-set-key (kbd "<S-return>") 'maximize-frame) ;; shift + enter for full screen
