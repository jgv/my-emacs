;; Setting rbenv path
(setenv "PATH" (concat (getenv "HOME") "/.rbenv/shims:" (getenv "HOME") "/.rbenv/bin:" (getenv "PATH")))
(setq exec-path (cons (concat (getenv "HOME") "/.rbenv/shims") (cons (concat (getenv "HOME") "/.rbenv/bin") exec-path)))

(defvar rbenv-home (concat (getenv "HOME") "/.rbenv")
  "Directory of rbenv home.")
(defvar rbenv-version-dir (concat rbenv-home "/versions")
  "Directory of rbenv versions.")
(defvar rbenv-versions (directory-files rbenv-version-dir nil "^[0-9a-zA-Z_]")
  "rbenv versions")

(defun rbenv (&optional version)
  "rbenv shell"
  (interactive)
  (or version
      (setq version (completing-read "version: " rbenv-versions nil t)))
  (setenv "RBENV_VERSION" version))

(provide 'rbenv)
