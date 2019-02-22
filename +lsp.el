;;; ~/.doom.d/+lsp.el -*- lexical-binding: t; -*-

(after! lsp-mode
  (setq lsp-prefer-flymake nil))

(after! lsp-ui
 (setq lsp-ui-doc-include-signature t))
