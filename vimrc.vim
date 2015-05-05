" ----------------------------------------------------------
" My portable vimrc - Joseph Harriott - http://momentary.eu/
" ----------------------------------------------------------
"  Real vimrc should source this file, which has settings that work in both MSWin & GNU+Linux

" ---------
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
" - I'm doubling up on what's in $HOME/vimfiles/vimrc_example.vim here,
" but otherwise unsaved buffers open as tw=0

set lcs=eol:│,trail:·,tab:»·  "nicer settings for list:
noremap <F3> :set list! list? <CR>
inoremap <F3> <Esc>:set list! list? <CR>

runtime macros/matchit.vim

set history=300

" LaTeX syntax folding on:
let g:tex_fold_enabled=1

" ------------
" buffer stuff
" ------------
set autoread
set hidden
set wmh=0  "reduce minimized windows to zero lines shown

" swapfiles:
set directory=$HOME/.vimswap//

" F2 to write all changed buffers:
nnoremap <F2> :wa<CR>
inoremap <F2> <Esc>:wa<CR>

" F5 to split window to a buffer number:
nnoremap <F5> :buffers<CR>:sbuffer<Space>

" toggle centering line in window:
nnoremap <Leader>zz :let &scrolloff=999-&scrolloff<CR>

" toggle relativenumber:
nnoremap <silent><leader>n :set rnu! rnu? <CR>

" -----------------
" shell interaction
" -----------------
" set working directory to that of the currently loaded file's:
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

set pastetoggle=<S-F3>

" open netrw:
nnoremap <leader>- :Explore<cr>

" ---------
" searching
" ---------
set ignorecase smartcase
nmap <silent> ,/ :nohlsearch<CR>
" for clearing search highlights

" Ggrep the current selection
function! GgrepROR()
  let lastvimsearch = getreg('/')
  " convert '\Vlastvimsearch' to simply 'lastvimsearch':
  let lvsnovisual = substitute(lastvimsearch, "^\\\\V", "", "")
  " convert '\<lastvimsearch\>' too (:s#\(^\\<\|\\>$\)##g):
  let @s = substitute(lvsnovisual, "\\(^\\\\<\\|\\\\>$\\)", "", "g")
endfunction
command! -nargs=? GgrepLastSearch call GgrepROR()
" Ggrep with the contents of s register:
nnoremap <S-F9> :GgrepLastSearch<CR>:Ggrep "<C-R>s" <bar>cw

" ---
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

"  -----
"  Dates
"  -----
noremap <F8> :CalendarH<CR>
inoremap <F8> <Esc>:CalendarH<CR>

" abbreviation for current date
" -----------------------------
iab <expr> d8c strftime("%y%m%d")
iab <expr> d8d strftime("%a %d %b %Y")
iab <expr> d8l strftime("%Hh%M %a %d %b %Y")
iab <expr> d8m strftime("%y%m%d-%Hh%Mm")
iab <expr> d8s strftime("%d/%m/%y")
iab <expr> d8t strftime("%y%m%d(%Hh%Mm%S)")

" ---------------
" Text Formatting
" ---------------
" a fourth-level DokuWiki heading I often use:
iab =w === at Wikipedia ===
" boost up a DokuWiki heading:
nnoremap <leader>= I=<Esc>A=<Esc>

" Convert url parenthesis:
nnoremap <S-F10> :s/(/%28/ <bar> s/)/%29/ <bar> nohlsearch<CR>

nnoremap <leader>a :Tabularize/-/r1c1l0
" this produces GFM-style tables:
let g:table_mode_corner='|'

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

" ---------------------
" Plugin configurations
" ---------------------
" load in plugins from bundle directory:
execute pathogen#infect()

" Appearance
" ----------
" start vim with colorizer's highlighting off:
let g:colorizer_startup = 0

" switch on DokuWiki comment highlighting (read by ./syntax/dokuwiki.vim)
let dokuwiki_comment=1

" vim-gitgutter:
let g:gitgutter_enabled = 0
noremap <F9> :GitGutterToggle<CR>
inoremap <F9> <Esc>:GitGutterToggle<CR>

" for Solarized:
set background=dark  " at this stage, assuming vim's in terminal
colorscheme solarized
call togglebg#map("<S-F5>")  " reassign the toggle light/dark

let g:languagetool_jar='$HOME\LanguageTool-2.4.1\languagetool-commandline.jar'

let g:syntastic_python_checkers = ['flake8']

" Files & buffers
" ---------------
noremap <silent> <F4> :BufExplorer<CR>

" remove these two mappings made in vim-buffing-wheel\plugin\buffingwheel.vim:
autocmd vimenter * silent unmap L|silent unmap H
" and replace with these mappings:
noremap <silent> + :<C-u>BuffingWheelNext<CR>
noremap <silent> - :<C-u>BuffingWheelPrevious<CR>

" quickly close all but current buffer:
nnoremap <S-F4> :BufOnly<CR>

" to help CtrlP when in my Win7 %USERPROFILE%:
set wildignore+=NTUSER.DAT*,*.lnk
let g:ctrlp_cmd = 'CtrlPMRU'

" for mru.vim:
let MRU_Max_Entries = 1000
let MRU_Window_Height = 15
" which is overriden by this:
let MRU_Use_Current_Window = 1

map <C-n> :NERDTreeToggle<CR>

command! -bar -bang W :WriteBackup<bang>

" ShowTrailingWhitespace
" ----------------------
highlight ShowTrailingWhitespace ctermbg=White

" Toggle ShowTrailingWhitespace locally (using w because t's taken by table-mode):
nnoremap <silent> <Leader>w :<C-u>call ShowTrailingWhitespace#Toggle(0)<Bar>echo (ShowTrailingWhitespace#IsSet() ? 'Show trailing whitespace' : 'Not showing trailing whitespace')<CR>

