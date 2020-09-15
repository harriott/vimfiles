" vim: fdm=expr ft=vim.vimbuild:

" Joseph Harriott
" ---------------
"
" (keep this file in your plugin directory so's it's automatically sourced at startup)
" ------------------------------------------------------------------------------------

""> ale
" Arch package vim-ale
let g:ale_sign_column_always = 1

" moving to ALE errors in neomutt temporary files (eg mail)
autocmd BufRead,BufNewFile /tmp/neomutt-* nmap <silent> <C-j> <Plug>(ale_next_wrap)
autocmd BufRead,BufNewFile /tmp/neomutt-* nmap <silent> <C-k> <Plug>(ale_previous_wrap)

""> bufexplorer
if has('win32') | packadd bufexplorer | endif " Arch package vim-bufexplorer
noremap <silent> <leader>be :BufExplorer<CR>

"">> default mappings
"  <Leader>be - Opens BufExplorer
"  <Leader>bt - Toggles BufExplorer open or closed
"  <Leader>bs - Opens horizontally split window BufExplorer
"  <Leader>bv - Opens vertically split window BufExplorer

""> bufferize.vim
packadd bufferize.vim

""> calendar-vim
if has('win32') | packadd calendar-vim | endif " Arch package vim-calendar-vim
noremap <leader>yy :CalendarH<CR>

""> close-buffers.vim
"  quickly close all but current buffer
nnoremap <leader>bdd :Bdelete other<CR>
"  quickly close all but visible buffers
nnoremap <leader>bd  :Bdelete hidden<CR>

packadd close-buffers.vim

""> Colorizer
let g:colorizer_disable_bufleave = 1

""> colorizer
" optionally availabe

""> ctrlp.vim
if has('win32') | packadd ctrlp.vim | endif " Arch package vim-ctrlp

" for CtrlP:
set wildignore+=NTUSER.DAT*,*.lnk
" - helps when in my Win7 %USERPROFILE%
"
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_mruf_max = 500

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

""> gitignore.vim
packadd gitignore.vim

""> incsearch-fuzzy.vim
map g/ <Plug>(incsearch-fuzzy-stay)
map z/ <Plug>(incsearch-fuzzy-/)
packadd incsearch-fuzzy.vim

""> incsearch.vim
packadd incsearch.vim

""> jellybeans.vim
" added for neovim

""> limelight.vim
" not yet used

""> mediawiki.vim
if has('win32') | packadd mediawiki.vim | endif " Arch package vim-mediawiki

""> mru
let MRU_Max_Entries = 1000
let MRU_Window_Height = 15
" which is overriden by this:
let MRU_Use_Current_Window = 1
packadd mru

nnoremap <leader>m :MRU
inoremap <leader>m :MRU
vnoremap <leader>m :MRU

""> nerdcommenter
if has('win32') | packadd ctrlp.vim | endif " Arch package vim-nerdcommenter
let NERDSpaceDelims = 1

""> nerdtree
noremap <C-n> :NERDTreeToggle<CR>
packadd nerdtree

" Open it on buffer's directory:
nnoremap <F10> :cd %:p:h<CR>:NERDTreeCWD<CR>
inoremap <F10> <Esc>:cd %:p:h<CR>:NERDTreeCWD<CR>

""> open-browser.vim
" If it looks like URI, Open URI under cursor. Otherwise, Search word under cursor.
nmap <F6> <Plug>(openbrowser-smart-search)
" If it looks like URI, Open selected URI. Otherwise, Search selected word.
vmap <F6> <Plug>(openbrowser-smart-search)

packadd open-browser.vim

""> python_match.vim
packadd python_match.vim

""> quick-scope
" trigger in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

packadd quick-scope

""> SimpylFold
" Arch package vim-simpylfold
" optionally added in win32

""> supertab
if has('win32') | packadd supertab | endif " Arch package vim-supertab

""> syntastic
if has('unix')
  let g:syntastic_mode_map = { "mode": "passive" } " will only run on :SyntasticCheck
else
  " Arch package vim-syntastic
  let g:syntastic_mode_map = { "passive_filetypes": ["tex"] }
  " packadd syntastic
endif
let g:syntastic_python_checkers = ['flake8']

