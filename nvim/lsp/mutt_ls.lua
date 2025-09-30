-- vim: set fdl=3:

-- $vfn/lsp/mutt_ls.lua
--  :MasonInstall mutt-language-server
--  enabled in  $vfn/lua/init.lua
--  Doesn't seem to do anything...

---@type vim.lsp.Config
return {
  cmd = { 'mutt-language-server' },
  filetypes = { 'muttrc', 'neomuttrc' },
  root_markers = { '.git' },
  settings = {},
} -- based on  $cGRs/d-CP/d-Vim-Nvim/r-neovim-nvim-lspconfig/lsp/mutt_ls.lua

