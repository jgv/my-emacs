(defun decimal-number (string)
    (let ((n (string-to-number string)))
      (if (and (zerop n)
               (not (string-match "\\`\\s-*0+\\.?0*\\s-*\\'" string)))
          nil
        n)))
