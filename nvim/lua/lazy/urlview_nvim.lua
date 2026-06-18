-- vim: set fdl=4:

-- https://harriott.github.io/ - Wed 17 Jun 2026

-- $vfn/lua/lazy/urlview_nvim.lua
-- $lazy/urlview.nvim/doc/urlview.txt
--  :UrlView

return { 'axieax/urlview.nvim',

  config = function ()
    require'urlview'.setup {
        -- default_picker = 'fzf_lua',
        default_picker = 'telescope',
    }
  end,

}

