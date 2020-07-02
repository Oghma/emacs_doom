;;; ~/.doom.d/+completion.el -*- lexical-binding: t; -*-

(setq +lsp-company-backend 'company-capf)

(after! company
  (setq company-idle-delay 0.0))
        ;;company-tooltip-flip-when-above t))
