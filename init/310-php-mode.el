; php-mode
;; uses php-mode-improved.el

(require 'php-mode)
(add-hook 'php-mode-hook
          '(lambda ()
             (define-abbrev php-mode-abbrev-table "ex" "extends")
             (local-set-key (kbd "C-c C-f") 'anything-project)
             ))