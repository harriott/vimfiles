-- vim: fdl=3:

-- $vfn/lua/lazy/lspsaga.lua

-- https://github.com/nvimdev/lspsaga.nvim  not in Firefox

-- \lo = Lspsaga outline ($vfn/lua/init.lua)

return {
  { 'nvimdev/lspsaga.nvim',
    event = 'LspAttach',
    config = function() require('lspsaga').setup({
      lightbulb = { enable = false }, }) end,
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons',
    },
  },
}

-- :checkhealth lspsaga

