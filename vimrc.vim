
" My portable vimrc - Joseph Harriott - http://momentary.eu/
" ----------------------------------------------------------
" True vimrc should source this file, which has settings that work in both MSWin & GNU+Linux.
"
" My plugin configurations are sourced automatically in the likes of  plugin\plugins.vim.

set encoding=utf-8  " get this done early

" clear the registers b-z
command! WipeReg for i in range(98,122) | silent! call setreg(nr2char(i), []) | endfor

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
nnoremap <silent><leader>cc :set cuc! cuc? <CR>
" toggle cursorline:
nnoremap <silent><leader>cl :set cul! cul? <CR>

" toggle folds open/closed
nnoremap <Space> za

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

" ---------
" searching
" ---------
" clear search highlights
if exists("g:loaded_matchparen")
  autocmd VimEnter * NoMatchParen  "turn off parenthesis matching at start
endif
" and <leader>pt toggles it:
nnoremap <leader>pt :call ParenthsToggle()<cr>
let g:parenthesismatch = 0
function! ParenthsToggle()
    if g:parenthesismatch
        NoMatchParen
        let g:parenthesismatch = 0
    else
		DoMatchParen
        let g:parenthesismatch = 1
    endif
endfunction

nmap <leader>nh :nohlsearch<CR>

" re-open the quickfix-window, eg to look again at results of vimgrep
noremap <leader>q :copen<CR>

set ignorecase incsearch smartcase

