" vim: fdm=expr ft=vim.vimbuild:

" Joseph Harriott
" ---------------
"
" (keep this file in your plugin directory so's it's automatically sourced at startup)
" ------------------------------------------------------------------------------------

""> bufexplorer
if has('win32') | packadd bufexplorer | endif
noremap <silent> <leader>be :BufExplorer<CR>

"">> default mappings
"  <Leader>be - Opens BufExplorer
"  <Leader>bt - Toggles BufExplorer open or closed
"  <Leader>bs - Opens horizontally split window BufExplorer
"  <Leader>bv - Opens vertically split window BufExplorer

""> calendar-vim
if has('win32') | packadd calendar-vim | endif
noremap <leader>yy :CalendarH<CR>

""> close-buffers.vim
"  quickly close all but current buffer
nnoremap <leader>bdd :Bdelete other<CR>
"  quickly close all but visible buffers
nnoremap <leader>bd  :Bdelete hidden<CR>

""> Colorizer
let g:colorizer_disable_bufleave = 1

""> fzf.vim
if has('unix')
  packadd fzf.vim
  nnoremap <F8> :History:<CR>
  inoremap <F8> <Esc>:History:<CR>
  vnoremap <F8> <Esc>:History:<CR>
  nnoremap <F9> :History/<CR>
  inoremap <F9> <Esc>:History/<CR>
  vnoremap <F9> <Esc>:History/<CR>
endif

""> mru
packadd mru
let MRU_Max_Entries = 1000
let MRU_Window_Height = 15
" which is overriden by this:
let MRU_Use_Current_Window = 1
nnoremap <leader>m :MRU
inoremap <leader>m :MRU
vnoremap <leader>m :MRU

""> nerdcommenter
let NERDSpaceDelims = 1

""> syntastic
if has('unix')
  let g:syntastic_mode_map = { "mode": "passive" } " will only run on :SyntasticCheck
else
  let g:syntastic_mode_map = { "passive_filetypes": ["tex"] }
  " packadd syntastic
endif
let g:syntastic_python_checkers = ['flake8']

""> vim-airline
if has('win32') | packadd vim-airline | endif
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#whitespace#trailing_format = 'tr[%s]'
let g:airline#extensions#whitespace#mixed_indent_file_format = 'mif[%s]'
if has('win32') | packadd vim-airline-themes | endif

""> vim-easy-align
packadd vim-easy-align
nmap gA <Plug>(EasyAlign)
xmap gA <Plug>(EasyAlign)

" the following are just as easily entered as regex's
let g:easy_align_delimiters = {
    \ 'b': { 'pattern': '∙' },
    \ 'm': { 'pattern': ' - ' },
    \ '>': { 'pattern': '>>\|=>\|>' }
    \ }

""> vim-gitgutter
let g:gitgutter_max_signs = 600
let g:gitgutter_enabled = 0
noremap <leader>gg :GitGutterToggle<CR>

""> vim-gfm-syntax
packadd vim-gfm-syntax
let g:gfm_syntax_enable_always = 0
let g:gfm_syntax_enable_filetypes = ['markdown.gfm'] " a subtype of markdown filetype
let g:gfm_syntax_emoji_conceal = 1

""> vim-hexokinase
autocmd BufRead,BufNewFile /tmp/.nnn* :HexokinaseTurnOff

" enabled in my ~/.config/nvim/init.vim

""> vim-picker
if has('unix')
  packadd fzf.vim
  nmap <unique> <leader>pe <Plug>(PickerEdit)
  nmap <unique> <leader>pb <Plug>(PickerBuffer)
endif

