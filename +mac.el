;;; +mac.el -*- lexical-binding: t; -*-
(exec-path-from-shell-initialize)

 (after! python
   (setq python-shell-interpreter (executable-find "python3")))

(after! anaconda-mode
   (setq python-shell-interpreter (executable-find "python3")))
