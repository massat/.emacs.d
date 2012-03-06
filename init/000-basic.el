
;; mail address
(setq user-mail-address "mail@massat.jp")

;; no startup message
(setq inhibit-startup-message t)

;; don't save backup files
(setq make-backup-files nil)

;; delete auto saved files
(setq delete-auto-save-files t)

;; disable auto save
(setq auto-save-default nil)

;; set time local
(setq system-time-locale "C")

;; 行末の空白を削除
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; encoding settings
(set-language-environment      "Japanese")
(prefer-coding-system          'utf-8-unix)
(setq                          default-buffer-file-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-terminal-coding-system    'utf-8)
(set-keyboard-coding-system    'utf-8)
(set-clipboard-coding-system   'utf-8)

;; make y/n alias of yes/no
(defalias 'yes-or-no-p 'y-or-n-p)