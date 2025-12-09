-- vim: fdl=4:

-- https://harriott.github.io/ - Mon 08 Dec 2025

-- $vfn/lua/lazy/leap.lua

-- $lazy/leap.nvim/doc/leap.txt

return {
  { 'ggandor/leap.nvim',
    lazy = false,  -- for  nvim-notify
    config = function()
      if vim.fn.has('gui_running') == 1 then
        vim.cmd 'hi link LeapLabel CursorLineNr'
        -- vim.cmd 'hi link LeapLabel Repeat', -- nice, but clashes with Bash commands
      end
      require('leap').setup{
        vim.keymap.set('n', 's', '<Plug>(leap)'),
        vim.keymap.set('n', 'S', '<Plug>(leap-from-window)'),
      }
    end,
  }
}

