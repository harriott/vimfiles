-- vim: set fdl=4:

-- $vfn/lua/lazy/outline_nvim.lua - Joseph Harriott - Tue 29 Apr 2025

-- :Outline!
-- ?
--  <enter> jumps to
--  <tab>   toggles folds
--  q       quits
-- no providors: dw, help
-- used in
--  $vfv/ftplugin/man.vim
--  $vfv/ftplugin/markdown.vim

return { 'hedyhli/outline.nvim',
  cmd = { 'Outline', 'OutlineOpen' },
  config = function()
    require('outline').setup({})
  end,
}

