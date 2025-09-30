-- vim: set fdl=5:

-- $vfn/lsp/vimls.lua
--  :MasonInstall vim-language-server
--  $nvmp/vim-language-server/node_modules/vim-language-server/README.md
--  enabled in  $vfn/lua/init.lua
--  diagnostics labelled as  vimlsp

vim.g.markdown_fenced_languages = { 'help', 'vim' }
  -- echo g:markdown_fenced_languages, but can't see any benefit
---@type vim.lsp.Config
return {
  cmd = { 'vim-language-server', '--stdio' },
  filetypes = { 'vim' },
  root_markers = { '.git' },
  init_options = {
    isNeovim = true,
    iskeyword = '@,48-57,_,192-255,-#',
    vimruntime = '',
    runtimepath = '',
    diagnostic = { enable = true },
    indexes = {
      runtimepath = true,
      gap = 100,
      count = 3,
      projectRootPatterns = { 'runtime', 'nvim', '.git', 'autoload', 'plugin' },
    },
    suggest = { fromVimruntime = true, fromRuntimepath = true },
  },
} -- from  $cGRs/d-CP/d-Vim-Nvim/r-neovim-nvim-lspconfig/lsp/vimls.lua

