-- nvim/init.lua

-- Set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ','

-- Load Lazy for package management
require('config.lazy')

-- Load other configurations
require('config.options')
require('config.theme') -- Ensure this is loaded first
require('config.keybinds') -- Ensure keybindings are set after theme configuration

-- Load plugin configurations
require('plugin.treesitter')
require('plugin.telescope')

