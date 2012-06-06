; anything-project
;; https://raw.github.com/imakado/anything-project/master/anything-project.el
(require 'anything-project)
(global-set-key (kbd "C-;") 'anything-project)

; list files only
; http://d.hatena.ne.jp/IMAKADO/20090823/1250963119
(setq ap:project-files-filters
        (list
         (lambda (files)
           (remove-if 'file-directory-p files))))

(ap:add-project :name 'perl
                :look-for '("Makefile.PL" "Build.PL")
                :exclude-regexp '("/tmp" "/cache"))

(ap:add-project :name 'ruby
                :look-for '("Rakefile" "Build.PL")
                :exclude-regexp '("/tmp" "/cache"))