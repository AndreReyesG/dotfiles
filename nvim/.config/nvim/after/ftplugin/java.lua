local job_id = 0
local filename = ""
local basename = ""

vim.keymap.set("n", "<leader>st", function()
  filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":t")
  basename = filename:match("(.+)%..+$")
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 5)
  job_id = vim.b.terminal_job_id
end)

vim.keymap.set("n", "<leader>c", function()
  vim.fn.chansend(job_id, {"javac " .. filename .. "\r\n"})
end)

vim.keymap.set("n", "<leader>r", function()
  vim.fn.chansend(job_id, {
    "javac " .. filename .. "; java " .. basename .. "\r\n"
  })
end)

vim.keymap.set("n", "<leader>q", function()
  vim.fn.chansend(job_id, {"exit\r\n"})
end)
