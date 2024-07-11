local keymap = vim.keymap

vim.g.mapleader = " "

local opts = { noremap = true, silent = true }

-- Disable arrow keys in normal mode
keymap.set("n", "<Up>", "<Nop>", opts)
keymap.set("n", "<Down>", "<Nop>", opts)
keymap.set("n", "<Left>", "<Nop>", opts)
keymap.set("n", "<Right>", "<Nop>", opts)

-- Normal mode mappings
-- Better window navigation
keymap.set("n", "<C-h>", "<C-w>h", opts)
keymap.set("n", "<C-j>", "<C-w>j", opts)
keymap.set("n", "<C-k>", "<C-w>k", opts)
keymap.set("n", "<C-l>", "<C-w>l", opts)

-- Resize with Ctrl+Shift+hjkl
keymap.set("n", "<C-S-h>", ":vertical resize -2<CR>", opts)
keymap.set("n", "<C-S-j>", ":resize +2<CR>", opts)
keymap.set("n", "<C-S-k>", ":resize -2<CR>", opts)
keymap.set("n", "<C-S-l>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap.set("n", "<S-l>", ":bnext<CR>", opts)
keymap.set("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap.set("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap.set("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)
-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G", opts)

-- Insert mode mappings
-- Press jk fast to exit insert mode
keymap.set("i", "jk", "<ESC>", opts)

-- Visual mode mappings
-- Stay in indent mode
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)

-- Move text up and down
keymap.set("v", "<A-j>", ":m .+1<CR>==", opts)
keymap.set("v", "<A-k>", ":m .-2<CR>==", opts)
keymap.set("v", "p", '"_dP', opts)

-- Visual Block mode mappings
-- Move text up and down
keymap.set("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap.set("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Leader mappings
-- Better save and quit
keymap.set("n", "<leader>w", ":w<CR>", opts)
keymap.set("n", "<leader>q", ":q<CR>", opts)

-- Clear search highlights
keymap.set("n", "<leader>h", ":nohlsearch<CR>", opts)

-- Split window
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts)
keymap.set("n", "<leader>sh", ":split<CR>", opts)
keymap.set("n", "<leader>sx", ":close<CR>", opts)

-- Close buffer
keymap.set("n", "<leader>c", ":bdelete<CR>", opts)

-- Source current file
keymap.set("n", "<leader>so", ":source %<CR>", opts)

-- Toggle relative line numbers
keymap.set("n", "<leader>rn", ":set relativenumber!<CR>", opts)

-- Yank to system clipboard
keymap.set({"n", "v"}, "<leader>y", '"+y', opts)

-- Paste from system clipboard
keymap.set({"n", "v"}, "<leader>p", '"+p', opts)

-- Open Lazy.nvim
keymap.set("n", "<leader>l", ":Lazy<CR>", opts)
