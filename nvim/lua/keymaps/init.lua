-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

local hardmode = true
if hardmode then
    -- Show an error message if a disabled key is pressed
    local msg = [[<cmd>echohl Error | echo "KEY DISABLED" | echohl None<CR>]]

    -- Disable arrow keys in insert mode with a styled message
    vim.api.nvim_set_keymap('i', '<Up>', '<C-o>' .. msg, { noremap = true, silent = false })
    vim.api.nvim_set_keymap('i', '<Down>', '<C-o>' .. msg, { noremap = true, silent = false })
    vim.api.nvim_set_keymap('i', '<Left>', '<C-o>' .. msg, { noremap = true, silent = false })
    vim.api.nvim_set_keymap('i', '<Right>', '<C-o>' .. msg, { noremap = true, silent = false })
    --vim.api.nvim_set_keymap('i', '<Del>', '<C-o>' .. msg, { noremap = true, silent = false })
    --vim.api.nvim_set_keymap('i', '<BS>', '<C-o>' .. msg, { noremap = true, silent = false })

    -- Disable arrow keys in normal mode with a styled message
    vim.api.nvim_set_keymap('n', '<Up>', msg, { noremap = true, silent = false })
    vim.api.nvim_set_keymap('n', '<Down>', msg, { noremap = true, silent = false })
    vim.api.nvim_set_keymap('n', '<Left>', msg, { noremap = true, silent = false })
    vim.api.nvim_set_keymap('n', '<Right>', msg, { noremap = true, silent = false })
    --vim.api.nvim_set_keymap('n', '<BS>', msg, { noremap = true, silent = false })
end


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


-- Shortcut to create a new tab
vim.keymap.set('n','vv', ':tabnew . ')

-- Shortcut to suspend the current instance of nvim
vim.keymap.set('n','fg', ':suspend ')

-- Shortcut to create a new tab
vim.keymap.set('n','ii', ':AnyJump ')

-- Shortcut to suspend the current instance of nvim
vim.keymap.set('n','oo', ':AnyJumpBack ')

-- Shortcut to Telescope find files 
vim.keymap.set('n','vvv', ':Telescope find_files ')

-- Shortcut to Telescope find files 
vim.keymap.set('n','vvvv', ':Telescope fzf ')

-- Movement for selection and touch typing using VIM hjkl
vim.api.nvim_set_keymap('v', 'K', '{', { silent = true })
vim.api.nvim_set_keymap('v', 'J', '}', { silent = true })
vim.api.nvim_set_keymap('n', 'K', '{', { silent = true })
vim.api.nvim_set_keymap('n', 'J', '}', { silent = true })
vim.api.nvim_set_keymap('n', 'L', 'w', { silent = true })
vim.api.nvim_set_keymap('n', 'H', 'b', { silent = true })
vim.api.nvim_set_keymap('v', 'L', 'w', { silent = true })
vim.api.nvim_set_keymap('v', 'H', 'b', { silent = true })
