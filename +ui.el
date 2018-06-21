;;; +ui.el -*- lexical-binding: t; -*-

(setq
      doom-font (font-spec :family "SFMono Nerd Font" :size 12)
      doom-variable-pitch-font (font-spec :family "SFMono Nerd Font")
      doom-unicode-font (font-spec :family "SFMono Nerd Font")
      doom-big-font (font-spec :family "SFMono Nerd Font" :size 19))

;; Remove the request from killing emacs
(setq confirm-kill-emacs nil)

;; Add to the modeline unreads emails
(after! mu4e-alert
  (def-modeline-segment! mu4e-unread-mail
    (when mu4e-alert-mode-line (let ((unread (substring (nth 1 (split-string mu4e-alert-mode-line)) 1 -1)))
      (format " %s %s " (all-the-icons-octicon "mail" :v-adjust -0.1) unread))))

  (def-modeline! main
    (bar matches " " buffer-info "  %l:%c %p  " selection-info)
    (buffer-encoding major-mode vcs flycheck mu4e-unread-mail))
  )

(when IS-MAC
  (add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
  (add-to-list 'default-frame-alist '(ns-appearance . dark)))
