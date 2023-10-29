-- Maybe i'm wrong, this work like >> but in insert mode
vim.keymap.set("i", "<C-t>", "")

-- Why Undo is ctrl r again
vim.keymap.set("n", "U", "<C-r>")

-- Quick go to next word in insert mode with Ctrl h and Ctrl l
-- Trying to replace Ctrl left and Ctrl right here
function _G.t(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

vim.keymap.set("i", _G.t "<C-h>", "<C-Left>")
vim.keymap.set("i", _G.t "<C-l>", "<C-\\><C-N>ea")

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move all selected line Up/Down with JK
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Mark to keep the cursor at place when [J]oin line
vim.keymap.set("n", "J", "mzJ`z")

-- Keep thing in the middle when jump
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Normally I work with <leader>cn and <leader>cN
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- Visual mode paste without changing register " value
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copy to register + (system cliboard)
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete to register + (? Why we need this again)
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- For fun, Ctrl c to Esc, almost no diferent and I only use Esc
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Format
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Replace in current file, with regex
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- For bash like file, normally i will go for normal console command instead
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Quick jump to config file
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/init.lua<CR>");
