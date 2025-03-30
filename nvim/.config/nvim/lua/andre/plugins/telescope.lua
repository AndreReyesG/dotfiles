return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function()
    require("telescope").setup({
      extensions = {
        fzf = {}
      }
    })

    require("telescope").load_extension("fzf")

    -- Keymaps
    vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files) -- Finding Files
    vim.keymap.set("n", "<leader>fh", require("telescope.builtin").help_tags) -- Finding Help
    vim.keymap.set("n", "<leader>gf", require("telescope.builtin").git_files)
    -- Edit nvim config from anywhere
    vim.keymap.set("n", "<leader>en", function()
      require("telescope.builtin").find_files {
        cwd = vim.fn.stdpath("config")
      }
    end)
    -- Edit Packages (See how a plugin works)
    vim.keymap.set("n", "<leader>ep", function()
      require("telescope.builtin").find_files {
        cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy")
      }
    end)
    -- TODO: find my dotfiles
    --vim.keymap.set("n", "<leader>ed", function()
    --  require("telescope.builtin").git_files {
    --  }
    --end)
  end
}
