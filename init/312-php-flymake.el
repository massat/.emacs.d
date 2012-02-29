;; PHP用設定
(defvar flymake-php-err-line-patterns
  '(("\\(Parse\\|Fatal\\) error: +\\(.*?\\) in \\(.*?\\) on line \\([0-9]+\\)$" 3 4 nil 2)))

(defconst flymake-allowed-php-file-name-masks
  '(("\\.php$" flymake-php-init))
  )

(defun flymake-php-init ()
  (let* ((temp-file (flymake-init-create-temp-buffer-copy
                     'flymake-create-temp-inplace))
         (local-file (file-relative-name
                      temp-file
                      (file-name-directory buffer-file-name))))
    (list "php" (list "-f" local-file "-l"))))

(defun flymake-php-load ()
  (interactive)
  (defadvice flymake-post-syntax-check (before flymake-force-check-was-interrupted)
    (setq flymake-check-was-interrupted t))
  (ad-activate 'flymake-post-syntax-check)
  (setq flymake-allowed-file-name-masks (append flymake-allowed-file-name-masks flymake-allowed-php-file-name-masks))
  (setq flymake-err-line-patterns flymake-php-err-line-patterns)
  (flymake-mode t))

(add-hook 'php-mode-hook 'flymake-php-load)
