local dap = require('dap')

vim.keymap.set("n", "<leader>pd", require('dap.ext.vscode').load_launchjs)
vim.keymap.set("n", "<C-b>", dap.toggle_breakpoint)
vim.keymap.set("n", "<F5>", dap.continue)
vim.keymap.set("n", "<Leader>dr", dap.continue, { desc = "DAP [r]un" })
vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end, { desc = "DAP run [l]ast" })
vim.keymap.set("n", "<F9>", dap.step_over)
vim.keymap.set("n", "<F8>", dap.step_into)
vim.keymap.set("n", "<leader>do", dap.repl.toggle, { desc = "DAP Repl t[o]ggle" })

vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)
vim.keymap.set('n', '<Leader>B', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<Leader>lp',
	function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end,
	{ desc = "DAP set [l]og [p]oint" })

vim.keymap.set({ 'n', 'v' }, '<Leader>dh', function()
	require('dap.ui.widgets').hover()
end, { desc = "DAP [h]over" })
vim.keymap.set({ 'n', 'v' }, '<Leader>dp', function()
	require('dap.ui.widgets').preview()
end, { desc = "DAP preview" })
vim.keymap.set('n', '<Leader>df', function()
	local widgets = require('dap.ui.widgets')
	widgets.centered_float(widgets.frames)
end, { desc = "DAP [f]rames" })
vim.keymap.set('n', '<Leader>ds', function()
	local widgets = require('dap.ui.widgets')
	widgets.centered_float(widgets.scopes)
end, { desc = "DAP [s]copes" })

vim.keymap.set('n', 'S-<F5>', 'make<CR>')
vim.keymap.set('n', '<Leader><F5>', require('dap.ext.vscode').load_launchjs)
