return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- You can choose: latte, frappe, macchiato, mocha
        term_colors = true,
        integrations = {          
          cmp = true,
          treesitter = true,
          -- Add other integrations as needed
        },
      })
      vim.cmd.colorscheme "catppuccin"
    end,
  }
}
