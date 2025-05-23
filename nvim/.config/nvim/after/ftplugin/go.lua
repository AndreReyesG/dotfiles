local job_id = 0

vim.keymap.set("n", "<leader>st", function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 5)

  job_id = vim.b.terminal_job_id
end)

vim.api.nvim_create_autocmd("VimLeavePre", {
  pattern = "*.go",
  command = "!go fmt",
})

vim.keymap.set("n", "<leader>t", function()
  vim.fn.chansend(job_id, {"go test\r\n"})
end)

vim.keymap.set("n", "<leader>q", function()
  vim.fn.chansend(job_id, {"exit\r\n"})
end)
