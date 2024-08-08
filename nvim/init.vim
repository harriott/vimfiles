" https://harriottgithubio/ - mar 16 juil 2024

" -------------------------
" configurations for neovim
" -------------------------

" $vimfiles/nvim/init.vim
" symlinked by
"  $MSwin10\mb\symlinks.ps1
"  $OSAB/bs-symlinks/jo-2-whenWM-0.sh

let g:sourced_init_vim = 1

""> 0 nvim
autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup='Visual', timeout=300}
" - briefly highlight selection on yank

command DiffOrig vert new | set buftype=nofile | read ++edit # | 0d_ | diffthis | wincmd p | diffthis

if has('win64')
    let g:loaded_perl_provider = 0
else
  if exists('g:neovide')
    if hostname() == 'sbMb'
      set guifont=UbuntuMono_Nerd_Font_Mono:h8
    else " i34G1TU02
      set guifont=UbuntuMono_Nerd_Font_Mono:h9
    endif " set  $machBld/jo/Bash/exportWS  accordingly
    map! <S-Insert> <C-R>+
  endif
endif

if v:lang =~ 'fr'
  " Easier searching:
  nnoremap ! /
  nnoremap q! q/
else
  " Easier jump to last position in newly opened file:
  nnoremap gl g`"
  " (`"  is easy on AZERTY)
endif

set keywordprg=:help  " get  K  working in  *.lua

" nnoremap Y 0yj
" yank one full line - I prefer over  Y-default, but now need  nyy  to select multiple lines

""> 0 terminal
autocmd TermOpen * startinsert
let $in_nvim = 1  " - for $OSAB/Bash/bashrc-generic
set termguicolors

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
let g:useSTW = 0

"">> colorscheme
if has('win64') || exists('g:neovide')
  " $vfv/packs/packs-colo/opt/papercolor-theme/doc/PaperColor.txt
  let g:PaperColor_Theme_Options = { 'theme': { 'default': { 'allow_italic': 1 },
    \ 'default.dark': { 'override' : { 'color05':['','247'], 'error_fg':['','09'],
      \ 'folded_bg':['','234'], 'linenumber_fg':['','243'], } } } }
  set background=dark | colorscheme PaperColor
  " colo apprentice
  " colo wombat
  " packadd dracula | colo dracula
else
  colo jellybeans
endif

""> 2 mappings to toggle GUI width
if exists('g:neovide')
  source $vimfiles/vim/enter/GUIs.vim
  if has('unix')
    if hostname() == 'sbMb'
      " se co=109  as in  $machBld/jo/Bash/exportWS
      " se co=133  is bigger, but not covering  Conky
      if v:lang =~ 'fr'
        nnoremap <leader>à :call ToggleGUIwidth(109,133)<cr>
      else
        nnoremap <leader>0 :call ToggleGUIwidth(109,133)<cr>
      endif
    endif
  else
    if hostname() == 'HPEB840G37'
      " se co=108  as in  $MSWin10\AZERTY.ahk
      " se co=150  taking all rh space
      if v:lang =~ 'fr'
        nnoremap <leader>à :call ToggleGUIwidth(108,150)<cr>
      else
        nnoremap <leader>0 :call ToggleGUIwidth(108,150)<cr>
      endif
    endif
  endif
endif

""> 2 Python provider
if has('win64')
  if hostname() == 'HPEB840G37'
    let g:python3_host_prog = 'C:\Python312\python.exe'
  else
    " let g:python3_host_prog = 'C:\Users\jharr\AppData\Local\Programs\Python\Python312\python.exe'
    let g:python3_host_prog = $HADL.'/Programs/Python/Python312/python.exe'
  endif  " for  :checkhealth
endif

""> 2 pull in lua configs
if has('win64')
  let g:sqlite_clib_path = 'C:/Program Files/LibreOffice/program/sqlite3.dll'
  " g $env:programfiles\LibreOffice\program\sqlite3.dll
endif " - for  $vimfiles/nvim/lua/lazy/nvim-neoclip.lua
lua require('init')
" - $vimfiles/nvim/lua-init.lua

