-- nvim/config/keybinds.lua

-- Custom Leader
vim.g.mapleader = ' '

-- Key mappings for Telescope
local builtin = require('telescope.builtin')
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function ()
    builtin.grep_string({ search = vim.fn.input("Grep > ")})
end)

-- Keybindings for individual themes
vim.api.nvim_set_keymap('n', '<leader>tt', '<cmd>lua set_tokyonight()<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tn', '<cmd>lua set_nord()<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>to', '<cmd>lua set_onedark()<cr>', { noremap = true, silent = true })


-- Keybindings for split operations
-- Vertical split
vim.api.nvim_set_keymap('n', '<leader>sv', '<cmd>vs<cr>', { noremap = true, silent = true })
-- Horizontal split
vim.api.nvim_set_keymap('n', '<leader>sh', '<cmd>sp<cr>', { noremap = true, silent = true })

-- Keybindings for navigating splits
-- Move to the left split
vim.api.nvim_set_keymap('n', '<leader>h', '<C-w>h', { noremap = true, silent = true })
-- Move to the down split
vim.api.nvim_set_keymap('n', '<leader>j', '<C-w>j', { noremap = true, silent = true })
-- Move to the up split
vim.api.nvim_set_keymap('n', '<leader>k', '<C-w>k', { noremap = true, silent = true })
-- Move to the right split
vim.api.nvim_set_keymap('n', '<leader>l', '<C-w>l', { noremap = true, silent = true })

-- Keybinding to close the current split
vim.api.nvim_set_keymap('n', '<leader>qc', '<cmd>q<cr>', { noremap = true, silent = true })


-- Git status
vim.api.nvim_set_keymap('n', '<leader>gs', '<cmd>Git status<cr>', { noremap = true, silent = true })
-- Git commit
vim.api.nvim_set_keymap('n', '<leader>gc', '<cmd>Git commit<cr>', { noremap = true, silent = true })
-- Git push
vim.api.nvim_set_keymap('n', '<leader>gp', '<cmd>Git push<cr>', { noremap = true, silent = true })
-- Git pull
vim.api.nvim_set_keymap('n', '<leader>gl', '<cmd>Git pull<cr>', { noremap = true, silent = true })
-- Git diff
vim.api.nvim_set_keymap('n', '<leader>gd', '<cmd>Git diff<cr>', { noremap = true, silent = true })
