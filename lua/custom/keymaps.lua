local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- normal mode
keymap("n", "<C-s>", "<cmd> w <CR>", opts) -- save file
keymap("n", "<C-c>", "<cmd> %y+ <CR>", opts) -- copy whole file
keymap("n", "<C-h>", "<C-w>h", opts) -- move to up buffer
keymap("n", "<C-j>", "<C-w>j", opts) -- move to down buffer
keymap("n", "<C-k>", "<C-w>k", opts) -- move left buffer
keymap("n", "<C-l>", "<C-w>l", opts) -- move to right buffer
keymap("n", "<S-Up>", ":resize -2<CR>", opts) -- dicrease current buffer vertical size
keymap("n", "<S-Down>", ":resize +2<CR>", opts) -- increase current buffer vertical size
keymap("n", "<S-Left>", ":vertical resize -2<CR>", opts) -- dicrease current buffer horizontal size
keymap("n", "<S-Right>", ":vertical resize +2<CR>", opts) -- increase current buffer horizontal size
keymap("n", "<leader>b", "<cmd> enew <CR>", opts) -- create a new buffer (list buffers with :buffers, close buffer :numberbw)
keymap("n", "<TAB>", ":bnext<CR>", opts) -- navigate to the rifght buffer
keymap("n", "<S-TAB>", ":bprevious<CR>", opts) -- navitate to the left buffer
keymap("n", "<leader>n", "<cmd> set nu! <CR>", opts) -- toggle number
keymap("n", "<leader>rn", "<cmd> set rnu! <CR>", opts) -- toggle relative number
keymap("n", "<leader>x", ":q <CR>", opts) --close buffer
keymap("n", "<ESC>", ":noh <CR>", opts) --no highlight
keymap("n", "<A-t>", "<C-w>s :term <CR>", opts) --open terminal horizontal
-- nvim tree normal mode
keymap("n", "<leader>e", "<cmd> NvimTreeFocus <CR>", opts) -- open and focus on nvimtree
keymap("n", "<C-n>", "<cmd> NvimTreeToggle <CR>", opts) -- toggle nvimtree
-- barbar
keymap("n", "<leader>x", "<cmd> BufferClose <CR>", opts)
-- telescope normal mode
keymap("n", "<leader>ff", "<cmd> Telescope find_files <CR>", opts)
keymap("n", "<leader>fb", "<cmd> Telescope buffers <CR>", opts)
keymap("n", "<leader>fw", "<cmd> Telescope live_grep <CR>", opts)
keymap("n", "<leader>tk", "<cmd> Telescope keymaps <CR>", opts)
keymap("n", "<leader>cm", "<cmd> Telescope git_commits <CR>", opts)
keymap("n", "<leader>gt", "<cmd> Telescope git_status <CR>", opts)

-- insert mode
-- visual mode
keymap("v", "<A-j>", ":m .+1<CR>==", opts) -- move code one line down
keymap("v", "<A-k>", ":m .-2<CR>==", opts) -- move vode one line up

-- visual block mode
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts) -- move code one line down
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts) -- move code one line up
