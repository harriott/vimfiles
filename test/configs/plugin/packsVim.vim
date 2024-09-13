
" https://harriott.githubio/ - mer 15 mai 2024

" $vimfiles/test/plugin/packsVim.vim  reduced from  $vfv/plugin/packsVim.vim

" Test configuration - set in:
"  $MSwin10\mb\symlinks-mostly.ps1
"  $OSAB/bs-symlinks/jo-2-whenWM-0.sh

""> fzf.vim
" $vfvp/packs-cp/opt/fzf.vim/doc/fzf-vim.txt
let g:fzf_vim = {}
  let g:fzf_vim.preview_bash = 'C:\Git\bin\bash.exe'
  " let g:fzf_vim.preview_bash = 'C:\Windows\System32\bash.exe'
  " let g:fzf_vim.preview_window = ['hidden,up,50%', 'f1']
  " - f1  will reveal the hidden preview window
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
  " at  $vfv/plugin\fzf,
  "  because
  "   1 /usr/bin/fzf  is not found
  "   2 fzf  is not found externally inspite of  :set rtp+=$CrPl\fzf
  "                                              :set rtp+=$nvim\fzf
  "                                              :set rtp+=$nvim\plugin\fzf
  "      (the advice at  $vfv/plugin/fzf/README-VIM.md  ain't correct)

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

