-- vim: fdl=5:

-- https://harriott.githubio/ - Wed 18 Jun 2025

-- $vfn/lua/lazy/nvim-bqf.lua

-- $lazy/nvim-bqf/doc/bqf.txt
-- <tab>/<s-tab>  toggles items, then  zn  remakes only those markeed, zN  those not marked

-- snags: subsequent files require  :se fen wrap

return { 'kevinhwang91/nvim-bqf',
  ft = 'qf',
  lazy = false,

  config = function()
    require'bqf'.setup{
      auto_resize_height = true,
      -- wrap = false,
    }
  end,
}

