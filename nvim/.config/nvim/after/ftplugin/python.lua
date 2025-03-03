local keymap = vim.keymap
-- small terminal
local job_id = 0
keymap.set("n", "<leader>st", function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 10)

  job_id = vim.bo.channel
end)

-- TODO: python3 -m venv env
-- TODO: source env/bin/activate
-- TODO: deactivate

keymap.set("n", "<leader>q", function()
  vim.fn.chansend(job_id, {"exit\r\n"})
end)

keymap.set("n", "<leader>py", function()
  vim.fn.chansend(job_id, {"ipython3\r\n"})
end)

keymap.set("n", "<leader>t", function()
  vim.fn.chansend(job_id, {"clear\r\npytest\r\n"})
end)

keymap.set("n", "<leader>T", function()
  vim.fn.chansend(job_id, {"clear\r\npytest -v\r\n"})
end)
