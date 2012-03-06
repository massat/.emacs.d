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

;; Align for php-mode
;; http://d.hatena.ne.jp/Tetsujin/20070614/1181757931
;; modified
(require 'align)
(add-to-list 'align-rules-list
             '(php-assignment
               (regexp   . "[^-=!^&*+<>/.| \t\n]\\(\\s-*[.-=!^&*+<>/|]*\\)=>?\\(\\s-*\\)\\([^= \t\n]\\|$\\)")
               (justify  . t)
               (tab-stop . nil)
               (separate . (concat "\\(^\\s-*$\\)\\|"
                                   "\\([({}\\(/\*\\)]$\\)\\|"
                                   "\\(^\\s-*[)}\\(\*/\\)][,;]?$\\)\\|"
                                   "\\(^\\s-*\\(}\\|for\\|while\\|if\\|else\\|"
                                   "switch\\|case\\|break\\|continue\\|do\\)[ ;]\\)"))
               (modes    . '(php-mode))))

(add-to-list 'align-dq-string-modes 'php-mode)
(add-to-list 'align-sq-string-modes 'php-mode)
(add-to-list 'align-open-comment-modes 'php-mode)
