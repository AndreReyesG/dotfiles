local gruvbox = {
  "ellisonleao/gruvbox.nvim",
  name = "gruvbox",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme "gruvbox"
    require("lualine").setup { options = { theme = "gruvbox" } }
  end
}

return gruvbox
