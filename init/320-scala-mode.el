;; scala-mode

;; INSTALL
;;
;; [mac]
;; brew install scala; mkdir ~/.emacs.d/elisp/scala-mode; cp -R /usr/local/Cellar/scala/2.9.1/libexec/misc/scala-tool-support/emacs/* ~/.emacs.d/elisp/scala-mode/
(autoload 'scala-mode "scala-mode")
(add-to-list 'load-path "~/.emacs.d/elisp/scala-mode/")
(require 'scala-mode-auto)