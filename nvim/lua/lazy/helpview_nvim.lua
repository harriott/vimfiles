-- vim: fdl=5:

-- https://harriott.githubio/ - Tue 08 Apr 2025

-- $vfn/lua/lazy/helpview_nvim.lua

-- $lazy/helpview.nvim/README.md
-- $lazy/helpview.nvim/helpview.nvim.wiki/Home.md
-- :h helpview.nvim-commands  :Helpview toggle
--  v  toggles, but see  $vfv/ftplugin/help.vim

return { 'OXY2DEV/helpview.nvim',
  lazy = false,

  config = function()
    require'helpview'.setup{
      preview = { icon_provider = "devicons" },
      vimdoc = { headings = {
        heading_1 = { sign = '', },
        heading_2 = { sign = '', },
        heading_3 = { sign = '', },
        heading_4 = { sign = '', },
      }, },
    }
  end,
}

