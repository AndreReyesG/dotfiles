local set = vim.opt_local
set.shiftwidth = 2
set.expandtab = true
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2

local term1_id = 0
local term2_id = 0
local filename = ""
local pdfname = ""

vim.keymap.set("n", "<leader>st", function()
  filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":t")
  pdfname = "pdf/" .. vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":t:r") .. ".pdf"

  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 5)
  --print("terminal 1: " .. vim.b.terminal_job_id)
  term1_id = vim.b.terminal_job_id

  -- Create a second terminal
  vim.cmd.vnew()
  vim.cmd.term()
  --print("terminal 2: " .. vim.b.terminal_job_id)
  term2_id = vim.b.terminal_job_id
end)

vim.keymap.set("n", "<leader>w", function()
  vim.fn.chansend(term1_id, { "mkdir -p pdf; typst watch " .. filename .. "; " .. pdfname .. "\r\n" })
  vim.fn.chansend(term2_id, { "open " .. pdfname .. "\r\n" })
end)

vim.keymap.set("n", "<leader>q", function()
  -- Ctrl-C
  vim.fn.chansend(term1_id, "\x03")
  vim.fn.chansend(term2_id, "\x03")

  -- exit
  vim.fn.chansend(term1_id, "exit\r")
  vim.fn.chansend(term2_id, "exit\r")

  vim.defer_fn(function()
    -- Esperar a que terminen
    vim.fn.jobwait({ term1_id, term2_id }, 1000)

    -- Cerrar ventanas y eliminar buffers de terminal
    local terminal_bufs = {}

    for _, win in ipairs(vim.api.nvim_list_wins()) do
      local buf = vim.api.nvim_win_get_buf(win)
      if vim.bo[buf].buftype == "terminal" then
        table.insert(terminal_bufs, buf)
        vim.api.nvim_win_close(win, true)
      end
    end

    -- Borrar buffers después de cerrar sus ventanas
    for _, buf in ipairs(terminal_bufs) do
      if vim.api.nvim_buf_is_loaded(buf) then
        vim.api.nvim_buf_delete(buf, { force = true })
      end
    end

    -- Resetear ids
    term1_id = 0
    term2_id = 0
  end, 300)
end)
