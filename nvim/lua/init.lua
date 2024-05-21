
-- https://harriott.githubio/ - Fri 10 May 2024

-- $vimfiles/nvim/lua/init.lua
--  required by  $vimfiles/nvim/init.vim
--  adapted from  $DCGRs/CP/Nvim/nvim-lua-kickstart.nvim/init.lua
--  symlinked by
--   $MSwin10\mb\symlinks.ps1
--   $OSAB/bs-symlinks/jo-2-whenWM-0.sh

-- -> 0 layout
-- vim.g.have_nerd_font = true
vim.opt.cursorline = true
vim.opt.mouse = 'a' -- enable mouse mode
vim.opt.showmode = false -- don't show the mode, since it's already in the status line

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight selection on yank',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
vim.api.nvim_set_hl(0, '@lsp.type.comment', {}) -- because  lua_ls  sets a symantic token...

-- --> diagnostics
-- :lua vim.lsp.buf.code_action()
vim.diagnostic.config({ float = { border = 'rounded', }, })
vim.diagnostic.config({ virtual_text = false, })
vim.keymap.set('n', '<leader>k', '<cmd>lua vim.diagnostic.open_float()<cr>')
vim.lsp.handlers['textDocument/hover']=vim.lsp.with(vim.lsp.handlers.hover, {border='rounded'})

-- --> window title
if vim.fn.has("win64") == 1 then
  -- $MSWin10\PSProfile.ps1  sets  $env:TERM
  -- if I don't set the title, get the path to the shell executable
  vim.opt.title = true

  -- vim.opt.titlelen = non-zero gets it shortened to that, good for the little  WT  tab headers

  -- bufferline:
  vim.opt.titlelen = 19 -- and 21 is bad...
  vim.opt.titlestring = [[%{expand("%:h")}%H%M%R%q%W]]

  -- no  bufferline:
  -- vim.opt.titlelen = 24
  -- vim.opt.titlestring = [[%{expand("%:p")}%H%M%R%q%W]]

  -- flags:
  --  %H  ,HLP (help buffer)
  --  %M  ,+ (modified)  or  ,- (non-modifiable)
  --  %R  ,RO (read only)
  --  %q  [Quickfix List] or [Location List]
  --  %W  ,PRV (preview window)
end

-- -> 0 nVim
vim.opt.hlsearch = true
vim.opt.updatetime = 250 -- decrease swap update time
vim.opt.inccommand = 'split' -- preview substitutions as you type

-- --> disable  netrw  for  nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- --> terminal
vim.keymap.set({'t'},'<C-h>','<Cmd>wincmd k<CR>',{desc='normal mode and move focus left'})
vim.keymap.set({'t'},'<C-l>','<Cmd>wincmd k<CR>',{desc='normal mode and move focus right'})
vim.keymap.set({'t'},'<C-j>','<Cmd>wincmd k<CR>',{desc='normal mode and move focus down'})
vim.keymap.set({'t'},'<C-k>','<Cmd>wincmd k<CR>',{desc='normal mode and move focus up'})
vim.keymap.set({'t'},'<Esc>','<C-\\><C-n>',{ desc = 'Exit terminal (insert) mode to normal mode' })

-- -> 1 lazy.nvim 0 bootstrap
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then -- does what?
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)
-- $lazy/lazy.nvim/doc/lazy.nvim.txt

