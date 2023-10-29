return {
  's1n7ax/nvim-terminal',
  lazy = false,
  keys = {
    { "<leader><Esc>", [[<C-\><c-n>]],               mode = "t",              desc = "Esc in terminal" },
    { "<leader>a[",    [[<C-\><c-n>]],               mode = "t",              desc = "Esc in terminal" },
    { "<leader>`",     "<cmd>lua TERM:toggle()<cr>", desc = "Esc in terminal" },
  },
  config = function()
    local Terminal = require('nvim-terminal.terminal')
    local Window = require('nvim-terminal.window')

    local window = Window:new({
      position = 'botright',
      split = 'sp',
      width = 50,
      height = 15
    })

    TERM = Terminal:new(window)
  end,
}
