return {
	{
		"rasulomaroff/reactive.nvim",
		config = function()
			require("reactive").setup({
				builtin = {
					cursorline = true,
					cursor = true,
					modemsg = true,
				},
			})
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
			vim.cmd("colorscheme rose-pine-moon")
		end,
	},
}
