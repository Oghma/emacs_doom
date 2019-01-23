;;; +bindings.el -*- lexical-binding: t; -*-

(map!
 ;; Buffer related bindings
 "C-x b"       #'persp-switch-to-buffer
 "C-x C-b"     #'switch-to-buffer
 "C-x B"       #'ibuffer-list-buffers

 ;; Swiper
 (:when (featurep! :completion ivy)
   "C-s"        #'swiper
   "C-r"        #'ivy-resume)
 (:when (featurep! :completion helm)
   "C-s"        #'swiper-helm
   "C-r"        #'helm-resume)

 ;; Undo tree
 "C-z"   #'undo
 "C-S-z" #'redo

 ;; Calendar stuff
 "<f8>"  #'=calendar)
