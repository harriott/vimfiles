-- vim: set fdl=1:

-- $vfn/lsp/sqls.lua
--  :MasonInstall sqls
--  enabled in  $vfn/lua/init.lua
--  $nvmp/sqls  doesn't inform, look in  sqls-server/sqls
--  in a  .sql  begin typing  select, then accept  select~

---@type vim.lsp.Config
return {
  cmd = { 'sqls' },
  filetypes = { 'sql', 'mysql' },
  root_markers = { 'config.yml' },
  settings = {},
} -- based on $cGRs/d-CP/d-Vim-Nvim/r-neovim-nvim-lspconfig/lsp/sqls.lua

