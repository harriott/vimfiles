
" https://harriott.github.io/ - d8d

" $vimfiles/vim/plugin/plugins.vim

" find . -mindepth 3 -maxdepth 3 -type d | sort | tr '\n' ' ' | sed 's#./packs-##g' | xcol cp/opt/ unix/opt/; echo

""> encoding

"">> The NERD Commenter
packadd nerdcommenter
let NERDSpaceDelims = 1
" <leader>c<space> -> NERDCommenterToggle

" extra filetypes
" $vimfiles/vim/packs-cp/opt/nerdcommenter/autoload/nerdcommenter.vim > let s:delimiterMap
let g:NERDCustomDelimiters = { 'clifm': { 'left': '#' }, }
let g:NERDCustomDelimiters = { 'lf': { 'left': '#' }, }

""> fzf.vim
" $vimfiles/vim/packs-cp/opt/fzf.vim/doc/fzf-vim.txt
let g:fzf_vim = {}
  let g:fzf_vim.preview_bash = 'C:\Git\bin\bash.exe'
  let g:fzf_vim.preview_window = ['hidden,up,70%']
packadd fzf.vim

nnoremap <leader>B :BLines<CR>
nnoremap <leader>L :Lines<CR>

nnoremap <f1> :Buffers<CR>
inoremap <f1> <Esc>:Buffers<CR>
vnoremap <f1> <Esc>:Buffers<CR>

nnoremap <F8> :History:<CR>
inoremap <F8> <Esc>:History:<CR>
vnoremap <F8> <Esc>:History:<CR>

nnoremap <F9> :History/<CR>
inoremap <F9> <Esc>:History/<CR>
vnoremap <F9> <Esc>:History/<CR>

nnoremap <s-f1> :Jumps<CR>

if has('win64') " junegunn/fzf
  " at  $vimfiles\vim\plugin\fzf,
  "  because
  "   1 /usr/bin/fzf  is not found
  "   2 fzf  is not found externally inspite of  :set rtp+=$CrPl\fzf
  "                                              :set rtp+=$nvim\fzf
  "                                              :set rtp+=$nvim\plugin\fzf
  "      (the advice at  $vimfiles/vim/plugin/fzf/README-VIM.md  ain't correct)

  nnoremap <S-F9> call popup_clear(1):<CR>
  " - for when the pop window seizes - nice idea, but shift+f9 also gets blocked
endif

" case-sensitive
" 'search  searches for exactly that

" :Commits
" :Helptags
" :Maps  = normal mode mappings

"">> \j
" in ~/.vim: rg '>j' --no-ignore

nnoremap <leader>j :Files $DJH<CR>

"">> fugitive

nnoremap <c-f3> :BCommits<CR>
inoremap <c-f3> <Esc>:BCommits<CR>
vnoremap <c-f3> <Esc>:BCommits<CR>

nnoremap <s-f3> :Commits<CR>
inoremap <s-f3> <Esc>:Commits<CR>
vnoremap <s-f3> <Esc>:Commits<CR>

""> layout

"">> vim-airline
let g:airline_powerline_fonts = 1
packadd vim-airline
let airline#extensions#ale#show_line_numbers = 0
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#fzf#enabled = 1  " adds line-number/total lines
let g:airline#extensions#whitespace#trailing_format = 'tr[%s]'
let g:airline#extensions#whitespace#mixed_indent_file_format = 'mif[%s]'
set noshowmode  " no need for -- INSERT -- in (lower) command line
packadd vim-airline-themes
if has('win32')
  let g:airline_left_sep = ''
  let g:airline_right_sep = ''
  let g:airline_symbols.colnr = ' '
  let g:airline_symbols.linenr = ' '
  let g:airline_symbols.maxlinenr = ''
  let g:airline_symbols.branch = ''
endif

""> shell

"">> ctrlp.vim
" $HOME/.cache/ctrlp/mru/cache.txt
" <c-f> and <c-b> to cycle between modes
" open selected entry in a new
"  split horizontal <c-x>
"  split vertical   <c-v>
"  tab              <c-t>
set wildignore+=NTUSER.DAT*,*.lnk " helps when in my Win7 %USERPROFILE%

"">>> 0 configure
" need to be defined before it's loaded
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_mruf_max = 500
nnoremap <leader>bb :CtrlPBuffer<CR>

"">>> 1 invoke
packadd ctrlp.vim

"">> Fern
" vim default c-e = scroll up the window, without displacing the cursor
noremap <c-e> :cd %:p:h<CR>:Fern . -reveal=%<CR>
packadd fern.vim " $vimfiles/vim/packs-cp/opt/fern.vim/README.md
" ! -- toggles hidden
" + -- vim-buffing-wheel override (quits)
" <bs>/<c-h> -- fern-action-leave (goes up a directory)
" <c-m>/<cr> -- open-or-enter
" ? -- help
" - -- mark
" e/<enter> -- open
" E -- open:side
" p -- preview:toggle
" t -- open:tabedit
" x -- open:system (eg to open an image)

"">> fern-git-status
packadd fern-git-status.vim

"">> fern-preview.vim
augroup fern-settings
  autocmd!
  autocmd FileType fern call s:fern_settings()
augroup END
function! s:fern_settings() abort
  nmap <silent> <buffer> p     <Plug>(fern-action-preview:toggle)
  nmap <silent> <buffer> <c-d> <Plug>(fern-action-preview:scroll:down:half)
  nmap <silent> <buffer> <c-u> <Plug>(fern-action-preview:scroll:up:half)
endfunction
packadd fern-preview.vim

"">> fern-renderer-nerdfont.vim
let g:fern#renderer = "nerdfont"
packadd fern-renderer-nerdfont.vim

"">> vim-dirvish
" h dirvish
" can't navigate up a directory
" takes over :e.

" in dirvish
"  -       -> out
"  <enter> -> in
"  a       -> open file in window left
"  g?      -> dirvish-mappings
"  gq      -> quit
"  preview left
"   p
"    Ctrl-n -> next
"    Ctrl-p -> previous

packadd vim-dirvish

"">> vim-dirvish-git
if has('unix')
  packadd vim-dirvish-git
endif

"">> vim-picker
if has('unix')
  packadd vim-picker
  nmap <unique> <leader>pe <Plug>(PickerEdit)
  " - files in cwd
  nmap <unique> <leader>pb <Plug>(PickerBuffer)
endif

""> vim

"">> buffers

"">>> bufexplorer
packadd bufexplorer
noremap <silent> <leader>be :BufExplorer<CR>

"">>>> default mappings
"  <Leader>be - Opens BufExplorer
"  <Leader>bt - Toggles BufExplorer open or closed
"  <Leader>bs - Opens horizontally split window BufExplorer
"  <Leader>bv - Opens vertically split window BufExplorer

