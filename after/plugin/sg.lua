local sg = require("sg")

sg.setup {
	enable_cody = true,
	accept_tos = true,
}


-- vim.keymap.set('v', '<leader>cs', ':CodyAsk<CR>', {})
-- vim.keymap.set('n', '<leader>cc', ':CodyChat<CR>', {})
vim.keymap.set('n', '<F1>', ':CodyToggle<CR>', {})

vim.keymap.set('n', '<leader>ch', function()
	require("sg.cody.commands").focus_history()
end)

vim.keymap.set('n', '<leader>cp', function()
	require("sg.cody.commands").focus_prompt()
end)
