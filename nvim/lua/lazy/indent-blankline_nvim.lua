-- vim: fdl=1:

-- $vfn/lua/lazy/indent-blankline_nvim.lua

-- $lazy/indent-blankline.nvim/doc/indent_blankline.txt

-- :help ibl.config
-- :IBLToggle  " all buffers

return { 'lukas-reineke/indent-blankline.nvim',
  main = "ibl",
  ---@module "ibl"
  ---@type ibl.config
  opts = {},
  config = function() require'ibl'.setup({ enabled = false, }) end,
}

