
-- $vfn/lua/lazy/nvim-notify.lua

-- :lua vim.notify("a test error message", "error")
-- $lazy/nvim-notify/doc/nvim-notify.txt
-- :Telescope notify

return {
  { 'rcarriga/nvim-notify',
    event = 'VimEnter',
    config = function() vim.notify = require("notify") end,
    vim.keymap.set({'i','n','v'},'<leader>vn',
      function() vim.notify.dismiss() end, {desc='dismiss notification'})
  }
}

