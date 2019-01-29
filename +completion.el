;;; ~/.doom.d/+completion.el -*- lexical-binding: t; -*-

(after! company
  (setq company-idle-delay 0.1
        company-echo-delay 0.0
        company-minimum-prefix-length 3
        company-tooltip-flip-when-above t
        company-dabbrev-downcase nil))
