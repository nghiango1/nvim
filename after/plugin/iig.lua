local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.interingo = {
  install_info = {
    url = "~/workspace/InterinGo/tree-sitter-interingo", -- local path or git repo
    files = { "src/parser.c" },                                        -- note that some parsers also require src/scanner.c or src/scanner.cc
    -- optional entries:
    branch = "main",                                                   -- default branch in case of git repo if different from master
    generate_requires_npm = false,                                     -- if stand-alone parser without npm dependencies
    requires_generate_from_grammar = false,                            -- if folder contains pre-generated src/parser.c
  },
}

vim.treesitter.language.register('interingo', 'interingo')
vim.filetype.add({ extension = { iig = 'interingo', }, })

local lspconfig = require('lspconfig')
local configs = require('lspconfig.configs')

local function custom_root_dir(filename, bufnr)
    return vim.fn.getcwd()
end

configs.interingo = {
  default_config = {
    cmd = { 'interingo-lsp' },
    filetypes = { 'interingo' },
    -- root_dir = lspconfig.util.root_pattern('.git', 'deluge'),
    root_dir = custom_root_dir,
    settings = {}
  }
}

lspconfig.interingo.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "interingo" },
})

vim.cmd [[ nnoremap <F5> :!interingo -f % ]]
