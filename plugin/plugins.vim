"----------------------
" Plugin configurations
" ---------------------
" (keep this file in your plugin directory so's it's automatically sourced at startup)

" Appearance
" ----------
let g:airline#extensions#whitespace#trailing_format = 'tr[%s]'
let g:airline#extensions#whitespace#mixed_indent_file_format = 'mif[%s]'

" switch on DokuWiki comment highlighting (read by ./syntax/dokuwiki.vim)
let dokuwiki_comment=1

" vim-gitgutter:
let g:gitgutter_max_signs = 600
let g:gitgutter_enabled = 0
noremap <S-F9> :GitGutterToggle<CR>
inoremap <S-F9> <Esc>:GitGutterToggle<CR>

let g:languagetool_jar='$HOME\LanguageTool-4.5\languagetool-commandline.jar'

let g:syntastic_mode_map = { "passive_filetypes": ["tex"] }
let g:syntastic_python_checkers = ['flake8']

" Colour Scheme
" ------------
" colorscheme gruvbox
"
" start with Solarized dark
colorscheme solarized
autocmd VimEnter * call togglebg#map("<S-F5>")  " reassign Solarized provided toggle for light/dark
" (in an autocmd to be sure it works with Arch vim-colors-solarized)

" colour scheme toggle
nnoremap <C-F5> :call GruvboxSolarized()<cr>
" assume starting with Solarized:
let g:gruvboxScheme = 0
" toggle with gruvbox
function! GruvboxSolarized()
  if g:gruvboxScheme
    colorscheme solarized
    let g:gruvboxScheme = 0
  else
    colorscheme gruvbox
    let g:gruvboxScheme = 1
  endif
  redraw
  colorscheme
endfunction

" vim-better-whitespace
highlight ExtraWhitespace ctermbg=white
let g:better_whitespace_guicolor='white' " doesn't work if called from .gvimrc or later
let g:better_whitespace_operator=''

" Files & buffers
" ---------------
noremap <silent> <F4> :BufExplorer<CR>

" quickly close all but current buffer:
nnoremap <S-F4> :CloseOtherBuffers<CR>
" quickly close all but visible buffers:
nnoremap <C-F4> :CloseHiddenBuffers<CR>

" to help CtrlP when in my Win7 %USERPROFILE%:
set wildignore+=NTUSER.DAT*,*.lnk
let g:ctrlp_cmd = 'CtrlPMRU'

" for mru.vim:
let MRU_Max_Entries = 1000
let MRU_Window_Height = 15
" which is overriden by this:
let MRU_Use_Current_Window = 1

" NERDTree:
map <C-n> :NERDTreeToggle<CR>
" Open it on buffer's directory:
map <F10> :cd %:p:h<CR>:NERDTreeCWD<CR>

