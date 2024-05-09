vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set clipboard=unnamedplus")
vim.opt.scrolloff = 8   -- Makes sure there are always eight lines of context
vim.opt.sidescrolloff = 8 -- Makes sure there are always eight lines of context
vim.opt.backup = false    -- creates a backup file
vim.opt.swapfile = false  -- creates a swapfile
vim.opt.linespace = 2
vim.opt.wrap = false
vim.g.mapleader = " "
vim.opt.title = true
vim.opt.titlestring = "%F%( %M%)"
vim.opt.laststatus = 0
vim.opt.cursorline = false
vim.opt.signcolumn = "yes"
vim.opt.list = true
vim.opt.listchars = { tab = "▸ ", trail = "·", nbsp = "·" }
vim.opt.mousemoveevent = true

-- Navigate vim panes better
vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>")
vim.keymap.set("v", "<C-s>", "<Esc>:w<CR>")
vim.keymap.set("n", "<leader>f", ":Telescope current_buffer_fuzzy_find<CR>")
vim.keymap.set("n", "<leader>O", ":Telescope lsp_dynamic_workspace_symbols<CR>")
vim.keymap.set("n", "<leader>t", ":Telescope lsp_document_symbols<CR>")
vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<leader>E", ":NvimTreeFindFile<CR>")
vim.keymap.set("n", "<leader>o", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>p", ":Telescope jumplist<CR>")
vim.keymap.set("n", "<leader>P", ":Telescope<CR>")
vim.keymap.set("n", "<leader>j", ":Telescope pickers<CR><CR>")
vim.keymap.set("n", "<leader>b", ":Telescope buffers<CR>")
vim.keymap.set("n", "<leader>/", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>f", ":Telescope current_buffer_fuzzy_find<CR>")
vim.keymap.set("", "<C-t>", ":ToggleTerm<CR>")
vim.keymap.set('n', 'gd', '<CMD>Glance definitions<CR>')
vim.keymap.set('n', 'gr', '<CMD>Glance references<CR>')
vim.keymap.set('n', 'gy', '<CMD>Glance type_definitions<CR>')
vim.keymap.set('n', 'gm', '<CMD>Glance implementations<CR>')
vim.keymap.set('n', '<leader>x', '<CMD>Trouble<CR>')

vim.keymap.set("n", "<leader>br", ":so ~/.config/nvim/lua/vim-options.lua<CR>")

-- Move selected line / block of text in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Navigate buffers
vim.keymap.set("n", "<Right>", ":bnext<CR>")
vim.keymap.set("n", "<Left>", ":bprevious<CR>")

-- Move to start/end of line
vim.keymap.set({ "n", "x", "o" }, "H", "^")
vim.keymap.set({ "n", "x", "o" }, "L", "g_")

-- Map enter to ciw in normal mode
vim.keymap.set("n", "<CR>", "ciw")
vim.keymap.set("v", "<CR>", "c")
vim.keymap.set("n", "<BS>", "ci")

-- Select all
vim.keymap.set("n", "<C-a>", "ggVG")

vim.keymap.set("n", "<Esc>", ":noh<CR>")

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("i", "kk", "<Esc>")
vim.wo.number = true

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<D-s>", ":w<CR>")      -- Save
vim.keymap.set("i", "<D-s>", "<Esc>:w<CR>") -- Save
vim.keymap.set("v", "<D-c>", '"+y')         -- Copy
vim.keymap.set("n", "<D-v>", '"+P')         -- Paste normal mode
vim.keymap.set("v", "<D-v>", '"+P')         -- Paste visual mode
vim.keymap.set("c", "<D-v>", "<C-R>+")      -- Paste command mode
vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode

vim.api.nvim_set_keymap("", "<D-v>", "+p<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("!", "<D-v>", "<C-R>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<D-v>", "<C-R>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<D-v>", "<C-R>+", { noremap = true, silent = true })
