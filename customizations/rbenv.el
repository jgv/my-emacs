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
