;;; +bindings.el -*- lexical-binding: t; -*-

(map!
 ;; Buffer related bindings
 "C-x b"       #'persp-switch-to-buffer
 "C-x C-b"     #'switch-to-buffer
 "C-x B"       #'ibuffer-list-buffers

 ;; Search
 (:when (modulep! :completion vertico)
   "C-s"         #'consult-line
   "C-r"         #'vertico-repeat)

 ;; Undo
 "C-z"   #'undo-fu-only-undo
 "C-S-z" #'undo-fu-only-redo

 ;; Calendar stuff
 "<f8>"  #'=calendar)
