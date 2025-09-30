-- vim: set fdl=3:

-- $vfn/lsp/lemminx.lua - LemMinX - XML Language Server
--  :MasonInstall lemminx
--  enabled in  $vfn/lua/init.lua
--  produces diagnostics labelled  xml

---@type vim.lsp.Config
return {
  cmd = { 'lemminx' },
  filetypes = { 'xml', 'xsd', 'xsl', 'xslt', 'svg' },
  root_markers = { '.git' },
} -- based on  $cGRs/d-CP/d-Vim-Nvim/r-neovim-nvim-lspconfig/lsp/lemminx.lua

