(provide 'misc)
;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)

;; shell scripts
(setq-default sh-basic-offset 2)
(setq-default sh-indentation 2)

;; No need for ~ files when editing
(setq create-lockfiles nil)

;; Go straight to scratch buffer on startup
(setq inhibit-startup-message t)

(defun insert-current-date ()
  "Inserts date at point."
  (interactive)
  (insert (shell-command-to-string "echo -n $(date +%Y-%m-%d)")))
'(org-structure-template-alist '(org-structure-template-alist . ("n" "#+NAME: ?")))

;;(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(defun server-shutdown ()
  "Save buffers, Quit, and Shutdown (kill) server."
  (interactive)
  (save-some-buffers)
  (kill-emacs)
  )
(setq inferior-lisp-program "/Users/dominiklicari/.brew/bin/sbcl")
(provide 'misc)

(with-eval-after-load 'flycheck
  (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc)))
(setq reb-re-syntax 'string)
(set-default 'truncate-lines t)

(defun increment-number-at-point ()
      (interactive)
      (skip-chars-backward "0-9")
      (or (looking-at "[0-9]+")
          (error "No number at point"))
      (replace-match (number-to-string (1+ (string-to-number (match-string 0))))))

(global-set-key (kbd "C-c +") 'increment-number-at-point)

;;; misc.el ends here
