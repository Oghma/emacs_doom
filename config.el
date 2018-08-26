;;; config.el --- description -*- lexical-binding: t; -*-

(when IS-MAC
    (load! "+mac"))

(load! "+ui")
(load! "+bindings")
(load! "+mail")
(load! "+org.el")
(load! "+behaviour.el")
(load! "+calendar.el")
(load! "+completion.el")
(load! "+latex.el")
(load! "+formatter.el")

;; Load packages at startup
(require 'org)
(require 'org-agenda)
(require 'magit)
