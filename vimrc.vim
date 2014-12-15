" ----------------------------------------------------------
" My portable vimrc - Joseph Harriott - http://momentary.eu/
" ----------------------------------------------------------
"  Real vimrc should source this file, which has settings that work in both MSWin & GNU+Linux

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

" shell interaction
" -----------------
" set working directory to that of the currently loaded file's:
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

set pastetoggle=<S-F3>

" open netrw:
nnoremap <leader>- :Explore<cr>

" searching
" ---------
set ignorecase smartcase
nmap <silent> ,/ :nohlsearch<CR>
" for clearing search highlights

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

" abbreviation for current date
" -----------------------------
iab <expr> d8c strftime("%y%m%d")
iab <expr> d8d strftime("%a %d %b %Y")
iab <expr> d8l strftime("%Hh%M %a %d %b %Y")
iab <expr> d8m strftime("%y%m%d-%Hh%Mm")
iab <expr> d8s strftime("%d/%m/%y")
iab <expr> d8t strftime("%y%m%d(%Hh%Mm%S)")

" switch on comment highlighting (read by C:\Users\jo\vimfiles\syntax\dokuwiki.vim)
let dokuwiki_comment=1

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

" Plugins
" -------

" for mru.vim:
let MRU_Max_Entries = 1000

" quickly close all but current buffer:
nnoremap <S-F4> :BufOnly<CR>

" load in plugins from bundle directory:
execute pathogen#infect()

" for Solarized:
set background=dark  " at this stage, assuming vim's in terminal
colorscheme solarized
call togglebg#map("<S-F5>")  " reassign the toggle light/dark

autocmd vimenter * if !argc() | cd D:/ | NERDTree | endif  "open empty vim to NERDTree
map <C-n> :NERDTreeToggle<CR>

" to help CtrlP when in my Win7 %USERPROFILE%:
set wildignore+=NTUSER.DAT*,*.lnk
let g:ctrlp_cmd = 'CtrlPMRU'

nnoremap <leader>a :Tabularize/-/r1c1l0
" this produces GFM-style tables:
let g:table_mode_corner='|'

" start vim with colorizer's highlighting off:
let g:colorizer_startup = 0

noremap <silent> <F4> :BufExplorer<CR>

noremap <S-F1> :CalendarH<CR>
inoremap <S-F1> <Esc>:CalendarH<CR>

" remove these two mappings made in vim-buffing-wheel\plugin\buffingwheel.vim:
autocmd vimenter * silent unmap L|silent unmap H
" and replace with these mappings:
noremap <silent> + :<C-u>BuffingWheelNext<CR>
noremap <silent> - :<C-u>BuffingWheelPrevious<CR>

let g:languagetool_jar='$HOME\LanguageTool-2.4.1\languagetool-commandline.jar'

let g:syntastic_python_checkers = ['flake8']

command -bar -bang W :WriteBackup<bang>

let MRU_Max_Entries = 900
let MRU_Window_Height = 15
" which is overriden by this:
let MRU_Use_Current_Window = 1

" ShowTrailingWhitespace
" ----------------------
highlight ShowTrailingWhitespace ctermbg=White

" Toggle ShowTrailingWhitespace locally (using w because t's taken by table-mode):
nnoremap <silent> <Leader>w :<C-u>call ShowTrailingWhitespace#Toggle(0)<Bar>echo (ShowTrailingWhitespace#IsSet() ? 'Show trailing whitespace' : 'Not showing trailing whitespace')<CR>

