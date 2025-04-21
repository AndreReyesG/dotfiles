local set = vim.opt_local
set.shiftwidth = 2
set.expandtab = true
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2

local keymap = vim.keymap

local job_id = 0
local filename = ""

keymap.set("n", "<leader>st", function()
  filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":t")
  vim.cmd.vnew()
  vim.cmd.term()
  vim.api.nvim_win_set_width(0, 50)
  job_id = vim.b.terminal_job_id
end)

keymap.set("n", "<leader>q", function()
  vim.fn.chansend(job_id, {"exit\r\n"})
end)

keymap.set("n", "<leader>ex", function()
  vim.fn.chansend(job_id, {"os.exit()\r\n"})
end)

keymap.set("n", "<leader>lua", function()
  vim.fn.chansend(job_id, {"lua\r\n"})
end)

keymap.set("n", "<leader>r", function()
  vim.fn.chansend(job_id, {"lua " .. filename .. "\r\n"})
end)
