
-- https://harriott.githubio/ - Thu 10 Apr 2025

-- $vfn/lua/lazy/nvim-lspconfig.lua

-- $lazy/nvim-lspconfig/doc/lspconfig.txt
-- install language servers with Mason ($vfn/lua/init.lua)

-- :LspInfo  then  q
-- :LspLog (~/.local/state/nvim/lsp.log)

-- Diagnostics:
--  also $vfn/lua/init.lua
--  K => vim.lsp.buf.hover()
--  KK => enters hover window, q quits
--  [d / ]d => prev / next diagnostic
--  <c-w>k => vim.diagnostic.open_float()

return {
  { 'folke/lazydev.nvim', -- recommended
    ft = 'lua',
    opts = { library = { { path = '${3rd}/luv/library', words = { 'vim%.uv' } }, }, },
  }, -- $DCGRs/d-CP/d-Vim-Nvim/r-dam9000-kickstart-modular.nvim/lua/kickstart/plugins/lspconfig.lua
  { 'neovim/nvim-lspconfig',
    event = { 'BufReadPre', 'BufNewFile' },
      -- might get over failure to find  vim-language-server  on  win64
    config = function()

      -- try
        -- :MasonInstall emmet-language-server
          -- for  css, html, less, sass, scss
        -- :MasonInstall texlab
        -- :MasonInstall typescript-language-server
        -- nginx_language_server
        -- phpactor
        -- vscode-html-languageservice  for  html
        -- vscode-json-languageservice  for  json
        -- yamlls

      -- ▩-> astro
      require'lspconfig'.astro.setup{} -- :MasonInstall astro-language-server

      -- ▩-> bashls
      require'lspconfig'.bashls.setup{} -- :MasonInstall bash-language-server
      -- $mason/bash-language-server/node_modules/bash-language-server/src/config.ts
      -- reports Error for CLRFs

      -- ▩-> ltex
      -- :MasonInstall ltex-ls
      -- require'lspconfig'.ltex.setup{ltex={completionEnabled='true',language='en-GB'}}
        -- but no completions...

      -- ▩-> lemminx
      -- :MasonInstall lemminx
      if vim.fn.has("win64") == 1 then require'lspconfig'.lemminx.setup{} end

      -- ▩-> lua_ls
      -- :MasonInstall lua-language-server
        -- :MasonUninstall lua-language-server  with no lua files open instead of updating
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
        } -- and see fix in  $vfn/lua/init.lua

      -- ▩-> mdx_analyzer
      -- :MasonInstall mdx-analyzer
      require'lspconfig'.mdx_analyzer.setup{}

      -- ▩-> mutt_ls
      -- require'lspconfig'.mutt_ls.setup{} -- :MasonInstall mutt-language-server

      -- ▩-> perlnavigator
      -- :MasonInstall perlnavigator
        -- $mason/perlnavigator/package.json
      require'lspconfig'.perlnavigator.setup{cmd={"perlnavigator"}, settings = {
          perlnavigator = { perlPath = 'perl', enableWarnings = true, perltidyProfile = '',
            perlcriticProfile = '', perlcriticEnabled = true, } } }
            -- bung an exit in some code to see this work

      -- ▩-> powershell_es
      -- :MasonInstall powershell-editor-services
      --  might need to close nvim and manually Delete it to be able to re-install a newer version
      require'lspconfig'.powershell_es.setup{
        -- bundle_path = '~/AppData/Local/nvim-data/mason/packages/powershell-editor-services',
        bundle_path = vim.fn.expand "$MASON/packages/powershell-editor-services",
        settings = { powershell = { codeFormatting = { Preset = 'OTBS' } } } }
        -- $nvim/powershell_es-mason-schemas-lsp.json

      -- ▩-> pyright
      require'lspconfig'.pyright.setup{} -- :MasonInstall pyright

      -- ▩-> vimls
      -- :MasonInstall vim-language-server
      require'lspconfig'.vimls.setup{ cmd={"vim-language-server","--stdio"}, filetypes={'vim'},
        init_options = { diagnostic = { enable = true },
          indexes = { count = 3, gap = 100,
            projectRootPatterns = { "runtime", "nvim", ".git", "autoload", "plugin" },
            runtimepath = true },
          isNeovim = true, iskeyword = "@,48-57,_,192-255,-#", runtimepath = "",
          suggest = { fromRuntimepath = true, fromVimruntime = true },
          vimruntime = "" } }
        -- no sign that these are achieving anything extra

      -- ▩-> keymaps
      vim.keymap.set({'n'},'<localleader>[', function() vim.diagnostic.jump({count= -1,float = true}) end, {desc='jump to & show previous diagnostic'})
      vim.keymap.set({'n'},'<localleader>]', function() vim.diagnostic.jump({count= 1,float = true}) end, {desc='jump to & show next diagnostic'})

      vim.keymap.set({'n'},'<localleader>r', function() vim.cmd('LspRestart') print('LspRestart\'d') end,{desc=':LspRestart'})
      vim.keymap.set({'n'},'<localleader>s', function() vim.cmd('LspStop') print('LspStop\'d') end,{desc=':LspStop'})

    -- ▩-> end
    end,
  },
} -- sets  omnifunc=v:lua.vim.lsp.omnifunc

