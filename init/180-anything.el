; anything
(require 'anything-startup)

(setq recentf-max-saved-items 500)
(recentf-mode 1)

;; set anything-sources
(setq anything-sources
      (list anything-c-source-buffers
            anything-c-source-recentf
            anything-c-source-locate
            anything-c-source-emacs-commands
            )
      )


;; anything-complete
(require 'anything-complete)
(anything-read-string-mode 1)
