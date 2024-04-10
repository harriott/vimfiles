" vim: set fdl=1:

" -------------------------
" configurations for neovim
" -------------------------

" $vimfiles/nvim/init.vim
" symlinked by
"  $MSwin10\mb\symlinks.ps1
"  $OSAB/bs-symlinks/jo-2-whenWM-0.sh

""> 0 nvim
if has('win32')
  let g:loaded_perl_provider = 0
  let g:python3_host_prog = 'C:\Python312\python.exe'
endif " providers
set termguicolors

" yank full line (I prefer over  Y-default)
nnoremap Y 0yj

""> 0 pull in Vim configuration
if has('win32')
  source $HOME\vimfiles\vimrc-Win10-paths.vim  " $vimfiles\vim\enter\vimrc-Win10-paths.vim
  source $vimfiles\vim\enter\vimrc-Win10.vim
else
  source $vimfiles/vim/enter/vimrc-Arch.vim
endif

""> 1 colors
" for accurate colour codes
" set termguicolors
" can turn off with :se notgc

if has('win32')
  colo wombat
else
  colo jellybeans
endif
" packadd nightfox.nvim
  " colo carbonfox
  " colo terafox
  " colo nightfox
  " colo nordfox
" packadd tokyonight.nvim
  " colo tokyonight-night
  " colo tokyonight-moon

" choose plugin for showing trailing white spaces
let g:useSTW = 0
packadd vim-better-whitespace
EnableWhitespace
highlight ExtraWhitespace ctermbg=blue
let g:better_whitespace_operator=''

if has('unix')
  " let g:Hexokinase_highlighters = ['foregroundfull']
  packadd vim-hexokinase
endif

""> 1 packages for nvim
" packadd nvim-web-devicons

