;;; config.el --- description -*- lexical-binding: t; -*-

(when IS-MAC
  (load! "+mac"))

(load! "+ui")
(load! "+bindings")
(load! "+org.el")
(load! "+calendar.el")
(load! "+completion.el")
(load! "+git.el")
(load! "+python.el")
;;(load! "+lsp.el")
;;(load! "+formatters.el")
