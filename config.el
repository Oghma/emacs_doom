;;; config.el --- description -*- lexical-binding: t; -*-

(when IS-MAC
  (load! "+mac"))

(load! "+ui")
(load! "+bindings")
(load! "+org.el")
(load! "+calendar.el")
(load! "+completion.el")
(load! "+latex.el")
(load! "+git.el")
(load! "+python.el")

;; Load packages at startup
(doom-load-packages-incrementally
 '(nose pip-requirements pythonic anaconda-mode company-anaconda))
