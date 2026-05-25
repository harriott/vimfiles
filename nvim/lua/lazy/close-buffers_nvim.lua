-- vim: set fdl=4:

-- $vfn/lua/lazy/close-buffers_nvim.lua

-- :BDelete this  " preserving windows layout
-- :BDelete other

return {'kazhala/close-buffers.nvim',
  config = function()
    require'close_buffers'.setup{}
    vim.keymap.set({'i'},'<leader><f4>', "<esc><cmd>echo 'now maybe  f4  again'<cr>",{desc='safely quit, maybe'})
    vim.keymap.set({'n'},'<leader><f4>', function()
       require'close_buffers'.wipe{type='other'} vim.fn.VimWriteClose() end,
       {desc='safely quit'}) -- ensuring  ShaDa  populated
    vim.keymap.set({'n'},'<leader><leader>d', "<cmd>wshada<bar>BDelete this<cr>",{desc=':BDelete this'})
    vim.keymap.set({'n'},'<leader>bd', "<cmd>wshada<bar>BDelete hidden<cr>",{desc=':BDelete hidden'})
    vim.keymap.set({'n'},'<leader>bdd', "<cmd>wshada<bar>BDelete other<cr>",{desc=':BDelete other'})
  end,
} -- breaks  close-buffers.vim

