;;; config.el --- description -*- lexical-binding: t; -*-

(when IS-MAC
  (load! "+mac"))

(load! "+ui")
(load! "+bindings")
(load! "+org.el")
(load! "+completion.el")
(load! "+git.el")
