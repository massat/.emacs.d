; php-mode
;; uses php-mode-improved.el

(require 'php-mode)
(add-hook 'php-mode-hook
          '(lambda ()
             (define-abbrev php-mode-abbrev-table "ex" "extends")
             (local-set-key (kbd "C-c C-f") 'anything-project)
             (c-set-offset 'case-label' 4)
             (c-set-offset 'arglist-intro' 4)
             (c-set-offset 'arglist-cont-nonempty' 4)
             (c-set-offset 'arglist-close' 0)
             (setq tab-width 4)
             (setq indent-tabs-mode nil)
             (setq c-basic-offset 4)
             ))