local set = vim.opt_local
set.shiftwidth = 2
set.expandtab = true
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2

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

vim.keymap.set("n", "<leader>q", function()
  vim.fn.chansend(job_id, {"exit\r\n"})
end)

vim.keymap.set("n", "<leader>c", function()
  vim.fn.chansend(job_id, {"gcc " .. filename .." -o " .. basename .. "\r\n"})
end)

-- BUG: Don't work with stdin
vim.keymap.set("n", "<leader>r", function()
  vim.fn.chansend(job_id, {
    "gcc " .. filename .." -o " .. basename .. "; ./" .. basename .. "\r\n"
  })
end)

-- NOTE: Must be a makefile
vim.keymap.set("n", "<leader>mk", function()
  vim.fn.chansend(job_id, {"make\r\n"})
end)

vim.keymap.set("n", "<leader>ml", function()
  vim.fn.chansend(job_id, {"make clean\r\n"})
end)

vim.keymap.set("n", "<leader>mt", function()
  vim.fn.chansend(job_id, {"make test\r\n"})
end)

vim.keymap.set("n", "<leader>mr", function()
  vim.fn.chansend(job_id, {"make run\r\n"})
end)
