;; Ruby用設定
;; http://d.hatena.ne.jp/khiker/20070630/emacs_ruby_flymake

(defvar flymake-ruby-err-line-patterns
  '(("^\\(.*\\):\\([0-9]+\\): \\(.*\\)$" 1 2 nil 3)))

(defconst flymake-allowed-ruby-file-name-masks
  '(
    (".+\\.rb$"  flymake-ruby-init)
    ("Rakefile$" flymake-ruby-init)
    )
  )

;; Invoke ruby with '-c' to get syntax checking
(defun flymake-ruby-init ()
  (let* ((temp-file   (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
         (local-file  (file-relative-name
                       temp-file
                       (file-name-directory buffer-file-name))))
    (list "ruby" (list "-c" local-file))))

(defun flymake-ruby-load ()
  (interactive)
  (defadvice flymake-post-syntax-check (before flymake-force-check-was-interrupted)
    (setq flymake-check-was-interrupted t))
  (ad-activate 'flymake-post-syntax-check)
  (setq flymake-allowed-file-name-masks (append flymake-allowed-file-name-masks flymake-allowed-ruby-file-name-masks))
  (setq flymake-err-line-patterns flymake-ruby-err-line-patterns)
  (flymake-mode t))

(add-hook 'ruby-mode-hook 'flymake-ruby-load)
