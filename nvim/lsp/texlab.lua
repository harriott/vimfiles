-- vim: set fdl=5:

-- $vfn/lsp/texlab.lua
--  :MasonInstall texlab
--  enabled in  $vfn/lua/init.lua
--  $nvmp/texlab  is unfortunately impenatrable, see Wiki > Configuration
--  \fuck}  gets an Error, \fuck  is ignored

---@type vim.lsp.Config
return {
  cmd = { 'texlab' },
  filetypes = { 'tex', 'plaintex', 'bib' },
} -- from the huge  $cGRs/d-CP/d-Vim-Nvim/r-neovim-nvim-lspconfig/lsp/texlab.lua

