;;; config.el --- description -*- lexical-binding: t; -*-

(load! "+mac")
(load! "+ui")
(load! "+bindings")
(load! "+org")
(load! "+completion.el")
(load! "+git.el")
(load! "+lsp")

;; Temporary fix for solidity prettier
(after! (solidity-mode format)
  (set-formatter! 'prettier-solidity '("npx" "prettier" "--stdin-filepath" "--plugin"
                                       "/opt/homebrew/lib/node_modules/prettier-plugin-solidity/src/index.js" filepath)
    :modes '(solidity-mode)))

(setq-hook! 'python-mode-hook +format-with 'ruff)

