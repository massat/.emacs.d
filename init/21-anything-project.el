; anything-project
;; https://raw.github.com/imakado/anything-project/master/anything-project.el
(require 'anything-project)
(global-set-key (kbd "C-c C-f") 'anything-project)

(ap:add-project
 :name 'perl
 :look-for '("Makefile.PL" "Build.PL") ; or
 :include-regexp '("\\.pm$" "\\.t$" "\\.pl$" "\\.PL$") ;or
 )
