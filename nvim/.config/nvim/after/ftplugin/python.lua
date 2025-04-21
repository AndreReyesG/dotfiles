local keymap = vim.keymap

local job_id = 0
local filename = ""

keymap.set("n", "<leader>st", function()
  filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":t")
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 10)

  job_id = vim.b.terminal_job_id
end)

-- TODO: python3 -m venv env
-- TODO: source env/bin/activate
-- TODO: deactivate

keymap.set("n", "<leader>q", function()
  vim.fn.chansend(job_id, {"exit\r\n"})
end)

keymap.set("n", "<leader>py", function()
  vim.fn.chansend(job_id, {"python3 " .. filename .. "\r\n"})
end)

keymap.set("n", "<leader>ipy", function()
  vim.fn.chansend(job_id, {"ipython3\r\n"})
end)

keymap.set("n", "<leader>t", function()
  vim.fn.chansend(job_id, {"clear\r\npytest\r\n"})
end)

keymap.set("n", "<leader>T", function()
  vim.fn.chansend(job_id, {"clear\r\npytest -v\r\n"})
end)
