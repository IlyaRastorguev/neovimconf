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
  -- {
  --   "karb94/neoscroll.nvim",
  --   config = function()
  --     require("neoscroll").setup({
  --       stop_eof = true,
  --       easing_function = "sine",
  --       hide_cursor = true,
  --       cursor_scrolls_alone = true,
  --     })
  --   end,
  -- },

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
        groups = {                -- table: default groups
          -- "Normal", "NormalNC", "NormalFloat", "NvimTreeNormal", "NvimTreeNormalNC",
          "Normal",
          "NormalNC",
          "Comment",
          "Constant",
          "Special",
          "Identifier",
          "Statement",
          "PreProc",
          "Type",
          "Underlined",
          "Todo",
          "String",
          "Function",
          "Conditional",
          "Repeat",
          "Operator",
          "Structure",
          "LineNr",
          "NonText",
          "SignColumn",
          -- "CursorLine",
          "CursorLineNr",
          "StatusLine",
          "StatusLineNC",
          "EndOfBuffer",
          -- "NormalFloat",
          "NvimTreeNormal",
          "NvimTreeNormalNC",
          "GitSignsAdd",
          "GitSignsChange",
          "GitSignsDelete",
          -- "Border",
          "WinSeparator",
        },
        extra_groups = {}, -- table: additional groups that should be cleared
        exclude_groups = {}, -- table: groups you don't want to clear
      })
    end,
  },
  {
    "soulis-1256/eagle.nvim",
    config = function()
      require("eagle").setup()
    end,
  },
  {
    "folke/trouble.nvim",
    branch = "dev", -- IMPORTANT!
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
    opts = {}, -- for default options, refer to the configuration section for custom setup.
  },
  -- {
  --   "nvim-lualine/lualine.nvim",
  --   dependencies = { "nvim-tree/nvim-web-devicons" },
  --   config = function()
  --     require("lualine").setup()
  --   end,
  -- },
  {
    "DreamMaoMao/yazi.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
    },

    keys = {
      { "<C-y>", "<cmd>Yazi<CR>", desc = "Toggle Yazi" },
    },
  },
  -- { 'echasnovski/mini.animate', version = false, config = function() require('mini.animate').setup() end },
  {
    "brenton-leighton/multiple-cursors.nvim",
    version = "*", -- Use the latest tagged version
    opts = {},   -- This causes the plugin setup function to be called
    keys = {
      { "<C-j>",  "<Cmd>MultipleCursorsAddDown<CR>", mode = { "n", "x" },      desc = "Add a cursor then move down" },
      {
        "<C-Down>",
        "<Cmd>MultipleCursorsAddDown<CR>",
        mode = { "n", "i", "x" },
        desc = "Add a cursor then move down",
      },
      { "<C-k>",  "<Cmd>MultipleCursorsAddUp<CR>",   mode = { "n", "x" },      desc = "Add a cursor then move up" },
      { "<C-Up>", "<Cmd>MultipleCursorsAddUp<CR>",   mode = { "n", "i", "x" }, desc = "Add a cursor then move up" },
      {
        "<C-LeftMouse>",
        "<Cmd>MultipleCursorsMouseAddDelete<CR>",
        mode = { "n", "i" },
        desc = "Add or remove a cursor",
      },
      {
        "<Leader>a",
        "<Cmd>MultipleCursorsAddMatches<CR>",
        mode = { "n", "x", "v" },
        desc = "Add cursors to the word under the cursor",
      },
    },
  },
}
