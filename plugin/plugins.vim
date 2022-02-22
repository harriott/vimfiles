
" Joseph Harriott - Tue 15 Feb 2022

" $vimfiles/plugin/plugins.vim

" find . -mindepth 3 -maxdepth 3 -type d | sort | tr '\n' ' ' | sed 's#./packs-##g' | xcol cp/opt/ unix/opt/; echo

""> ALE
" :Bufferize ALEInfo  " shows settings for the filetype
" :h ale-languagetool-options

" Enabled?
"  :let ale_enabled
"  airline shows an orange category at right end when ALE is enabled
"  filetypes might have  b:ale_enabled = 0

" Arch's  languagetool  is found
let g:ale_echo_msg_format = '%linter% %code% %s'
" let g:ale_linters = {'email': ['languagetool'], 'text': ['languagetool']}
let g:ale_linters_explicit = 1  " turns off all except explicity defined linters
let g:ale_sign_column_always = 1
packadd ale

" moving to ALE errors
noremap <silent> <C-j> <Plug>(ale_next_wrap)
noremap <silent> <C-k> <Plug>(ale_previous_wrap)

"">> toggle ALE for buffer
" noremap <leader>aa :ALEToggleBuffer<CR>  " doesn't report status
noremap <leader>aa :call ALEToggleBufferShow()<cr>
function! ALEToggleBufferShow()
  if b:ale_enabled
    ALEDisableBuffer
  else
    ALEEnableBuffer
  endif
let b:ale_enabled
endfunction

""> bufexplorer
packadd bufexplorer
noremap <silent> <leader>be :BufExplorer<CR>

"">> default mappings
"  <Leader>be - Opens BufExplorer
"  <Leader>bt - Toggles BufExplorer open or closed
"  <Leader>bs - Opens horizontally split window BufExplorer
"  <Leader>bv - Opens vertically split window BufExplorer

""> bufferize.vim
packadd bufferize.vim

""> calendar-vim
packadd calendar-vim
noremap <leader>yy :CalendarH<CR>

""> cfilter
packadd cfilter

""> characterize.vim
packadd vim-characterize

""> close-buffers.vim
"  quickly close all but current buffer
nnoremap <leader>bdd :Bdelete other<CR>
"  quickly close all but visible buffers
nnoremap <leader>bd  :Bdelete hidden<CR>

packadd close-buffers.vim

""> Colorizer
let g:colorizer_disable_bufleave = 1

""> colorizer
" optionally available

""> csv.vim
" $vimfiles/pack/packs-cp/opt/csv.vim/ftdetect/csv.vim
" H -> go left
" L -> go right
" column hiding
"  :VertFold  " hides from left to current
"  :VertFold!  " unhide
" :CSVTabularize  " open as table in new buffer
" line hiding
"  <cr>  " unhide
"  <enter>  " hides away non-matching
packadd csv.vim

""> ctrlp.vim
" $HOME/.cache/ctrlp/mru/cache.txt
" <c-f> and <c-b> to cycle between modes
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

""> dsf
packadd dsf.vim
" csf -> change surrounding function
" daf -> delete a function call
" dif -> delete inner function call
" dsf -> delete surrounding function
" dsnf -> delete next surrounding function

""> Fern
noremap <C-e> :cd %:p:h<CR>:Fern . -reveal=%<CR>
packadd fern.vim
" <c-h>  in
" <c-m>  out
" +  vim-buffing-wheel out
" E  open:side
" x  open:system
" t  open:tabedit

""> fern-git-status
packadd fern-git-status.vim

""> fern-preview.vim
augroup fern-settings
  autocmd!
  autocmd FileType fern call s:fern_settings()
augroup END
function! s:fern_settings() abort
  nmap <silent> <buffer> p     <Plug>(fern-action-preview:toggle)
  nmap <silent> <buffer> <C-d> <Plug>(fern-action-preview:scroll:down:half)
  nmap <silent> <buffer> <C-u> <Plug>(fern-action-preview:scroll:up:half)
endfunction
packadd fern-preview.vim

""> fern-renderer-nerdfont.vim
let g:fern#renderer = "nerdfont"
packadd fern-renderer-nerdfont.vim

""> Flog
" :Flog
" :Floggit
packadd vim-flog

