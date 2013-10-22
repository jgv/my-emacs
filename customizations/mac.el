; delete files by moving them to the OS trash
(setq delete-by-moving-to-trash t)

;; open URLs in Chrome
(setq browse-url-browser-function
      (lambda (url &optional new-window)
        (message url)
        (do-applescript
         (concat "tell application \"Google Chrome\" \n activate \n open location \"" url "\" \n end tell"))))


;;;; Normalize key bindings with Mac OS X system ones

;; command + up/down/left/right = file start/end, line start/end
(global-set-key (kbd "<s-up>")    'beginning-of-buffer)
(global-set-key (kbd "<s-down>")  'end-of-buffer)
(global-set-key (kbd "<s-left>")  'move-beginning-of-line)
(global-set-key (kbd "<s-right>") 'move-end-of-line)

;; make M-up and M-down the same as C-up and C-down because the former
;; is how it's bound in OSX
(global-set-key (kbd "<M-up>") 'backward-paragraph)
(global-set-key (kbd "<M-down>") 'forward-paragraph)
