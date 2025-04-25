local kanagawa = {
  "rebelot/kanagawa.nvim",
  name = "kanagawa",
  priority = 1000,
  config = function()
    require("kanagawa").setup({
      background = {
        dark = "dragon",
        light = "lotus",
      }
    })
    vim.cmd.colorscheme "kanagawa"
    require("lualine").setup { options = { theme = "kanagawa" } }
  end
}

return kanagawa
