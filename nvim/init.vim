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
  nnoremap ! /
endif

set termguicolors

" nnoremap Y 0yj
" yank one full line - I prefer over  Y-default, but now need  nyy  to select multiple lines

""> 0 quit buffer(s), quit nvim
function! F4F4()
  if len(getbufinfo({'buflisted':1})) == 1
    let cfd = expand('%:p:h') " current file directory
    if has('unix')
      " for  nn  in  $Bash/bashrc-console
      edit $HOME/.config/nvim/last_directory " ~/.config/nvim/last_directory
    else
      edit $nvim/last_directory
    endif
    normal dd
    put=cfd
    normal kdd
    wall
    quit! " close completely
  else
    let s:b = expand('%:t')
    silent wall
    bdelete
    echo 'closed '.s:b
  endif
endfunction

nnoremap <f4> :call F4F4()<CR>
inoremap <f4> <Esc>:call F4F4()<CR>
" - overriden by some autocommands in  $vimfiles/vim/plugin/plugin.vim

vnoremap <f4> <Esc>:call F4F4()<CR>

nnoremap <leader><f4> :Bdelete other<CR>:call F4F4()<CR>

""> 0 terminal
autocmd TermOpen * startinsert
let $in_nvim = 1  " - for $OSAB/Bash/bashrc-generic

""> 1 pull in Vim configuration
if has('win64')
  source $HOME\vimfiles\vimrc-Win10-paths.vim  " $vimfiles\vim\enter\vimrc-Win10-paths.vim
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

" if has('unix')
  " let g:Hexokinase_highlighters = ['foregroundfull']
  " packadd vim-hexokinase  " won't work with  lazy.nvim
  " autocmd BufRead,BufNewFile /tmp/.nnn* :HexokinaseTurnOff
  " " $vfp/packs-unix/opt/vim-hexokinase/README.md
" endif

" colorscheme
if has('win64')
  colo wombat
else
  colo jellybeans
endif

""> 2 pull in lua configs
lua require('init')
" - $vimfiles/nvim/lua-init.lua

