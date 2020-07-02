;;; +ui.el -*- lexical-binding: t; -*-

;; Font
(setq
 doom-font (font-spec :family "SFMono Nerd Font" :size 12)
 doom-variable-pitch-font (font-spec :family "SFMono Nerd Font")
 doom-unicode-font (font-spec :family "SFMono Nerd Font")
 doom-big-font (font-spec :family "SFMono Nerd Font" :size 19))

;; Remove the request from killing emacs
(setq confirm-kill-emacs nil)

(when IS-MAC
  (add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
  (add-to-list 'default-frame-alist '(ns-appearance . dark)))

(after! lsp-ui
  (setq lsp-ui-sideline-show-diagnostic t
        lsp-ui-sideline-show-hover t
        lsp-ui-sideline-show-code-actions t))
