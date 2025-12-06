-- vim: fdl=4:

-- https://harriott.github.io/ - Sat 06 Dec 2025

-- $vfn/lua/lazy/leap.lua

-- $lazy/leap.nvim/doc/leap.txt

return {
  { 'ggandor/leap.nvim',
    lazy = false,  -- for  nvim-notify
    config = function()
      -- require('lualine').setup()
      require('leap').setup{
        -- vim.cmd 'hi link LeapLabel Boolean',
        -- vim.cmd 'hi link LeapLabel Repeat', -- nice, but clashes with Bash commands
        vim.cmd 'hi link LeapLabel CursorLineNr',
        vim.keymap.set('n', 's', '<Plug>(leap)'),
        vim.keymap.set('n', 'S', '<Plug>(leap-from-window)'),
      }
    end,
  }
}

