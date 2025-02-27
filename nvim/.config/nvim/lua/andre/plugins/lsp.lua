-- "h lsp"
-- "h lspconfig-all" to find
-- See that youtube vide: https://www.youtube.com/watch?v=bTWWFQZqzyI&list=PLep05UYkc6wTyBe7kPjQFWVXTlhKeQejM&index=7
-- For lua-language-server I instaled from latest realease, then I used a symbolic link to ~/.local/bin/lua-language-server
-- Check with echo executable("lua-language-server"), if you got it's all good man
-- "h ins-completion"

return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "folke/lazydev.nvim",
      ft = "lua", -- only load on lua files
      opts = {
        library = {
          -- See the configuration section for more details
          -- Load luvit types when the `vim.uv` word is found
          { path = "${3rd}/luv/library", words = { "vim%.uv" } },
        },
      },
    },
  },
  config = function()
    require("lspconfig").lua_ls.setup{}
  end,
}
