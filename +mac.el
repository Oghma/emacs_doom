;;; +mac.el -*- lexical-binding: t; -*-
(exec-path-from-shell-initialize)

(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))

(setq mac-command-modifier 'super
      mac-option-modifier  'meta)
