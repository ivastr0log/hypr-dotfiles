return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
      local builtin = require("telescope.builtin")

      require("telescope").setup {
        defaults = {
          file_ignore_patterns = { "node_modules" }, -- Keep this if you want to ignore common folders
          -- Other settings...
        },
        pickers = {
          find_files = {
            hidden = true,     -- Shows hidden files
            no_ignore = false, -- Respects .gitignore by default
          },
          -- Or for a specific keymap:
          -- keys = {
          --   { "<leader>ff", require('telescope.builtin').find_files, { hidden = true, no_ignore = true } },
          -- }
        },
      }

      vim.keymap.set("n", "<C-f>", builtin.find_files)
      vim.keymap.set("n", "<C-g>", builtin.live_grep)
    end,
  },

  {
    "nvim-telescope/telescope-ui-select.nvim",

    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })

      require("telescope").load_extension("ui-select")
    end,
  },
}
