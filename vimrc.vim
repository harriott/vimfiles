
" My portable vimrc - Joseph Harriott
" -----------------------------------
" True vimrc should source this file, which has settings that work in both MSWin & GNU+Linux.

" ------------------------------------------------------------------
" ------------------------------------------------------------------
" typically basic Vim settings here - look in plugin folder for more
" ------------------------------------------------------------------
" ------------------------------------------------------------------

if v:lang == 'fr_FR.UTF-8'
  let mapleader = 'é'  " (equates to è)
fi

" <F1> switches windows
nnoremap <F1> <C-W><C-W>
inoremap <F1> <Esc><C-W><C-W>
vnoremap <F1> <Esc><C-W><C-W>

set encoding=utf-8  " get this done early

" turn off some unused Fn keys in insert mode
inoremap <F3> <Esc>

" ---------
" interface
" ---------
set linebreak number relativenumber
set laststatus=2  "ls=2  - always display the status line
set wildmode=longest,full
set wildmenu

set listchars=eol:│,trail:·,tab:»·  "nicer settings for list mode:
noremap <leader>ll :set list! list? <CR>

set history=400
set modelines=4

" close window, including quickfix-window and NerdTree navigation
nnoremap <leader>x <C-W>c

" toggle cursorcolumn:
nnoremap <silent><leader><leader>c :set cuc! cuc? <CR>
" toggle cursorline:
nnoremap <silent><leader><leader>l :set cul! cul? <CR>

" toggle folds open/closed
nnoremap <Space> za

" resize vim windows (:h window-resize)
" -------------------------------------
" decrease window height
nnoremap <leader><down> 5<C-W>-
" increase window height
nnoremap <leader><up> 5<C-W>+
" decrease window width
nnoremap <leader><left> 10<C-W><
" increase window width
nnoremap <leader><right> 10<C-W>>

" ------------
" buffer stuff
" ------------
set autoread  " catch external changes to files
set directory=$HOME/.vimswap// " swapfiles, centrally stored with complete paths
" set undodir=$HOME/.vimundo// " undofiles, centrally stored with complete paths
set hidden  " allows working on multiple files while not visually focussing on them all
set winminheight=0  " reduce minimized windows to zero lines shown

" -------------------------------
" comma is colon (colon is comma)
" -------------------------------
"  https://konfekt.github.io/blog/2016/10/03/get-the-leader-right
if 1

  nnoremap : ,
  xnoremap : ,
  onoremap : ,
  "  these require use of noremap when trying to acces : generically

  nnoremap , :
  xnoremap , :
  onoremap , :
  "  any other mappings starting with , will slow this down

  nnoremap g: g,
  nnoremap g, <NOP>

  nnoremap @, @:
  nnoremap @: <NOP>

  "  causes a slight lag in starting and ending macros, and in quitting NerdTree navigation
  nnoremap q, q:
  xnoremap q, q:

  nnoremap q: <NOP>
  xnoremap q: <NOP>

endif

