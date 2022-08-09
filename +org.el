;;; ~/.doom.d/+org.el -*- lexical-binding: t; -*-


;; Org related stuffs
(setq org-directory "~/Documents/Org/Agenda/"
      org-roam-directory "~/Library/Mobile Documents/iCloud\~com\~logseq\~logseq/Documents"
      org-roam-dailies-directory "journals/"

      org-roam-capture-templates '(("d" "default" plain "%?"
                                    :target (file+head "pages/${slug}.org"
                                                       "#+title: ${title}\n")
                                    :unnarrowed t)))

;; (use-package! org-super-agenda
;;   :commands (org-super-agenda-mode)
;;   :init (advice-add #'org-super-agenda-mode :around #'doom-shut-up-a)
;;   :config
;;   (setq org-super-agenda-groups
;;         '((:name "Log\n"
;;                  :log t)
;;           (:name "Birthdays\n"
;;                  :category "Birthdays")
;;           (:name "Schedule\n"
;;                  :time-grid t)
;;           (:name "Today\n"
;;                  :scheduled today
;;                  :deadline today)
;;           (:name "Habits\n"
;;                  :habit t)
;;           (:name "Overdue\n"
;;                  :scheduled past
;;                  :deadline past)
;;           (:name "Due soon\n"
;;                  :deadline future)
;;           (:name "Waiting\n"
;;                  :todo ("WAITING" "[?]"))
;;           (:name "Scheduled earlier\n"
;;                  :scheduled past)
;;           (:name "All TODOs\n"
;;                  :todo ("TODO" "[ ]")))))

;; (after! org
;;   ;; Load org-habit module
;;   ;;(add-to-list 'org-modules 'org-habit)

;;   ;; Enable org-super-agenda
;;   (org-super-agenda-mode)

;;   ;; Add diary entry for holidays
;;   (setq org-agenda-include-diary t)

;;   ;; Org keywords
;;   (setq  org-todo-keywords
;;          '((sequence "[ ](t)" "[-](p)" "[?](m)" "|" "[X](d)")
;;            (sequence "TODO(T)" "|" "DONE(D)")
;;            (sequence "NEXT(n)" "WAITING(w)" "LATER(l)" "|" "CANCELLED(c)")
;;            (sequence "HABT(h)" "|" "DONE(x)")))

;;   ;; Holidays
;;   (setq holiday-general-holidays
;;         '((holiday-fixed 1 1 "Capodanno")
;;           (holiday-fixed 5 1 "1 Maggio")
;;           (holiday-fixed 4 25 "Liberazione")
;;           (holiday-fixed 6 2 "Festa Repubblica")
;;           ))

;;   (setq holiday-christian-holidays
;;         '((holiday-fixed 12 8 "Immacolata Concezione")
;;           (holiday-fixed 12 25 "Natale")
;;           (holiday-fixed 12 26 "Santo Stefano")
;;           (holiday-fixed 1 6 "Epifania")
;;           (holiday-easter-etc -52 "Giovedì grasso")
;;           (holiday-easter-etc -47 "Martedì grasso")
;;           (holiday-easter-etc  -2 "Venerdì Santo")
;;           (holiday-easter-etc   0 "Pasqua")
;;           (holiday-easter-etc  +1 "Lunedì Pasqua")
;;           (holiday-fixed 8 15 "Assunzione di Maria")
;;           (holiday-fixed 11 1 "Ognissanti")
;;           ))

;;   (setq holiday-bahai-holidays nil)
;;   (setq holiday-hebrew-holidays nil)
;;   (setq holiday-islamic-holidays nil)
;;   (setq holiday-oriental-holidays nil)

;;   (calendar-set-date-style 'european)

;;   (setq org-agenda-block-separator ""
;;         org-agenda-compact-blocks t
;;         org-agenda-dim-blocked-tasks nil
;;         ;;org-agenda-follow-indirect t
;;         ;;org-agenda-ignore-properties '(effort appt category)
;;         org-agenda-inhibit-startup t
;;         org-agenda-log-mode-items '(closed clock)
;;         org-agenda-overriding-header ""
;;         org-agenda-restore-windows-after-quit t
;;         org-agenda-skip-deadline-if-done t
;;         org-agenda-skip-deadline-prewarning-if-scheduled t
;;         ;;org-agenda-skip-scheduled-if-done t
;;         ;;org-agenda-skip-unavailable-files t
;;         org-agenda-sorting-strategy '((agenda time-up priority-down category-keep)
;;                                       (todo   priority-down category-keep)
;;                                       (tags   priority-down category-keep)
;;                                       (search category-keep))
;;         org-agenda-span 'day
;;         org-agenda-start-day nil
;;         org-agenda-start-with-log-mode t
;;         org-agenda-sticky nil
;;         org-agenda-tags-column 'auto
;;         org-agenda-use-tag-inheritance nil)
;;         ;; org-habit-following-days 0
;;         ;; org-habit-graph-column 1
;;         ;; org-habit-preceding-days 8
;;         ;; org-habit-show-habits t)

;;   ;; Show agenda as popup
;;   (set-popup-rule! "^\\*Org Agenda.*"
;;     :slot -1
;;     :size 100
;;     :side 'right
;;     :select t))
