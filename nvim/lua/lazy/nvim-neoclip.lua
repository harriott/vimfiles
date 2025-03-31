
-- https://harriott.githubio/ - Wed 29 May 2024

-- $vfn/lua/lazy/nvim-neoclip.lua

-- $lazy/nvim-neoclip.lua/doc/neoclip.txt
-- :Telescope neoclip
-- <CR>  defaults to  ", unnamed register

return { 'AckslD/nvim-neoclip.lua',
  dependencies = { 'kkharji/sqlite.lua', 'nvim-telescope/telescope.nvim'},
  requires = {'kkharji/sqlite.lua', module = 'sqlite'},
  config = function()
    require('neoclip').setup({
      default_register = {'"', '*', '+'}, -- so can paste in  unix Neovide  while  unnamedplus
      enable_persistent_history = true,
    })
    vim.keymap.set({'n'},'<leader>yy',"<Cmd>echo 'neoclip'<bar>Telescope neoclip<CR>")
  end,
}

