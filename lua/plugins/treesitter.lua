return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "s",
            node_incremental = "s",
            node_decremental = "S",
            scope_incremental = "tab"
          }
        },
        autopairs = {
          enable = true
        }
      })
    end,
  },
}
