--[[

=====================================================================
=================== Julian's Neovim Configuration ===================
=====================================================================

]]--

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require("plugins")
--require("luasnip.loaders.from_vscode").lazy_load()
require("settings")
require("keymaps")
require("tscope")
require("treesitter")
require("LSP")
