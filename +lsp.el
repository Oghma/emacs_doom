;;; ~/.doom.d/+lsp.el -*- lexical-binding: t; -*-

(after! lsp-ui
 (setq lsp-ui-doc-include-signature t))

;; (def-package! lsp-python-ms
;;   :after lsp
;;   :config

;;   ;;(remhash 'pyls lsp-clients)
;;   (setq lsp-python-ms-dir
;;         (expand-file-name "~/.python-language-server/output/bin/Release/"))
;;   (setq lsp-python-ms-executable
;;         "~/.python-language-server/output/bin/Release/osx-x64/publish/Microsoft.Python.LanguageServer"))
