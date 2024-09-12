return {

	-- starup time optimise
	"dstein64/vim-startuptime",
	"lewis6991/impatient.nvim",
	"nathom/filetype.nvim",

	-- {
	-- 	'akinsho/bufferline.nvim',
	-- 	dependencies = 'kyazdani42/nvim-web-devicons',
	-- 	opts = {}
	-- },
	'prettier/vim-prettier',
	"numToStr/Comment.nvim", -- "gc" to comment visual selection

	-- colorschemes
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = { style = "moon" },
	},
	"arzg/vim-colors-xcode",
	"navarasu/onedark.nvim",

	-- {"ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = {}},

	-- language
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	{ -- Highlight, edit, and navigate code
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		opts = {
			ensure_installed = { "bash", "c", "diff", "html", "lua", "luadoc", "markdown", "vim", "vimdoc" },
			-- Autoinstall languages that are not installed
			auto_install = true,
			highlight = {
				enable = true,
				-- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
				--  If you are experiencing weird indenting issues, add the language to
				--  the list of additional_vim_regex_highlighting and disabled languages for indent.
				additional_vim_regex_highlighting = { "ruby" },
			},
			indent = { enable = true, disable = { "ruby" } },
		},
		config = function(_, opts)
			-- [[ Configure Treesitter ]] See `:help nvim-treesitter`

			-- Prefer git instead of curl in order to improve connectivity in some environments
			require("nvim-treesitter.install").prefer_git = true
			---@diagnostic disable-next-line: missing-fields
			require("nvim-treesitter.configs").setup(opts)

			-- There are additional nvim-treesitter modules that you can use to interact
			-- with nvim-treesitter. You should go explore a few and see what interests you:
			--
			--    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
			--    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
			--    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
		end,
	},
	"onsails/lspkind-nvim",
	{ "j-hui/fidget.nvim", tag = "legacy", opts = {} },
	"folke/neodev.nvim",

	{
		--autocompletion
		"hrsh7th/nvim-cmp",
		dependencies = { "hrsh7th/cmp-nvim-lsp", "L3MON4D3/LuaSnip", "saadparwaiz1/cmp_luasnip" },
	},

	-- git
	{
		"lewis6991/gitsigns.nvim",
		tag = "release",
	},

	"kdheepak/lazygit.nvim",

	-- status line
	{
		"nvim-lualine/lualine.nvim",
		dependencies = "kyazdani42/nvim-web-devicons",
	},

	-- tagbar
	"simrat39/symbols-outline.nvim",

	-- floating terminal
	"voldikss/vim-floaterm",

	-- file telescope
	 { -- Fuzzy Finder (files, lsp, etc)
		 'nvim-telescope/telescope.nvim',
		 event = 'VimEnter',
		 branch = '0.1.x',
		 dependencies = {
			 'nvim-lua/plenary.nvim',
			 { -- If encountering errors, see telescope-fzf-native README for installation instructions
				 'nvim-telescope/telescope-fzf-native.nvim',

				 -- `build` is used to run some command when the plugin is installed/updated.
					 -- This is only run then, not every time Neovim starts up.
					 build = 'make',

				 -- `cond` is a condition used to determine whether this plugin should be
					 -- installed and loaded.
					 cond = function()
					 return vim.fn.executable 'make' == 1
					 end,
			 },
			 { 'nvim-telescope/telescope-ui-select.nvim' },

			 -- Useful for getting pretty icons, but requires a Nerd Font.
			 { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    		}
	},
	-- indent guide
	"lukas-reineke/indent-blankline.nvim",

	-- english grammar check
	"rhysd/vim-grammarous",

	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},

	{
		{
			"windwp/nvim-ts-autotag",
			dependencies = {
				{ "nvim-treesitter/nvim-treesitter" },
				{ "hrsh7th/nvim-cmp" },
			},
		},
	},
	-- fullstack dev
	"pangloss/vim-javascript", --JS support
	"leafgarland/typescript-vim", --TS support
	"maxmellon/vim-jsx-pretty", --JS and JSX syntax
	-- "jparise/vim-graphql", --GraphQL syntax
	"mattn/emmet-vim",

	-- helps testing rest apis
	-- {
	-- 	"vhyrro/luarocks.nvim",
	-- 	priority = 1000,
	-- 	config = true,
	-- },
	-- {

	-- HTTP Rest client Interface
	--
	--
	{ 'mistweaverco/kulala.nvim', opts = {} },

	-- file explorer
	{ "nvim-tree/nvim-tree.lua", opts = {} },

	-- installing a local plugin
	{
		"rafamadriz/friendly-snippets",
		config = function()
			require("luasnip.loaders.from_vscode").lazy_load()
		end,
	},

	-- formating and editing markdown files
	"sbdchd/neoformat",

	{
		"folke/zen-mode.nvim",
		opts = {
			window = {
				width = 0.85,
				height = 0.85,
				options = {
					number = false,
					relativenumber = false,
				},
			},
		},
	},

	-- surround text with   " / ' / ( / { / [
	"tpope/vim-surround",

	-- the ultimate navigation between files
	{ "ThePrimeagen/harpoon", opts = {} },

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

	-- I am to ready yet for flashing
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		---@type Flash.Config
		opts = {},
		-- stylua: ignore
		keys = {
			{ "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
			{ ";S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
			{ "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
			{ "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
			{ "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
		},
	}

	}
