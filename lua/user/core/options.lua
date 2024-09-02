-- options.lua in ~/.config/nvim/lua/user/core/

local opt = vim.opt

-- Set relative line numbers
opt.relativenumber = true

-- Enable line numbers
opt.number = true

-- Use spaces instead of tabs
opt.expandtab = true

-- Set tab width to 4 spaces
opt.tabstop = 4
opt.shiftwidth = 4

-- Enable mouse support
opt.mouse = 'a'

-- Clipboard
opt.clipboard = "unnamedplus"

-- Show which line your cursor is on
opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 10

-- Enable persistent undo
opt.undofile = true

-- Set split behavior
opt.splitbelow = true
opt.splitright = true

-- Turn off swapfile
opt.swapfile = false

-- Disable arrow keys in normal and visual modes in one line
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')
