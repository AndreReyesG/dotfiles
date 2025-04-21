local set = vim.opt_local
set.shiftwidth = 2
set.expandtab = true
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2

local job_id = 0
local filename = ""

vim.keymap.set("n", "<leader>st", function()
  filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":t")

  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 5)
  job_id = vim.b.terminal_job_id
end)

vim.keymap.set("n", "<leader>q", function()
  vim.fn.chansend(job_id, {"exit\r\n"})
end)

vim.keymap.set("n", "<leader>w", function()
  vim.fn.chansend(job_id, {"typst watch " .. filename .."\r\n"})
end)
