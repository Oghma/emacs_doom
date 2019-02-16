;;; tools/lsp/config.el -*- lexical-binding: t; -*-

(use-package lsp-mode
  :commands lsp
  :config
  (setq lsp-auto-guess-root t)
  (add-hook! 'python-mode-hook #'lsp))

(def-package! lsp-ui
  :hook (lsp-mode . lsp-ui-mode)
  :commands lsp-ui-mode)

(def-package! company-lsp
  :when (featurep! :completion company)
  :commands company-lsp)

;; For now only python
(when (featurep! :tools lsp)
  (add-hook 'python-mode-hook #'lsp))
