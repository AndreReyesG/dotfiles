local keymap = vim.keymap

-- test lua files
keymap.set("n", "<leader><leader>x", "<cmd>source %<cr>")
keymap.set("n", "<leader>x", ":.lua<cr>")
keymap.set("v", "<leader>x", ":lua<cr>")

keymap.set("i", "jj", "<esc>", { desc = "exit insert mode with jj"} )

keymap.set("n", "<leader>nh", ":nohl<cr>", { desc = "clear search highlights"} )

keymap.set("n", "<leader>sv", "<c-w>v", { desc = "split window vertically"} )
keymap.set("n", "<leader>sh", "<c-w>s", { desc = "split window horizontally"} )

-- navigate vim panes better
keymap.set("n", "<c-k>", ":wincmd k<cr>", { desc = "go up"} )
keymap.set("n", "<c-j>", ":wincmd j<cr>", { desc = "go down"} )
keymap.set("n", "<c-h>", ":wincmd h<cr>", { desc = "go right"} )
keymap.set("n", "<c-l>", ":wincmd l<cr>", { desc = "go left"} )
