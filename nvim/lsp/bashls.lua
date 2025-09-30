-- vim: set fdl=3:

-- $vfn/lsp/bashls.lua
--  :MasonInstall bash-language-server
--  :MasonUninstall bash-language-server
--  $nvmp/bash-language-server/node_modules/bash-language-server/src/config.ts
--  diagnostics from  explainshell  shellcheck  shfmt
--  reports Error for CLRFs
--  enabled in  $vfn/lua/init.lua

---@type vim.lsp.Config
return {
  cmd = { 'bash-language-server', 'start' },
  settings = {
    bashIde = {
      globPattern = vim.env.GLOB_PATTERN or '*@(.sh|.inc|.bash|.command)',
    },
  },
  filetypes = { 'bash', 'sh' },
  root_markers = { '.git' },
} -- based on  $cGRs/d-CP/d-Vim-Nvim/r-neovim-nvim-lspconfig/lsp/bashls.lua

