; perl-completion.el

;; for cperl-mode
(setq plcmp-use-keymap nil)
(require 'perl-completion)
(add-hook 'cperl-mode-hook
          '(lambda ()
             (setq plcmp-use-keymap nil)
             (add-to-list 'ac-sources 'ac-source-perl-completion)
             (perl-completion-mode t)))