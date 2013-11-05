
;; add to path
(add-to-list 'exec-path (expand-file-name "~/lib/go/bin"))

;; load go-mode
(add-to-list 'load-path "go-mode-load.el" t)
(require 'go-mode-load)

;; godef
(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd "M-.") 'godef-jump)))

;; gocode
(require 'go-autocomplete)
(require 'auto-complete-config)

;; go-flymake
(require 'go-flymake)
