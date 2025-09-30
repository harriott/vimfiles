-- vim: set fdl=5:

-- $vfn/lsp/pyright.lua
--  :MasonInstall pyright
--  enabled in  $vfn/lua/init.lua
--  diagnostics labelled  Pyright - try line  add(1, "hello")  in a  *.py
--  also see  $vfv/ftplugin/python.vim

local function set_python_path(command)
  local path = command.args
  local clients = vim.lsp.get_clients {
    bufnr = vim.api.nvim_get_current_buf(),
    name = 'pyright',
  }
  for _, client in ipairs(clients) do
    if client.settings then
      client.settings.python = vim.tbl_deep_extend('force', client.settings.python, { pythonPath = path })
    else
      client.config.settings = vim.tbl_deep_extend('force', client.config.settings, { python = { pythonPath = path } })
    end
    client:notify('workspace/didChangeConfiguration', { settings = nil })
  end
end

---@type vim.lsp.Config
return {
  cmd = { 'pyright-langserver', '--stdio' },
  filetypes = { 'python' },
  root_markers = {
    'pyproject.toml',
    'setup.py',
    'setup.cfg',
    'requirements.txt',
    'Pipfile',
    'pyrightconfig.json',
    '.git',
  }, -- ordered by priority
  settings = { python = { analysis = {
      autoSearchPaths = true,
      diagnosticMode = 'openFilesOnly',
      useLibraryCodeForTypes = true,
    }, }, },
  on_attach = function(client, bufnr)
    vim.api.nvim_buf_create_user_command(bufnr, 'LspPyrightOrganizeImports', function()
      local params = {
        arguments = { vim.uri_from_bufnr(bufnr) },
        command = 'pyright.organizeimports',
      }
      client.request('workspace/executeCommand', params, nil, bufnr)
    end, { desc = 'Organize Imports', })
    vim.api.nvim_buf_create_user_command(bufnr, 'LspPyrightSetPythonPath', set_python_path, {
      desc = 'Reconfigure pyright with the provided python path', complete = 'file', nargs = 1, })
  end,
} -- based on $cGRs/d-CP/d-Vim-Nvim/r-neovim-nvim-lspconfig/lsp/pyright.lua

