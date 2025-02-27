return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function()
    -- Finding Files
    vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, { desc = "finding files" })
    -- Edit nvim config from anywhere
    vim.keymap.set("n", "<leader>cn", function()
      require("telescope.builtin").find_files {
        cwd = vim.fn.stdpath("config")
      }
    end)
  end
}
