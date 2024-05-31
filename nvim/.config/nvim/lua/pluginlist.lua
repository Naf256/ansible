return {

	-- starup time optimise
	'dstein64/vim-startuptime',
	'lewis6991/impatient.nvim',
	'nathom/filetype.nvim',

	-- {
	-- 	'akinsho/bufferline.nvim',
	-- 	dependencies = 'kyazdani42/nvim-web-devicons',
	-- 	opts = {}
	-- },


	'numToStr/Comment.nvim', -- "gc" to comment visual selection

	-- colorschemes

	'navarasu/onedark.nvim',

	-- {"ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = {}},


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
		dependencies = 'kyazdani42/nvim-web-devicons',
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

	{
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
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
	-- {
	-- 	"vhyrro/luarocks.nvim",
	-- 	priority = 1000,
	-- 	config = true,
	-- },
	-- {
	-- 	"rest-nvim/rest.nvim",
	-- 	ft = "http",
	-- 	dependencies = { "luarocks.nvim" },
	-- 	config = function()
	-- 		require("rest-nvim").setup()
	-- 	end,
	-- },
	-- file explorer
	{ 'nvim-tree/nvim-tree.lua', opts = {} },


	-- installing a local plugin 
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

	--bufferline

	-- {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons', opts = {}},

    -- debugging setup
	-- { 'rcarriga/nvim-dap-ui', opts = {} },
	--
	-- {
	-- 	"mfussenegger/nvim-dap",
	-- 	config = function() end,
	-- },
	--
	-- {
	-- 	'leoluz/nvim-dap-go', opts = {}
 --    },
 --    { 'theHamsta/nvim-dap-virtual-text', opts = {} },
 --    { 'nvim-telescope/telescope-dap.nvim', opts = {} }
}
