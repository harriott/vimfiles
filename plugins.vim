"----------------------
" Plugin configurations
" ---------------------
" called by my vimrc.vim

call plug#begin()
" Plug 'simnalamburt/vim-mundo'
Plug 'PProvost/vim-ps1'
Plug 'airblade/vim-gitgutter'
Plug 'chikamichi/mediawiki.vim'
Plug 'christianrondeau/vim-base64'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'drmikehenry/vim-fontsize'
Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
Plug 'harriott/vim-buf'
Plug 'harriott/vim-table-mode'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'justinmk/vim-sneak'
Plug 'lilydjwg/colorizer'
Plug 'mattn/calendar-vim'
Plug 'mbbill/undotree'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tyru/open-browser.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/gitignore.vim'
Plug 'vim-scripts/LanguageTool'
Plug 'yegappan/mru'
call plug#end()
" PlugUpdate

" load in plugins from bundle directory:
execute pathogen#infect()

map g/ <Plug>(incsearch-stay)
map z/ <Plug>(incsearch-fuzzy-/)

" The NERD Commenter
let NERDSpaceDelims = 1

" Appearance
" ----------
let g:airline#extensions#whitespace#trailing_format = 'tr[%s]'
let g:airline#extensions#whitespace#mixed_indent_file_format = 'mif[%s]'

" start vim with colorizer's highlighting off:
let g:colorizer_startup = 0

" switch on DokuWiki comment highlighting (read by ./syntax/dokuwiki.vim)
let dokuwiki_comment=1

" vim-gitgutter:
let g:gitgutter_max_signs = 600
let g:gitgutter_enabled = 0
noremap <S-F9> :GitGutterToggle<CR>
inoremap <S-F9> <Esc>:GitGutterToggle<CR>

highlight ShowTrailingWhitespace ctermbg=White

let g:languagetool_jar='$HOME\LanguageTool-4.5\languagetool-commandline.jar'

let g:syntastic_mode_map = { "passive_filetypes": ["tex"] }
let g:syntastic_python_checkers = ['flake8']

" Colour Scheme
" ------------
" colorscheme gruvbox
" start with Solarized dark
colorscheme solarized
call togglebg#map("<S-F5>")  " reassign Solarized provided toggle for light/dark

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

" EasyMotion
" ----------
let g:EasyMotion_do_mapping = 0 " Disable default mappings
" <Leader>f{char} to move to {char}
map  <Leader><Leader>f <Plug>(easymotion-bd-f)
nmap <Leader><Leader>f <Plug>(easymotion-overwin-f)
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

" Files & buffers
" ---------------
noremap <silent> <F4> :BufExplorer<CR>

" open & focus on MiniBufExplorer
let g:miniBufExplorerAutoStart = 0
map <Leader>m :MBEOpen<cr>:MBEFocus<cr>
let g:miniBufExplCloseOnSelect = 1

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

" Recovery
" --------

" Mundo:
" nnoremap <S-F2> :MundoToggle<CR>

" Undotree:
nnoremap <S-F2> :UndotreeToggle<CR>

command! -bar -bang W :WriteBackup<bang>

