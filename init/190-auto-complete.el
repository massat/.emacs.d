(eval-when-compile
  (require 'cl))

(require 'auto-complete)
(require 'auto-complete-config)

(global-auto-complete-mode t)
(ac-set-trigger-key "TAB")
(setq ac-auto-start 1)
(setq ac-auto-show-menu 0.2)

;; ac-company
;; INSTALL
;; (install-elisp "https://raw.github.com/buzztaiki/auto-complete/master/ac-company.el")
(require 'ac-company)

(setq ac-modes
      '(cperl-mode
        css-mode
        emacs-lisp-mode
        html-helper-mode
        javascript-mode
        js-mode
        js2-mode
        lisp-interaction-mode
        lisp-mode
        makefile-mode
        org-mode
        perl-mode
        php-mode
        python-mode
        ruby-mode
        scala-mode
        sh-mode
        tmt-mode
        xml-mode
        yaml-mode))

(setq-default ac-sources '(ac-source-yasnippet
                           ac-source-dictionary
                           ac-source-gtags
                           ac-source-words-in-same-mode-buffers))


