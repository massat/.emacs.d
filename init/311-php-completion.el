; php-completion

(add-hook 'php-mode-hook
          (lambda ()
            (require 'php-completion)
            (php-completion-mode t)
            (define-key php-mode-map (kbd "C-o") 'phpcmp-complete)))

(add-hook 'php-mode-hook
          (lambda ()
            (when (require 'auto-complete nil t)
              (make-variable-buffer-local 'ac-sources)
              (add-to-list 'ac-sources 'ac-source-php-completion)
              ;; if you like patial match,
              ;; use `ac-source-php-completion-patial' instead of `ac-source-php-completion'.
              ;; (add-to-list 'ac-sources 'ac-source-php-completion-patial)
              (auto-complete-mode t))))
