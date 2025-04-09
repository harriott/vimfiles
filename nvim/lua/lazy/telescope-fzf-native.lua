-- vim: fdl=2:

-- $vfn/lua/lazy/telescope-fzf-native.lua

-- fzf exact match syntax (',^,$) for Telescope :
--  !'not
--  !^not_begin
--  !not_end$

if vim.fn.has("win64") == 1 then
  return { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
else
  return {'nvim-telescope/telescope-fzf-native.nvim', build = 'make', cond = function() return vim.fn.executable 'make' == 1 end,}
end
