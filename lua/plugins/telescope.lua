return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				defaults = {
          sorting_strategy = "ascending",
          borderchars = {
            prompt = { " ", " ", " ", " ", " ", " ", " ", " " },
            results = { " ", " ", " ", " ", " ", " ", " ", " " },
            preview = { " ", " ", " ", " ", " ", " ", " ", " " },
          },
          width = 0.6,
					show_line = true,
          propmt_position = "top",
					prompt_title = "",
					results_title = "",
					preview_title = "",
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({
							width = 0.8,
							prompt_title = false,
						}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
