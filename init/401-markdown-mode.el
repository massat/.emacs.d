; markdown-mode,el
(require 'markdown-mode)

(setq auto-mode-alist
      (cons '("\\.markdown" . markdown-mode) auto-mode-alist))
