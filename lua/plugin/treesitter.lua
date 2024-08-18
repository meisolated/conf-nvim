-- nvim/plugin/treesitter.lua

-- Treesitter configuration
require('nvim-treesitter.configs').setup({
  -- List of parsers to install
  ensure_installed = {
    "bash", "css", "html", "javascript", "lua", "python", "rust", "typescript", "vim"
    -- Add or remove languages as needed
  },
  highlight = {
    enable = true,            -- Enable highlighting
    additional_vim_regex_highlighting = false, -- Disable additional Vim regex highlighting
  },
  indent = {
    enable = true,            -- Enable indentation based on Treesitter
  },
  -- You can add more configurations here if needed
})

