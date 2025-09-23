-- vim: set fdl=4:

-- $vfn/lua/lazy/boole_nvim.lua

return { 'nat-418/boole.nvim',
  config = function()
    require('boole').setup({
      allow_caps_additions = {
        {'enable', 'disable'},
      },
      mappings = { increment = '<C-a>', decrement = '<C-x>', }, -- Ctrl-a/x
    })
  end,
} -- doesn't handle French weekdays

