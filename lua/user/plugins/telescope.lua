return {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local telescope = require('telescope')
        local builtin = require('telescope.builtin')

        telescope.setup {
            defaults = {
                prompt_prefix = "> ",
                selection_caret = "> ",
                path_display = { "smart" },
                file_ignore_patterns = { "node_modules", ".git/" },
                layout_config = {
                    horizontal = {
                        preview_width = 0.55,
                    },
                    vertical = {
                        mirror = false,
                    },
                    width = 0.8,
                    height = 0.8,
                    preview_cutoff = 120,
                },
            },
            pickers = {
                find_files = {
                    hidden = true, -- Show hidden files
                },
            },
            extensions = {
                -- Extensions setup (if any) can be added here
            },
        }

        -- Keybindings
        local keymap = vim.keymap.set
        keymap('n', '<leader>ff', builtin.find_files, { noremap = true, silent = true, desc = "Find Files" })
        keymap('n', '<leader>fs', builtin.live_grep, { noremap = true, silent = true, desc = "Live Grep" })
        keymap('n', '<leader>fh', builtin.help_tags, { noremap = true, silent = true, desc = "Find Help" })
    end
}