""> fzf.vim
if has('unix')

  " in ~/.vim: rg '>j' --no-ignore

  if hostname() == 'i34G1TU02'
    nnoremap <leader>j :Files /mnt/BX200/Dropbox/JH<CR>
  elseif hostname() == 'LIP120s81A4'
    nnoremap <leader>j :Files /mnt/SDEP128G/Dropbox/JH<CR>
  elseif hostname() == 'sbMb'
    nnoremap <leader>j :Files /mnt/SD480GSSDPlus/Dropbox/JH<CR>
  endif

  packadd fzf.vim

  nnoremap <leader>B :BLines<CR>
  nnoremap <leader>L :Lines<CR>
  nnoremap <leader>bf :Buffers<CR>
  nnoremap <F8> :History:<CR>
  inoremap <F8> <Esc>:History:<CR>
  vnoremap <F8> <Esc>:History:<CR>
  nnoremap <F9> :History/<CR>
  inoremap <F9> <Esc>:History/<CR>
  vnoremap <F9> <Esc>:History/<CR>

endif

""> gitignore.vim
packadd gitignore.vim

""> illuminate
packadd vim-illuminate

" toggle illuminate more visible
nnoremap <silent><leader>it :call IlluminateMoreToggle()<cr>
let g:illuminatedWordMoreVisible = 0
function! IlluminateMoreToggle()
  if g:illuminatedWordMoreVisible
    hi link illuminatedWord CursorLine
    let g:illuminatedWordMoreVisible = 0
  else
    hi link illuminatedWord buildN
    let g:illuminatedWordMoreVisible = 1
  endif
hi illuminatedWord
endfunction

""> incsearch-fuzzy.vim
map z/ <Plug>(incsearch-fuzzy-stay)
packadd incsearch-fuzzy.vim

""> incsearch.vim
" :h incsearch.vim
map g/ <Plug>(incsearch-stay)
packadd incsearch.vim  " needed for  incsearch-fuzzy.vim

""> jellybeans.vim
" added for neovim

""> limelight.vim
" not yet used

""> ListToggle
packadd listtoggle
let g:lt_location_list_toggle_map = '<leader>ll'
let g:lt_height = 15

""> mediawiki.vim
packadd mediawiki.vim

""> MRU
" $HOME/.vim_mru_files
let MRU_Max_Entries = 1000
if has('unix')
  let MRU_Window_Height = 20
else
  let MRU_Window_Height = 30
endif
" - which is overriden by this:
" let MRU_Use_Current_Window = 1

if has('unix')
  nnoremap <leader>m :MRU
  " - allowing for a qualifying regex
else
  nnoremap <leader>m :MRU<CR>
  nnoremap <leader>mc :call MRU_highlighted('\.cls')<CR>:se hls<CR>
  nnoremap <leader>mm :call MRU_highlighted('\.md' )<CR>:se hls<CR>
  nnoremap <leader>ml :call MRU_highlighted('\.pl' )<CR>:se hls<CR>
  nnoremap <leader>mp :call MRU_highlighted('\.ps1')<CR>:se hls<CR>
  nnoremap <leader>ms :call MRU_highlighted('\.sh')<CR>:se hls<CR>
  nnoremap <leader>mt :call MRU_highlighted('\.txt')<CR>:se hls<CR>
  nnoremap <leader>mv :call MRU_highlighted('\.vim')<CR>:se hls<CR>
  nnoremap <leader>mx :call MRU_highlighted('\.tex')<CR>:se hls<CR>
  nnoremap <leader>my :call MRU_highlighted('\.py')<CR>:se hls<CR>
  function! MRU_highlighted(filetype)
    let @/ = a:filetype
    MRU
  endfunction
  " - because a qualified MRU fails to time-sort
endif
packadd mru

" in GNU/Linux  :FZFMru
" :MRU \.md
" :MruRefresh
" in the normal MRU window
"  Enter = open over current window
"  O = open split right
"  o = open split below
"  u = update

""> MTA
" if has('unix')
  packadd MatchTagAlways
" endif  " because requires python

""> nerdfont.vim
packadd nerdfont.vim

""> nerdcommenter
packadd nerdcommenter
let NERDSpaceDelims = 1
" <leader>c<space> -> NERDCommenterToggle

