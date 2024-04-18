
" https://harriott.github.io/ - d8d

" $vimfiles/vim/plugin/plugins.vim

" find . -mindepth 3 -maxdepth 3 -type d | sort | tr '\n' ' ' | sed 's#./packs-##g' | xcol cp/opt/ unix/opt/; echo

""> fzf.vim
let g:fzf_vim = {} | let g:fzf_vim.preview_bash = 'C:\Git\bin\bash.exe'
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

if has('win32')
  nnoremap <S-F9> call popup_clear(1):<CR>
  " for when the pop window seizes - nice idea, but shift+f9 also gets blocked
  packadd fzf
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

""> shell

"">> ctrlp.vim
" $HOME/.cache/ctrlp/mru/cache.txt
" <c-f> and <c-b> to cycle between modes
" open selected entry in a new
"  split horizontal <c-x>
"  split vertical   <c-v>
"  tab              <c-t>
set wildignore+=NTUSER.DAT*,*.lnk " helps when in my Win7 %USERPROFILE%

"">>> configure
" need to be defined before it's loaded
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_mruf_max = 500
nnoremap <leader>bb :CtrlPBuffer<CR>

"">>> 1 invoke
packadd ctrlp.vim

"">> MRU
" $vfp/packs-cp/opt/mru/README.md
" $vimfiles/syntax/mru.vim
let MRU_Max_Entries = 1000
let MRU_Window_Height = 20
" - which is overriden by this:
" let MRU_Use_Current_Window = 1

nnoremap <leader>m :MRU
packadd mru

" $HOME/.vim_mru_files
" in GNU/Linux  :FZFMru
" :MRU \.md
" :MruRefresh
" in the normal MRU window
"  d = delete from list
"  Enter = open over current window
"  O = open split right
"  o = open split below
"  u = update

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

