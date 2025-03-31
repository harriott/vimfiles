
-- $lazy/lspsaga.nvim/doc/lspsaga.nvim.txt
-- $vfn/lua/lazy/lspsaga.lua

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

