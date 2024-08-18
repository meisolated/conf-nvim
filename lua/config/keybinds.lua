-- nvim/config/keybinds.lua

-- Custom Leader
vim.g.mapleader = ' '

-- Key mappings for Telescope
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { noremap = true, silent = true })


-- Keybindings for individual themes
vim.api.nvim_set_keymap('n', '<leader>tt', '<cmd>lua set_tokyonight()<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tn', '<cmd>lua set_nord()<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>to', '<cmd>lua set_onedark()<cr>', { noremap = true, silent = true })

