-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})


-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = "Open diagnostics list" })


-- The following commands were built for speed in mind. Enabling myself 
-- to type fast and move fast naturally gets me into an engaged state:

-- Shortcut to create a new tab
vim.keymap.set('n','vv', ':tabnew . ')

-- Shortcut to Telescope find files 
vim.keymap.set('n','vvv', ':Telescope find_files ')

-- Shortcut to Telescope find files 
vim.keymap.set('n','vvvv', ':Telescope fzf ')


-- Movement for touch typing
vim.api.nvim_set_keymap('n', 'K', '{', { silent = true })
vim.api.nvim_set_keymap('n', 'J', '}', { silent = true })
vim.api.nvim_set_keymap('n', 'L', 'w', { silent = true })
vim.api.nvim_set_keymap('n', 'H', 'b', { silent = true })