-- -> 1 lazy.nvim 1
require('lazy').setup({
    {'akinsho/bufferline.nvim',config=function() require'bufferline'.setup() end,},
    {'dstein64/nvim-scrollview',config=function() require'scrollview'.setup() end,},
    {'lewis6991/gitsigns.nvim',config=function() require'gitsigns'.setup() end,},
    -- $lazy/gitsigns.nvim/doc/gitsigns.txt
    {'numToStr/Comment.nvim',opts={}}, -- $vimfiles/QR/variants.md
    -- {'nanozuki/tabby.nvim',opts={}}, -- might be crashing  lualine
    -- require'lazy/catppuccin',
    require'lazy/fzf-lua',
    -- require'lazy/harpoon',
    require'lazy/leap',
    require'lazy/lualine',
    require'lazy/oil',
    -- require'lazy/nvim-hlslens',
    require'lazy/nvim-notify',
    require'lazy/nvim-tree',
    require'lazy/surround',
    require'lazy/telescope', -- something in here slowing folding of large md's
      require'lazy/telescope-frecency',
      require'lazy/telescope-fzf-native',
      require'lazy/nvim-neoclip',
    require'lazy/treesitter', -- $vimfiles/nvim/lua/lazy/treesitter.lua
      -- 'nvim-treesitter/nvim-treesitter-context',
        -- *.lua  not perfect, even when  parser enabled
          -- context.vim  works better
    {'williamboman/mason.nvim',config=function() require'mason'.setup() end,},
      -- $lazy/mason.nvim/doc/mason.txt
      -- :che mason
      -- :LspInfo
      -- :Mason
        -- g?  toggles help
      -- :MasonInstall bash-language-server
      -- :MasonInstall emmet-language-server
      -- :MasonInstall lemminx
      -- :MasonInstall ltex-ls
      -- :MasonInstall lua-language-server
      -- :MasonInstall mutt-language-server
      -- :MasonInstall perlnavigator
        -- ~/.local/share/nvim/mason/packages/perlnavigator/package.json
      -- :MasonInstall powershell-editor-services
      -- :MasonInstall pyright
      -- :MasonInstall vim-language-server
      -- packages directory
        -- :echo $MASON
        -- g $HOME\AppData\Local\nvim-data\mason\packages
        -- r ~/.local/share/nvim/mason/packages
    {"williamboman/mason-lspconfig.nvim",
      -- $lazy/mason-lspconfig.nvim/doc/mason-lspconfig.txt
      -- $lazy/mason-lspconfig.nvim/doc/mason-lspconfig-mapping.txt - the LSPs
       config=function() require('mason-lspconfig').setup() end,},
       require'lazy/nvim-lspconfig',require'lazy/lspsaga',
  },
  { performance = { reset_packpath = false, },
    -- allowing continued access to  ~/.config/nvim/pack
    --  if commented out will get errors about access to  plugins.vim
    ui = { icons = vim.g.have_nerd_font and {} or {
        -- :lua print(vim.g.have_nerd_font)
        cmd = '⌘',
        config = '🛠',
        event = '📅',
        ft = '📂',
        init = '⚙',
        keys = '🗝',
        plugin = '🔌',
        runtime = '💻',
        require = '🌙',
        source = '📄',
        start = '🚀',
        task = '📌',
        lazy = '💤 ',
      -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
      }, }, } -- no comma!
)
-- somehow breaks  vim-hexokinase
-- somehow kills nvim's access to  /usr/bin/fzf

-- -> 2 Lspsaga
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('LspMappings', {}),
  callback = function(ev)
    vim.keymap.set('n','<leader>lo','<cmd>Lspsaga outline<cr>',
      {buffer=ev.buf,desc='Lspsaga outline'})
  end,})

-- -> 2 nvim-tree.lua

-- -> 2 nvim-treesitter
-- $lazy/nvim-treesitter/doc/nvim-treesitter.txt
-- :h nvim-treesitter-commands

-- --> parsers
-- $vimfiles/settings/nvim-unix-nvim-treesitter-TSInstallInfo.txt
-- r $lazy/nvim-treesitter/parser

-- ---> get
function GetTSParsers()
  -- vim.cmd 'TSInstall bash'
  -- vim.cmd 'TSInstall lua' -- error (vim-illuminate) if open a  *.lua  without this parser present
  -- vim.cmd 'TSInstall markdown'
  -- vim.cmd 'TSInstall perl'
  -- vim.cmd 'TSInstall python'
  -- vim.cmd 'TSInstall sh'
  -- vim.cmd 'TSInstall vim'
  -- vim.cmd 'TSInstall vimdoc'
end -- lua GetTSParsers(), then update:
  -- $vimfiles/settings/nvim-unix-TSInstallInfo-sbMb.txt
  -- $vimfiles\settings\nvim-win64-TSInstallInfo-HPEB840G37.txt

-- on MSWin do these in  x64 Native Tools Command Prompt

-- :TSUpdate  updates all parsers

