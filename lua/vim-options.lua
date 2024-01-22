vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set clipboard=unnamedplus")
vim.opt.scrolloff = 999                         -- Makes sure there are always eight lines of context
vim.opt.sidescrolloff = 999                     -- Makes sure there are always eight lines of context
vim.opt.backup = false                          -- creates a backup file
vim.opt.swapfile = false                        -- creates a swapfile
vim.opt.linespace = 1
vim.g.mapleader = " "

-- Navigate vim panes better
vim.keymap.set('n', '<c-e>', '<C-w>v<C-w>l:Explore<CR>')
vim.keymap.set("n", "<C-f>", ":Telescope current_buffer_fuzzy_find<CR>")
vim.keymap.set("n", "gd", "<C-w>v<C-w>l:Telescope lsp_definitions<CR>")
vim.keymap.set("n", "gr", "<C-w>v<C-w>l:Telescope lsp_references<CR>")
vim.keymap.set("n", "<c-t>", ":Telescope lsp_document_symbols<CR>")

-- Move selected line / block of text in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Navigate buffers
vim.keymap.set("n", "<Right>", ":bnext<CR>")
vim.keymap.set("n", "<Left>", ":bprevious<CR>")

-- Move to start/end of line
vim.keymap.set({ 'n', 'x', 'o' }, 'H', '^')
vim.keymap.set({ 'n', 'x', 'o' }, 'L', 'g_')

-- Map enter to ciw in normal mode
vim.keymap.set("n", "<CR>", "ciw")
vim.keymap.set("n", "<BS>", 'ci')

-- Select all
vim.keymap.set('n', '<C-a>', 'ggVG')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true

if vim.g.neovide then
  vim.keymap.set('n', '<D-s>', ':w<CR>') -- Save
  vim.keymap.set('v', '<D-c>', '"+y') -- Copy
  vim.keymap.set('n', '<D-v>', '"+P') -- Paste normal mode
  vim.keymap.set('v', '<D-v>', '"+P') -- Paste visual mode
  vim.keymap.set('c', '<D-v>', '<C-R>+') -- Paste command mode
  vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli') -- Paste insert mode  

  -- neovide scale
  vim.g.neovide_scale_factor = 1.0
  local change_scale_factor = function(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
  end
  vim.keymap.set("n", "<D-=>", function()
    change_scale_factor(1.25)
  end)
  vim.keymap.set("n", "<D-->", function()
    change_scale_factor(1/1.25)
  end)

  vim.o.guifont = "JetBrainsMono Nerd Font:h14" -- text below applies for VimScript

  --transparency
  -- Helper function for transparency formatting
  local alpha = function()
    return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
  end
  -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
  vim.g.neovide_transparency = 0.75
  vim.g.transparency = 0.75
  vim.g.neovide_background_color = "#11111b" .. alpha()

  --padding
  vim.g.neovide_padding_top = 8
  vim.g.neovide_padding_bottom = 8
  vim.g.neovide_padding_right = 8
  vim.g.neovide_padding_left = 8
end

vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true})
