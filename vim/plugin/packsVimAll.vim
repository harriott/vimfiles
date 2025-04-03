
" https://harriott.githubio/ - ven 01 nov 2024

" $vfv/plugin/packsVimAll.vim

" find . -mindepth 3 -maxdepth 3 -type d | sort | tr '\n' ' ' | sed 's#./packs-##g' | xcol cp/opt/ unix/opt/; echo

""> encoding - The NERD Commenter
packadd nerdcommenter
let NERDSpaceDelims = 1
" <leader>c<space> -> NERDCommenterToggle

" extra filetypes
" $vfvp/packs-cp/opt/nerdcommenter/autoload/nerdcommenter.vim > let s:delimiterMap
let g:NERDCustomDelimiters = { 'clifm': { 'left': '#' }, }
let g:NERDCustomDelimiters = { 'lf': { 'left': '#' }, }

""> find/replace - vim-easymotion
" :h easymotion-default-mappings
packadd vim-easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
" <leader>f{char} to move to {char}
nmap <leader><leader>f <Plug>(easymotion-overwin-f)
" s{char}{char}{label}
autocmd VimEnter * nmap s <Plug>(easymotion-overwin-f2)
"  (in an autocmd to be sure it works with Arch vim-colors-solarized)

""> layout - highlighting - vim-illuminate
" :IlluminateToggle
packadd vim-illuminate
" $vfvp/packs-cp-all/opt/vim-illuminate/README.md

" toggle illuminate more visible
nnoremap <silent><leader>it :call IlluminateMoreToggle()<cr>
let g:illuminatedWordMoreVisible = 0
function! IlluminateMoreToggle()
  if g:illuminatedWordMoreVisible
    hi link illuminatedWord CursorLine
    let g:illuminatedWordMoreVisible = 0
    " echo 'illuminatedWord CursorLine - refresh the buffer'
  else
    hi link illuminatedWord buildN
    let g:illuminatedWordMoreVisible = 1
    " echo 'illuminatedWord buildN - refresh the buffer'
  endif
endfunction

""> layout - statusline
if has('unix') " vim-airline
  " $vfvp/packs-cp-all/opt/vim-airline/README.md
  let g:airline_powerline_fonts = 1
  packadd vim-airline " somehow breaks  fzf  on  Windows 10
  let airline#extensions#ale#show_line_numbers = 0
  let g:airline#extensions#ale#enabled = 1
  let g:airline#extensions#fzf#enabled = 1  " adds line-number/total lines
  let g:airline#extensions#whitespace#trailing_format = 'tr[%s]'
  let g:airline#extensions#whitespace#mixed_indent_file_format = 'mif[%s]'
  packadd vim-airline-themes
else
  " $vfvp/packs-win64/opt/lightline.vim/doc/lightline.txt
  let g:lightline = { 'colorscheme': 'darcula', }
  packadd lightline.vim
endif

set noshowmode  " no need for -- INSERT -- in (lower) command line

""> shell - ctrlp.vim
" $vfvp/packs-cp-all/opt/ctrlp.vim/readme.md
" <c-f> and <c-b> to cycle between modes
" <f5>  cleans  $HOME/.cache/ctrlp/mru/cache.txt
" open selected entry in a new
"  split horizontal <c-x>
"  split vertical   <c-v>
"  tab              <c-t>
set wildignore+=NTUSER.DAT*,*.lnk " helps when in my Win7 %USERPROFILE%

"">> 0 configure
" need to be defined before it's loaded
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_mruf_max = 500
nnoremap <leader>bb :CtrlPBuffer<CR>

"">> 1 invoke
packadd ctrlp.vim

""> shell - NERDTree
"h NERDTree
let NERDTreeWinSize = 40
let NERDTreeHijackNetrw = 0  " liberate  e.
noremap <C-n> :NERDTreeToggle<CR>

" loaded in  $vimfiles/after/plugin/plugins.vim

" Open it on buffer's directory:
nnoremap <F10> :cd %:p:h<CR>:NERDTreeCWD<CR>
inoremap <F10> <Esc>:cd %:p:h<CR>:NERDTreeCWD<CR>

""> text wrangling - supertab
" $vfvp/packs-cp-all/opt/supertab/doc/supertab.txt
" :verb imap <tab>
" c-q tab  to insert a literal tab
packadd supertab

