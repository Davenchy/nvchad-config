local overrides = require "custom.configs.overrides"
--
---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {},
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "wakatime/vim-wakatime",
    lazy = false,
  },
  {
    "phaazon/hop.nvim",
    main = "hop",
    config = true,
    cmd = { "HopAnywhereMW" },
  },
	{
		"xiyaowong/transparent.nvim",
		lazy = false,
		opts = {
			extra_groups = {
				"NvimTreeNormal",
			},
		},
	},
	{
		"folke/todo-comments.nvim",
		config = true,
		event = "BufEnter",
		cmd = { "TodoTrouble", "TodoTelescope", "TodoQuickFix", "TodoLocList" },
	},
	{
		"akinsho/flutter-tools.nvim",
		config = true,
		cmd = { "FlutterRun", "FlutterDevices", "FlutterReanalyze", },
	},
	{
		"mg979/vim-visual-multi",
		config = true,
		keys = { "<c-n>", "<c-up>", "<c-down>" },
		-- event = "BufEnter",
	},
	{
		"tzachar/cmp-tabnine",
		config = true,
		opts = {
			show_prediction_strength = true,
		},
		build = "./install.sh",
	},
	{
		"hrsh7th/nvim-cmp",
		opts = {
			sources = {
				{ name = "nvim_lsp" },
				{ name = "cmp_tabnine" },
				{ name = "luasnip" },
				{ name = "buffer" },
				{ name = "nvim_lua" },
				{ name = "path" },
			},
		},
		dependencies = {
			{ "tzachar/cmp-tabnine" },
		},
	},
	-- {
	-- 	"huggingface/hfcc.nvim",
	-- 	config = true,
	-- 	event = { "BufEnter" },
	-- 	opts = {
	-- 		api_token = "", -- huggingface access token is required
	-- 		model = "bigcode/starcoderplus",
	-- 		accept_keymap = "<C-a>",
	-- 		dismiss_keymap = "<C-S-a>",
	-- 	},
	-- },
	{
		'nvim-telescope/telescope-symbols.nvim',
	},
	{
		'nvim-telescope/telescope.nvim',
		dependencies = {
			"nvim-telescope/telescope-symbols.nvim"
		}
	},
	{
		'Exafunction/codeium.vim',
	 	event = { "BufEnter" },
		cmd = { "Codeium" },
	}
}

return plugins
