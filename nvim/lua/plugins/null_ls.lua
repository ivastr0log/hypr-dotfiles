return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },

  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        require("none-ls.formatting.ruff"),
        require("none-ls.diagnostics.ruff"),
        --null_ls.builtins.formatting.rustfmt,
        --               null_ls.builtins.formatting.ast_grep,
      },
    })

    vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
  end,
}
