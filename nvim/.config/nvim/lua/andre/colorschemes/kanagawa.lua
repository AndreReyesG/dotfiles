local kanagawa = {
  "rebelot/kanagawa.nvim",
  name = "kanagawa",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme "kanagawa"
    require("lualine").setup { options = { theme = "kanagawa" } }
  end
}

return kanagawa
