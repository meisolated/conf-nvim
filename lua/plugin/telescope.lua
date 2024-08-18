-- nvim/plugin/telescope.lua

-- Telescope configuration
require('telescope').setup({
  defaults = {
    file_ignore_patterns = {"node_modules", ".git"},
  },
})

