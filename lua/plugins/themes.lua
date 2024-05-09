return {
	{
		"catppuccin/nvim",
		lazy = false,
		name = "catppuccin",
		config = function()
			-- vim.cmd("colorscheme catppuccin-mocha")
		end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				highlight_groups = {
					TelescopeBorder = {
						bg = "surface",
						fg = "surface",
					},
					TelescopePromptNormal = {
						bg = "base",
						fg = "text",
					},
					TelescopePromptBorder = {
						bg = "base",
					},
					TelescopePromptTitle = {
						bg = "pine",
						fg = "text",
					},
					TelescopePreviewTitle = {
						bg = "rose",
						fg = "base",
					},
					TelescopeResultsTitle = {
						bg = "gold",
						fg = "text",
					},
					TelescopePreviewBorder = {
						bg = "surface",
						fg = "text",
					},
				},
			})
			-- vim.cmd("colorscheme rose-pine")
		end,
	},
	{
		"mellow-theme/mellow.nvim",
		config = function()
			-- vim.cmd("colorscheme retrobox")
		end,
	},
	{
		"bluz71/vim-nightfly-colors",
		name = "nightfly",
		lazy = false,
		priority = 1000,
		config = function()
			-- vim.cmd("colorscheme nightfly")
		end,
	},
	{
		"kyazdani42/blue-moon",
		config = function()
			vim.opt.termguicolors = true
			-- vim.cmd("colorscheme blue-moon")
		end,
	},
	{
		"Mofiqul/vscode.nvim",
		config = function()
			-- vim.cmd("colorscheme vscode")
		end,
	},
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("cyberdream").setup({
				-- Recommended - see "Configuring" below for more config options
				transparent = true,
				italic_comments = true,
				hide_fillchars = true,
				borderless_telescope = true,
				terminal_colors = true,
			})
			-- vim.cmd("colorscheme cyberdream") -- set the colorscheme
		end,
	},
	{ "miikanissi/modus-themes.nvim", priority = 1000 },
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			vim.cmd("colorscheme tokyonight")
		end,
	},
	{
		"nyoom-engineering/oxocarbon.nvim",
		config = function()
			-- vim.cmd("colorscheme oxocarbon")
		end,
	},
}
