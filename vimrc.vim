
" My portable vimrc - Joseph Harriott - http://momentary.eu/
" ----------------------------------------------------------
" Real vimrc should source this file, which has settings that work in both MSWin & GNU+Linux

set encoding=utf-8  " get this done early

"----------
" interface
" ---------
set linebreak number relativenumber
set laststatus=2  "ls=2  - always display the status line
set wildmode=longest,full
set wildmenu

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

" pack msgFilterRules.dat "name" lines:
autocmd BufRead,BufNewFile *msgFilterRules.dat nnoremap <buffer> <F12> :%s#^name="\v(.*$)\n(^.*$)\n(^.*$)\n(^.*$)\n(^.*$)\n(^.*$)#name="\1░\2░\3░\4░\5░\6#g <bar> nohlsearch <CR>
" unpack msgFilterRules.dat "name" lines:
autocmd BufRead,BufNewFile *msgFilterRules.dat nnoremap <buffer> <S-F12> :%s#^name="\v(.*)░(.*)░(.*)░(.*)░(.*)░(.*)$#name="\1\r\2\r\3\r\4\r\5\r\6#g<CR>
" (These hooks aren't in an  ftplugin/dat.vim  because there's no such default filetype.)

" For Thymio's Aseba code, I suppose that  sgml  filetype might be more appropriate,
" but I use  xml  filetype  because it has folding
autocmd BufNewFile,BufRead *.aesl setlocal filetype=xml

"-------
"  Dates
" ------
noremap <F8> :CalendarH<CR>
inoremap <F8> <Esc>:CalendarH<CR>
if has('unix')
  noremap <C-F8> :lan fr_FR.UTF-8<CR>:pu=strftime('%a %d %b %Y')<CR>:lan en_GB.UTF-8<CR>
elseif has('win32')
  noremap <C-F8> :lan tim French<CR>:pu=strftime('%a %d %b %Y')<CR>:lan tim English_United Kingdom<CR>
endif

" abbreviation for current date
" -----------------------------
iab <expr> d8- strftime("%y-%m-%d")
iab <expr> d8a strftime("%Y-%m-%d-%a")
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

" netrw:
let g:netrw_banner = 0
let g:netrw_liststyle = 2
nnoremap <leader>- :Texplore<cr>

" open-browser.vim
" If it looks like URI, Open URI under cursor. Otherwise, Search word under cursor.
nmap <F6> <Plug>(openbrowser-smart-search)
" If it looks like URI, Open selected URI. Otherwise, Search selected word.
vmap <F6> <Plug>(openbrowser-smart-search)

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

