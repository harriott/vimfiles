" ----------------------------------------------------------
" My portable vimrc - Joseph Harriott - http://momentary.eu/
" ----------------------------------------------------------
" Real vimrc should source this file, which has settings that work in both MSWin & GNU+Linux

"----------
" interface
" ---------
set linebreak number relativenumber
set encoding=utf-8
set linespace=4
set shiftwidth=4
set tabstop=4
set laststatus=2  "ls=2  - always display the status line
set wildmode=longest,full
set wildmenu
set tw=99

set lcs=eol:│,trail:·,tab:»·  "nicer settings for list:
noremap <S-F3> :set list! list? <CR>
inoremap <S-F3> <Esc>:set list! list? <CR>

set history=300
set modelines=4

" LaTeX syntax folding on:
let g:tex_fold_enabled=1

" XML syntax folding on:
let g:xml_syntax_folding = 1

"-------------
" buffer stuff
" ------------
set autoread
set hidden
set wmh=0  "reduce minimized windows to zero lines shown

" undofiles, centrally stored with complete paths:
set directory=$HOME/.vimundo//

" swapfiles, centrally stored with complete paths:
set directory=$HOME/.vimswap//

" F2 to write all changed buffers:
nnoremap <F2> :wa<CR>
inoremap <F2> <Esc>:wa<CR>

" Split window to a buffer number:
nnoremap <F5> :buffers<CR>:sbuffer<Space>

" toggle centering line in window:
nnoremap <Leader>zz :let &scrolloff=999-&scrolloff<CR>

" toggle relativenumber:
nnoremap <silent><leader>n :set rnu! rnu? <CR>

"-------
"  Dates
" ------
noremap <F8> :CalendarH<CR>
inoremap <F8> <Esc>:CalendarH<CR>

" abbreviation for current date
" -----------------------------
iab <expr> d8- strftime("%y-%m-%d")
iab <expr> d8c strftime("%y%m%d")
iab <expr> d8d strftime("%a %d %b %Y")
iab <expr> d8l strftime("%Hh%M %a %d %b %Y")
iab <expr> d8m strftime("%y%m%d-%Hh%Mm")
iab <expr> d8p strftime("%Y-%m-%d %H:%M")
iab <expr> d8s strftime("%d/%m/%y")
iab <expr> d8t strftime("%y%m%d(%Hh%Mm%S)")

"----------
" searching
" ---------
" Ggrep with the contents of s register:
nnoremap <F9> :CSinS<CR>:Ggrep -i "<C-R>s" <bar>cw

set ignorecase incsearch smartcase

runtime macros/matchit.vim

nmap <silent> ,/ :nohlsearch<CR>
" for clearing search highlights

" Strip the current selection & store it in the l then s register:
function! StripStoreCurSel()
  let lastvimsearch = getreg('/')
  " remove the '\V' (very nomagic) prefix, if it's there:
  let @l = substitute(lastvimsearch, "^\\\\V", "", "")
  " convert '\<lastvimsearch\>' too (:s#\(^\\<\|\\>$\)##g):
  let @s = substitute(@l, "\\(^\\\\<\\|\\\\>$\\)", "", "g")
endfunction
command! -nargs=? CSinS call StripStoreCurSel()

"------------------
" shell interaction
" -----------------
" get filepath into register f:
nnoremap <leader>f :let@f=@%<CR>

" set working directory to that of the currently loaded file's:
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

set pastetoggle=<S-F3>

" open netrw:
nnoremap <leader>- :Explore<cr>

"----------------
" Text Formatting
" ---------------
nnoremap <leader>a :Tabularize/-/r1c1l0
" this produces GFM-style tables:
let g:table_mode_corner='|'

" Convert url parenthesis
" -----------------------
" 5 here means convert to % code (my general preference):
nnoremap <leader>5 :s/(/%28/ <bar> s/)/%29/ <bar> nohlsearch<CR>
" 9 here means convert back to parentheses (eg for a quoted url in tex):
nnoremap <leader>9 :s/%28/(/ <bar> s/%29/)/ <bar> nohlsearch<CR>

" Remove all square bracketed text
nnoremap <leader>[ :s/\m\[.\{-}]//g<CR>

" Underline using dashes automatically
" ------------------------------------
" (http://vim.wikia.com/wiki/Underline_using_dashes_automatically)
" eg :Underline ~+-	 gives underlining like ~+-~+-~+-~+-~+-~+-
function! s:Underline(chars)
  let chars = empty(a:chars) ? '-' : a:chars
  let nr_columns = virtcol('$') - 1
  let uline = repeat(chars, (nr_columns / len(chars)) + 1)
  put =strpart(uline, 0, nr_columns)
endfunction
command! -nargs=? Underline call s:Underline(<q-args>)
" map:
nnoremap <leader>u :Underline

"----
" Vim
" ---
" to get the output of a command in a new tab, just enter :TabEx <cmd>
function! TabEx(cmd)
  redir => message
  silent execute a:cmd
  redir END
  tabnew
  silent put=message
  set nomodified
endfunction
command! -nargs=+ -complete=command TabEx call TabEx(<q-args>)
" (from http://vim.wikia.com/wiki/Capture_ex_command_output)

