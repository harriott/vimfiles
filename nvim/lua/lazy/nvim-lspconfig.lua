
-- $vimfiles/nvim/lua/lazy/nvim-lspconfig.lua

return {
  { 'neovim/nvim-lspconfig',
    config = function()

      -- try  emmet-language-server  for  css, html, less, sass, scss
      -- try  nginx_language_server
      -- try  phpactor
      -- try  powershell_es  on  win32
      -- try  texlab
      -- try  vscode-html-languageservice  for  html
      -- try  vscode-json-languageservice  for  json
      -- try  yamlls

      require'lspconfig'.bashls.setup{}
      -- install with Mason!
      -- require'lspconfig'.ltex.setup{ltex={completionEnabled='true',language='en-GB'}}
        -- but no completions...

      require('lspconfig').lua_ls.setup {
          on_init = function(client)
              local path = client.workspace_folders[1].name
              if not vim.loop.fs_stat(path .. '/.luarc.json') and not vim.loop.fs_stat(path .. '/.luarc.jsonc') then
                  client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
                      runtime = { version = 'LuaJIT' },
                      workspace = { library = { vim.env.VIMRUNTIME } },
                  })
                  client.notify("workspace/didChangeConfiguration", { settings = client.config.settings })
              end return true
          end } -- https://www.reddit.com/r/neovim/comments/15owd43/comment/jvvswah/

      require'lspconfig'.mutt_ls.setup{}

      require'lspconfig'.perlnavigator.setup{cmd={"perlnavigator"}}

      require'lspconfig'.pyright.setup{}

      require'lspconfig'.vimls.setup{ cmd={"vim-language-server","--stdio"}, filetypes={'vim'},
        init_options = { diagnostic = { enable = true },
          indexes = { count = 3, gap = 100,
            projectRootPatterns = { "runtime", "nvim", ".git", "autoload", "plugin" },
            runtimepath = true },
          isNeovim = true, iskeyword = "@,48-57,_,192-255,-#", runtimepath = "",
          suggest = { fromRuntimepath = true, fromVimruntime = true },
          vimruntime = "" } }
        -- no sign that these are achieving anything extra

      vim.keymap.set('n','<localleader>[',vim.diagnostic.goto_prev,{desc='previous diagnostic'})
      vim.keymap.set('n','<localleader>]',vim.diagnostic.goto_next,{desc='next diagnostic'})
      vim.keymap.set('n','<localleader>s',function()vim.cmd('LspStop<cr>')end,{desc='LspStop'})
        -- language server will restart on buffer reload

    end,
  },
} -- sets  omnifunc=v:lua.vim.lsp.omnifunc

