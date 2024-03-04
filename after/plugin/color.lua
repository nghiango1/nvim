local onedark = require('onedark')

onedark.setup({
    style = 'light',
    transparent = true,

    toggle_style_key = "<leader>ts", -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
    toggle_style_list = { 'light' }, -- List of styles to toggle between
})

function SetBgColor(color)
	color = color or "onedark"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none" })
end

SetBgColor()
