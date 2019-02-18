;;; tools/lsp/config.el -*- lexical-binding: t; -*-

(use-package lsp-mode
  :commands lsp
  :config
  (setq lsp-prefer-flymake nil))

(def-package! lsp-ui
  :hook (lsp-mode . lsp-ui-mode)
  :commands lsp-ui-mode
  :config
  (setq lsp-ui-doc-include-signature t))

(def-package! company-lsp
  :when (featurep! :completion company)
  :commands company-lsp
  :after lsp-mode
  :config
  (set-company-backend! 'lsp-mode 'company-lsp))

;; For now only python
(when (featurep! :tools lsp)
  (add-hook! 'python-mode-hook #'lsp))
