return {
	-- Autotags
	{
		"windwp/nvim-ts-autotag",
		opts = {},
	},

	-- comments
	{
		"numToStr/Comment.nvim",
		opts = {},
		lazy = false,
	},

	-- Smooth scrolling neovim plugin written in lua
	{
		"karb94/neoscroll.nvim",
		config = function()
			require("neoscroll").setup({
				stop_eof = true,
				easing_function = "sine",
				hide_cursor = true,
				cursor_scrolls_alone = true,
			})
		end,
	},

	-- Neovim Lua plugin to automatically manage character pairs. Part of 'mini.nvim' library.
	{
		"echasnovski/mini.pairs",
		event = "VeryLazy",
		config = function(_, opts)
			require("mini.pairs").setup(opts)
		end,
	},

	{
		"xiyaowong/transparent.nvim",
		config = function()
			require("transparent").setup({ -- Optional, you don't have to run setup.
				groups = { -- table: default groups
					"Normal",
					"NormalNC",
					-- "Comment",
					-- "Constant",
					-- "Special",
					-- "Identifier",
					-- "Statement",
					-- "PreProc",
					-- "Type",
					-- "Underlined",
					-- "Todo",
					-- "String",
					-- "Function",
					-- "Conditional",
					-- "Repeat",
					-- "Operator",
					-- "Structure",
					-- "LineNr",
					-- "NonText",
					-- "SignColumn",
					-- "CursorLine",
					-- "CursorLineNr",
					-- "StatusLine",
					-- "StatusLineNC",
					-- "EndOfBuffer",
					-- "TelescopeBorder",
					-- "TelescopePromptBorder",
					-- "TelescopePreviewBorder",
					-- "TelescopeResultsBorder",
					"FloatBorder",
					-- "WhichkeyFloat",
				},
				extra_groups = {}, -- table: additional groups that should be cleared
				exclude_groups = {}, -- table: groups you don't want to clear
			})
		end,
	},
}
