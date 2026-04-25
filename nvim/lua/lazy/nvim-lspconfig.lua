-- vim: fdl=1:

-- https://harriott.githubio/ - Sat 25 Apr 2026

-- $vfn/lua/lazy/nvim-lspconfig.lua
-- LSP's are now managed directly in  $vfn/lua/init.lua

-- $lazy/nvim-lspconfig/doc/lspconfig.txt
-- No sign of version...

-- Neovim 0.11.x:
--  :LspInfo  then  q
--  :LspLog (~/.local/state/nvim/lsp.log)
--  :LspStop <tab>
-- Neovim 0.12.x:
--  :checkhealth vim.lsp
--  :lsp disable
--  :lsp enable

-- Diagnostics:
--  also  $vfn/lua/init.lua
--  K => vim.lsp.buf.hover()
--  KK => enters hover window, q quits

return {

  { 'folke/lazydev.nvim', -- recommended, and my reason to keep using  nvim-lspconfig
    ft = 'lua',
    opts = { library = { { path = '${3rd}/luv/library', words = { 'vim%.uv' } }, }, },
  }, -- $cGRs/d-CP/d-Vim-Nvim/r-dam9000-kickstart-modular.nvim/lua/kickstart/plugins/lspconfig.lua

  { 'neovim/nvim-lspconfig',
    event = { 'BufReadPre', 'BufNewFile' },
      -- might get over failure to find  vim-language-server  on  win64
    config = function()
      -- configurations in  $lazy/nvim-lspconfig/doc/configs.md

      if vim.fn.has('nvim-0.12.1') == 1 then
        vim.keymap.set({'n'},'<localleader>s', function() vim.cmd('silent! lsp disable') print('lsp disable\'d') end,{desc=':lsp disable'})
      else
        vim.keymap.set({'n'},'<localleader>s', function() vim.cmd('LspStop') print('LspStop\'d') end,{desc=':LspStop'})
        vim.keymap.set({'n'},'<localleader>l', function() vim.cmd('LspStop ltex') print('LspStop\'d ltex') end,{desc=':LspStop ltex'}) -- if  =s  fails. Needs  C:\Lua  in path
      end

    end,
  },

} -- sets  omnifunc=v:lua.vim.lsp.omnifunc

