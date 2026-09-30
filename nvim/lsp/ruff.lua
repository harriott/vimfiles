-- vim: set fdl=5:

-- $vfn/lsp/ruff.lua
--  :MasonInstall ruff
--  enabled in  $vfn/lua/init.lua
--  also see  $vfv/ftplugin/python.vim

---@type vim.lsp.Config
return {
  cmd = { 'ruff', 'server' },
  filetypes = { 'python' },
  root_markers = { 'pyproject.toml', 'ruff.toml', '.ruff.toml', '.git' },
  settings = {},
}
-- based on
--  $nDrGRs/d-CP/d-Vim-Nvim/r-neovim-nvim-lspconfig/lsp/ruff.lua
--  same as in  https://docs.astral.sh/ruff/editors/setup/