""> tabular
" Arch package vim-tabular
" optionally added in win32

""> targets.vim
packadd targets.vim

""> undotree
if has('win32') | packadd undotree | endif " Arch package vim-undotree

""> vim-airline
if has('win32') | packadd vim-airline | endif " Arch package vim-airline
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#whitespace#trailing_format = 'tr[%s]'
let g:airline#extensions#whitespace#mixed_indent_file_format = 'mif[%s]'
if has('win32') | packadd vim-airline-themes | endif " Arch package vim-airline-themes

""> vim-base64
packadd vim-base64

""> vim-better-whitespace
" added for neovim

""> vim-colors-solarized
" if has('win32') | packadd vim-colors-solarized | endif " Arch package vim-colors-solarized-git

""> vim-colors-tomorrow
packadd vim-colors-tomorrow

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

""> vim-easymotion
if has('win32') | packadd vim-easymotion | endif " Arch package vim-easymotion

let g:EasyMotion_do_mapping = 0 " Disable default mappings
" <Leader>f{char} to move to {char}
map  <Leader><Leader>f <Plug>(easymotion-bd-f)
nmap <Leader><Leader>f <Plug>(easymotion-overwin-f)
" Move to word
map  <Leader><Leader>w <Plug>(easymotion-bd-w)
nmap <Leader><Leader>w <Plug>(easymotion-overwin-w)
" s{char}{char}{label}
autocmd VimEnter * nmap s <Plug>(easymotion-overwin-f2)
"  (in an autocmd to be sure it works with Arch vim-colors-solarized)

" toggle searching functionality
nnoremap <leader>e :call EasyMotionSearchToggle()<cr>
let g:searchingwitheasymotion = 0
function! EasyMotionSearchToggle()
    if g:searchingwitheasymotion
        unmap /
        unmap n
        unmap N
        let g:searchingwitheasymotion = 0
        echo 'searching normally'
    else
        map / <Plug>(easymotion-sn)
        map n <Plug>(easymotion-next)
        map N <Plug>(easymotion-prev)
        let g:searchingwitheasymotion = 1
        echo 'searching with EasyMotion'
    endif
endfunction

""> vim-fontsize
packadd vim-fontsize

""> vim-fugitive
" Ggrep for last search
nnoremap <F3> :call StripStoreCurSel()<CR>:Ggrep -i "<C-R>s" <bar>cw

packadd vim-fugitive
"
""> vim-gfm-syntax
let g:gfm_syntax_enable_always = 0
let g:gfm_syntax_enable_filetypes = ['markdown.gfm'] " a subtype of markdown filetype
let g:gfm_syntax_emoji_conceal = 1
packadd vim-gfm-syntax

""> vim-gitgutter
" Arch package vim-gitgutter
let g:gitgutter_max_signs = 600
let g:gitgutter_enabled = 0
noremap <leader>gg :GitGutterToggle<CR>

""> vim-hexokinase
autocmd BufRead,BufNewFile /tmp/.nnn* :HexokinaseTurnOff

" enabled in my ~/.config/nvim/init.vim

""> vim-LanguageTool
if has('win32') | packadd vim-LanguageTool | endif " Arch package vim-LanguageTool

""> vim-matchit
if has('win32') | packadd vim-matchit | endif " Arch package vim-matchit

""> vim-mbsync
packadd vim-mbsync

""> vim-pandoc-syntax
packadd vim-pandoc-syntax

""> vim-picker
if has('unix')
  packadd fzf.vim
  nmap <unique> <leader>pe <Plug>(PickerEdit)
  nmap <unique> <leader>pb <Plug>(PickerBuffer)
endif

""> vim-ps1
packadd vim-ps1

""> vim-repeat
if has('win32') | packadd vim-repeat | endif " Arch package vim-repeat

""> vim-rhubarb
packadd vim-rhubarb

""> vim-ShowTrailingWhitespace
if has('win32') | packadd vim-ShowTrailingWhitespace | endif " unix only added in terminal

""> vim-startify
packadd vim-startify

""> vim-surround
if has('win32') | packadd vim-surround | endif " Arch package vim-surround

"">  vim-visual-star-search
packadd vim-visual-star-search

""> vim-wombat-scheme
" optionally added for neovim

