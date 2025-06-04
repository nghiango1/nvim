return {
  "nvimtools/none-ls.nvim",
  -- Optional dependency
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup {
      sources = {
        -- null_ls.builtins.formatting.textlint,
        -- null_ls.builtins.formatting.markdownlint,
        null_ls.builtins.formatting.prettierd,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.erb_format,
        null_ls.builtins.formatting.erb_lint,
      },
    }
  end,
}
