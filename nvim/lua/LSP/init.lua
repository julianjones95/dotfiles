local lsp = require('lsp-zero').preset({})


local capabilities = require('cmp_nvim_lsp').default_capabilities()

lsp.on_attach(function(client, bufnr)
  capabilities = capabilities,
  lsp.default_keymaps({buffer = bufnr})
end)

-- Opening init.lua and executing the command :LspInstall will suggest a language server using mason.nvim
-- Reference: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v2.x/doc/md/tutorial.md#install-a-language-server:~:text=Install%20a%20language%20server

-- When you don't have mason.nvim installed
-- You'll need to list the servers installed in your system
-- Otherwise :LspInstall will prompt install for selected filetype
lsp.setup_servers({
  'tsserver',
  'eslint',
  'jdtls',
  'sqlls',
  'clangd'
})

lsp.setup()
