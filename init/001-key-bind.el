
;; C-hでバックスペース
(global-set-key "\C-h" 'delete-backward-char)

;; cua-mode
(cua-mode t)
(setq cua-enable-cua-keys nil) ; そのままだと C-x が切り取りになってしまったりするので無効化
