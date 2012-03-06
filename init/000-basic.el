
;; スタートアップ時のメッセージを抑制
(setq inhibit-startup-message t)

;; バックアップしない
(setq make-backup-files nil)

;; 自動保存したファイルを削除する
(setq delete-auto-save-files t)

;; 自動セーブしない
(setq auto-save-default nil)

;; インデントはスペースで
(setq-default indent-tabs-mode nil)

;; 行数、列数を表示
(line-number-mode t)
(column-number-mode t)

;; 対応する括弧を光らせる
(show-paren-mode 1)

;; 一行ずつスクロール
(setq scroll-step 1)

;; 縦分割とかでも行を折り返す
(setq truncate-partial-width-windows nil)

;; アクティブでないバッファではカーソルを出さない
(setq cursor-in-non-selected-windows nil)

;; 行末の空白を削除
(add-hook 'before-save-hook 'delete-trailing-whitespace)
