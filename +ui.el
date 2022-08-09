;;; +ui.el -*- lexical-binding: t; -*-

;; Remove the request from killing emacs
(setq confirm-kill-emacs nil)

(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))

(after! lsp-ui
  (setq lsp-ui-sideline-show-diagnostics t))
