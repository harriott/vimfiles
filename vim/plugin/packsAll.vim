
" https://harriott.githubio/ - mar 04 févr 2025

" $vfv/plugin/packsAll.vim  sourced by  $vfv/plugin/packs.vim
"  all instances of Vim, including WSL
"  $vfvp/packs-cp-all

let g:packsAll = 1

""> encoding - context.vim
" $vfvp/packs-cp-all/opt/context.vim/doc/context.vim.txt
"  try $misc/CP/workHours/makeDats.pl

" :ContextToggleWindow  mapped in
"  $vfv/ftplugin/perl.vim
"  $vfv/ftplugin/ps1.vim
let g:context_enabled = 0
" overwrites  lspsaga's  breadcrumbs
packadd context.vim

""> languages - omni completion
" quicker access to omni completion
inoremap <c-x><c-x> <c-x><c-o>
" - I'd preferred  <C-M>, but that's <CR>

""> layout - characterize.vim
" enhances  ga
packadd vim-characterize

""> layout - NERDtree & vim-devicons
" loaded in  $vfv/after/plugin/packs.vim

""> shell - MRU
" $vfvp/packs-cp-all/opt/mru/README.md
" $vimfiles/syntax/mru.vim
" ~/.vim_mru_files
let MRU_Max_Entries = 1000
let MRU_Window_Height = 20
" - which is overriden by this:
" let MRU_Use_Current_Window = 1

if !has('nvim') | nnoremap <leader>m :MRU | endif
packadd mru

" $HOME/.vim_mru_files
" in GNU/Linux  :FZFMru
" :MRU \.md
" :MRU \\wsl$
" :MruRefresh
" in the normal MRU window
"  d = delete from list
"  Enter = open over current window
"  O = open split right
"  o = open split below
"  u = update

""> shell - vim-startify
" $vfvp/packs-cp-all/opt/vim-startify/doc/startify.txt
packadd vim-startify
" Startify

""> text wrangling - find/replace - quick-scope
" trigger highlighting in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

packadd quick-scope

""> text wrangling - vim-asterisk
packadd vim-asterisk
map *  <Plug>(asterisk-*)
map #  <Plug>(asterisk-#)
map g* <Plug>(asterisk-g*)  " rg --no-ignore ' g\* '
map g# <Plug>(asterisk-g#)  " rg --no-ignore ' g# '
map z* <Plug>(asterisk-z*)  " rg --no-ignore ' z\* '
" z*cgn  make change to this first match, escape, . does same on next match
map z# <Plug>(asterisk-z#)  " rg --no-ignore ' z# '

""> vim - buffers - close-buffers.vim
"  quickly close all but current buffer
nnoremap <leader>bdd :Bdelete other<CR>
"  quickly close all but visible buffers
nnoremap <leader>bd  :Bdelete hidden<CR>

packadd close-buffers.vim

""> vim - buffers - vim-buffing-wheel
" $vfvp/packs-cp-all/opt/vim-buffing-wheel/readme.md
packadd vim-buffing-wheel
" - + X
" if  netrw  has been run, keeping getting a  [No Name]  buffer created...

""> vim - vim-repeat
packadd vim-repeat

