
-- $vimfiles/nvim/lua/lazy/nvim-notify.lua

-- :Telescope notify

return {
  { 'rcarriga/nvim-notify',
    event = 'VimEnter',
    config = function()
      vim.notify = require("notify")
    end,
  }
}

