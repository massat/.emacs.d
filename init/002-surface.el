;; indent
(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 4)
(setq-default tab-width 4)
(c-set-offset 'case-label '+)

;; enable narrowing
(put 'narrow-to-region 'disabled nil)

;; show column / line numbers
(line-number-mode t)
(column-number-mode t)

;; highlight brackets
(show-paren-mode 1)

;; scrolls libe by line
(setq scroll-step 1)

;; 縦分割とかでも行を折り返す
(setq truncate-partial-width-windows nil)

;; アクティブでないバッファではカーソルを出さない
(setq cursor-in-non-selected-windows nil)

;; dialogue
(setq use-dialog-box nil)
(defalias 'message-box 'message)
