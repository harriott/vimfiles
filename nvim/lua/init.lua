
-- https://harriott.github.io/ - Wed 30 Oct 2024

-- $vfn/lua/init.lua
--  required by  $vfn/init.vim
--  adapted from  $DCGRs/CP/Nvim/nvim-lua-kickstart.nvim/init.lua

vim.g.djh = vim.api.nvim_eval('$DJH') -- :=vim.g.djh

-- -> 0 layout
vim.g.have_nerd_font = true  -- :=vim.g.have_nerd_font
vim.opt.cursorline = true
vim.opt.mouse = 'a' -- enable mouse mode
vim.opt.showmode = false -- don't show the mode, since it's already in the status line

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

-- -> 0 Neovide
if vim.g.neovide then
  -- vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.neovide_cursor_vfx_mode = "torpedo"
  vim.g.neovide_transparency = 0.93
   -- only currently effective on win64, okay with high contrast image behind

  -- These don`t change Telescope floats:
  -- vim.g.neovide_floating_z_height = 10
  -- vim.g.neovide_light_angle_degrees = 45
  -- vim.g.neovide_light_radius = 5
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
-- $lazy/lazy.nvim/doc/lazy.nvim.txt
-- :Lazy update
require 'lazy/bootstrap'

-- -> 1 lazy.nvim 1
require('lazy').setup(
  {
    {'akinsho/bufferline.nvim',config=function() require'bufferline'.setup() end,},
      -- shows Nvim tabs as numbers to right
    {'dstein64/nvim-scrollview',config=function() require'scrollview'.setup()
      vim.keymap.set({'n'},'<leader>sv',"<Cmd>ScrollViewToggle<CR>") end,},
    -- $lazy/nvim-scrollview/doc/scrollview.txt
    {'lewis6991/gitsigns.nvim',config=function() require'gitsigns'.setup() end,lazy=false},
    -- $lazy/gitsigns.nvim/doc/gitsigns.txt
    {'numToStr/Comment.nvim',opts={}}, -- $vimfiles/QR/variants.md
    -- require'lazy/catppuccin',
    require'lazy/fzf-lua',
    require'lazy/harpoon',
    require'lazy/leap',
    require'lazy/lualine',
    require'lazy/neogit',
    -- require'lazy/nvim-hlslens',
    require'lazy/nvim-notify',
    require'lazy/nvim-tree',
    require'lazy/nvim-web-devicons',
    require'lazy/oil',
    require'lazy/surround',
    -- require'lazy/tabby',
    require'lazy/telescope', -- something in here slowing folding of large md's
      require'lazy/telescope-frecency',
      require'lazy/telescope-fzf-native',
      require'lazy/nvim-neoclip',
    require'lazy/treesitter', -- $vfn/lua/lazy/treesitter.lua
      'nvim-treesitter/nvim-treesitter-context',
        -- *.lua  not perfect, even when  parser enabled
        -- context.vim  works better
    {'williamboman/mason.nvim',config=function() require'mason'.setup() end,},
      -- $lazy/mason.nvim/doc/mason.txt
      -- :che mason
      -- :LspInfo
      -- :Mason
        -- g?  toggles help
      -- :MasonLog (~/.local/state/nvim/mason.log)
      -- for  $vfn/lua/lazy/nvim-lspconfig.lua
      -- packages directory
        -- :edit $MASON/packages (where defined?)
        -- g $mason
        -- r $mason
    {"williamboman/mason-lspconfig.nvim",
      -- $lazy/mason-lspconfig.nvim/doc/mason-lspconfig.txt
      -- $lazy/mason-lspconfig.nvim/doc/mason-lspconfig-mapping.txt - the LSPs
       config=function() require('mason-lspconfig').setup() end,},
    require'lazy/nvim-lspconfig',require'lazy/lspsaga',
      -- :che lspsaga
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

-- -> 2 for lspsaga
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('LspMappings', {}),
  callback = function(ev)
    vim.keymap.set('n','<leader>lo','<cmd>Lspsaga outline<cr>',
      {buffer=ev.buf,desc='Lspsaga outline'})
  end,})

-- -> 2 for nvim-treesitter
-- $lazy/nvim-treesitter/doc/nvim-treesitter.txt
-- :che treesitter
-- :h nvim-treesitter-commands
vim.keymap.set({'n'},'<localleader>t',function()vim.treesitter.stop()end,{desc='disable Neovim\'s treesitter highlights.scm'}) -- see  $vfv/after/syntax/lua.vim

-- --> parsers 0 unix
  -- $vfs/nvim-unix-TSInstallInfo-DOP3040D11S.txt
  -- $vfs/nvim-unix-TSInstallInfo-sbMb.txt
  -- /usr/lib/tree_sitter
  -- r $lazy/nvim-treesitter/parser

-- --> parsers 0 win64
  -- $vfs/nvim-win64-TSInstallInfo-HPEB840G37.txt
  -- g $lazy\nvim-treesitter\parser

-- --> parsers 1 get
function GetTSParsers()
  -- vim.cmd 'TSInstall bash'
  -- vim.cmd 'TSInstall lua'
    -- error (vim-illuminate) if open a  *.lua  without this parser present
  -- vim.cmd 'TSInstall markdown'
  -- vim.cmd 'TSInstall perl'
  -- vim.cmd 'TSInstall python'
  -- vim.cmd 'TSInstall query'
  -- vim.cmd 'TSInstall sh'
  -- vim.cmd 'TSInstall vim'
  -- vim.cmd 'TSInstall vimdoc'
end -- lua GetTSParsers(), then update the TSInstallInfo lists

-- on MSWin do these in  x64 Native Tools Command Prompt

-- :TSUpdate  updates all parsers

