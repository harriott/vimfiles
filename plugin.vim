"----------------------
" Plugin configurations
" ---------------------
" called by my vimrc.vim

call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'haya14busa/incsearch.vim'
call plug#end()

" load in plugins from bundle directory:
execute pathogen#infect()

" Appearance
" ----------
" start vim with colorizer's highlighting off:
let g:colorizer_startup = 0

" switch on DokuWiki comment highlighting (read by ./syntax/dokuwiki.vim)
let dokuwiki_comment=1

" vim-gitgutter:
let g:gitgutter_max_signs = 600
let g:gitgutter_enabled = 0
noremap <F9> :GitGutterToggle<CR>
inoremap <F9> <Esc>:GitGutterToggle<CR>

" for Solarized:
set background=dark  " at this stage, assuming vim's in terminal
colorscheme solarized
call togglebg#map("<S-F5>")  " reassign the toggle light/dark

let g:languagetool_jar='$HOME\LanguageTool-2.4.1\languagetool-commandline.jar'

let g:syntastic_mode_map = { "passive_filetypes": ["tex"] }
let g:syntastic_python_checkers = ['flake8']

" EasyMotion
" ----------
let g:EasyMotion_do_mapping = 0 " Disable default mappings
" s{char}{char}{label}
nmap <Leader>s <Plug>(easymotion-overwin-f2)
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

" incsearch
" ---------
map g/ <Plug>(incsearch-stay)

" Files & buffers
" ---------------
noremap <silent> <F4> :BufExplorer<CR>

" remove these two mappings made in vim-buffing-wheel\plugin\buffingwheel.vim:
autocmd vimenter * silent unmap L|silent unmap H
" and replace with these mappings:
noremap <silent> + :<C-u>BuffingWheelNext<CR>
noremap <silent> - :<C-u>BuffingWheelPrevious<CR>

" quickly close all but current buffer:
nnoremap <S-F4> :BufOnly<CR>

" to help CtrlP when in my Win7 %USERPROFILE%:
set wildignore+=NTUSER.DAT*,*.lnk
let g:ctrlp_cmd = 'CtrlPMRU'

" for mru.vim:
let MRU_Max_Entries = 1000
let MRU_Window_Height = 15
" which is overriden by this:
let MRU_Use_Current_Window = 1

map <C-n> :NERDTreeToggle<CR>

command! -bar -bang W :WriteBackup<bang>

" ShowTrailingWhitespace
" ----------------------
highlight ShowTrailingWhitespace ctermbg=White

" Toggle ShowTrailingWhitespace locally (using w because t's taken by table-mode):
nnoremap <silent> <Leader>w :<C-u>call ShowTrailingWhitespace#Toggle(0)<Bar>echo (ShowTrailingWhitespace#IsSet() ? 'Show trailing whitespace' : 'Not showing trailing whitespace')<CR>

