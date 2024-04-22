
" my portable vimrc - settings that work in both MSWin & GNU+Linux - Joseph Harriott
" ----------------------------------------------------------------------------------

" $vimfiles/vim/enter/vimrc.vim  sourced by
"  $vimfiles/vim/enter/vimrc-GNULinux.vim
"  $vimfiles\enter\vimrc-Win10.vim

" ------------------------------------------------------------------
" typically basic Vim settings here - look in plugin folder for more
" ------------------------------------------------------------------

let g:useSTW=''
set encoding=utf-8  " get this done early
set mps=(:),{:},[:],<:>
set nojoinspaces  " already off in  nvim
set shiftwidth=4
set ssop-=blank ssop-=help
set ssop+=winpos
set tabstop=4
set textwidth=99

""> buffer stuff
set autoread  " catch external changes to files
set directory=$HOME/.vimswap// " swapfiles, centrally stored with complete paths
" set undodir=$HOME/.vimundo// " undofiles, centrally stored with complete paths
set hidden  " allows working on multiple files while not visually focussing on them all
set winminheight=0  " reduce minimized windows to zero lines shown

""> get g:vimfiles location
if empty(matchstr($HOME, '/home/'))
  let g:vimfiles = $HOME.'\vimfiles'
else
  let g:vimfiles = $HOME.'/.vim'
endif

""> interface
set fillchars=fold:\ 
" - '\ ' for cleaner folds
set linebreak number relativenumber
set laststatus=2  "ls=2  - always display the status line, already set in nvim
set wildmode=longest,full
set wildmenu

set listchars=eol:│,nbsp:␣,trail:·,tab:»·  "nicer settings for list mode (:h 'list')

set history=500  " just guessing here...
set modelines=4

set shortmess-=S " display count of matches

set splitright
set splitbelow

"">> special files
autocmd BufRead,BufNewFile */sudoers setlocal ft=sudoers
autocmd BufRead,BufNewFile *PowerShell/PSReadLine/ConsoleHost_history.txt setlocal nospell

" ""> mappings 0 leader for AZERTY
" if v:lang =~ 'fr' | let mapleader = 'ù' | endif  " only seemed reliable in  nvim

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

