; delete files by moving them to the OS X trash
(setq delete-by-moving-to-trash t)

;; open URLs in Safari
(setq browse-url-browser-function
      (lambda (url &optional new-window)
        (message url)
        (do-applescript
         (concat "tell application \"Safari\" \n activate \n open location \"" url "\" \n end tell"))))xs