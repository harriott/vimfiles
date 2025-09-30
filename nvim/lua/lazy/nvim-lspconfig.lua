
-- https://harriott.githubio/ - Thu 10 Apr 2025

-- $vfn/lua/lazy/nvim-lspconfig.lua
-- LSP's are now managed directly in  $vfn/lua/init.lua

-- $lazy/nvim-lspconfig/doc/lspconfig.txt
-- No sign of version...

-- :LspInfo  then  q
-- :LspLog (~/.local/state/nvim/lsp.log)
-- :LspStop <tab>

-- Diagnostics:
--  also  $vfn/lua/init.lua
--  K => vim.lsp.buf.hover()
--  KK => enters hover window, q quits

return {
  { 'folke/lazydev.nvim', -- recommended
    ft = 'lua',
    opts = { library = { { path = '${3rd}/luv/library', words = { 'vim%.uv' } }, }, },
  }, -- $cGRs/d-CP/d-Vim-Nvim/r-dam9000-kickstart-modular.nvim/lua/kickstart/plugins/lspconfig.lua
  { 'neovim/nvim-lspconfig',
    event = { 'BufReadPre', 'BufNewFile' },
      -- might get over failure to find  vim-language-server  on  win64
    config = function()
      -- configurations in  $lazy/nvim-lspconfig/doc/configs.md

      -- ▩-> keymaps
      vim.keymap.set({'n'},'<localleader>r', function()
        vim.cmd([[
            LspRestart lua_ls
            LspRestart perlnavigator
            LspRestart typos_lsp
          ]]) -- literal strings
        print('LspRestart\'d lua_ls typos_lsp')
      end,{desc=':LspRestart lua_ls typos_lsp'})
      -- ▩--> LspStop
      -- no generic way to disable on opening a specific file
      vim.keymap.set({'n'},'<localleader>l', function() vim.cmd('LspStop ltex') print('LspStop\'d ltex') end,{desc=':LspStop ltex'}) -- if  =s  fails
      vim.keymap.set({'n'},'<localleader>s', function() vim.cmd('LspStop') print('LspStop\'d') end,{desc=':LspStop'})

    -- ▩-> end
    end,
  },
} -- sets  omnifunc=v:lua.vim.lsp.omnifunc

