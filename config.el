;;; config.el --- description -*- lexical-binding: t; -*-

(load! "+mac")
(load! "+ui")
(load! "+bindings")
(load! "+org.el")
(load! "+completion.el")
(load! "+git.el")

;; Temporary fix for solidity prettier
(after! solidity-mode
  (set-formatter! 'prettier-solidity '("npx" "prettier" "--stdin-filepath" "--plugin"
                                       "/opt/homebrew/lib/node_modules/prettier-plugin-solidity/src/index.js" filepath)
    :modes '(solidity-mode)))

(after! lsp-mode
  (setq lsp-rust-clippy-preference "on")
  ;; https://github.com/emacs-lsp/lsp-mode/issues/3577#issuecomment-1709232622
  (delete 'lsp-terraform lsp-client-packages))

(setq-hook! 'python-mode-hook +format-with 'ruff)
