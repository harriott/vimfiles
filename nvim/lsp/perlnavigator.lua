-- vim: set fdl=5:

-- $vfn/lsp/perlnavigator.lua
--  :MasonInstall perlnavigator
--   $nvmp/perlnavigator/package.json
--  enabled in  $vfn/lua/init.lua
--   bung an exit in some code to see this work
--   source for  lspsaga's  breadcrumbs

---@type vim.lsp.Config
return {
  cmd = { 'perlnavigator' },
  filetypes = { 'perl' },
  root_markers = { '.git' },
  settings = {
    perlnavigator = {
      enableWarnings = true,
      perlcriticEnabled = true,
      perlcriticProfile = '',
      perlPath = 'perl',
      perltidyProfile = '',
    }, },
}
-- based on
--  $cGRs/d-CP/d-Vim-Nvim/r-neovim-nvim-lspconfig/lsp/perlnavigator.lua
--  bscan/PerlNavigator

