return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- Optional icons for the statusline
    config = function()
        require('lualine').setup {
            options = {
                theme = 'catppuccin',
                section_separators = { left = '', right = '' },
                component_separators = { left = '', right = '' },
                icons_enabled = true,
                globalstatus = true, -- Enables a single statusline across all windows
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = { 'branch', 'diff', 'diagnostics' },
                lualine_c = { 'filename' },
                lualine_x = { 'encoding', 'fileformat', 'filetype' },
                lualine_y = { 'progress' },
                lualine_z = { 'location' },
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { 'filename' },
                lualine_x = { 'location' },
                lualine_y = {},
                lualine_z = {},
            },
            tabline = {},
            extensions = { 'fugitive', 'nvim-tree', 'quickfix' }
        }
    end
}

