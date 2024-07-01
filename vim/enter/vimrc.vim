
" my portable vimrc - settings that work on linux & MSWin
" -------------------------------------------------------
" - Joseph Harriott - jeu 16 mai 2024

" $vimfiles/vim/enter/vimrc.vim  source'd by
"  $vimfiles/vim/enter/vimrc-linux.vim
"  $vimfiles\vim\enter\vimrc-Win10.vim

" ------------------------------------------------------------------
" typically basic Vim settings here - look in plugin folder for more
" ------------------------------------------------------------------

set encoding=utf-8  " get this done early
set mps=(:),{:},[:],<:>
set nojoinspaces  " already off in  nvim
set shiftwidth=4
set ssop-=blank ssop-=help ssop+=winpos  " sessionoptions
set tabstop=4
set textwidth=99

""> buffer stuff
set autoread  " catch external changes to files
set directory=$HOME/.vimswap// " swapfiles, centrally stored with complete paths
" set undodir=$HOME/.vimundo// " undofiles, centrally stored with complete paths
set hidden  " allows working on multiple files while not visually focussing on them all
set winminheight=0  " reduce minimized windows to zero lines shown

""> get g:vimfiles location
" deprecated - kept here only for emergencies
if empty(matchstr($HOME, '/home/'))
  let g:vimfiles = $HOME.'\vimfiles'
else
  let g:vimfiles = $HOME.'/.vim'
endif

""> interface
if !has('gui_running') && !has('nvim') | colorscheme deus | endif  " plain vim only

set fillchars=fold:\ 
" - '\ ' for cleaner folds
set linebreak number numberwidth=5 relativenumber
set laststatus=2  "ls=2  - always display the status line, already set in nvim
set wildmode=longest,full
set wildmenu

set listchars=eol:│,nbsp:␣,trail:·,tab:»·  "nicer settings for list mode (:se lcs)

set history=500  " just guessing here...
set modelines=4

set shortmess-=S " display count of matches

set splitright
set splitbelow

"">> special files
autocmd BufRead,BufNewFile */sudoers setlocal ft=sudoers
autocmd BufRead,BufNewFile *PowerShell/PSReadLine/ConsoleHost_history.txt setlocal nospell

""> mappings 0 for AZERTY
if v:lang =~ 'fr'
  " let mapleader = 'ù'  " only seemed reliable in  nvim, now handled by  AHK
  nnoremap <c-f11> 2<c-g>
endif

""> mappings 0 localleader
nnoremap <c-=> <c-w>=
let maplocalleader = '='
  " ='s filter mapping still works, so these aren't needed
  " nnoremap _ =
  " xnoremap _ =
  " onoremap _ =
nnoremap <localleader>h :echo 'you just hit <localleader>h'<cr>

""> mappings 1
" continued, with other stuff, in  $vimfiles/vim/plugin/plugin.vim

" ""> matchit.vim
" if has('syntax') && has('eval')
"   packadd! matchit
" endif  " the required features are available
" " supplanted by  vim match-up

""> quit buffer(s), quit nvim
" originally written for terminal nvim/vim, then realised it's handy for GUIs too
function! VimWriteClose()
  if has('nvim')
     NvimTreeClose
  endif  " can't be scrunched to one line
  if len(getbufinfo({'buflisted':1})) == 1
    let cfd = expand('%:p:h') " current file directory
    edit $HOME/last_directory  " for  $Bash/bashrc-console  &  $MSWin10\PSProfile.ps1
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

nnoremap <f4> :call VimWriteClose()<CR>
inoremap <f4> <Esc>:call VimWriteClose()<CR>
" - overriden by some autocommands in  $vimfiles/vim/plugin/plugin.vim

vnoremap <f4> <Esc>:call VimWriteClose()<CR>

nnoremap <leader><f4> :Bdelete other<CR>:call VimWriteClose()<CR>
inoremap <leader><f4> <Esc>:Bdelete other<CR>:call VimWriteClose()<CR>

