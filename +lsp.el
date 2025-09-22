;;; +lsp.el -*- lexical-binding: t; -*-

;; DAP / LSP related tweaks consolidated here

(after! dap-mode
  (require 'dap-codelldb)
  (dap-codelldb-setup)
  (setq lsp-rust-analyzer-debug-lens-extra-dap-args '(:type "codelldb")))


