-- vim: set fdl=3:

-- $vfn/lsp/astro.lua
--  :MasonInstall astro-language-server
--   :e $nvmp/astro-language-server/node_modules/@astrojs/language-server/README.md
--  can be enabled in  $vfn/lua/init.lua, but  typescript.tsdk  Error...

local util = require 'lspconfig.util'
---@type vim.lsp.Config
return {
  cmd = { 'astro-ls', '--stdio' },
  filetypes = { 'astro' },
  root_markers = { 'package.json', 'tsconfig.json', 'jsconfig.json', '.git' }, -- ordered by priority
  init_options = {
    typescript = {},
  },
  before_init = function(_, config)
    if config.init_options and config.init_options.typescript and not config.init_options.typescript.tsdk then
      config.init_options.typescript.tsdk = util.get_typescript_server_path(config.root_dir)
    end
  end,
} -- based on  $cGRs/d-CP/d-Vim-Nvim/r-neovim-nvim-lspconfig/lsp/astro.lua

