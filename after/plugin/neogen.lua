require('neogen').setup {
  enabled = true,
  input_after_comment = true,
}

local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<Leader>cc", ":lua require('neogen').generate()<CR>", opts)
