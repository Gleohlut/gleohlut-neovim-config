-- keymaps.lua in core/ directory

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader key
vim.g.mapleader = " "  -- Set space as the leader key

-- Basic navigation
keymap('n', '<C-h>', '<C-w>h', opts)  -- Move to the left window
keymap('n', '<C-j>', '<C-w>j', opts)  -- Move to the lower window
keymap('n', '<C-k>', '<C-w>k', opts)  -- Move to the upper window
keymap('n', '<C-l>', '<C-w>l', opts)  -- Move to the right window

-- Quickly save and quit
keymap('n', '<Leader>w', ':w<CR>', opts)      -- Save file
keymap('n', '<Leader>q', ':q<CR>', opts)      -- Quit window
keymap('n', '<Leader>x', ':x<CR>', opts)      -- Save and quit

-- Tab management
keymap('n', '<Leader>tt', ':tabnew<CR>', opts)  -- Open a new tab
keymap('n', '<Leader>tc', ':tabclose<CR>', opts)  -- Close the current tab
keymap('n', '<Leader>to', ':tabonly<CR>', opts)  -- Close all other tabs
keymap('n', '<Leader>tp', ':tabprev<CR>', opts)  -- Go to the previous tab
keymap('n', '<Leader>tn', ':tabnext<CR>', opts)  -- Go to the next tab

-- Buffer navigation
keymap('n', '<Leader>bn', ':bnext<CR>', opts)  -- Go to the next buffer
keymap('n', '<Leader>bp', ':bprevious<CR>', opts)  -- Go to the previous buffer
keymap('n', '<Leader>bd', ':bdelete<CR>', opts)  -- Delete the current buffer

-- Keybinding to create a new buffer in a vertical split
keymap('n', '<Leader>bvn', ':vnew<CR>', opts)

-- Visual mode enhancements
keymap('v', '<', '<gv', opts)  -- Stay in visual mode when indenting left
keymap('v', '>', '>gv', opts)  -- Stay in visual mode when indenting right

-- Moving text
keymap('v', 'J', ":m '>+1<CR>gv=gv", opts)  -- Move highlighted text down
keymap('v', 'K', ":m '<-2<CR>gv=gv", opts)  -- Move highlighted text up

-- Better paste in visual mode
keymap('v', 'p', '"_dP', opts)  -- Keep the yanked text after pasting over in visual mode

-- Split window management
keymap('n', '<Leader>sv', ':vsplit<CR>', opts)  -- Split window vertically
keymap('n', '<Leader>sh', ':split<CR>', opts)   -- Split window horizontally
keymap('n', '<Leader>sc', ':close<CR>', opts)   -- Close the current split window

-- Select All
keymap('n', '<Leader>a', 'ggVG', opts)  -- Select the entire file content
