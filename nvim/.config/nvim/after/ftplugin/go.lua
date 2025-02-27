-- small terminal
vim.keymap.set("n", "<leader>st", function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 5)

  job_id = vim.bo.channel
end)

vim.keymap.set("n", "<leader>t", function()
  vim.fn.chansend(job_id, {"go test\r\n"})
end)
