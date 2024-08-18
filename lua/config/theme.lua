-- nvim/config/theme.lua

local themes = {
    "tokyonight",
    "nord",
    "onedark",
}

local function set_theme(theme)
    vim.cmd("colorscheme " .. theme)
    local theme_file = vim.fn.expand("~/.config/nvim/theme.txt")
    vim.fn.writefile({theme}, theme_file)
end

-- Set default theme or last used theme
local theme_file = vim.fn.expand("~/.config/nvim/theme.txt")
if vim.fn.filereadable(theme_file) == 1 then
    local theme = vim.fn.readfile(theme_file)[1]
    if vim.fn.index(themes, theme) ~= -1 then
        set_theme(theme)
    end
end

-- Define functions for setting each theme
for _, theme in ipairs(themes) do
    _G["set_" .. theme] = function()
        set_theme(theme)
    end
end

