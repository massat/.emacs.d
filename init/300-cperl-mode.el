; cperl-mode
(defalias 'perl-mode 'cperl-mode)
(add-to-list 'auto-mode-alist '("\\.psgi$" . perl-mode))
(add-to-list 'auto-mode-alist '("\\.pm$"   . perl-mode))
(add-to-list 'auto-mode-alist '("\\.pl$"   . perl-mode))
(add-to-list 'auto-mode-alist '("\\.t$"    . perl-mode))


;; Align for cperl-mode
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
               (modes    . '(cperl-mode))))

(add-to-list 'align-dq-string-modes 'cperl-mode)
(add-to-list 'align-sq-string-modes 'cperl-mode)
(add-to-list 'align-open-comment-modes 'cperl-mode)
