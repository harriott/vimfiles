
-- $vimfiles/nvim/lua/lazy/nvim-notify.lua

-- :lua vim.notify("This is an error message", "error")
-- :Telescope notify

return {
  { 'rcarriga/nvim-notify',
    event = 'VimEnter',
    config = function()
      vim.notify = require("notify")
    end,
  }
}

