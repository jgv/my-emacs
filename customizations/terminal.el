(setq comint-prompt-read-only)

(require 'ansi-color)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(setq ansi-term-color-vector [unspecified "#000000" "#963F3C" "#5FFB65" "#FFFD65" "#0082FF" "#FF2180" "#57DCDB" "#FFFFFF"])

(defadvice ansi-term (after ansi-term-after-advice (org))
  "disable smart tab mode after an ansi-term loads"
  (smart-tab-mode 0))
(ad-activate 'ansi-term)

