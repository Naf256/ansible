local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
	-- starup time optimise
	'dstein64/vim-startuptime',
	'lewis6991/impatient.nvim',
	'nathom/filetype.nvim',

	-- buffer
	{
		'akinsho/bufferline.nvim',
		dependencies = 'kyazdani42/nvim-web-devicons',
		opts = {}
	},

	'David-Kunz/gen.nvim', -- integrates with ollama ai

	'numToStr/Comment.nvim', -- "gc" to comment visual selection
	-- colorschemes (disabled other themes to optimize startup time)
	'RRethy/nvim-base16',
	-- 'tomorrow-night.vim/tomorrow-night.vim',
	-- 'sainnhe/sonokai',
	--
	-- 'chriskempson/base16-vim',
	-- { 'sainnhe/edge' },
	{ 'projekt0n/github-nvim-theme' },
 --    { 'ellisonleao/gruvbox.nvim', priority = 1000 , config = true, opts = {
	-- 	terminal_colors = true, -- add neovim terminal colors
	-- 	undercurl = true,
	-- 	underline = true,
	-- 	bold = false,
	-- 	italic = {
	-- 		strings = true,
	-- 		emphasis = true,
	-- 		comments = true,
	-- 		operators = false,
	-- 		folds = true,
	-- 	},
	-- 	strikethrough = true,
	-- 	invert_selection = false,
	-- 	invert_signs = false,
	-- 	invert_tabline = false,
	-- 	invert_intend_guides = false,
	-- 	inverse = true, -- invert background for search, diffs, statuslines and errors
	-- 	contrast = "hard", -- can be "hard", "soft" or empty string
	-- 	palette_overrides = {},
	-- 	overrides = {},
	-- 	dim_inactive = false,
	-- 	transparent_mode = false,
	-- }},
	 -- { "catppuccin/nvim", as = "catppuccin" },
	--	   'dikiaap/minimalist'
	--     'kaicataldo/material.vim',
	--	   ({ 'projekt0n/github-nvim-theme' }),
	--     'marko-cerovac/material.nvim',
	-- 'tiagovla/tokyodark.nvim',

	'navarasu/onedark.nvim',
	--	   'arzg/vim-colors-xcode'	
	-- { 'decaycs/decay.nvim' },
	-- { 'pineapplegiant/spaceduck' },
	-- {'IneptusMechanicus/mechanicus.nvim'},
	--
    -- {'romgrk/doom-one.vim'},
	--	   { 'catppuccin/nvim', as='catppuccin' }
	--     'shaunsingh/nord.nvim'
	--     { 'sonph/onehalf', rtp='vim/' }
	--     'liuchengxu/space-vim-dark'
	--     'ahmedabdulrahman/aylin.vim'
	-- 'rebelot/kanagawa.nvim',

	-- language
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',
	'neovim/nvim-lspconfig',
	'nvim-treesitter/nvim-treesitter',
	'onsails/lspkind-nvim',
	{ 'j-hui/fidget.nvim', tag = 'legacy', opts = {} },
	'folke/neodev.nvim',

	{
	--autocompletion
		'hrsh7th/nvim-cmp',
		dependencies = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
	},

	-- git
	{
		'lewis6991/gitsigns.nvim',
		tag = 'release',
	},

	'kdheepak/lazygit.nvim',

	-- status line
	{
		'nvim-lualine/lualine.nvim',
		dependencies = 'kyazdani42/nvim-web-devicons'
	},

	-- tagbar
	'simrat39/symbols-outline.nvim',

	-- floating terminal
	'voldikss/vim-floaterm',

	-- file telescope
	{
		'nvim-telescope/telescope.nvim',
		dependencies = 'nvim-lua/plenary.nvim',
	},

	-- indent guide
	"lukas-reineke/indent-blankline.nvim",

	-- english grammar check
	'rhysd/vim-grammarous',

	{
		'windwp/nvim-autopairs',
		config = function() require('nvim-autopairs').setup {} end
	},

	{
		{
			'windwp/nvim-ts-autotag',
			dependencies = {
				{ 'nvim-treesitter/nvim-treesitter' },
				{ 'hrsh7th/nvim-cmp' },
			},
		},
	},
	-- fullstack dev
	'pangloss/vim-javascript',  --JS support
	'leafgarland/typescript-vim', --TS support
	'maxmellon/vim-jsx-pretty', --JS and JSX syntax
	'jparise/vim-graphql',      --GraphQL syntax
	'mattn/emmet-vim',

	-- helps testing rest apis
	{
		"rest-nvim/rest.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	},

	-- -- trying out a new nvim tree
	-- {
	-- 	"nvim-neo-tree/neo-tree.nvim",
	-- 	dependencies = {
	-- 		"nvim-lua/plenary.nvim",
	-- 		"kyazdani42/nvim-web-devicons",
	-- 		"MunifTanjim/nui.nvim",
	-- 	},
	-- 	opts = {
	-- 		window = {
	-- 			width = 30,
	-- 		}
	-- 	}
	-- },

	-- installing a local plugin 
	{ dir = "~/demon.nvim", dev = true },

	{
		"rafamadriz/friendly-snippets",
		config = function()
			require("luasnip.loaders.from_vscode").lazy_load()
		end,
	},

	-- formating and editing markdown files
	'sbdchd/neoformat',

	{
		"folke/zen-mode.nvim",
		opts = {
			window = {
				width = .85,
				height = 0.85,
				options = {
					number = false,
					relativenumber = false
				}
			},
		}
	},

	-- surround text with   " / ' / ( / { / [
	'tpope/vim-surround',

	-- the ultimate navigation between files
    { 'ThePrimeagen/harpoon', opts = {} },

	-- debugging setup
	{ 'rcarriga/nvim-dap-ui', opts = {} },

	{
		"mfussenegger/nvim-dap",
		config = function() end,
	},

	{
		'leoluz/nvim-dap-go', opts = {}
    },
    { 'theHamsta/nvim-dap-virtual-text', opts = {} },
    { 'nvim-telescope/telescope-dap.nvim', opts = {} }
})
