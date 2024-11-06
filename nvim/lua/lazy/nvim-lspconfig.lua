
-- https://harriott.githubio/ - Fri 10 May 2024

-- $vimfiles/nvim/lua/lazy/nvim-lspconfig.lua

-- $lazy/nvim-lspconfig/doc/lspconfig.txt
-- install language servers with Mason ($vimfiles/nvim/lua/init.lua)

-- K => vim.lsp.buf.hover(), so  LspStop  to recover  keywordprg
-- :LspLog (~/.local/state/nvim/lsp.log)

return {
  { 'neovim/nvim-lspconfig',
    event = { 'BufReadPre', 'BufNewFile' },
      -- might get over failure to find  vim-language-server  on  win64
    config = function()

      -- try  emmet-language-server  for  css, html, less, sass, scss
      -- try  nginx_language_server
      -- try  phpactor
      -- try  texlab
      -- try  vscode-html-languageservice  for  html
      -- try  vscode-json-languageservice  for  json
      -- try  yamlls

      require'lspconfig'.bashls.setup{}
      -- $HOME\AppData\Local\nvim-data\mason\packages\bash-language-server\node_modules\bash-language-server\src\config.ts
      -- reports Error for CLRFs

      -- require'lspconfig'.ltex.setup{ltex={completionEnabled='true',language='en-GB'}}
        -- but no completions...

      if vim.fn.has("win64") == 1 then require'lspconfig'.lemminx.setup{} end

      require'lspconfig'.lua_ls.setup {
          on_init = function(client)
              local path = client.workspace_folders[1].name
              if not vim.loop.fs_stat(path .. '/.luarc.json') and not vim.loop.fs_stat(path .. '/.luarc.jsonc') then
                  client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
                      runtime = { version = 'LuaJIT' },
                      workspace = { library = { vim.env.VIMRUNTIME } },
                  })
                  client.notify("workspace/didChangeConfiguration",
                    { settings = client.config.settings })
              end return true
          end, -- https://www.reddit.com/r/neovim/comments/15owd43/comment/jvvswah/
          settings = { Lua = { diagnostics = { globals = {'vim'} } } }, -- no more global vim warnings
        } -- and see fix in  $vimfiles/nvim/lua/init.lua

      -- require'lspconfig'.mutt_ls.setup{}

      require'lspconfig'.perlnavigator.setup{cmd={"perlnavigator"}, settings = {
          perlnavigator = { perlPath = 'perl', enableWarnings = true, perltidyProfile = '',
            perlcriticProfile = '', perlcriticEnabled = true, } } }
            -- bung an exit in some code to see this work

      require'lspconfig'.powershell_es.setup{
        -- bundle_path = '~/AppData/Local/nvim-data/mason/packages/powershell-editor-services',
        bundle_path = vim.fn.expand "$MASON/packages/powershell-editor-services",
        settings = { powershell = { codeFormatting = { Preset = 'OTBS' } } } }
        -- $nvim/powershell_es-mason-schemas-lsp.json

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

      vim.keymap.set({'n'},'<localleader>[',vim.diagnostic.goto_prev,{desc='jump to & show previous diagnostic'})
      vim.keymap.set({'n'},'<localleader>]',vim.diagnostic.goto_next,{desc='jump to & show next diagnostic'})
      vim.keymap.set({'n'},'<localleader>s',function()vim.cmd('LspStop<cr>')end,{desc='LspStop'})
        -- language server will restart on buffer reload

    end,
  },
} -- sets  omnifunc=v:lua.vim.lsp.omnifunc

