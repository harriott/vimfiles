-- vim: set fdl=5:

-- $vfn/lsp/lua_ls.lua
--  :MasonInstall lua-language-server
--   :MasonUninstall lua-language-server  with no lua files open instead of updating
--  enabled in  $vfn/lua/init.lua
--  diagnostics labelled  Lua Syntax Check

---@type vim.lsp.Config
return {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  on_init = function(client)
    if client.workspace_folders then
      local path = client.workspace_folders[1].name
      if
        path ~= vim.fn.stdpath('config')
        and (vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc'))
      then
        return
      end
    end
    client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
      runtime = {
        path = { 'lua/?.lua', 'lua/?/init.lua', },
        version = 'LuaJIT',
      },
      workspace = { checkThirdParty = false, library = { vim.env.VIMRUNTIME } },
    })
  end,
  root_markers = {
    '.luarc.json',
    '.luarc.jsonc',
    '.luacheckrc',
    '.stylua.toml',
    'stylua.toml',
    'selene.toml',
    'selene.yml',
    '.git',
    }, -- ordered by priority
  settings = { Lua = { diagnostics = { globals = {'vim'} } } }, -- no more global vim warnings
} -- based on  $cGRs/d-CP/d-Vim-Nvim/r-neovim-nvim-lspconfig/lsp/lua_ls.lua

