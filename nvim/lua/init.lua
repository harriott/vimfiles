
-- https://harriott.github.io/ - mer 02 avr 2025

-- $vfn/lua/init.lua
--  required by  $vfn/init.vim
--  adapted from  $cGRs/CP/Nvim/nvim-lua-kickstart.nvim/init.lua

vim.g.djh = vim.api.nvim_eval('$DJH') -- :=vim.g.djh

-- ▩-> 0 generic boolean option toggle function
function vim_opt_toggle(opt)
  local message = opt
  if vim.opt[opt]:get() == false then
    message = message .. " on"
    vim.opt[opt] = true
  else
    message = message .. " off"
    vim.opt[opt] = false
  end
  vim.notify(message)
end

-- ▩-> 0 layout
vim.g.have_nerd_font = true  -- :=vim.g.have_nerd_font
vim.o.winborder = 'rounded'
vim.opt.cursorline = true
vim.opt.mouse = 'a' -- enable mouse mode
vim.opt.showmode = false -- don't show the mode, since it's already in the status line

vim.api.nvim_set_hl(0, '@lsp.type.comment', {}) -- because  lua_ls  sets a symantic token...

-- ▩--> vim.diagnostic
-- :lua vim.lsp.buf.code_action() " on a flagged line
vim.diagnostic.config({
  float = { header = 'vim.diagnostic', source = true, },
  jump = { float = true, }, -- opens the float
  virtual_text = false, -- no messy stuff
}) -- lua vim.diagnostic.setqflist()  " quickfix of recents

-- ▩--> window title
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

