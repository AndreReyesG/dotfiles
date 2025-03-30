local set = vim.opt_local
set.shiftwidth = 2
set.expandtab = true
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2

local job_id = 0
vim.keymap.set("n", "<leader>st", function()
  vim.cmd.vnew()
  vim.cmd.term()
  job_id = vim.bo.channel
end)

vim.keymap.set("n", "<leader>q", function()
  vim.fn.chansend(job_id, {"exit\r\n"})
end)


-- NOTE: Must be a makefile
vim.keymap.set("n", "<leader>mk", function()
  vim.fn.chansend(job_id, {"make\r\n"})
end)

vim.keymap.set("n", "<leader>l", function()
  vim.fn.chansend(job_id, {"make clean\r\n"})
end)

vim.keymap.set("n", "<leader>t", function()
  vim.fn.chansend(job_id, {"make test\r\n"})
end)

vim.keymap.set("n", "<leader>r", function()
  vim.fn.chansend(job_id, {"make run\r\n"})
end)
