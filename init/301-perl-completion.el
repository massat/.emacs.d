; perl-completion.el
(add-hook 'cperl-mode-hook
          (lambda()
            (require 'perl-completion)
            (perl-completion-mode t)
            (local-set-key (kbd "C-c C-f") 'anything-project)
            ))

(add-hook  'cperl-mode-hook
           (lambda ()
             (when (require 'auto-complete nil t) ; no error whatever auto-complete.el is not installed.
               (auto-complete-mode t)
               (make-variable-buffer-local 'ac-sources)
               (setq ac-sources
                     '(ac-source-perl-completion)))
             ))

;; anything-project
(ap:add-project
 :name 'perl
 :look-for '("Makefile.PL" "Build.PL") ; or
 :include-regexp '("\\.pm$" "\\.t$" "\\.pl$" "\\.PL$") ;or
 )
