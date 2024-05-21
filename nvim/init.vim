" -------------------------
" configurations for neovim
" -------------------------

" $vimfiles/nvim/init.vim
" symlinked by
"  $MSwin10\mb\symlinks.ps1
"  $OSAB/bs-symlinks/jo-2-whenWM-0.sh

""> 0 nvim
command DiffOrig vert new | set buftype=nofile | read ++edit
" - can't recall why I reduced this definition

if has('win64')
  let g:loaded_perl_provider = 0
  let g:python3_host_prog = 'C:\Python312\python.exe'
endif " providers

if v:lang =~ 'fr'
  " Easier searching:
  nnoremap ! /
else
  " Easier jump to last position in newly opened file:
  nnoremap gl g`"
  " (`"  is easy on AZERTY)
endif

set keywordprg=:help  " get  K  working in  *.lua
set termguicolors

" nnoremap Y 0yj
" yank one full line - I prefer over  Y-default, but now need  nyy  to select multiple lines

""> 0 terminal
autocmd TermOpen * startinsert
let $in_nvim = 1  " - for $OSAB/Bash/bashrc-generic

" set shell=powershell  " Windows PowerShell
" set shell=pwsh  " PowerShell

""> 1 pull in Vim configuration
if has('win64')
  source $HOME\vimfiles\Win10Paths.vim  " $vimfiles\vim\enter\Win10Paths.vim
  source $vimfiles\vim\enter\vimrc-Win10.vim
else
  source $vimfiles/vim/enter/vimrc-Arch.vim
endif

""> 2 colors
" for accurate colour codes
" set termguicolors
" can turn off with :se notgc

" choose plugin for showing trailing white spaces
let g:useSTW = 0
packadd vim-better-whitespace
" EnableWhitespace
highlight ExtraWhitespace ctermbg=blue
let g:better_whitespace_operator=''

"">> colorscheme
if has('win64')
  " $vfvp/packs-cp/opt/papercolor-theme/doc/PaperColor.txt
  let g:PaperColor_Theme_Options = { 'theme': {
      \ 'default': { 'allow_italic': 1 },
      \ 'default.dark': { 'override' : { 'folded_bg' : ['', '00'] } }
      \ } }
  set background=dark | colorscheme PaperColor
  " colo apprentice
  " colo wombat
  " packadd dracula | colo dracula
else
  colo jellybeans
endif

""> 2 pull in lua configs
let g:sqlite_clib_path = $programfiles.'\LibreOffice\program\sqlite3.dll'
" - for  $vimfiles/nvim/lua/lazy/nvim-neoclip.lua
lua require('init')
" - $vimfiles/nvim/lua-init.lua

