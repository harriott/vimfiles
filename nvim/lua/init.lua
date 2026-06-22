
-- https://harriott.github.io/ - Thu 18 Jun 2026

-- $vfn/lua/init.lua
--  require'd by  $vfn/init.vim
--  adapted from  $cGRs/CP/Nvim/nvim-lua-kickstart.nvim/init.lua
--  =e ($vfv/ftplugin/lua.vim)

-- vim.loader.enable()

-- vim.opt.undofile = true  -- persistent undo

-- ▩-> 0 for auto-session
vim.o.ssop='blank,buffers,curdir,folds,tabpages,winsize,winpos,localoptions'

-- ▩-> 0 bufs_nvim
require'bufs_nvim' -- $vfn/lua/bufs_nvim.lua
vim.keymap.set("n", "gb", function() require'bufs_nvim'.list_bufs() end)

-- ▩-> 0 generic boolean option toggle function
function vim_opt_toggle(opt)
  local message = opt
  if vim.opt[opt]:get() == false then
    message = message .. ' on'
    vim.opt[opt] = true
  else
    message = message .. ' off'
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
}) -- lua vim.diagnostic.setqflist() " quickfix of recents

-- ▩--> window title
if vim.fn.has('win64') == 1 then
  -- $MSWin10\PSProfile.ps1  sets  $env:TERM
  -- if I don't set the title, get the path to the shell executable
  vim.opt.title = true

  -- vim.opt.titlelen = non-zero gets it shortened to that, good for the little  WT  tab headers

  -- bufferline:
  vim.opt.titlelen = 19 -- and 21 is bad...
  vim.opt.titlestring = [[%{expand('%:h')}%H%M%R%q%W]]

  -- no  bufferline:
  -- vim.opt.titlelen = 24
  -- vim.opt.titlestring = [[%{expand('%:p')}%H%M%R%q%W]]

  -- flags:
  --  %H  ,HLP (help buffer)
  --  %M  ,+ (modified)  or  ,- (non-modifiable)
  --  %R  ,RO (read only)
  --  %q  [Quickfix List] or [Location List]
  --  %W  ,PRV (preview window)
end

-- ▩-> 0 Neovide
if vim.g.neovide then
  -- vim.g.neovide_cursor_vfx_mode = 'railgun'
  vim.g.neovide_cursor_vfx_mode = 'torpedo'
  vim.g.neovide_opacity = 0.93
   -- only currently effective on win64, okay with high contrast image behind
  -- vim.g.neovide_normal_opacity = 0.8  -- defaults to 1

  -- if vim.fn.has('nvim-0.12.0') == 1 then
  --   vim.opt.guifont = { "Lucida Console", ":h9" }
  -- end

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

-- ▩-> 0 treesitter
--  :checkhealth treesitter

-- ▩--> 0 stop
-- $vfv/ftplugin/md.vim

if vim.fn.has('win64')==1 and vim.fn.has('nvim-0.12.1')==1 then vim.treesitter.stop() end
-- a partial workaround to the effective impossibility of installing a C compiler on MSWin
--  but doesn't seem to disable  highlights.scm

vim.keymap.set({'n'},'<localleader>t',function() vim.treesitter.stop() print("treesitter highlights off until refresh") end,{desc='disable Neovim\'s treesitter highlights.scm'}) -- see  $vfv/after/syntax/lua.vim

-- ▩-> 1 myDrA.lua
if vim.api.nvim_eval('$myDrA') == '1' then require'myDrA' end -- if  $Drpbx, $vfn/lua/myDrA.lua
-- $myDrA:
--  $machBld/Bash_start (https://github.com/harriott/OS-ArchBuilds)
--  $vfv\enter\vimrc-Win10.vim


