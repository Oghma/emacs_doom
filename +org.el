;;; ~/.doom.d/+org.el -*- lexical-binding: t; -*-

(setq +org-dir "~/Dropbox/OrgFiles/Agenda/")
(setq +todo-file "~/Dropbox/OrgFiles/Agenda/TODO.org")

(after! org

  ;; Add diary entry for holidays
  (setq org-agenda-include-diary t)

  ;; Holidays
  (setq holiday-general-holidays
	    '((holiday-fixed 1 1 "Capodanno")
	      (holiday-fixed 5 1 "1 Maggio")
	      (holiday-fixed 4 25 "Liberazione")
	      (holiday-fixed 6 2 "Festa Repubblica")
	      ))

  (setq holiday-christian-holidays
	    '((holiday-fixed 12 8 "Immacolata Concezione")
	      (holiday-fixed 12 25 "Natale")
	      (holiday-fixed 12 26 "Santo Stefano")
	      (holiday-fixed 1 6 "Epifania")
	      (holiday-easter-etc -52 "Giovedì grasso")
	      (holiday-easter-etc -47 "Martedì grasso")
	      (holiday-easter-etc  -2 "Venerdì Santo")
	      (holiday-easter-etc   0 "Pasqua")
	      (holiday-easter-etc  +1 "Lunedì Pasqua")
	      (holiday-fixed 8 15 "Assunzione di Maria")
	      (holiday-fixed 11 1 "Ognissanti")
	      ))

  (setq holiday-bahai-holidays nil)
  (setq holiday-hebrew-holidays nil)
  (setq holiday-islamic-holidays nil)
  (setq holiday-oriental-holidays nil)

  (calendar-set-date-style 'european))
