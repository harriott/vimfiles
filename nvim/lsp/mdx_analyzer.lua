-- vim: set fdl=3:

-- $vfn/lsp/mdx_analyzer.lua - a language server for MDX
--  :MasonInstall mdx-analyzer
--  e $nvmp/mdx-analyzer/node_modules/@mdx-js/language-server/README.md
--  enabled in  $vfn/lua/init.lua
--  Searching through  $cGRs  I can't find any example of it's effect.

local util = require 'lspconfig.util'
---@type vim.lsp.Config
return {
  cmd = { 'mdx-language-server', '--stdio' },
  filetypes = { 'mdx' },
  root_markers = { 'package.json' },
  settings = {},
  init_options = {
    typescript = {},
  },
  before_init = function(_, config)
    if config.init_options and config.init_options.typescript and not config.init_options.typescript.tsdk then
      config.init_options.typescript.tsdk = util.get_typescript_server_path(config.root_dir)
    end
  end,
} -- based on  $cGRs/d-CP/d-Vim-Nvim/r-neovim-nvim-lspconfig/lsp/mdx_analyzer.lua

