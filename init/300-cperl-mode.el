; cperl-mode
(defalias 'perl-mode 'cperl-mode)
(add-to-list 'auto-mode-alist '("\\.psgi$" . perl-mode))
(add-to-list 'auto-mode-alist '("\\.pm$"   . perl-mode))
(add-to-list 'auto-mode-alist '("\\.pl$"   . perl-mode))
(add-to-list 'auto-mode-alist '("\\.t$"    . perl-mode))