""> NERDTree
"h NERDTree
let NERDTreeHijackNetrw = 0  " liberate  e.
noremap <C-n> :NERDTreeToggle<CR>

" loaded in  $vimfiles/after/plugin/plugins.vim

" Open it on buffer's directory:
nnoremap <F10> :cd %:p:h<CR>:NERDTreeCWD<CR>
inoremap <F10> <Esc>:cd %:p:h<CR>:NERDTreeCWD<CR>

""> nerdtree-git-plugin
packadd nerdtree-git-plugin

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
" packadd SimpylFold
" Python folding

""> supertab
packadd supertab

""> syntastic
if has('unix')
  let g:syntastic_mode_map = { "mode": "passive" } " will only run on :SyntasticCheck
else
  let g:syntastic_mode_map = { "passive_filetypes": ["tex"] }
  " packadd syntastic
endif
let g:syntastic_python_checkers = ['flake8']

""> tabular
" packadd tabular

""> Tagbar
" add this for relevant filetypes:  nnoremap <silent> <buffer> <leader>ct :TagbarToggle<CR>
" h tagbar-contents
" h tagbar-ignore
packadd tagbar

""> targets.vim
packadd targets.vim

""> thesaurus_query.vim
let g:tq_map_keys=0
" let g:tq_enabled_backends=["openoffice_en","mthesaur_txt","cnrtl_fr","synonymo_fr"]
let g:tq_enabled_backends=["openoffice_en","mthesaur_txt"]
if has('win32')
  let g:tq_mthesaur_file="~/vimfiles/thesaurus/mthesaur.txt"
  " These don't work:
  " let g:tq_openoffice_en_file="c:\Program Files\LibreOffice\share\extensions\dict-en\th_en_US_v2"
  " let g:tq_openoffice_en_file="~\vimfiles\thesaurus\MyThes-1.0\th_en_US_new"
