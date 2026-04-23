-- vim: set fdl=4:

-- https://harriott.githubio/ - sam 18 avr 2026

-- $vfn/lua/lazy/interestingwords.lua
-- alternative to  vim-mark

return { 'Mr-LLLLL/interestingwords.nvim',
  config = function()
    require'interestingwords'.setup({

      color_key = '<leader>k', -- on a word or selection
      cancel_color_key = '<leader><leader>k', --anywhere

      -- Not sure what these add, but they do need to be defined:
      search_key = '<leader>I',
      cancel_search_key = '<leader><leader>I',

    })
  end,
}

