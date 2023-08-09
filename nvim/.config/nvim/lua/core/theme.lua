-- themes with special settings
-- onedark
-- Lua
require('onedark').setup  {
    -- Main options --
    style = 'darker', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
    transparent = false,  -- Show/hide background
    term_colors = true, -- Change terminal color as per the selected theme style
    ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
    cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

    -- toggle theme style ---
    toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
    toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

    -- Change code style ---
    -- Options are italic, bold, underline, none
    -- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
    code_style = {
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none'
    },

    -- Lualine options --
    lualine = {
        transparent = false, -- lualine center bar transparency
    },

    -- Custom Highlights --
    colors = {}, -- Override default colors
    highlights = {}, -- Override highlight groups

    -- Plugins Config --
    diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = true,   -- use undercurl instead of underline for diagnostics
        background = true,    -- use background color for virtual text
    },
}

vim.cmd('colorscheme onedark')
-- nord
--vim.cmd('colorscheme nord')

-- gruvbox
-- vim.cmd('colorscheme gruvbox')

--catppuccin
--vim.cmd('colorscheme catppuccin-macchiato')

-- sonokai
--sonokai styles: default, atlantis, andromeda, shusia, maia, espresso
--vim.g.sonokai_style = 'default'
--vim.g.sonokai_enable_italic = 0
--vim.g.sonokai_disable_italic_comment = 0
--vim.cmd('colorscheme sonokai')

-- tokyo night
--vim.g.tokyodark_transparent_background = false
--vim.g.tokyodark_enable_italic_comment = true
--vim.g.tokyodark_enable_italic = true
--vim.g.tokyodark_color_gamma = "1.0"
--vim.cmd("colorscheme tokyodark")

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
--vim.g.tokyonight_colors = { hint = "orange", error = "#cb5550" }
--vim.cmd('colorscheme sonokai')

-- space vim dark
-- vim.g.space_vim_dark_background = 234 -- 234 (darkest) ~ 238 (lightest)
--vim.cmd("colorscheme space-vim-dark");

-- kanagwa
-- Default options:
--require('kanagawa').setup({
--    undercurl = true,           -- enable undercurls
--    commentStyle = { italic = true },
--    functionStyle = {},
--    keywordStyle = { italic = true},
--    statementStyle = { bold = true },
--    typeStyle = {},
--    variablebuiltinStyle = { italic = true},
--    specialReturn = true,       -- special highlight for the return keyword
--    specialException = true,    -- special highlight for exception handling keywords
--    transparent = false,        -- do not set background color
--    dimInactive = false,        -- dim inactive window `:h hl-NormalNC`
--    globalStatus = false,       -- adjust window separators highlight for laststatus=3
--    colors = {},
--    overrides = {},
--})

--vim.cmd("colorscheme kanagawa")
