-- vim: fdl=5:

-- https://harriott.githubio/ - Thu 19 Jun 2025

-- $vfn/lua/lazy/nvim-bqf.lua

-- $lazy/nvim-bqf/doc/bqf.txt
-- <c-b>/<c-f>  operates on the magic window, which can't otherwise be entered
-- <tab>/<s-tab>  toggles items, then  zn  remakes only those marked, zN  those not marked
-- From quickfix-window:
--  :BqfEnable
--  :BqfDisable  " also releases  <c-b>/<c-f>  to work again in the  quickfix-window
--  :BqfToggle

return { 'kevinhwang91/nvim-bqf',
  ft = 'qf',
  lazy = false,

  config = function()
    require'bqf'.setup{
      auto_resize_height = true,
      -- wrap = false,
    }
    vim.keymap.set({'n'},'<leader>aq',"<Cmd>se fen rnu scl=auto wrap<CR>",{desc='(after a maximised magic window) reset  foldenable, relativenumber, signcolumn, wrap'}) -- because not fixed by a pre-emptive  :BqfDisable
    -- \bq  for maximizing a  quickfix-window  is mapped in  $vfv/ftplugin/qf.vim
  end,
}

