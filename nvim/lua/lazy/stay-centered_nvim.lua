-- vim: set fdl=4:

-- $vfn/lua/lazy/stay-centered_nvim.lua

return { 'arnamak/stay-centered.nvim',
  config = function()
    require'stay-centered'.setup{
      disable_on_mouse = true,
      enabled = false,
      skip_filetypes = {},
    }
    vim.keymap.set({'n','v'},'<leader>zz',
      require'stay-centered'.toggle, { desc = 'stay-centered toggle' })
  end,
  lazy = false,
}

