;; init.el --- Emacs configuration

(require 'package)

(add-to-list 'package-archives
       '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(elpy))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

(global-linum-mode t) ;; enable line numbers globally

(require 'window-numbering)
(window-numbering-mode 1)

(winner-mode 1)
;; copied from http://puntoblogspot.blogspot.com/2011/05/undo-layouts-in-emacs.html
(global-set-key (kbd "C-x 4 u") 'winner-undo)
(global-set-key (kbd "C-x 4 r") 'winner-redo)

(elpy-enable) 

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'afternoon t)
(provide 'init-preload-local)