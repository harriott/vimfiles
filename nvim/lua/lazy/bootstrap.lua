
-- https://harriott.github.io/ - mer 11 sept 2024

-- $vimfiles/nvim/lua/init.lua
--  required by
--   $vimfiles/nvim/lua/init.lua
--   $vimfiles/nvim/lua/test.lua

-- -> 1 lazy.nvim 0 bootstrap
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then -- does what?
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end -- @diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)
-- $lazy/lazy.nvim/doc/lazy.nvim.txt

