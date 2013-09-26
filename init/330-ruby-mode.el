; ruby-mode
(add-to-list 'auto-mode-alist '("Gemfile"   . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile"  . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile" . ruby-mode))
(require 'ruby-mode)
(add-hook 'ruby-mode-hook
          '(lambda ()
             (define-abbrev ruby-mode-abbrev-table "ex" "extends")
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
             '(ruby-assignment
               (regexp   . "[^-=!^&*+<>/.| \t\n]\\(\\s-*[.-=!^&*+<>/|]*\\)=>?\\(\\s-*\\)\\([^= \t\n]\\|$\\)")
               (justify  . t)
               (tab-stop . nil)
               (separate . (concat "\\(^\\s-*$\\)\\|"
                                   "\\([({}\\(/\*\\)]$\\)\\|"
                                   "\\(^\\s-*[)}\\(\*/\\)][,;]?$\\)\\|"
                                   "\\(^\\s-*\\(}\\|for\\|while\\|if\\|else\\|"
                                   "switch\\|case\\|break\\|continue\\|do\\)[ ;]\\)"))
               (modes    . '(ruby-mode))))

(add-to-list 'align-dq-string-modes 'ruby-mode)
(add-to-list 'align-sq-string-modes 'ruby-mode)
(add-to-list 'align-open-comment-modes 'ruby-mode)
