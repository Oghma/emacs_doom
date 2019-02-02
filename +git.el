;;; ~/.doom.d/+git.el -*- lexical-binding: t; -*-

(setq magit-commit-arguments '("--gpg-sign=8331E87A160AF8B8")
      magit-rebase-arguments '("--gpg-sign=8331E87A160AF8B8")
      magit-pull-arguments   '("--gpg-sign=8331E87A160AF8B8"))

;; magit-todos seach only TODO/FIXME etc that have : as a suffix. This line
;;search all the TODOs in the code
;;(setq magit-todos-keyword-suffix "\\(?:([^)]+)\\)?")
