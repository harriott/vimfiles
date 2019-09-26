
" My portable vimrc - Joseph Harriott - http://momentary.eu/
" ----------------------------------------------------------
" True vimrc should source this file, which has settings that work in both MSWin & GNU+Linux

set encoding=utf-8  " get this done early

" set pastetoggle=<S-F3>

"----------
" interface
" ---------
set linebreak number relativenumber
set laststatus=2  "ls=2  - always display the status line
set wildmode=longest,full
set wildmenu

set listchars=eol:│,trail:·,tab:»·  "nicer settings for list mode:
noremap <S-F3> :set list! list? <CR>
inoremap <S-F3> <Esc>:set list! list? <CR>

set history=400
set modelines=4

"-------------
" buffer stuff
" ------------
set autoread  " catch external changes to files
set hidden  " allows working on multiple files while not visually focussing on them all
set winminheight=0  "reduce minimized windows to zero lines shown

" undofiles, centrally stored with complete paths:
set directory=$HOME/.vimundo//

" swapfiles, centrally stored with complete paths:
set directory=$HOME/.vimswap//

"----------
" searching
" ---------
if has('syntax') && has('eval')
  packadd! matchit
endif

set ignorecase incsearch smartcase

nmap <silent> ,/ :nohlsearch<CR>
" for clearing search highlights

noremap <leader>q :cw<CR>

