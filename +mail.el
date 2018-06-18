;;; config/default/+mail.el -*- lexical-binding: t; -*-

;; (def-modeline! mu4e
;;   (bar matches " %b " selection-info)
;;   ())

;; (add-hook! mu4e-main-mode
;;   (setq header-line-format (or (doom-modeline 'mu4e) mode-line-format)
;;         mode-line-format nil))

;; (add-hook! mu4e-headers-mode
;;   (setq header-line-format (or (doom-modeline 'mu4e) mode-line-format)
;;         mode-line-format nil))

(after! mu4e
  (setq mail-user-agent 'mu4e-user-agent
        mu4e-attachment-dir "~/Downloads")

  ;; msmtp config
  (setq sendmail-program "msmtp")
  (setq mail-specify-envelope-from t)
  (setq message-sendmail-envelope-from 'header)
  (setq mail-envelope-from 'header)

  (setq mu4e-update-interval 300)

  (set-email-account! "Mivoq"
    '((user-mail-address      . "matteo.lisotto@mivoq.it")
      (user-full-name         . "Matteo Lisotto")
      (mu4e-sent-folder       . "/mivoq/INBOX.Sent")
      (mu4e-drafts-folder     . "/mivoq/INBOX.Drafts")
      (mu4e-trash-folder      . "/mivoq/INBOX.Trash")
      (smtpmail-smtp-user     . "mivoq")
      (mu4e-compose-signature .
                              (concat
                               "Matteo Lisotto\n"
                               "<matteo.lisotto@mivoq.it>\n"))))

  (set-email-account! "Gmail"
    '((user-mail-address      . "matteo.lisotto@gmail.com")
      (user-full-name         . "Matteo Lisotto")
      (mu4e-sent-folder       . "/gmail/[Gmail].Tutti i messaggi")
      (mu4e-drafts-folder     . "/gmail/[Gmail].Bozze")
      (mu4e-trash-folder      . "/gmail/[Gmail].Cestino")
      (mu4e-refile-folder     . "/gmail/[Gmail].Tutti i messaggi")
      (smtpmail-smtp-user     . "gmail")
      (mu4e-compose-signature .
                              (concat
                               "Matteo Lisotto\n"
                               "<matteo.lisotto@gmail.com>\n"
                               "<phone>\n"))) t)


  ;; Bookmarks for common searches that I use.
  (setq mu4e-bookmarks
        `( ,(make-mu4e-bookmark
             :name  "Unread messages"
             :query "flag:unread AND NOT flag:trashed AND NOT maildir:/gmail/[Gmail].Cestino AND NOT maildir:/gmail/[Gmail].Spam"
             :key ?u)
           ,(make-mu4e-bookmark
             :name "Today's messages"
             :query "date:today..now AND NOT maildir:/gmail/[Gmail].Cestino AND NOT maildir:/gmail/[Gmail].Spam"
             :key ?t)
           ,(make-mu4e-bookmark
             :name "Last 7 days"
             :query "date:7d..now AND NOT maildir:/gmail/[Gmail].Cestino AND NOT maildir:/gmail/[Gmail].Spam"
             :key ?w)
           ,(make-mu4e-bookmark
             :name "Trash"
             :query "maildir:/gmail/[Gmail].Cestino"
             :key ?b))))

(def-package! mu4e-alert
  :after mu4e
  :config
  ;; set desktop notification method
  (cond (IS-MAC
         (mu4e-alert-set-default-style 'notifier))
        (IS-LINUX
         (mu4e-alert-set-default-style 'notifications)))

  ;; enable mode-line notification
  (mu4e-alert-enable-mode-line-display)

  ;; enable system-wide notification
  (mu4e-alert-enable-notifications)

  ;; only show count when alerting
  (setq mu4e-alert-email-notification-types '(count))

  ;; alert filter
  (setq mu4e-alert-interesting-mail-query
        (concat
         "flag:unread"
         " AND NOT flag:trashed"
         " AND NOT maildir:"
         "/gmail/[Gmail].Cestino"
         " AND NOT maildir:"
         "/gmail/[Gmail].Spam")))
