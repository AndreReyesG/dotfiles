local set = vim.opt_local
set.shiftwidth = 2
set.expandtab = true
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2

local keymap = vim.keymap

-- small terminal
local job_id = 0
keymap.set("n", "<leader>st", function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.api.nvim_win_set_width(0, 50)
  job_id = vim.bo.channel
end)

keymap.set("n", "<leader>q", function()
  vim.fn.chansend(job_id, {"exit\r\n"})
end)

-- TODO: exit the lua interactive shell

keymap.set("n", "<leader>lua", function()
  vim.fn.chansend(job_id, {"lua\r\n"})
end)
