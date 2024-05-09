return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 40,
      open_mapping = [[<c-t>]],
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      persist_size = false,
      direction = "float",
      close_on_exit = true,
      shell = vim.o.shell,
      float_opts = {
        border = "curved",
        winblend = 0,
        highlights = {
          border = "Normal",
          background = "Normal",
        },
      },
    })

    local Terminal = require("toggleterm.terminal").Terminal
    local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
    local nap = Terminal:new({ cmd = "nap", hidden = true })
    local glow = Terminal:new({ cmd = "glow", hidden = true })
    local wish = Terminal:new({ cmd = "wishlist", hidden = true })
    local first = Terminal:new({ hidden = true })
    local second = Terminal:new({ hidden = true })
    local third = Terminal:new({ hidden = true })

    function _lazygit_toggle()
      lazygit:toggle()
    end

    function _f_toggle()
      first:toggle()
    end

    function _s_toggle()
      second:toggle()
    end

    function _t_toggle()
      third:toggle()
    end

    function _nap_toggle()
      nap:toggle()
    end

    function _glow_toggle()
      glow:toggle()
    end

    function _wish_toggle()
      wish:toggle()
    end

    vim.api.nvim_set_keymap("n", "<c-g>", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>1", "<cmd>lua _f_toggle()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("t", "<leader>1", "<cmd>lua _f_toggle()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>2", "<cmd>lua _s_toggle()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("t", "<leader>2", "<cmd>lua _s_toggle()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>3", "<cmd>lua _t_toggle()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("t", "<leader>3", "<cmd>lua _t_toggle()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<c-\\>", "<cmd>lua _nap_toggle()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<c-h>", "<cmd>lua _glow_toggle()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<c-/>", "<cmd>lua _wish_toggle()<CR>", { noremap = true, silent = true })
  end,
}
