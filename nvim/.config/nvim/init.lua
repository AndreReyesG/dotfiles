print("hello neovim")

vim.cmd([[
"set path+=lua/andre/plugins "set paths when used :find
]])

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("andre.core")
require("andre.lazy")

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
