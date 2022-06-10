;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
(add-to-list 'package-archives 
	     '("marmalade" . "https://marmalade-repo.org/packages/") 'APPEND)
(add-to-list 'package-archives 
	     '("melpa" . "https://stable.melpa.org/packages/") 'APPEND)
(add-to-list 'package-archives 
	     '("gnu" . "http://elpa.gnu.org/packages/") 'APPEND)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-and-compile
  (setq use-package-always-ensure t
        use-package-expand-minimally t))


(load "~/.emacs.d/packages.el")
(load "~/.emacs.d/loadSnippets.el")
(load "~/.emacs.d/ui.el")
(load "~/.emacs.d/misc.el")
(load "~/.emacs.d/editing.el")
(load "~/.emacs.d/elisp-editing.el")
(load "~/.emacs.d/navigation.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/todo.org")))
 '(package-selected-packages
   (quote
    (lsp-java LSP-java slime erlang erlang-mode mines hscroll befunge-mode trunicate-lines autocomplete flycheck js2-mode web-mode emmet-mode decide markdown-mode md4rd xclip undo-tree TRAMP uniquify-files rainbow-delimiters projectile helm-smex ido-ubiquitous uniquify paredit evil use-package goto-last-change))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
