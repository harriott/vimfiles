-- vim: fdl=3:

-- $vfn/lua/lazy/nvim-notify.lua

-- :lua vim.notify("a test error message", "error")
-- $lazy/nvim-notify/doc/nvim-notify.txt
-- :Notifications  " a launch notification in  $vfn/lua/init.lua  ensures this works
-- :Telescope notify  can then enter to get a raw pop-up
-- doesn't catch diagnostics or write to  :messages

return {
  { 'rcarriga/nvim-notify',
    event = 'VimEnter',
    config = function() vim.notify = require("notify") end,
    lazy = false,
    vim.keymap.set({'i','n','v'},'<leader>vn',
      function() vim.notify.dismiss() end, {desc='dismiss notification'})
  }
}

