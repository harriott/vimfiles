
-- $vimfiles/nvim/lua/lazy/nvim-tree.lua

-- $lazy/nvim-tree.lua/doc/nvim-tree-lua.txt
--  Git Integration:
--   ✗  unstaged
--   ✓  staged
--     unmerged
--   ➜  renamed
--   ★  untracked
--     deleted
--   ◌  ignored

-- :NvimTreeCollapse  to the  :cd
-- Keystrokes:
--  -    => up a directory
--  g?
--  x/p  => cut/paste
--  W    => collapse

return {
  {  "nvim-tree/nvim-tree.lua", version = "*",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons", },
    config = function()
      require("nvim-tree").setup {}
      vim.keymap.set({'i','n'},'<f10>',function()vim.cmd('NvimTreeFindFileToggle!')end,
        {desc='NvimTreeFindFileToggle!'}) -- relative to cwd
      vim.keymap.set({'n'},'<c-n>',function()vim.cmd('NvimTreeToggle')end,
        {desc='NvimTreeToggle'})
    end,
  }
}

