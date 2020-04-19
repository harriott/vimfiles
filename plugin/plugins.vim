"----------------------
" Plugin configurations
" ---------------------
" (keep this file in your plugin directory so's it's automatically sourced at startup)

" ALE
" ---
let g:airline#extensions#ale#enabled = 1

" Appearance
" ----------
let g:airline#extensions#whitespace#trailing_format = 'tr[%s]'
let g:airline#extensions#whitespace#mixed_indent_file_format = 'mif[%s]'

" Colorizer
let g:colorizer_disable_bufleave = 1

" switch on DokuWiki comment highlighting (read by ./syntax/dokuwiki.vim)
let dokuwiki_comment=1

" vim-gitgutter:
let g:gitgutter_max_signs = 600
let g:gitgutter_enabled = 0
noremap <leader>gg :GitGutterToggle<CR>

let g:syntastic_mode_map = { "passive_filetypes": ["tex"] }
let g:syntastic_python_checkers = ['flake8']

" Files
" -----
if has('nvim')
  function! QuitNoName()
    if len(getbufinfo({'buflisted':1})) == 1
      q!
    endif
  endfunction
  noremap <S-F10> :call QuitNoName() <CR>
  noremap <S-F22> :call QuitNoName() <CR>
  " noremap <S-F10> :GitGutterToggle<CR>
endif

" for CtrlP:
set wildignore+=NTUSER.DAT*,*.lnk
" - helps when in my Win7 %USERPROFILE%
let g:ctrlp_cmd = 'CtrlPMRU'

" for mru.vim:
let MRU_Max_Entries = 1000
let MRU_Window_Height = 15
" which is overriden by this:
let MRU_Use_Current_Window = 1

" for NERDTree:
noremap <C-n> :NERDTreeToggle<CR>
" Open it on buffer's directory:
noremap <F10> :cd %:p:h<CR>:NERDTreeCWD<CR>

