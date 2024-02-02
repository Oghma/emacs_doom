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
 ;; Swiper
 (:when (modulep! :completion ivy)
   "C-s"        #'swiper
   "C-r"        #'ivy-resume)
 (:when (modulep! :completion helm)
   "C-s"        #'swiper-helm
   "C-r"        #'helm-resume)

 ;; Undo
 "C-z"   #'undo-fu-only-undo
 "C-S-z" #'undo-fu-only-redo

 ;; Calendar stuff
 "<f8>"  #'=calendar)
