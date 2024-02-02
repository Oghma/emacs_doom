;;; config.el --- description -*- lexical-binding: t; -*-

(when IS-MAC
  (load! "+mac"))

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
  (setq lsp-rust-clippy-preference "on"))
