;;; +bindings.el -*- lexical-binding: t; -*-

;; persp-mode and projectile in different prefixes
(setq persp-keymap-prefix (kbd "C-c e"))
(setq projectile-keymap-prefix (kbd "C-c p"))

(map!
 ;; Text scaling
 "C-+" #'text-scale-increase
 "C--" #'text-scale-decrease

 ;; Editor related bindings
 "C-a"            #'doom/backward-to-bol-or-indent
 [remap newline]  #'newline-and-indent
 "C-S"            #'swiper

 ;; Buffer related bindings
 "C-x b"       #'persp-switch-to-buffer
 "C-x C-b"     #'ibuffer-list-buffers
 "C-x B"       #'switch-to-buffer
 "C-x k"       #'doom/kill-this-buffer-in-all-windows
 "M-a"         #'mark-whole-buffer

 ;; Popup bindings
 "C-x p"   #'+popup/other
 "C-`"     #'+popup/toggle
 "C-~"     #'+popup/raise

 ;; A little sandbox to run code in
 "M-;" #'eval-expression
 "M-:" #'doom/open-scratch-buffer

 ;; Doom emacs bindings
 (:prefix "C-c d"
   "d" #'+doom-dashboard/open
   "f" #'recentf-open-files
   "n" #'+treemacs/toggle
   "o" #'+popup/other
   "t" #'+popup/toggle
   "c" #'+popup/close
   "C" #'+popup/close-all
   "r" #'+popup/raise
   "R" #'+popup/restore
   "s" #'doom/open-scratch-buffer)

 ;; Org related bindings
 (:prefix "C-c o"
   "s"     #'org-caldav-sync
   "a"     #'org-agenda
   "t"     #'org-todo-list
   "m"     #'org-tags-view
   "v"     #'org-search-view
   "c"     #'org-capture
   "C"     (lambda! (require 'org-capture) (call-interactively #'org-capture-goto-target))
   "b"     #'org-iswitchb
   "e l b" #'org-beamer-export-to-latex
   "e l B" #'org-beamer-export-as-latex
   "e l P" #'org-beamer-export-to-pdf
   "l"     #'org-store-link)

 ;; Worspace management bindings
 (:prefix "C-c w"
   "d" #'+workspace/display
   "r" #'+workspace/rename
   "c" #'+workspace/new
   "k" #'+workspace/delete
   "s" #'+workspace/save-session
   "l" #'+workspace/load-session
   "o" #'doom/kill-other-buffers
   "u" #'winner-undo
   "U" #'winner-redo
   "p" #'+workspace/switch-left
   "n" #'+workspace/switch-right)
 "M-1" (lambda! (+workspace/switch-to 0))
 "M-2" (lambda! (+workspace/switch-to 1))
 "M-3" (lambda! (+workspace/switch-to 2))
 "M-4" (lambda! (+workspace/switch-to 3))
 "M-5" (lambda! (+workspace/switch-to 4))
 "M-6" (lambda! (+workspace/switch-to 5))
 "M-7" (lambda! (+workspace/switch-to 6))
 "M-8" (lambda! (+workspace/switch-to 7))
 "M-9" (lambda! (+workspace/switch-to 8))
 "M-0" #'+workspace/switch-to-last

 ;; Undo tree
 "C-z"   #'undo
 "C-S-z" #'redo

 ;; Version control bindings
 (:prefix "C-c g"
   "s" #'magit-status
   "i" #'+vcs/git-browse-issues
   "b" #'+vcs/git-browse)

 ;; Mail related bindings
 (:prefix "C-c m"
   "s" #'mail-add-attachment
   "m" #'mu4e
   "s" #'mail-send)

 ;; Plugins

 ;; misc plugins
 "<f9>" #'treemacs
 "C-="  #'er/expand-region
 "C-'"  #'imenu-list-smart-toggle

 ;; smartparens
 "C-M-a" #'sp-beginning-of-sexp
 "C-M-e" #'sp-end-of-sexp
 "C-M-f" #'sp-forward-sexp
 "C-M-b" #'sp-backward-sexp
 "C-M-d" #'sp-splice-sexp

 ;; company mode
 "<C-tab>" #'+company/complete
 ;; Counsel Bindings

 "C-h b" #'counsel-descbinds

 ;; Repl Toggle
 "C-c C-z" #'+eval/open-repl
 "M-r"   #'+eval/buffer

 ;; Restore common editing keys (and ESC) in minibuffer
 (:map (minibuffer-local-map
        minibuffer-local-ns-map
        minibuffer-local-completion-map
        minibuffer-local-must-match-map
        minibuffer-local-isearch-map
        read-expression-map)
   "C-g" #'abort-recursive-edit
   "C-a" #'move-beginning-of-line
   "C-/" #'doom/minibuffer-undo)

 ;; Company mode
 (:after company
   (:map company-active-map
     "C-o"        #'company-search-kill-others
     "C-n"        #'company-select-next
     "C-p"        #'company-select-previous
     "C-h"        #'company-quickhelp-manual-begin
     "C-S-h"      #'company-show-doc-buffer
     "C-S-s"      #'company-search-candidates
     "C-s"        #'company-filter-candidates
     "<C-tab>"    #'company-complete-common-or-cycle
     [tab]        #'company-complete-common-or-cycle
     [backtab]    #'company-select-previous
     "C-g"        (lambda! (company-abort))
     [C-return]   #'counsel-company)
   (:map company-search-map
     "C-n"        #'company-search-repeat-forward
     "C-p"        #'company-search-repeat-backward
     "C-s"        (lambda! (company-search-abort) (company-filter-candidates))
     "C-g"        #'company-search-abort))

 ;; NeoTree bindings
 ;; (:after neotree
 ;;   :map neotree-mode-map
 ;;   "q"       #'neotree-hide
 ;;   [return]  #'neotree-enter
 ;;   "RET"     #'neotree-enter
 ;;   "SPC"     #'neotree-quick-look
 ;;   "v"       #'neotree-enter-vertical-split
 ;;   "s"       #'neotree-enter-horizontal-split
 ;;   "c"       #'neotree-create-node
 ;;   "D"       #'neotree-delete-node
 ;;   "g"       #'neotree-refresh
 ;;   "r"       #'neotree-rename-node
 ;;   "R"       #'neotree-refresh
 ;;   "h"       #'+neotree/collapse-or-up
 ;;   "l"       #'+neotree/expand-or-open
 ;;   "n"       #'neotree-next-line
 ;;   "p"       #'neotree-previous-line
 ;;   "N"       #'neotree-select-next-sibling-node
 ;;   "P"       #'neotree-select-previous-sibling-node)

 (:after help-mode
   (:map help-mode-map
     "o" #'ace-link-help
     ">" #'help-go-forward
     "<" #'help-go-back))
 (:after helpful-mode
   (:map helpful-mode-map
     "o" #'ace-link-help))
 (:after info
   (:map Info-mode-map
     "o" #'ace-link-info))

 ;; Yasnippet
 (:after yasnippet
   ;; keymap while editing an inserted snippet
   (:map yas-keymap
     "C-e"           #'snippets/goto-end-of-field
     "C-a"           #'snippets/goto-start-of-field
     "<S-tab>"       #'yas-prev-field
     "<M-backspace>" #'+snippets/delete-to-start-of-field
     [backspace]     #'+snippets/delete-backward-char
     [delete]        #'+snippets/delete-forward-char-or-field))

 ;; Flycheck
 (:after flycheck
   (:map flycheck-error-list-mode-map
     "C-n" #'flycheck-error-list-next-error
     "C-p" #'flycheck-error-list-previous-error
     "RET" #'flycheck-error-list-goto-error))

 ;; ivy stuff
 (:after ivy
   (:map ivy-minibuffer-map
     "C-g" #'keyboard-escape-quit))
 (:after ein:notebook-multilang
   (:map ein:notebook-multilang-mode-map
     "C-c h" #'+ein/hydra/body))

 ;; Pdf tools
 (:after pdf-tools
   (:map pdf-view-mode-map
     "TAB" #'pdf-outline
     "C-s" #'isearch-forward))

 ;; Calendar stuff
 "<f8>"  #'=calendar

 "C-c c" #'mc/edit-lines)


(which-key-add-key-based-replacements "C-c e"   "perspective")
(which-key-add-key-based-replacements "C-c d"   "doom")
(which-key-add-key-based-replacements "C-c d p" "doom popups")
(which-key-add-key-based-replacements "C-c m"   "mail")
(which-key-add-key-based-replacements "C-c o"   "org")
(which-key-add-key-based-replacements "C-c a"   "org agenda")
(which-key-add-key-based-replacements "C-c o e" "org export")
(which-key-add-key-based-replacements "C-c p"   "projects")
(which-key-add-key-based-replacements "C-c v"   "versioning")
(which-key-add-key-based-replacements "C-c w"   "workspace")
(which-key-add-key-based-replacements "C-c !"   "checking")
