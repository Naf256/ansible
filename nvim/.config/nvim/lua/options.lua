vim.cmd('autocmd FileType javascript setlocal expandtab tabstop=2 shiftwidth=2')
-- mapping leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set cursorline
vim.wo.cursorline = true

-- Set GUI font
-- vim.o.guifont = "SFMono\\ NERD\\ Font:h13"

-- Set clipboard settings
vim.o.clipboard = "unnamedplus"

-- Set GUI cursor
vim.o.guicursor = "i:block"

-- Check for termguicolors support and enable
-- if vim.fn.has("termguicolors") then
--     vim.o.t_8f = "<Esc>[38;2;%lu;%lu;%lum"
--     vim.o.t_8b = "<Esc>[48;2;%lu;%lu;%lum"
--     vim.o.termguicolors = true
-- end


vim.o.number		  = true
vim.o.relativenumber  = true
vim.o.termguicolors   = true
vim.o.shiftround      = true
vim.o.updatetime      = 300
vim.o.autowrite       = true
vim.o.hlsearch		  = false
vim.o.swapfile		  = false
vim.o.undofile		  = true
vim.o.ignorecase	  = true
vim.o.smartcase		  = true
vim.o.completeopt	  = 'menuone,noselect'
vim.o.background      = 'dark'
vim.o.autoindent      = true
vim.o.tabstop         = 4
vim.o.shiftwidth      = 4
vim.o.softtabstop     = 4

local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = '*',
})

if (vim.fn.has('termguicolors') == 1) then
    vim.opt.termguicolors = true
end

-- disable some useless standard plugins to save startup time
-- these features have been better covered by plugins
vim.g.loaded_matchparen        = 1
vim.g.loaded_matchit           = 1
vim.g.loaded_logiPat           = 1
vim.g.loaded_rrhelper          = 1
vim.g.loaded_tarPlugin         = 1
vim.g.loaded_gzip              = 1
vim.g.loaded_zipPlugin         = 1
vim.g.loaded_2html_plugin      = 1
vim.g.loaded_shada_plugin      = 1
vim.g.loaded_spellfile_plugin  = 1
vim.g.loaded_netrw             = 1
vim.g.loaded_netrwPlugin       = 1
vim.g.loaded_tutor_mode_plugin = 1
vim.g.loaded_remote_plugins    = 1