endif
let g:tq_language=['en', 'fr']
autocmd BufRead,BufNewFile */France/Scratch/* let b:tq_language=['fr']
nnoremap <leader>th :ThesaurusQueryReplaceCurrentWord<CR>
packadd thesaurus_query.vim

""> undotree
packadd undotree

""> vim-airline
let g:airline_powerline_fonts = 1
packadd vim-airline
let airline#extensions#ale#show_line_numbers = 0
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#fzf#enabled = 1  " adds line-number/total lines
let g:airline#extensions#whitespace#trailing_format = 'tr[%s]'
let g:airline#extensions#whitespace#mixed_indent_file_format = 'mif[%s]'
packadd vim-airline-themes

""> vim-asterisk
packadd vim-asterisk
map *  <Plug>(asterisk-*)
map #  <Plug>(asterisk-#)
map g* <Plug>(asterisk-g*)  " rg --no-ignore ' g\* '
map g# <Plug>(asterisk-g#)  " rg --no-ignore ' g# '
map z* <Plug>(asterisk-z*)  " rg --no-ignore ' z\* '
" z*cgn  make change to this first match, escape, . does same on next match
map z# <Plug>(asterisk-z#)  " rg --no-ignore ' z# '

""> vim-base64
packadd vim-base64

""> vim-bbcode
" $vimfiles/pack/packs-cp/opt/vim-bbcode/example.bbcode
packadd vim-bbcode

""> vim-better-whitespace
" added for neovim

""> vim-buffing-wheel
packadd vim-buffing-wheel
" - + X

""> vim-bufkill
" :BD
packadd vim-bufkill

""> vim-colors-solarized
" packadd vim-colors-solarized

""> vim-colors-tomorrow
packadd vim-colors-tomorrow

""> vim-dirvish
" h dirvish
" takes over :e.

" in dirvish
"  -       -> out
"  <enter> -> in
"  g?      -> dirvish-mappings
"  gq      -> quit
"  preview left
"   p
"    Ctrl-n -> next
"    Ctrl-p -> previous

packadd vim-dirvish

""> vim-dirvish-git
if has('unix')
  packadd vim-dirvish-git
endif

""> vim-dokuwiki
" nvim -O $IThandy/encoding/vi/vim-dokuwiki/syntax/dokuwiki.vim $vimfiles/syntax/dokuwiki.vim

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
packadd vim-easymotion

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
" <Leader><Leader>+ -> bigger font
" <Leader><Leader>- -> smaller font
" <Leader><Leader>0 -> default font size

""> vim-fugitive
" configurations
"  let g:airline_symbols.notexists
"  let g:airline_symbols.dirty
let g:airline#extensions#branch#vcs_checks = ['untracked'] " because 'dirty' isn't accurate...

" Ggrep for last search
nnoremap <F3> :call StripStoreCurSel()<CR>:Ggrep -i "<C-R>s" <bar>cw
" gives bogus filenames if they contain accented characters

" keystrokes
"  ce  " amend the last commit without editing the message
"  U   " unstages all
"  :GBrowse
"  :Git pull

packadd vim-fugitive

""> vim-gfm-syntax
" $vimfiles/pack/packs-cp/opt/vim-gfm-syntax/autoload/gfm_syntax/emoji.vim
let g:gfm_syntax_enable_always = 0
let g:gfm_syntax_enable_filetypes = ['markdown.gfm'] " a subtype of markdown filetype
let g:gfm_syntax_emoji_conceal = 1
autocmd BufRead,BufNew,BufNewFile *.gfm setlocal ft=markdown.gfm  " or vim: ft=markdown.gfm:
packadd vim-gfm-syntax

""> vim-gitgutter
let g:gitgutter_max_signs = 600
let g:gitgutter_enabled = 0
packadd vim-gitgutter

"">> toggle
let g:GGF = 0
" $vimfiles/after/plugin/plugins.vim

""> vim-hexokinase
" enabled in my ~/.config/nvim/init.vim
  autocmd BufRead,BufNewFile /tmp/.nnn* :HexokinaseTurnOff

let g:Hexokinase_highlighters = ['foregroundfull']

""> vim-hjson
packadd vim-hjson

" ""> vim-interestingwords
" " \k -> new highlight
" " \K -> all off
" packadd vim-interestingwords
" let g:interestingWordsRandomiseColors = 1

" ""> vim-LanguageTool
" nnoremap <leader>LT :call LanguageTool_lopen() <CR>
" function! LanguageTool_lopen()
"   LanguageToolCheck
"   lopen
" endfunction

" " :LanguageToolClear
" let g:languagetool_win_height = -1
" " needs a  g:languagetool_*  defined
" packadd vim-LanguageTool " then can  :h LanguageTool
" " now preferring  vim-langtool

""> vim-langtool
nnoremap <leader>lt :LangTool <bar> lopen 15 <CR>
packadd vim-langtool  " can then  :h langtool
" needs  g:langtool_jar  defined

" doesn't highlight anything
" move to errors:  <cr>  :lne  :lpr

" ""> vim-loclist-follow
" let g:loclist_follow = 1
" packadd vim-loclist-follow

""> vim match-up
packadd vim-matchup

""> vim-mbsync
packadd vim-mbsync

""> vim-open-url
packadd vim-open-url

""> vim-pandoc-syntax
packadd vim-pandoc-syntax

""> vim-peekaboo
packadd vim-peekaboo

""> vim-picker
if has('unix')
  packadd vim-picker
  nmap <unique> <leader>pe <Plug>(PickerEdit)
  nmap <unique> <leader>pb <Plug>(PickerBuffer)
endif

""> vim-ps1
packadd vim-ps1

""> vim-repeat
packadd vim-repeat

""> vim-rhubarb
packadd vim-rhubarb

""> vim-ShowTrailingWhitespace
if has('win32') | packadd vim-ingo-library | packadd vim-ShowTrailingWhitespace | endif
" unix only added in terminal

""> vim-startify
packadd vim-startify
" Startify

""> vim-surround
packadd vim-surround

""> vim-textmanip
packadd vim-textmanip
xmap <c-down> <Plug>(textmanip-move-down)
xmap <c-up> <Plug>(textmanip-move-up)
xmap <c-left> <Plug>(textmanip-move-left)
xmap <c-right> <Plug>(textmanip-move-right)

" ""> vim-visual-star-search
" packadd vim-visual-star-search
" " now preferring  vim-asterisk

""> vim-wombat-scheme
" optionally added for neovim

