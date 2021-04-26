;;; config.el --- description -*- lexical-binding: t; -*-

(when IS-MAC
  (load! "+mac"))

(load! "+ui")
(load! "+bindings")
(load! "+org.el")
(load! "+completion.el")
(load! "+git.el")

;; Haskel
;;(setq haskell-process-type 'cabal-new-repl)
;; Deft
(setq deft-directory "~/Dropbox/Notes")
;; Org-roam
(setq org-roam-directory "~/Dropbox/Notes")
