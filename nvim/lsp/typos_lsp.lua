-- vim: set fdl=1:

-- $vfn/lsp/typos_lsp.lua
--  :MasonInstall typos-lsp
--  enabled in  $vfn/lua/init.lua
--  diagnostic made for "softwares"

---@type vim.lsp.Config
return {
  cmd = { 'typos_lsp' },
  filetypes = { 'markdown', 'tex' }, -- not helpful in  python
  root_markers = { "typos.toml", "_typos.toml", ".typos.toml", "pyproject.toml", "Cargo.toml" }, -- ordered by priority
  settings = {},
} -- based on  $cGRs/d-CP/d-Vim-Nvim/r-neovim-nvim-lspconfig/lsp/typos_lsp.lua

