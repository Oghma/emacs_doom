;;; ~/.doom.d/+python.el -*- lexical-binding: t; -*-

(after! python
   (setq python-shell-interpreter (executable-find "python3")))

(after! anaconda-mode
   (setq python-shell-interpreter (executable-find "python3")))
