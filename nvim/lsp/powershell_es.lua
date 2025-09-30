-- vim: set fdl=5:

-- $vfn/lsp/powershell_es.lua
--  :MasonInstall powershell-editor-services
--   (might need to close nvim and manually Delete it to be able to re-install a newer version)
--   $nvmp/powershell-editor-services/README.md
--  enabled in  $vfn/lua/init.lua
--   diagnostics labelled  PSScriptAnalyzer

---@type vim.lsp.Config
return {
  -- bundle_path = '~/AppData/Local/nvim-data/mason/packages/powershell-editor-services',
  bundle_path = vim.fn.expand "$MASON/packages/powershell-editor-services",
  filetypes = { 'ps1' },
  root_markers = { 'PSScriptAnalyzerSettings.psd1', '.git' }, -- ordered by priority
  settings = { powershell = { codeFormatting = { Preset = 'OTBS' } } }, -- one true brace style
}
-- based on
--  $cGRs/d-CP/d-Vim-Nvim/r-neovim-nvim-lspconfig/lsp/powershell_es.lua
--  PowerShell/PowerShellEditorServices

