
" My portable vimrc - Joseph Harriott
" -----------------------------------
" True vimrc should source this file, which has settings that work in both MSWin & GNU+Linux.
" sourced by
"  $vimfiles/vimrc-GNULinux.vim

" ------------------------------------------------------------------
" typically basic Vim settings here - look in plugin folder for more
" ------------------------------------------------------------------

let g:useSTW=''
set encoding=utf-8  " get this done early
set ssop-=blank ssop-=help
set ssop+=winpos

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
set laststatus=2  "ls=2  - always display the status line
set wildmode=longest,full
set wildmenu

set listchars=eol:│,trail:·,tab:»·  "nicer settings for list mode (:h 'list')

set history=500  " just guessing here...
set modelines=4

set shortmess-=S " display count of matches

"">> special files
autocmd BufRead,BufNewFile */sudoers setlocal ft=sudoers
autocmd BufRead,BufNewFile *PowerShell/PSReadLine/ConsoleHost_history.txt setlocal nospell

""> mappings
cabbrev h vert h

noremap <leader><leader>ll :set list! list? <CR>  " (:h 'list')

nnoremap zr :exe ':spellrare  '.expand('<cWORD>')<CR>

" close window, including quickfix-window and NerdTree navigation
nnoremap <leader>x <C-W>c

" <F1> switches windows
nnoremap <F1> <C-W><C-W>
inoremap <F1> <Esc><C-W><C-W>
vnoremap <F1> <Esc><C-W><C-W>

" better searching
set ignorecase smartcase

" toggle cursorcolumn:
nnoremap <silent><leader><leader>c :set cuc! cuc? <CR>
" toggle cursorline:
nnoremap <silent><leader><leader>l :set cul! cul? <CR>

" toggle folds open/closed
nnoremap <Space> za

"">> comma <-> colon
" comma is colon (colon is comma)
"  https://konfekt.github.io/blog/2016/10/03/get-the-leader-right

"">>> 1 last l/r character search
" semicolon repeats forward, default

"">>>> colon repeats backwards
nnoremap : ,
xnoremap : ,
onoremap : ,
"  these require use of  noremap  when trying to acces  :  generically

"">>> 2 comma enters command-line mode
nnoremap , :
xnoremap , :
onoremap , :
"  any other mappings starting with , will slow this down

"">>> 3 more tweaks
" double ampersand repeats last command
nnoremap @@ @:
" - covering  repeat previous macro...
nnoremap @: <NOP>
" - not clear why I needed this...

"">>>> the change list
" g colon  repositons cursor foward
nnoremap g: g,
nnoremap g, <NOP>

" g semicolon  repostions cursor backward

"">>>> the command-line window
augroup vimHints
  autocmd!
  autocmd CmdwinEnter * echo 'C-c C-c  to quit'
augroup END
set cmdwinheight=30

"">>>>> 1 remap to comma
nnoremap q, q:
xnoremap q, q:
 " causes a slight lag in starting and ending macros, and in quitting NerdTree navigation

"">>>>> 2 semicolon no longer required
nnoremap q: <NOP>
xnoremap q: <NOP>

"">> leader on AZERTY
if v:lang == 'fr_FR.UTF-8'
  let mapleader = 'é'  " (equates to è)
endif

"">> localleader
nnoremap _ =
xnoremap _ =
onoremap _ =
" - because I rarely need  :h =
let maplocalleader = '='
nnoremap <localleader>h :echo 'you just hit =h'<cr>

"">> resize vim windows
" decrease window height
nnoremap <leader><down> 5<C-W>-
" increase window height
nnoremap <leader><up> 5<C-W>+
" decrease window width
nnoremap <leader><left> 10<C-W><
" increase window width
nnoremap <leader><right> 10<C-W>>
" turn off winfixheight in all windows
nnoremap <leader>c= :windo set nowfh <CR>

" :h window-resize

"">> turn off some unused Fn keys in insert mode
inoremap <F3> <Esc>
inoremap <S-F2> <Esc>

" ""> matchit.vim
" if has('syntax') && has('eval')
"   packadd! matchit
" endif  " the required features are available
" " supplanted by  vim match-up

