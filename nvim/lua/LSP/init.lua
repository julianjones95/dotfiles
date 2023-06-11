local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- Opening init.lua and executing the command :LspInstall will suggest a language server using mason.nvim
-- Reference: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v2.x/doc/md/tutorial.md#install-a-language-server:~:text=Install%20a%20language%20server

lsp.setup()
