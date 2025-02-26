local keymap = vim.keymap

-- test lua files
keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>")
keymap.set("n", "<leader>x", ":.lua<CR>")
keymap.set("v", "<leader>x", ":lua<CR>")

keymap.set("i", "jj", "<esc>", {desc = "exit insert mode with jj"})

keymap.set("n", "<leader>nh", ":nohl<CR>", {desc = "clear search highlights"})

keymap.set("n", "<leader>sv", "<c-w>v", {desc = "split window vertically"})
keymap.set("n", "<leader>sh", "<c-w>s", {desc = "split window horizontally"})

-- navigate vim panes better
keymap.set("n", "<c-k>", ":wincmd k<CR>", {desc = "go up"})
keymap.set("n", "<c-j>", ":wincmd j<CR>", {desc = "go down"})
keymap.set("n", "<c-h>", ":wincmd h<CR>", {desc = "go right"})
keymap.set("n", "<c-l>", ":wincmd l<CR>", {desc = "go left"})
