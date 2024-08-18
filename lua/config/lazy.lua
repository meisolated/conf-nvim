-- nvim/config/lazy.lua

-- Install Lazy
local lazypath = vim.fn.stdpath('data') .. '/site/pack/packer/start/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Set up Lazy
require('lazy').setup({
  'nvim-treesitter/nvim-treesitter',
  'nvim-telescope/telescope.nvim',
  'folke/tokyonight.nvim',
  'arcticicestudio/nord-vim',
  'joshdick/onedark.vim',
})