-- ▩-> 0 Neovide
if vim.g.neovide then
  -- vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.neovide_cursor_vfx_mode = "torpedo"
  vim.g.neovide_opacity = 0.93
   -- only currently effective on win64, okay with high contrast image behind
  -- vim.g.neovide_normal_opacity = 0.8  -- defaults to 1

  -- These don`t change Telescope floats:
  -- vim.g.neovide_floating_z_height = 10
  -- vim.g.neovide_light_angle_degrees = 45
  -- vim.g.neovide_light_radius = 5
end

-- ▩-> 0 Nvim
vim.opt.hlsearch = true
vim.opt.updatetime = 250 -- decrease swap update time
vim.opt.inccommand = 'split' -- preview substitutions as you type

-- Easier diagnostics on AZERTY:
vim.keymap.set({'n'},'ç(', function() vim.diagnostic.jump({count= -1,float = true}) end, {desc='previous diagnostic'})
vim.keymap.set({'n'},'ç)', function() vim.diagnostic.jump({count= 1,float = true}) end, {desc='next diagnostic'})

-- ▩--> disable  netrw  for  nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- ▩--> terminal
vim.keymap.set({'t'},'<C-h>','<Cmd>wincmd k<CR>',{desc='normal mode and move focus left'})
vim.keymap.set({'t'},'<C-l>','<Cmd>wincmd k<CR>',{desc='normal mode and move focus right'})
vim.keymap.set({'t'},'<C-j>','<Cmd>wincmd k<CR>',{desc='normal mode and move focus down'})
vim.keymap.set({'t'},'<C-k>','<Cmd>wincmd k<CR>',{desc='normal mode and move focus up'})
vim.keymap.set({'t'},'<Esc>','<C-\\><C-n>',{ desc = 'Exit terminal (insert) mode to normal mode' })

-- ▩-> 0 nvim-cmp on
vim.g.cmp_on = true -- $vfn/lua/lazy/nvim-cmp.lua

-- ▩-> 1 lazy.nvim 0 bootstrap
-- $lazy/lazy.nvim/doc/lazy.nvim.txt
-- :h lazy.nvim  internal links broken by fancy glyphs, so search manually
-- :Lazy update
require 'lazy/bootstrap'

-- ▩-> 1 lazy.nvim 1
require('lazy').setup(
  -- ▩--> nvim packages
  {
    -- ▩---> direct calls
    {'akinsho/bufferline.nvim', config=function() require'bufferline'.setup()
      options = {
        themable = true, -- ensures current buffer name is visible
      } end,},
      -- :BufferLineCloseOthers
      -- :BufferLinePickClose
      -- :BufferLinePick
      -- :h bufferline
      -- :h bufferline-highlights
      -- shows Nvim tabs as numbers to right
      -- l-mouse  selects
      -- r-mouse  drops
    {'dstein64/nvim-scrollview', config=function() require'scrollview'.setup()
      vim.keymap.set({'n'},'<leader>sv',"<Cmd>ScrollViewToggle<CR>") end,},
      -- $lazy/nvim-scrollview/doc/scrollview.txt
    -- {'gelguy/wilder.nvim', config=function() end,},
    -- {'kevinhwang91/nvim-bqf', ft = 'qf'},
      -- $lazy/nvim-bqf/doc/bqf.txt
      -- <tab>/<s-tab>  toggles items, then  zn  remakes only those markeed, zN  those not marked
    {'lewis6991/gitsigns.nvim',config=function() require'gitsigns'.setup() end,lazy=false},
      -- $lazy/gitsigns.nvim/doc/gitsigns.txt
      -- :Gitsigns toggle_signs
      -- provides signs in the  signcolumn
    {'MagicDuck/grug-far.nvim', config = function() require('grug-far').setup({}); end, },
      -- $lazy/grug-far.nvim/README.md
      -- :GrugFar
    {'nacro90/numb.nvim', config = function() require('numb').setup() end, },
    {'numToStr/Comment.nvim', opts={}, }, -- $vimfiles/QR/variants.md
    {'yorickpeterse/nvim-pqf', config = function() require('pqf').setup() end, },
      -- $lazy/nvim-pqf/README.md - prettier quickfix & location list windows
    {'wurli/visimatch.nvim', opts = {} },
    -- ▩---> moduled
    require'lazy/auto-session',
    require'lazy/boole_nvim',
    -- require'lazy/catppuccin',
    -- require'lazy/csvview_nvim',
    require'lazy/fzf-lua',
    require'lazy/harpoon',
    require'lazy/helpview_nvim', -- :h helpview.nvim-commands  :Helpview toggle
    require'lazy/leap',
    require'lazy/lualine',
    require'lazy/markdown-preview',
    require'lazy/neogit',
    -- require'lazy/nvim-hlslens',
    require'lazy/nvim-bqf', -- $vfn/lua/lazy/nvim-bqf.lua
    require'lazy/nvim-cmp', -- $vfn/lua/lazy/nvim-cmp.lua
    require'lazy/nvim-surround',
    require'lazy/nvim-notify',
    require'lazy/nvim-tree',
    require'lazy/nvim-web-devicons',
    require'lazy/oil',
    require'lazy/outline_nvim',
    -- require'lazy/rainbow_csv_nvim',
    require'lazy/render-markdown_nvim',
    -- require'lazy/tabby',
    require'lazy/snipe_nvim',
    require'lazy/snipe-spell',
    require'lazy/stay-centered_nvim',
    require'lazy/telescope', -- something in here slowing folding of large md's
      require'lazy/telescope-frecency',
      require'lazy/telescope-fzf-native',
      require'lazy/nvim-neoclip',
    require'lazy/trouble_nvim',
    require'lazy/vim-illuminate', -- $vfn/lua/lazy/vim-illuminate.lua
    -- ▩---> nvim-lspconfig
    require('lazy/nvim-lspconfig'),
    require("lazy/lspsaga"),
      {'williamboman/mason.nvim', config=function() require'mason'.setup() end,},
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
    -- ▩---> nvim-treesitter
    require'lazy/nvim-treesitter', -- $vfn/lua/lazy/nvim-treesitter.lua
      'nvim-treesitter/nvim-treesitter-context',
        -- *.lua  not perfect, even when  parser enabled
        -- context.vim  works better
  -- ▩--> more stuff
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

-- ▩-> 2 for lspsaga
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('LspMappings', {}),
  callback = function(ev)
    vim.keymap.set('n','<leader>lo','<cmd>Lspsaga outline<cr>',
      {buffer=ev.buf,desc='Lspsaga outline'})
  end,}) -- q
-- can't figure how to include this in  $vfn/lua/lazy/lspsaga.lua

-- ▩-> 2 for nvim-notify
vim.notify('ready for :Notifications')

-- -- ▩-> 2 for wilder
-- vim.cmd("call wilder#setup({'modes': [':', '/', '?']})")
-- vim.cmd("call wilder#set_option('renderer', wilder#popupmenu_renderer({ 'highlighter': wilder#basic_highlighter(), }))")
-- -- but it's broken...

