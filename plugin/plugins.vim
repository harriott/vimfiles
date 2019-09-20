"----------------------
" Plugin configurations
" ---------------------
" called by my vimrc.vim

map g/ <Plug>(incsearch-stay)
map z/ <Plug>(incsearch-fuzzy-/)

" The NERD Commenter
let NERDSpaceDelims = 1

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

" EasyMotion
" ----------
let g:EasyMotion_do_mapping = 0 " Disable default mappings
" <Leader>f{char} to move to {char}
map  <Leader><Leader>f <Plug>(easymotion-bd-f)
nmap <Leader><Leader>f <Plug>(easymotion-overwin-f)
" Move to word
map  <Leader><Leader>w <Plug>(easymotion-bd-w)
nmap <Leader><Leader>w <Plug>(easymotion-overwin-w)
" s{char}{char}{label}
nmap <leader>s <Plug>(easymotion-overwin-f2)

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

" Files & buffers
" ---------------
noremap <silent> <F4> :BufExplorer<CR>

" open & focus on MiniBufExplorer
let g:miniBufExplorerAutoStart = 0
map <Leader>m :MBEOpen<cr>:MBEFocus<cr>
let g:miniBufExplCloseOnSelect = 1

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

map <C-n> :NERDTreeToggle<CR>

