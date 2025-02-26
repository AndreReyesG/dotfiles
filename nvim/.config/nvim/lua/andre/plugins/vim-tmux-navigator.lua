return {
  "christoomey/vim-tmux-navigator",
  vim.keymap.set("n", "c-h", ":TmuxNavigateLeft<cr>", { desc = "go left" }),
  vim.keymap.set("n", "c-j", ":TmuxNavigateDown<cr>", { desc = "go down" }),
  vim.keymap.set("n", "c-k", ":TmuxNavigateUp<cr>", { desc = "go up" }),
  vim.keymap.set("n", "c-l", ":TmuxNavigateRight<cr>", { desc = "go right" }),
}
