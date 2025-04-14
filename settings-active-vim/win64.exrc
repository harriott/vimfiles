" vim: se nowrap:

" generated from within Vim by  :call Grab_exrc()

if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <S-F2> <esc>
inoremap <F3> <esc>
inoremap <F2> <esc>:wa<cr>
inoremap <F5> <esc>:wa<cr>:e<cr>
imap <C-G>S <Plug>ISurround
imap <C-G>s <Plug>Isurround
imap <C-D> <Plug>(fzf-dictionary-open)
inoremap <Plug>(fzf-dictionary-open) <Cmd>call fzf#dictionary#open()<cr>
inoremap <S-F3> <esc>:Commits<cr>
inoremap <C-F3> <esc>:BCommits<cr>
inoremap <F9> <esc>:History/<cr>
inoremap <F8> <esc>:History:<cr>
inoremap <F1> <esc>:Buffers<cr>
inoremap <silent> <Plug>(fzf-maps-i) <cr>:call fzf#vim#maps('i', 0)<cr>
inoremap <expr> <Plug>(fzf-complete-buffer-line) fzf#vim#complete#buffer_line()
inoremap <expr> <Plug>(fzf-complete-line) fzf#vim#complete#line()
inoremap <expr> <Plug>(fzf-complete-file-ag) fzf#vim#complete#path('ag -l -g ""')
inoremap <expr> <Plug>(fzf-complete-file) fzf#vim#complete#path('dir /s/b/a:-d')
inoremap <expr> <Plug>(fzf-complete-path) fzf#vim#complete#path('dir /s/b')
inoremap <expr> <Plug>(fzf-complete-word) fzf#vim#complete#word()
inoremap <F10> <esc>:cd %:p:h<cr>:NERDTreeCWD<cr>
inoremap <silent> <Plug>NERDCommenterInsert <cr><cr>:call nerdcommenter#Comment('i', "Insert")<cr>
inoremap <silent> <Plug>(peekaboo) <cr><cr>:<cr>call peekaboo#aboo()<cr>
inoremap <silent> <Plug>(ale_complete) <cr><cr>:ALEComplete<cr>
imap <silent> <C-G>% <Plug>(matchup-c_g%)
inoremap <silent> <Plug>(matchup-c_g%) <cr><cr>:call matchup#motion#insert_mode()<cr>
inoremap <C-X><C-X> <cr><cr>
inoremap <F11> <esc><F11>
inoremap <F4> <esc>:call VimWriteClose()<cr>
cnoremap <expr> <C-H> has("gui_running") ? "\<cr>\<cr>:promptrepl\<cr>" : "\<cr>"
inoremap <expr> <C-H> has("gui_running") ? "\<cr>\<cr>:promptrepl\<cr>" : "\<cr>"
cnoremap <expr> <C-F> has("gui_running") ? "\<cr>\<cr>:promptfind\<cr>" : "\<cr>\<cr>/"
inoremap <expr> <C-F> has("gui_running") ? "\<cr>\<cr>:promptfind\<cr>" : "\<cr>\<cr>/"
cnoremap <C-F4> <cr><cr>c
inoremap <C-F4> <cr><cr>c
cnoremap <C-Tab> <cr><cr>w
inoremap <C-Tab> <cr><cr>w
cnoremap <C-A> <cr>gggH<cr>G
inoremap <C-A> <cr>gg<cr>gH<cr>G
cnoremap <M-Space> <cr>:simalt ~<cr>
inoremap <M-Space> <cr>:simalt ~<cr>
inoremap <C-Y> <cr><cr>
inoremap <C-Z> <cr>u
inoremap <C-S> <esc>:update<cr>gi
cmap <S-Insert> <cr>+
cmap <C-V> <cr>+
inoremap <C-U> <cr>u<cr>
imap <S-Insert> <cr><cr>
vnoremap <cr> "+y
noremap <cr> :cd %:p:h<cr>:Fern . -reveal=%<cr>
nnoremap <cr> <cr>h
nnoremap <NL> <cr>j
nnoremap <cr> <cr>k
nnoremap <cr> <cr>l
noremap <cr> :NERDTreeToggle<cr>
map <cr> <Plug>(ctrlp)
noremap <cr> <cr><cr>
vnoremap <cr> <cr>:update<cr>
nnoremap <cr> :update<cr>
onoremap <cr> :update<cr>
nmap <cr><cr> "+gP
omap <cr><cr> "+gP
vnoremap <cr> "+x
noremap <cr> <cr>
noremap <cr> u
nnoremap <cr>  za
nnoremap ! /
map # <Plug>(asterisk-#)
omap <silent> % <Ignore><Plug>(matchup-%)
xmap <silent> % <Plug>(matchup-%)
nmap <silent> % <Plug>(matchup-%)
map * <Plug>(asterisk-*)
onoremap , :
xnoremap , :
nnoremap , :
onoremap : ,
xnoremap : ,
nnoremap : ,
nnoremap =h :echo 'you just hit =h'<cr>
nnoremap @: <Nop>
nnoremap @@ @:
xnoremap <silent> @(targets) :<cr>call targets#do()<cr>
onoremap <silent> @(targets) :<cr>call targets#do()<cr>
xmap <expr> A targets#e('o', 'A', 'A')
omap <expr> A targets#e('o', 'A', 'A')
inoremap ² <esc>~a
cnoremap   <cr>:simalt ~<cr>
inoremap   <cr>:simalt ~<cr>
xmap F <Plug>(QuickScopeF)
omap F <Plug>(QuickScopeF)
nmap F <Plug>(QuickScopeF)
nnoremap <silent> <expr> H context#util#map_H()
xmap <expr> I targets#e('o', 'I', 'I')
omap <expr> I targets#e('o', 'I', 'I')
noremap Q <Nop>
xmap S <Plug>VSurround
xmap T <Plug>(QuickScopeT)
omap T <Plug>(QuickScopeT)
nmap T <Plug>(QuickScopeT)
omap <silent> [% <Plug>(matchup-[%)
xmap <silent> [% <Plug>(matchup-[%)
nmap <silent> [% <Plug>(matchup-[%)
noremap \gg :call GitGutterFocus()<cr>
nnoremap \d :cd %:p:h<cr>:pwd<cr>
nnoremap \\t :sp term://pwsh<cr>
nnoremap \<F12> :call OpenInEmacs()<cr>
nnoremap \- :Hexplore<cr>
vnoremap <silent> \<F11> <esc>:echo strftime('%c',getftime(expand('%')))<cr>
nnoremap <silent> \<F11> :echo strftime('%c',getftime(expand('%')))<cr>
nnoremap \f :let@f=@%<cr>
vnoremap \vs <esc>:call ConvertSearchForVisualSelection()<cr>
nnoremap \vs :call ConvertSearchForVisualSelection()<cr>
nnoremap \pt :call ParenthsToggle()<cr>
nnoremap \\q :call VimgrepQRs()<cr>
nnoremap \vg :call VimgrepSelection()<cr>
nnoremap \is :call IncSearchToggle()<cr>
nnoremap \: :call TweakLS()<cr>
vnoremap \n <esc>:nohlsearch<cr>
nnoremap \n :nohlsearch<cr>
nnoremap \c= :windo set nowfh <cr>
nnoremap \<Right> 10<cr>>
nnoremap \<Left> 10<cr><cr><
nnoremap \<Up> 5<cr>+
nnoremap \<Down> 5<cr>-
nnoremap \\o :write<cr>|close<cr>
nnoremap \\v :vsplit<cr>
nnoremap \\h :split<cr>
nnoremap \x <cr>c
nnoremap \<F5> :syntax sync fromstart<cr>
nnoremap <silent> \rn :set rnu! rnu? <cr>
nnoremap <silent> \\l :set cul! cul? <cr>
nnoremap <silent> \\c :set cuc! cuc? <cr>
nnoremap \zz :let &scrolloff=999-&scrolloff<cr>
noremap \\ll :set list! list? <cr>
nnoremap \\<F5> :call clearmatches()<cr>
nnoremap \( :call UnicodePercent()<cr>
nnoremap \9 :call PercentUnicode()<cr>
noremap \yp :lan tim English_United Kingdom<cr>:exe ":norm a".strftime('%a %d %b %Y')<cr>:lan tim French<cr>
vnoremap \_ <esc>:call DateFr()<cr>
nnoremap \_ :call DateFr()<cr>
nnoremap \\2 :call ClearMAS()<cr>
nnoremap \é :call ClearFancyGlyphs()<cr>
nnoremap \U :Underline
nnoremap \\( :s/\m\[.\{-}]//g<cr>
noremap <silent> \be :BufExplorer<cr>
nnoremap \j :Files $DJH<cr>
nnoremap \L :Lines<cr>
nnoremap \B :BLines<cr>
nnoremap <silent> \it :call IlluminateMoreToggle()<cr>
nmap \\f <Plug>(easymotion-overwin-f)
map \\ <Plug>(easymotion-prefix)
nmap \ca <Plug>NERDCommenterAltDelims
xmap \cu <Plug>NERDCommenterUncomment
nmap \cu <Plug>NERDCommenterUncomment
xmap \cb <Plug>NERDCommenterAlignBoth
nmap \cb <Plug>NERDCommenterAlignBoth
xmap \cl <Plug>NERDCommenterAlignLeft
nmap \cl <Plug>NERDCommenterAlignLeft
nmap \cA <Plug>NERDCommenterAppend
xmap \cy <Plug>NERDCommenterYank
nmap \cy <Plug>NERDCommenterYank
xmap \cs <Plug>NERDCommenterSexy
nmap \cs <Plug>NERDCommenterSexy
xmap \ci <Plug>NERDCommenterInvert
nmap \ci <Plug>NERDCommenterInvert
nmap \c$ <Plug>NERDCommenterToEOL
xmap \cn <Plug>NERDCommenterNested
nmap \cn <Plug>NERDCommenterNested
xmap \cm <Plug>NERDCommenterMinimal
nmap \cm <Plug>NERDCommenterMinimal
xmap \c<cr>  <Plug>NERDCommenterToggle
nmap \c<cr>  <Plug>NERDCommenterToggle
xmap \cc <Plug>NERDCommenterComment
nmap \cc <Plug>NERDCommenterComment
nnoremap <silent> \q :QToggle<cr>
nnoremap <silent> \l :LToggle<cr>
noremap <silent> \\d :BD<cr>:bp<cr>
nmap <silent> \ba <Plug>BufKillAlt
nmap <silent> \bundo <Plug>BufKillUndo
nmap <silent> \!bw <Plug>BufKillBangBw
nmap <silent> \bw <Plug>BufKillBw
nmap <silent> \!bd <Plug>BufKillBangBd
nmap <silent> \!bun <Plug>BufKillBangBun
nmap <silent> \bun <Plug>BufKillBun
nmap <silent> \bf <Plug>BufKillForward
nnoremap \bb :CtrlPBuffer<cr>
nmap \\n <Plug>MarkClear
nmap \\m <Plug>MarkSet
nmap \caL <Plug>CalendarH
nmap \cal <Plug>CalendarV
noremap \C :CalendarH<cr>
nmap <silent> \fs <Plug>FontsizeBegin
nmap <silent> \\0 <Plug>FontsizeDefault
nmap <silent> \\- <Plug>FontsizeDec
nmap <silent> \\+ <Plug>FontsizeInc
nmap <silent> \\= <Plug>FontsizeBegin
nnoremap \LT :call LanguageTool_lopen() <cr>
nnoremap \lt :LangTool <cr>| lopen 15 <cr>
nnoremap \wt :ThesaurusQueryReplaceCurrentWord<cr>
nnoremap \ww :<cr>MatchupWhereAmI??<cr>
nmap \p <Plug>(Prettier)
nnoremap \atob/ :%s/\v()/\=base64#decode(submatch(1))/<Home><Right><Right><Right><Right><Right><Right>
nnoremap \btoa/ :%s/\v()/\=base64#encode(submatch(1))/<Home><Right><Right><Right><Right><Right><Right>
vnoremap <silent> \btoa :<cr>call base64#v_btoa()<cr>
vnoremap <silent> \atob :<cr>call base64#v_atob()<cr>
nnoremap \bd :Bdelete hidden<cr>
nnoremap \bdd :Bdelete other<cr>
nnoremap \m :MRU
nnoremap \<F4> :Bdelete other<cr>:sleep<cr>:call VimWriteClose()<cr>
omap <silent> ]% <Plug>(matchup-]%)
xmap <silent> ]% <Plug>(matchup-]%)
nmap <silent> ]% <Plug>(matchup-]%)
xmap <expr> a targets#e('o', 'a', 'a')
omap <expr> a targets#e('o', 'a', 'a')
omap <silent> a% <Plug>(matchup-a%)
xmap <silent> a% <Plug>(matchup-a%)
xmap af <Plug>DsfTextObjectA
omap af <Plug>DsfTextObjectA
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap csnf <Plug>DsfNextChange
nmap csf <Plug>DsfChange
nmap ds <Plug>Dsurround
nmap dsnf <Plug>DsfNextDelete
nmap dsf <Plug>DsfDelete
xmap f <Plug>(QuickScopef)
omap f <Plug>(QuickScopef)
nmap f <Plug>(QuickScopef)
xnoremap gx <ScriptCmd>vim9.Open(getregion(getpos('v'), getpos('.'), { type: mode() })->join())<cr>
nnoremap gx <ScriptCmd>vim9.Open(GetWordUnderCursor())<cr>
nnoremap g, <Nop>
nnoremap g: g,
xmap gS <Plug>VgSurround
map g/ <Plug>(incsearch-stay)
xmap gA <Plug>(EasyAlign)
nmap gA <Plug>(EasyAlign)
xmap gG <Plug>(open-url-search-google)
nmap gG <Plug>(open-url-search-google)
xmap gW <Plug>(open-url-search-wikipedia)
nmap gW <Plug>(open-url-search-wikipedia)
xmap g<cr> <Plug>(open-url-search)
nmap g<cr> <Plug>(open-url-search)
xmap gB <Plug>(open-url-browser)
nmap gB <Plug>(open-url-browser)
omap <silent> g% <Ignore><Plug>(matchup-g%)
xmap <silent> g% <Plug>(matchup-g%)
nmap <silent> g% <Plug>(matchup-g%)
map g# <Plug>(asterisk-g#)  " rg --no-ignore ' g# '
map g* <Plug>(asterisk-g*)  " rg --no-ignore ' g\* '
nmap ga <Plug>(characterize)
xmap <expr> i targets#e('o', 'i', 'i')
omap <expr> i targets#e('o', 'i', 'i')
omap <silent> i% <Plug>(matchup-i%)
xmap <silent> i% <Plug>(matchup-i%)
xmap if <Plug>DsfTextObjectI
omap if <Plug>DsfTextObjectI
xnoremap q: <Nop>
nnoremap q: <Nop>
xnoremap q, q:
nnoremap q, q:
nnoremap q! q/
nmap s <Plug>(easymotion-overwin-f2)
xmap t <Plug>(QuickScopet)
omap t <Plug>(QuickScopet)
nmap t <Plug>(QuickScopet)
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap z? :exe ':spellrare  '.expand('<cr><cWORD>')<cr>
map z/ <Plug>(incsearch-fuzzy-stay)
omap <silent> z% <Plug>(matchup-z%)
xmap <silent> z% <Plug>(matchup-z%)
nmap <silent> z% <Plug>(matchup-z%)
map z# <Plug>(asterisk-z#)  " rg --no-ignore ' z# '
map z* <Plug>(asterisk-z*)  " rg --no-ignore ' z\* '
nnoremap <silent> <expr> zt context#util#map_zt()
vnoremap ~ y:call setreg('', TwiddleCase(@"), getregtype(''))<cr>gv""Pgv
nnoremap <C-F1> :if &guioptions=~#'m'<cr>|set guioptions-=m<cr>|else<cr>|set guioptions+=m<cr>|endif<cr>
vnoremap <F2> <esc>:wa<cr>
nnoremap <F2> :wa<cr>
nnoremap <C-=> <cr>=
nnoremap <C-K> <cr>k
nnoremap <C-J> <cr>j
nnoremap <C-L> <cr>l
vnoremap <F5> <esc>:wa<cr>:e<cr>
nnoremap <F5> :wa<cr>:edit<cr>
nnoremap <silent> <Plug>SurroundRepeat .
noremap <C-E> :cd %:p:h<cr>:Fern . -reveal=%<cr>
vnoremap <S-F3> <esc>:Commits<cr>
nnoremap <S-F3> :Commits<cr>
vnoremap <C-F3> <esc>:BCommits<cr>
nnoremap <C-F3> :BCommits<cr>
nnoremap <S-F1> :Jumps<cr>
vnoremap <F9> <esc>:History/<cr>
nnoremap <F9> :History/<cr>
vnoremap <F8> <esc>:History:<cr>
nnoremap <F8> :History:<cr>
vnoremap <F1> <esc>:Buffers<cr>
nnoremap <F1> :Buffers<cr>
onoremap <silent> <Plug>(fzf-maps-o) <cr>:<cr>call fzf#vim#maps('o', 0)<cr>
xnoremap <silent> <Plug>(fzf-maps-x) :<cr>call fzf#vim#maps('x', 0)<cr>
nnoremap <silent> <Plug>(fzf-maps-n) :<cr>call fzf#vim#maps('n', 0)<cr>
nnoremap <S-F9> call popup_clear(1):<cr>
nnoremap <silent> <Plug>GitGutterPreviewHunk :call gitgutter#utility#warn('Please change your map <cr><Plug>GitGutterPreviewHunk to <cr><Plug>(GitGutterPreviewHunk)')<cr>
nnoremap <silent> <Plug>(GitGutterPreviewHunk) :GitGutterPreviewHunk<cr>
nnoremap <silent> <Plug>GitGutterUndoHunk :call gitgutter#utility#warn('Please change your map <cr><Plug>GitGutterUndoHunk to <cr><Plug>(GitGutterUndoHunk)')<cr>
nnoremap <silent> <Plug>(GitGutterUndoHunk) :GitGutterUndoHunk<cr>
nnoremap <silent> <Plug>GitGutterStageHunk :call gitgutter#utility#warn('Please change your map <cr><Plug>GitGutterStageHunk to <cr><Plug>(GitGutterStageHunk)')<cr>
nnoremap <silent> <Plug>(GitGutterStageHunk) :GitGutterStageHunk<cr>
xnoremap <silent> <Plug>GitGutterStageHunk :call gitgutter#utility#warn('Please change your map <cr><Plug>GitGutterStageHunk to <cr><Plug>(GitGutterStageHunk)')<cr>
xnoremap <silent> <Plug>(GitGutterStageHunk) :GitGutterStageHunk<cr>
nnoremap <silent> <expr> <Plug>GitGutterPrevHunk &diff ? '[c' : ":\<cr>call gitgutter#utility#warn('Please change your map \<cr><Plug>GitGutterPrevHunk to \<cr><Plug>(GitGutterPrevHunk)')\<cr>"
nnoremap <silent> <expr> <Plug>(GitGutterPrevHunk) &diff ? '[c' : ":\<cr>execute v:count1 . 'GitGutterPrevHunk'\<cr>"
nnoremap <silent> <expr> <Plug>GitGutterNextHunk &diff ? ']c' : ":\<cr>call gitgutter#utility#warn('Please change your map \<cr><Plug>GitGutterNextHunk to \<cr><Plug>(GitGutterNextHunk)')\<cr>"
nnoremap <silent> <expr> <Plug>(GitGutterNextHunk) &diff ? ']c' : ":\<cr>execute v:count1 . 'GitGutterNextHunk'\<cr>"
xnoremap <silent> <Plug>(GitGutterTextObjectOuterVisual) :<cr>call gitgutter#hunk#text_object(0)<cr>
xnoremap <silent> <Plug>(GitGutterTextObjectInnerVisual) :<cr>call gitgutter#hunk#text_object(1)<cr>
onoremap <silent> <Plug>(GitGutterTextObjectOuterPending) :<cr>call gitgutter#hunk#text_object(0)<cr>
onoremap <silent> <Plug>(GitGutterTextObjectInnerPending) :<cr>call gitgutter#hunk#text_object(1)<cr>
nnoremap <F10> :cd %:p:h<cr>:NERDTreeCWD<cr>
noremap <C-N> :NERDTreeToggle<cr>
map <C-P> <Plug>(ctrlp)
nnoremap <silent> <Plug>(ctrlp) :<cr>CtrlPMRU<cr>
map <silent> <Plug>(easymotion-prefix)N <Plug>(easymotion-N)
map <silent> <Plug>(easymotion-prefix)n <Plug>(easymotion-n)
map <silent> <Plug>(easymotion-prefix)k <Plug>(easymotion-k)
map <silent> <Plug>(easymotion-prefix)j <Plug>(easymotion-j)
map <silent> <Plug>(easymotion-prefix)gE <Plug>(easymotion-gE)
map <silent> <Plug>(easymotion-prefix)ge <Plug>(easymotion-ge)
map <silent> <Plug>(easymotion-prefix)E <Plug>(easymotion-E)
map <silent> <Plug>(easymotion-prefix)e <Plug>(easymotion-e)
map <silent> <Plug>(easymotion-prefix)B <Plug>(easymotion-B)
map <silent> <Plug>(easymotion-prefix)b <Plug>(easymotion-b)
map <silent> <Plug>(easymotion-prefix)W <Plug>(easymotion-W)
map <silent> <Plug>(easymotion-prefix)w <Plug>(easymotion-w)
map <silent> <Plug>(easymotion-prefix)T <Plug>(easymotion-T)
map <silent> <Plug>(easymotion-prefix)t <Plug>(easymotion-t)
map <silent> <Plug>(easymotion-prefix)s <Plug>(easymotion-s)
map <silent> <Plug>(easymotion-prefix)F <Plug>(easymotion-F)
map <silent> <Plug>(easymotion-prefix)f <Plug>(easymotion-f)
xnoremap <silent> <Plug>(easymotion-activate) :<cr>call EasyMotion#activate(1)<cr>
nnoremap <silent> <Plug>(easymotion-activate) :<cr>call EasyMotion#activate(0)<cr>
snoremap <silent> <Plug>(easymotion-activate) :<cr>call EasyMotion#activate(0)<cr>
onoremap <silent> <Plug>(easymotion-activate) :<cr>call EasyMotion#activate(0)<cr>
noremap <silent> <Plug>(easymotion-dotrepeat) :<cr>call EasyMotion#DotRepeat()<cr>
xnoremap <silent> <Plug>(easymotion-repeat) <esc>:<cr>call EasyMotion#Repeat(1)<cr>
nnoremap <silent> <Plug>(easymotion-repeat) :<cr>call EasyMotion#Repeat(0)<cr>
snoremap <silent> <Plug>(easymotion-repeat) :<cr>call EasyMotion#Repeat(0)<cr>
onoremap <silent> <Plug>(easymotion-repeat) :<cr>call EasyMotion#Repeat(0)<cr>
xnoremap <silent> <Plug>(easymotion-prev) :<cr>call EasyMotion#NextPrevious(1,1)<cr>
nnoremap <silent> <Plug>(easymotion-prev) :<cr>call EasyMotion#NextPrevious(0,1)<cr>
snoremap <silent> <Plug>(easymotion-prev) :<cr>call EasyMotion#NextPrevious(0,1)<cr>
onoremap <silent> <Plug>(easymotion-prev) :<cr>call EasyMotion#NextPrevious(0,1)<cr>
xnoremap <silent> <Plug>(easymotion-next) :<cr>call EasyMotion#NextPrevious(1,0)<cr>
nnoremap <silent> <Plug>(easymotion-next) :<cr>call EasyMotion#NextPrevious(0,0)<cr>
snoremap <silent> <Plug>(easymotion-next) :<cr>call EasyMotion#NextPrevious(0,0)<cr>
onoremap <silent> <Plug>(easymotion-next) :<cr>call EasyMotion#NextPrevious(0,0)<cr>
xnoremap <silent> <Plug>(easymotion-wl) <esc>:<cr>call EasyMotion#WBL(1,0)<cr>
nnoremap <silent> <Plug>(easymotion-wl) :<cr>call EasyMotion#WBL(0,0)<cr>
snoremap <silent> <Plug>(easymotion-wl) :<cr>call EasyMotion#WBL(0,0)<cr>
onoremap <silent> <Plug>(easymotion-wl) :<cr>call EasyMotion#WBL(0,0)<cr>
xnoremap <silent> <Plug>(easymotion-lineforward) <esc>:<cr>call EasyMotion#LineAnywhere(1,0)<cr>
nnoremap <silent> <Plug>(easymotion-lineforward) :<cr>call EasyMotion#LineAnywhere(0,0)<cr>
snoremap <silent> <Plug>(easymotion-lineforward) :<cr>call EasyMotion#LineAnywhere(0,0)<cr>
onoremap <silent> <Plug>(easymotion-lineforward) :<cr>call EasyMotion#LineAnywhere(0,0)<cr>
xnoremap <silent> <Plug>(easymotion-lineanywhere) <esc>:<cr>call EasyMotion#LineAnywhere(1,2)<cr>
nnoremap <silent> <Plug>(easymotion-lineanywhere) :<cr>call EasyMotion#LineAnywhere(0,2)<cr>
snoremap <silent> <Plug>(easymotion-lineanywhere) :<cr>call EasyMotion#LineAnywhere(0,2)<cr>
onoremap <silent> <Plug>(easymotion-lineanywhere) :<cr>call EasyMotion#LineAnywhere(0,2)<cr>
xnoremap <silent> <Plug>(easymotion-bd-wl) <esc>:<cr>call EasyMotion#WBL(1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-wl) :<cr>call EasyMotion#WBL(0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-wl) :<cr>call EasyMotion#WBL(0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-wl) :<cr>call EasyMotion#WBL(0,2)<cr>
xnoremap <silent> <Plug>(easymotion-linebackward) <esc>:<cr>call EasyMotion#LineAnywhere(1,1)<cr>
nnoremap <silent> <Plug>(easymotion-linebackward) :<cr>call EasyMotion#LineAnywhere(0,1)<cr>
snoremap <silent> <Plug>(easymotion-linebackward) :<cr>call EasyMotion#LineAnywhere(0,1)<cr>
onoremap <silent> <Plug>(easymotion-linebackward) :<cr>call EasyMotion#LineAnywhere(0,1)<cr>
xnoremap <silent> <Plug>(easymotion-bl) <esc>:<cr>call EasyMotion#WBL(1,1)<cr>
nnoremap <silent> <Plug>(easymotion-bl) :<cr>call EasyMotion#WBL(0,1)<cr>
snoremap <silent> <Plug>(easymotion-bl) :<cr>call EasyMotion#WBL(0,1)<cr>
onoremap <silent> <Plug>(easymotion-bl) :<cr>call EasyMotion#WBL(0,1)<cr>
xnoremap <silent> <Plug>(easymotion-el) <esc>:<cr>call EasyMotion#EL(1,0)<cr>
nnoremap <silent> <Plug>(easymotion-el) :<cr>call EasyMotion#EL(0,0)<cr>
snoremap <silent> <Plug>(easymotion-el) :<cr>call EasyMotion#EL(0,0)<cr>
onoremap <silent> <Plug>(easymotion-el) :<cr>call EasyMotion#EL(0,0)<cr>
xnoremap <silent> <Plug>(easymotion-gel) <esc>:<cr>call EasyMotion#EL(1,1)<cr>
nnoremap <silent> <Plug>(easymotion-gel) :<cr>call EasyMotion#EL(0,1)<cr>
snoremap <silent> <Plug>(easymotion-gel) :<cr>call EasyMotion#EL(0,1)<cr>
onoremap <silent> <Plug>(easymotion-gel) :<cr>call EasyMotion#EL(0,1)<cr>
xnoremap <silent> <Plug>(easymotion-bd-el) <esc>:<cr>call EasyMotion#EL(1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-el) :<cr>call EasyMotion#EL(0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-el) :<cr>call EasyMotion#EL(0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-el) :<cr>call EasyMotion#EL(0,2)<cr>
xnoremap <silent> <Plug>(easymotion-jumptoanywhere) <esc>:<cr>call EasyMotion#JumpToAnywhere(1,2)<cr>
nnoremap <silent> <Plug>(easymotion-jumptoanywhere) :<cr>call EasyMotion#JumpToAnywhere(0,2)<cr>
snoremap <silent> <Plug>(easymotion-jumptoanywhere) :<cr>call EasyMotion#JumpToAnywhere(0,2)<cr>
onoremap <silent> <Plug>(easymotion-jumptoanywhere) :<cr>call EasyMotion#JumpToAnywhere(0,2)<cr>
xnoremap <silent> <Plug>(easymotion-vim-n) <esc>:<cr>call EasyMotion#Search(1,0,1)<cr>
nnoremap <silent> <Plug>(easymotion-vim-n) :<cr>call EasyMotion#Search(0,0,1)<cr>
snoremap <silent> <Plug>(easymotion-vim-n) :<cr>call EasyMotion#Search(0,0,1)<cr>
onoremap <silent> <Plug>(easymotion-vim-n) :<cr>call EasyMotion#Search(0,0,1)<cr>
xnoremap <silent> <Plug>(easymotion-n) <esc>:<cr>call EasyMotion#Search(1,0,0)<cr>
nnoremap <silent> <Plug>(easymotion-n) :<cr>call EasyMotion#Search(0,0,0)<cr>
snoremap <silent> <Plug>(easymotion-n) :<cr>call EasyMotion#Search(0,0,0)<cr>
onoremap <silent> <Plug>(easymotion-n) :<cr>call EasyMotion#Search(0,0,0)<cr>
xnoremap <silent> <Plug>(easymotion-bd-n) <esc>:<cr>call EasyMotion#Search(1,2,0)<cr>
nnoremap <silent> <Plug>(easymotion-bd-n) :<cr>call EasyMotion#Search(0,2,0)<cr>
snoremap <silent> <Plug>(easymotion-bd-n) :<cr>call EasyMotion#Search(0,2,0)<cr>
onoremap <silent> <Plug>(easymotion-bd-n) :<cr>call EasyMotion#Search(0,2,0)<cr>
xnoremap <silent> <Plug>(easymotion-vim-N) <esc>:<cr>call EasyMotion#Search(1,1,1)<cr>
nnoremap <silent> <Plug>(easymotion-vim-N) :<cr>call EasyMotion#Search(0,1,1)<cr>
snoremap <silent> <Plug>(easymotion-vim-N) :<cr>call EasyMotion#Search(0,1,1)<cr>
onoremap <silent> <Plug>(easymotion-vim-N) :<cr>call EasyMotion#Search(0,1,1)<cr>
xnoremap <silent> <Plug>(easymotion-N) <esc>:<cr>call EasyMotion#Search(1,1,0)<cr>
nnoremap <silent> <Plug>(easymotion-N) :<cr>call EasyMotion#Search(0,1,0)<cr>
snoremap <silent> <Plug>(easymotion-N) :<cr>call EasyMotion#Search(0,1,0)<cr>
onoremap <silent> <Plug>(easymotion-N) :<cr>call EasyMotion#Search(0,1,0)<cr>
xnoremap <silent> <Plug>(easymotion-eol-j) <esc>:<cr>call EasyMotion#Eol(1,0)<cr>
nnoremap <silent> <Plug>(easymotion-eol-j) :<cr>call EasyMotion#Eol(0,0)<cr>
snoremap <silent> <Plug>(easymotion-eol-j) :<cr>call EasyMotion#Eol(0,0)<cr>
onoremap <silent> <Plug>(easymotion-eol-j) :<cr>call EasyMotion#Eol(0,0)<cr>
xnoremap <silent> <Plug>(easymotion-sol-k) <esc>:<cr>call EasyMotion#Sol(1,1)<cr>
nnoremap <silent> <Plug>(easymotion-sol-k) :<cr>call EasyMotion#Sol(0,1)<cr>
snoremap <silent> <Plug>(easymotion-sol-k) :<cr>call EasyMotion#Sol(0,1)<cr>
onoremap <silent> <Plug>(easymotion-sol-k) :<cr>call EasyMotion#Sol(0,1)<cr>
xnoremap <silent> <Plug>(easymotion-sol-j) <esc>:<cr>call EasyMotion#Sol(1,0)<cr>
nnoremap <silent> <Plug>(easymotion-sol-j) :<cr>call EasyMotion#Sol(0,0)<cr>
snoremap <silent> <Plug>(easymotion-sol-j) :<cr>call EasyMotion#Sol(0,0)<cr>
onoremap <silent> <Plug>(easymotion-sol-j) :<cr>call EasyMotion#Sol(0,0)<cr>
xnoremap <silent> <Plug>(easymotion-k) <esc>:<cr>call EasyMotion#JK(1,1)<cr>
nnoremap <silent> <Plug>(easymotion-k) :<cr>call EasyMotion#JK(0,1)<cr>
snoremap <silent> <Plug>(easymotion-k) :<cr>call EasyMotion#JK(0,1)<cr>
onoremap <silent> <Plug>(easymotion-k) :<cr>call EasyMotion#JK(0,1)<cr>
xnoremap <silent> <Plug>(easymotion-j) <esc>:<cr>call EasyMotion#JK(1,0)<cr>
nnoremap <silent> <Plug>(easymotion-j) :<cr>call EasyMotion#JK(0,0)<cr>
snoremap <silent> <Plug>(easymotion-j) :<cr>call EasyMotion#JK(0,0)<cr>
onoremap <silent> <Plug>(easymotion-j) :<cr>call EasyMotion#JK(0,0)<cr>
xnoremap <silent> <Plug>(easymotion-bd-jk) <esc>:<cr>call EasyMotion#JK(1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-jk) :<cr>call EasyMotion#JK(0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-jk) :<cr>call EasyMotion#JK(0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-jk) :<cr>call EasyMotion#JK(0,2)<cr>
xnoremap <silent> <Plug>(easymotion-eol-bd-jk) <esc>:<cr>call EasyMotion#Eol(1,2)<cr>
nnoremap <silent> <Plug>(easymotion-eol-bd-jk) :<cr>call EasyMotion#Eol(0,2)<cr>
snoremap <silent> <Plug>(easymotion-eol-bd-jk) :<cr>call EasyMotion#Eol(0,2)<cr>
onoremap <silent> <Plug>(easymotion-eol-bd-jk) :<cr>call EasyMotion#Eol(0,2)<cr>
xnoremap <silent> <Plug>(easymotion-sol-bd-jk) <esc>:<cr>call EasyMotion#Sol(1,2)<cr>
nnoremap <silent> <Plug>(easymotion-sol-bd-jk) :<cr>call EasyMotion#Sol(0,2)<cr>
snoremap <silent> <Plug>(easymotion-sol-bd-jk) :<cr>call EasyMotion#Sol(0,2)<cr>
onoremap <silent> <Plug>(easymotion-sol-bd-jk) :<cr>call EasyMotion#Sol(0,2)<cr>
xnoremap <silent> <Plug>(easymotion-eol-k) <esc>:<cr>call EasyMotion#Eol(1,1)<cr>
nnoremap <silent> <Plug>(easymotion-eol-k) :<cr>call EasyMotion#Eol(0,1)<cr>
snoremap <silent> <Plug>(easymotion-eol-k) :<cr>call EasyMotion#Eol(0,1)<cr>
onoremap <silent> <Plug>(easymotion-eol-k) :<cr>call EasyMotion#Eol(0,1)<cr>
xnoremap <silent> <Plug>(easymotion-iskeyword-ge) <esc>:<cr>call EasyMotion#EK(1,1)<cr>
nnoremap <silent> <Plug>(easymotion-iskeyword-ge) :<cr>call EasyMotion#EK(0,1)<cr>
snoremap <silent> <Plug>(easymotion-iskeyword-ge) :<cr>call EasyMotion#EK(0,1)<cr>
onoremap <silent> <Plug>(easymotion-iskeyword-ge) :<cr>call EasyMotion#EK(0,1)<cr>
xnoremap <silent> <Plug>(easymotion-w) <esc>:<cr>call EasyMotion#WB(1,0)<cr>
nnoremap <silent> <Plug>(easymotion-w) :<cr>call EasyMotion#WB(0,0)<cr>
snoremap <silent> <Plug>(easymotion-w) :<cr>call EasyMotion#WB(0,0)<cr>
onoremap <silent> <Plug>(easymotion-w) :<cr>call EasyMotion#WB(0,0)<cr>
xnoremap <silent> <Plug>(easymotion-bd-W) <esc>:<cr>call EasyMotion#WBW(1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-W) :<cr>call EasyMotion#WBW(0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-W) :<cr>call EasyMotion#WBW(0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-W) :<cr>call EasyMotion#WBW(0,2)<cr>
xnoremap <silent> <Plug>(easymotion-iskeyword-w) <esc>:<cr>call EasyMotion#WBK(1,0)<cr>
nnoremap <silent> <Plug>(easymotion-iskeyword-w) :<cr>call EasyMotion#WBK(0,0)<cr>
snoremap <silent> <Plug>(easymotion-iskeyword-w) :<cr>call EasyMotion#WBK(0,0)<cr>
onoremap <silent> <Plug>(easymotion-iskeyword-w) :<cr>call EasyMotion#WBK(0,0)<cr>
xnoremap <silent> <Plug>(easymotion-gE) <esc>:<cr>call EasyMotion#EW(1,1)<cr>
nnoremap <silent> <Plug>(easymotion-gE) :<cr>call EasyMotion#EW(0,1)<cr>
snoremap <silent> <Plug>(easymotion-gE) :<cr>call EasyMotion#EW(0,1)<cr>
onoremap <silent> <Plug>(easymotion-gE) :<cr>call EasyMotion#EW(0,1)<cr>
xnoremap <silent> <Plug>(easymotion-e) <esc>:<cr>call EasyMotion#E(1,0)<cr>
nnoremap <silent> <Plug>(easymotion-e) :<cr>call EasyMotion#E(0,0)<cr>
snoremap <silent> <Plug>(easymotion-e) :<cr>call EasyMotion#E(0,0)<cr>
onoremap <silent> <Plug>(easymotion-e) :<cr>call EasyMotion#E(0,0)<cr>
xnoremap <silent> <Plug>(easymotion-bd-E) <esc>:<cr>call EasyMotion#EW(1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-E) :<cr>call EasyMotion#EW(0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-E) :<cr>call EasyMotion#EW(0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-E) :<cr>call EasyMotion#EW(0,2)<cr>
xnoremap <silent> <Plug>(easymotion-iskeyword-e) <esc>:<cr>call EasyMotion#EK(1,0)<cr>
nnoremap <silent> <Plug>(easymotion-iskeyword-e) :<cr>call EasyMotion#EK(0,0)<cr>
snoremap <silent> <Plug>(easymotion-iskeyword-e) :<cr>call EasyMotion#EK(0,0)<cr>
onoremap <silent> <Plug>(easymotion-iskeyword-e) :<cr>call EasyMotion#EK(0,0)<cr>
xnoremap <silent> <Plug>(easymotion-b) <esc>:<cr>call EasyMotion#WB(1,1)<cr>
nnoremap <silent> <Plug>(easymotion-b) :<cr>call EasyMotion#WB(0,1)<cr>
snoremap <silent> <Plug>(easymotion-b) :<cr>call EasyMotion#WB(0,1)<cr>
onoremap <silent> <Plug>(easymotion-b) :<cr>call EasyMotion#WB(0,1)<cr>
xnoremap <silent> <Plug>(easymotion-iskeyword-b) <esc>:<cr>call EasyMotion#WBK(1,1)<cr>
nnoremap <silent> <Plug>(easymotion-iskeyword-b) :<cr>call EasyMotion#WBK(0,1)<cr>
snoremap <silent> <Plug>(easymotion-iskeyword-b) :<cr>call EasyMotion#WBK(0,1)<cr>
onoremap <silent> <Plug>(easymotion-iskeyword-b) :<cr>call EasyMotion#WBK(0,1)<cr>
xnoremap <silent> <Plug>(easymotion-iskeyword-bd-w) <esc>:<cr>call EasyMotion#WBK(1,2)<cr>
nnoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :<cr>call EasyMotion#WBK(0,2)<cr>
snoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :<cr>call EasyMotion#WBK(0,2)<cr>
onoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :<cr>call EasyMotion#WBK(0,2)<cr>
xnoremap <silent> <Plug>(easymotion-W) <esc>:<cr>call EasyMotion#WBW(1,0)<cr>
nnoremap <silent> <Plug>(easymotion-W) :<cr>call EasyMotion#WBW(0,0)<cr>
snoremap <silent> <Plug>(easymotion-W) :<cr>call EasyMotion#WBW(0,0)<cr>
onoremap <silent> <Plug>(easymotion-W) :<cr>call EasyMotion#WBW(0,0)<cr>
xnoremap <silent> <Plug>(easymotion-bd-w) <esc>:<cr>call EasyMotion#WB(1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-w) :<cr>call EasyMotion#WB(0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-w) :<cr>call EasyMotion#WB(0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-w) :<cr>call EasyMotion#WB(0,2)<cr>
xnoremap <silent> <Plug>(easymotion-iskeyword-bd-e) <esc>:<cr>call EasyMotion#EK(1,2)<cr>
nnoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :<cr>call EasyMotion#EK(0,2)<cr>
snoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :<cr>call EasyMotion#EK(0,2)<cr>
onoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :<cr>call EasyMotion#EK(0,2)<cr>
xnoremap <silent> <Plug>(easymotion-ge) <esc>:<cr>call EasyMotion#E(1,1)<cr>
nnoremap <silent> <Plug>(easymotion-ge) :<cr>call EasyMotion#E(0,1)<cr>
snoremap <silent> <Plug>(easymotion-ge) :<cr>call EasyMotion#E(0,1)<cr>
onoremap <silent> <Plug>(easymotion-ge) :<cr>call EasyMotion#E(0,1)<cr>
xnoremap <silent> <Plug>(easymotion-E) <esc>:<cr>call EasyMotion#EW(1,0)<cr>
nnoremap <silent> <Plug>(easymotion-E) :<cr>call EasyMotion#EW(0,0)<cr>
snoremap <silent> <Plug>(easymotion-E) :<cr>call EasyMotion#EW(0,0)<cr>
onoremap <silent> <Plug>(easymotion-E) :<cr>call EasyMotion#EW(0,0)<cr>
xnoremap <silent> <Plug>(easymotion-bd-e) <esc>:<cr>call EasyMotion#E(1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-e) :<cr>call EasyMotion#E(0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-e) :<cr>call EasyMotion#E(0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-e) :<cr>call EasyMotion#E(0,2)<cr>
xnoremap <silent> <Plug>(easymotion-B) <esc>:<cr>call EasyMotion#WBW(1,1)<cr>
nnoremap <silent> <Plug>(easymotion-B) :<cr>call EasyMotion#WBW(0,1)<cr>
snoremap <silent> <Plug>(easymotion-B) :<cr>call EasyMotion#WBW(0,1)<cr>
onoremap <silent> <Plug>(easymotion-B) :<cr>call EasyMotion#WBW(0,1)<cr>
nnoremap <silent> <Plug>(easymotion-overwin-w) :<cr>call EasyMotion#overwin#w()<cr>
nnoremap <silent> <Plug>(easymotion-overwin-line) :<cr>call EasyMotion#overwin#line()<cr>
nnoremap <silent> <Plug>(easymotion-overwin-f2) :<cr>call EasyMotion#OverwinF(2)<cr>
nnoremap <silent> <Plug>(easymotion-overwin-f) :<cr>call EasyMotion#OverwinF(1)<cr>
xnoremap <silent> <Plug>(easymotion-Tln) <esc>:<cr>call EasyMotion#TL(-1,1,1)<cr>
nnoremap <silent> <Plug>(easymotion-Tln) :<cr>call EasyMotion#TL(-1,0,1)<cr>
snoremap <silent> <Plug>(easymotion-Tln) :<cr>call EasyMotion#TL(-1,0,1)<cr>
onoremap <silent> <Plug>(easymotion-Tln) :<cr>call EasyMotion#TL(-1,0,1)<cr>
xnoremap <silent> <Plug>(easymotion-t2) <esc>:<cr>call EasyMotion#T(2,1,0)<cr>
nnoremap <silent> <Plug>(easymotion-t2) :<cr>call EasyMotion#T(2,0,0)<cr>
snoremap <silent> <Plug>(easymotion-t2) :<cr>call EasyMotion#T(2,0,0)<cr>
onoremap <silent> <Plug>(easymotion-t2) :<cr>call EasyMotion#T(2,0,0)<cr>
xnoremap <silent> <Plug>(easymotion-t) <esc>:<cr>call EasyMotion#T(1,1,0)<cr>
nnoremap <silent> <Plug>(easymotion-t) :<cr>call EasyMotion#T(1,0,0)<cr>
snoremap <silent> <Plug>(easymotion-t) :<cr>call EasyMotion#T(1,0,0)<cr>
onoremap <silent> <Plug>(easymotion-t) :<cr>call EasyMotion#T(1,0,0)<cr>
xnoremap <silent> <Plug>(easymotion-s) <esc>:<cr>call EasyMotion#S(1,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-s) :<cr>call EasyMotion#S(1,0,2)<cr>
snoremap <silent> <Plug>(easymotion-s) :<cr>call EasyMotion#S(1,0,2)<cr>
onoremap <silent> <Plug>(easymotion-s) :<cr>call EasyMotion#S(1,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-tn) <esc>:<cr>call EasyMotion#T(-1,1,0)<cr>
nnoremap <silent> <Plug>(easymotion-tn) :<cr>call EasyMotion#T(-1,0,0)<cr>
snoremap <silent> <Plug>(easymotion-tn) :<cr>call EasyMotion#T(-1,0,0)<cr>
onoremap <silent> <Plug>(easymotion-tn) :<cr>call EasyMotion#T(-1,0,0)<cr>
xnoremap <silent> <Plug>(easymotion-bd-t2) <esc>:<cr>call EasyMotion#T(2,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-t2) :<cr>call EasyMotion#T(2,0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-t2) :<cr>call EasyMotion#T(2,0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-t2) :<cr>call EasyMotion#T(2,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-tl) <esc>:<cr>call EasyMotion#TL(1,1,0)<cr>
nnoremap <silent> <Plug>(easymotion-tl) :<cr>call EasyMotion#TL(1,0,0)<cr>
snoremap <silent> <Plug>(easymotion-tl) :<cr>call EasyMotion#TL(1,0,0)<cr>
onoremap <silent> <Plug>(easymotion-tl) :<cr>call EasyMotion#TL(1,0,0)<cr>
xnoremap <silent> <Plug>(easymotion-bd-tn) <esc>:<cr>call EasyMotion#T(-1,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-tn) :<cr>call EasyMotion#T(-1,0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-tn) :<cr>call EasyMotion#T(-1,0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-tn) :<cr>call EasyMotion#T(-1,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-fn) <esc>:<cr>call EasyMotion#S(-1,1,0)<cr>
nnoremap <silent> <Plug>(easymotion-fn) :<cr>call EasyMotion#S(-1,0,0)<cr>
snoremap <silent> <Plug>(easymotion-fn) :<cr>call EasyMotion#S(-1,0,0)<cr>
onoremap <silent> <Plug>(easymotion-fn) :<cr>call EasyMotion#S(-1,0,0)<cr>
xnoremap <silent> <Plug>(easymotion-bd-tl) <esc>:<cr>call EasyMotion#TL(1,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-tl) :<cr>call EasyMotion#TL(1,0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-tl) :<cr>call EasyMotion#TL(1,0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-tl) :<cr>call EasyMotion#TL(1,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-fl) <esc>:<cr>call EasyMotion#SL(1,1,0)<cr>
nnoremap <silent> <Plug>(easymotion-fl) :<cr>call EasyMotion#SL(1,0,0)<cr>
snoremap <silent> <Plug>(easymotion-fl) :<cr>call EasyMotion#SL(1,0,0)<cr>
onoremap <silent> <Plug>(easymotion-fl) :<cr>call EasyMotion#SL(1,0,0)<cr>
xnoremap <silent> <Plug>(easymotion-bd-tl2) <esc>:<cr>call EasyMotion#TL(2,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-tl2) :<cr>call EasyMotion#TL(2,0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-tl2) :<cr>call EasyMotion#TL(2,0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-tl2) :<cr>call EasyMotion#TL(2,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-bd-fn) <esc>:<cr>call EasyMotion#S(-1,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-fn) :<cr>call EasyMotion#S(-1,0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-fn) :<cr>call EasyMotion#S(-1,0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-fn) :<cr>call EasyMotion#S(-1,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-f) <esc>:<cr>call EasyMotion#S(1,1,0)<cr>
nnoremap <silent> <Plug>(easymotion-f) :<cr>call EasyMotion#S(1,0,0)<cr>
snoremap <silent> <Plug>(easymotion-f) :<cr>call EasyMotion#S(1,0,0)<cr>
onoremap <silent> <Plug>(easymotion-f) :<cr>call EasyMotion#S(1,0,0)<cr>
xnoremap <silent> <Plug>(easymotion-bd-fl) <esc>:<cr>call EasyMotion#SL(1,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-fl) :<cr>call EasyMotion#SL(1,0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-fl) :<cr>call EasyMotion#SL(1,0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-fl) :<cr>call EasyMotion#SL(1,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-Fl2) <esc>:<cr>call EasyMotion#SL(2,1,1)<cr>
nnoremap <silent> <Plug>(easymotion-Fl2) :<cr>call EasyMotion#SL(2,0,1)<cr>
snoremap <silent> <Plug>(easymotion-Fl2) :<cr>call EasyMotion#SL(2,0,1)<cr>
onoremap <silent> <Plug>(easymotion-Fl2) :<cr>call EasyMotion#SL(2,0,1)<cr>
xnoremap <silent> <Plug>(easymotion-tl2) <esc>:<cr>call EasyMotion#TL(2,1,0)<cr>
nnoremap <silent> <Plug>(easymotion-tl2) :<cr>call EasyMotion#TL(2,0,0)<cr>
snoremap <silent> <Plug>(easymotion-tl2) :<cr>call EasyMotion#TL(2,0,0)<cr>
onoremap <silent> <Plug>(easymotion-tl2) :<cr>call EasyMotion#TL(2,0,0)<cr>
xnoremap <silent> <Plug>(easymotion-f2) <esc>:<cr>call EasyMotion#S(2,1,0)<cr>
nnoremap <silent> <Plug>(easymotion-f2) :<cr>call EasyMotion#S(2,0,0)<cr>
snoremap <silent> <Plug>(easymotion-f2) :<cr>call EasyMotion#S(2,0,0)<cr>
onoremap <silent> <Plug>(easymotion-f2) :<cr>call EasyMotion#S(2,0,0)<cr>
xnoremap <silent> <Plug>(easymotion-Fln) <esc>:<cr>call EasyMotion#SL(-1,1,1)<cr>
nnoremap <silent> <Plug>(easymotion-Fln) :<cr>call EasyMotion#SL(-1,0,1)<cr>
snoremap <silent> <Plug>(easymotion-Fln) :<cr>call EasyMotion#SL(-1,0,1)<cr>
onoremap <silent> <Plug>(easymotion-Fln) :<cr>call EasyMotion#SL(-1,0,1)<cr>
xnoremap <silent> <Plug>(easymotion-sln) <esc>:<cr>call EasyMotion#SL(-1,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-sln) :<cr>call EasyMotion#SL(-1,0,2)<cr>
snoremap <silent> <Plug>(easymotion-sln) :<cr>call EasyMotion#SL(-1,0,2)<cr>
onoremap <silent> <Plug>(easymotion-sln) :<cr>call EasyMotion#SL(-1,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-tln) <esc>:<cr>call EasyMotion#TL(-1,1,0)<cr>
nnoremap <silent> <Plug>(easymotion-tln) :<cr>call EasyMotion#TL(-1,0,0)<cr>
snoremap <silent> <Plug>(easymotion-tln) :<cr>call EasyMotion#TL(-1,0,0)<cr>
onoremap <silent> <Plug>(easymotion-tln) :<cr>call EasyMotion#TL(-1,0,0)<cr>
xnoremap <silent> <Plug>(easymotion-fl2) <esc>:<cr>call EasyMotion#SL(2,1,0)<cr>
nnoremap <silent> <Plug>(easymotion-fl2) :<cr>call EasyMotion#SL(2,0,0)<cr>
snoremap <silent> <Plug>(easymotion-fl2) :<cr>call EasyMotion#SL(2,0,0)<cr>
onoremap <silent> <Plug>(easymotion-fl2) :<cr>call EasyMotion#SL(2,0,0)<cr>
xnoremap <silent> <Plug>(easymotion-bd-fl2) <esc>:<cr>call EasyMotion#SL(2,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-fl2) :<cr>call EasyMotion#SL(2,0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-fl2) :<cr>call EasyMotion#SL(2,0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-fl2) :<cr>call EasyMotion#SL(2,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-T2) <esc>:<cr>call EasyMotion#T(2,1,1)<cr>
nnoremap <silent> <Plug>(easymotion-T2) :<cr>call EasyMotion#T(2,0,1)<cr>
snoremap <silent> <Plug>(easymotion-T2) :<cr>call EasyMotion#T(2,0,1)<cr>
onoremap <silent> <Plug>(easymotion-T2) :<cr>call EasyMotion#T(2,0,1)<cr>
xnoremap <silent> <Plug>(easymotion-bd-tln) <esc>:<cr>call EasyMotion#TL(-1,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-tln) :<cr>call EasyMotion#TL(-1,0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-tln) :<cr>call EasyMotion#TL(-1,0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-tln) :<cr>call EasyMotion#TL(-1,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-T) <esc>:<cr>call EasyMotion#T(1,1,1)<cr>
nnoremap <silent> <Plug>(easymotion-T) :<cr>call EasyMotion#T(1,0,1)<cr>
snoremap <silent> <Plug>(easymotion-T) :<cr>call EasyMotion#T(1,0,1)<cr>
onoremap <silent> <Plug>(easymotion-T) :<cr>call EasyMotion#T(1,0,1)<cr>
xnoremap <silent> <Plug>(easymotion-bd-t) <esc>:<cr>call EasyMotion#T(1,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-t) :<cr>call EasyMotion#T(1,0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-t) :<cr>call EasyMotion#T(1,0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-t) :<cr>call EasyMotion#T(1,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-Tn) <esc>:<cr>call EasyMotion#T(-1,1,1)<cr>
nnoremap <silent> <Plug>(easymotion-Tn) :<cr>call EasyMotion#T(-1,0,1)<cr>
snoremap <silent> <Plug>(easymotion-Tn) :<cr>call EasyMotion#T(-1,0,1)<cr>
onoremap <silent> <Plug>(easymotion-Tn) :<cr>call EasyMotion#T(-1,0,1)<cr>
xnoremap <silent> <Plug>(easymotion-s2) <esc>:<cr>call EasyMotion#S(2,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-s2) :<cr>call EasyMotion#S(2,0,2)<cr>
snoremap <silent> <Plug>(easymotion-s2) :<cr>call EasyMotion#S(2,0,2)<cr>
onoremap <silent> <Plug>(easymotion-s2) :<cr>call EasyMotion#S(2,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-Tl) <esc>:<cr>call EasyMotion#TL(1,1,1)<cr>
nnoremap <silent> <Plug>(easymotion-Tl) :<cr>call EasyMotion#TL(1,0,1)<cr>
snoremap <silent> <Plug>(easymotion-Tl) :<cr>call EasyMotion#TL(1,0,1)<cr>
onoremap <silent> <Plug>(easymotion-Tl) :<cr>call EasyMotion#TL(1,0,1)<cr>
xnoremap <silent> <Plug>(easymotion-sn) <esc>:<cr>call EasyMotion#S(-1,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-sn) :<cr>call EasyMotion#S(-1,0,2)<cr>
snoremap <silent> <Plug>(easymotion-sn) :<cr>call EasyMotion#S(-1,0,2)<cr>
onoremap <silent> <Plug>(easymotion-sn) :<cr>call EasyMotion#S(-1,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-Fn) <esc>:<cr>call EasyMotion#S(-1,1,1)<cr>
nnoremap <silent> <Plug>(easymotion-Fn) :<cr>call EasyMotion#S(-1,0,1)<cr>
snoremap <silent> <Plug>(easymotion-Fn) :<cr>call EasyMotion#S(-1,0,1)<cr>
onoremap <silent> <Plug>(easymotion-Fn) :<cr>call EasyMotion#S(-1,0,1)<cr>
xnoremap <silent> <Plug>(easymotion-sl) <esc>:<cr>call EasyMotion#SL(1,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-sl) :<cr>call EasyMotion#SL(1,0,2)<cr>
snoremap <silent> <Plug>(easymotion-sl) :<cr>call EasyMotion#SL(1,0,2)<cr>
onoremap <silent> <Plug>(easymotion-sl) :<cr>call EasyMotion#SL(1,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-Fl) <esc>:<cr>call EasyMotion#SL(1,1,1)<cr>
nnoremap <silent> <Plug>(easymotion-Fl) :<cr>call EasyMotion#SL(1,0,1)<cr>
snoremap <silent> <Plug>(easymotion-Fl) :<cr>call EasyMotion#SL(1,0,1)<cr>
onoremap <silent> <Plug>(easymotion-Fl) :<cr>call EasyMotion#SL(1,0,1)<cr>
xnoremap <silent> <Plug>(easymotion-sl2) <esc>:<cr>call EasyMotion#SL(2,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-sl2) :<cr>call EasyMotion#SL(2,0,2)<cr>
snoremap <silent> <Plug>(easymotion-sl2) :<cr>call EasyMotion#SL(2,0,2)<cr>
onoremap <silent> <Plug>(easymotion-sl2) :<cr>call EasyMotion#SL(2,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-bd-fln) <esc>:<cr>call EasyMotion#SL(-1,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-fln) :<cr>call EasyMotion#SL(-1,0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-fln) :<cr>call EasyMotion#SL(-1,0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-fln) :<cr>call EasyMotion#SL(-1,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-F) <esc>:<cr>call EasyMotion#S(1,1,1)<cr>
nnoremap <silent> <Plug>(easymotion-F) :<cr>call EasyMotion#S(1,0,1)<cr>
snoremap <silent> <Plug>(easymotion-F) :<cr>call EasyMotion#S(1,0,1)<cr>
onoremap <silent> <Plug>(easymotion-F) :<cr>call EasyMotion#S(1,0,1)<cr>
xnoremap <silent> <Plug>(easymotion-bd-f) <esc>:<cr>call EasyMotion#S(1,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-f) :<cr>call EasyMotion#S(1,0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-f) :<cr>call EasyMotion#S(1,0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-f) :<cr>call EasyMotion#S(1,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-F2) <esc>:<cr>call EasyMotion#S(2,1,1)<cr>
nnoremap <silent> <Plug>(easymotion-F2) :<cr>call EasyMotion#S(2,0,1)<cr>
snoremap <silent> <Plug>(easymotion-F2) :<cr>call EasyMotion#S(2,0,1)<cr>
onoremap <silent> <Plug>(easymotion-F2) :<cr>call EasyMotion#S(2,0,1)<cr>
xnoremap <silent> <Plug>(easymotion-bd-f2) <esc>:<cr>call EasyMotion#S(2,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-f2) :<cr>call EasyMotion#S(2,0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-f2) :<cr>call EasyMotion#S(2,0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-f2) :<cr>call EasyMotion#S(2,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-Tl2) <esc>:<cr>call EasyMotion#TL(2,1,1)<cr>
nnoremap <silent> <Plug>(easymotion-Tl2) :<cr>call EasyMotion#TL(2,0,1)<cr>
snoremap <silent> <Plug>(easymotion-Tl2) :<cr>call EasyMotion#TL(2,0,1)<cr>
onoremap <silent> <Plug>(easymotion-Tl2) :<cr>call EasyMotion#TL(2,0,1)<cr>
xnoremap <silent> <Plug>(easymotion-fln) <esc>:<cr>call EasyMotion#SL(-1,1,0)<cr>
nnoremap <silent> <Plug>(easymotion-fln) :<cr>call EasyMotion#SL(-1,0,0)<cr>
snoremap <silent> <Plug>(easymotion-fln) :<cr>call EasyMotion#SL(-1,0,0)<cr>
onoremap <silent> <Plug>(easymotion-fln) :<cr>call EasyMotion#SL(-1,0,0)<cr>
nnoremap <Plug>NERDCommenterAltDelims :call nerdcommenter#SwitchToAlternativeDelimiters(1)<cr>
xnoremap <silent> <Plug>NERDCommenterUncomment :call nerdcommenter#Comment("x", "Uncomment")<cr>
nnoremap <silent> <Plug>NERDCommenterUncomment :call nerdcommenter#Comment("n", "Uncomment")<cr>
xnoremap <silent> <Plug>NERDCommenterAlignBoth :call nerdcommenter#Comment("x", "AlignBoth")<cr>
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call nerdcommenter#Comment("n", "AlignBoth")<cr>
xnoremap <silent> <Plug>NERDCommenterAlignLeft :call nerdcommenter#Comment("x", "AlignLeft")<cr>
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call nerdcommenter#Comment("n", "AlignLeft")<cr>
nnoremap <silent> <Plug>NERDCommenterAppend :call nerdcommenter#Comment("n", "Append")<cr>
xnoremap <silent> <Plug>NERDCommenterYank :call nerdcommenter#Comment("x", "Yank")<cr>
nnoremap <silent> <Plug>NERDCommenterYank :call nerdcommenter#Comment("n", "Yank")<cr>
xnoremap <silent> <Plug>NERDCommenterSexy :call nerdcommenter#Comment("x", "Sexy")<cr>
nnoremap <silent> <Plug>NERDCommenterSexy :call nerdcommenter#Comment("n", "Sexy")<cr>
xnoremap <silent> <Plug>NERDCommenterInvert :call nerdcommenter#Comment("x", "Invert")<cr>
nnoremap <silent> <Plug>NERDCommenterInvert :call nerdcommenter#Comment("n", "Invert")<cr>
nnoremap <silent> <Plug>NERDCommenterToEOL :call nerdcommenter#Comment("n", "ToEOL")<cr>
xnoremap <silent> <Plug>NERDCommenterNested :call nerdcommenter#Comment("x", "Nested")<cr>
nnoremap <silent> <Plug>NERDCommenterNested :call nerdcommenter#Comment("n", "Nested")<cr>
xnoremap <silent> <Plug>NERDCommenterMinimal :call nerdcommenter#Comment("x", "Minimal")<cr>
nnoremap <silent> <Plug>NERDCommenterMinimal :call nerdcommenter#Comment("n", "Minimal")<cr>
xnoremap <silent> <Plug>NERDCommenterToggle :call nerdcommenter#Comment("x", "Toggle")<cr>
nnoremap <silent> <Plug>NERDCommenterToggle :call nerdcommenter#Comment("n", "Toggle")<cr>
xnoremap <silent> <Plug>NERDCommenterComment :call nerdcommenter#Comment("x", "Comment")<cr>
nnoremap <silent> <Plug>NERDCommenterComment :call nerdcommenter#Comment("n", "Comment")<cr>
xnoremap <silent> <Plug>(peekaboo) :<cr>call peekaboo#aboo()<cr>
nnoremap <silent> <Plug>(peekaboo) :<cr>call peekaboo#aboo()<cr>
nnoremap <silent> <Plug>MarkSearchGroup9Prev :<cr>if ! mark#SearchGroupMark(9, v:count1, 1, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup9Next :<cr>if ! mark#SearchGroupMark(9, v:count1, 0, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup8Prev :<cr>if ! mark#SearchGroupMark(8, v:count1, 1, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup8Next :<cr>if ! mark#SearchGroupMark(8, v:count1, 0, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup7Prev :<cr>if ! mark#SearchGroupMark(7, v:count1, 1, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup7Next :<cr>if ! mark#SearchGroupMark(7, v:count1, 0, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup6Prev :<cr>if ! mark#SearchGroupMark(6, v:count1, 1, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup6Next :<cr>if ! mark#SearchGroupMark(6, v:count1, 0, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup5Prev :<cr>if ! mark#SearchGroupMark(5, v:count1, 1, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup5Next :<cr>if ! mark#SearchGroupMark(5, v:count1, 0, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup4Prev :<cr>if ! mark#SearchGroupMark(4, v:count1, 1, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup4Next :<cr>if ! mark#SearchGroupMark(4, v:count1, 0, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup3Prev :<cr>if ! mark#SearchGroupMark(3, v:count1, 1, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup3Next :<cr>if ! mark#SearchGroupMark(3, v:count1, 0, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup2Prev :<cr>if ! mark#SearchGroupMark(2, v:count1, 1, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup2Next :<cr>if ! mark#SearchGroupMark(2, v:count1, 0, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup1Prev :<cr>if ! mark#SearchGroupMark(1, v:count1, 1, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup1Next :<cr>if ! mark#SearchGroupMark(1, v:count1, 0, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchCascadePrevNoStop :<cr>if ! mark#cascade#Next(v:count1, 0, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchCascadeNextNoStop :<cr>if ! mark#cascade#Next(v:count1, 0, 0)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchCascadeStartNoStop :<cr>if ! mark#cascade#Start(v:count, 0)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"   <cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchCascadePrevWithStop :<cr>if ! mark#cascade#Next(v:count1, 1, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchCascadeNextWithStop :<cr>if ! mark#cascade#Next(v:count1, 1, 0)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchCascadeStartWithStop :<cr>if ! mark#cascade#Start(v:count, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"   <cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchUsedGroupPrev :<cr>if ! mark#SearchNextGroup(v:count1, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchUsedGroupNext :<cr>if ! mark#SearchNextGroup(v:count1, 0)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroupPrev :<cr>if ! mark#SearchGroupMark(v:count, 1, 1, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroupNext :<cr>if ! mark#SearchGroupMark(v:count, 1, 0, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchAnyOrDefaultPrev :<cr>if mark#IsEnabled() && mark#GetCount() > 0<cr>|if ! mark#SearchAnyMark(1)<cr>|echoerr ingo#err#Get()<cr>|endif<cr>|else<cr>|execute 'normal!' v:count1 . 'Nzv'<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchAnyOrDefaultNext :<cr>if mark#IsEnabled() && mark#GetCount() > 0<cr>|if ! mark#SearchAnyMark(0)<cr>|echoerr ingo#err#Get()<cr>|endif<cr>|else<cr>|execute 'normal!' v:count1 . 'nzv'<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchOrAnyPrev :<cr>if ! mark#SearchNext(1,'mark#SearchAnyMark')<cr>|execute 'normal!' v:count1 . '#zv'<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchOrAnyNext :<cr>if ! mark#SearchNext(0,'mark#SearchAnyMark')<cr>|execute 'normal!' v:count1 . '*zv'<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchOrCurPrev :<cr>if ! mark#SearchNext(1,'mark#SearchCurrentMark')<cr>|execute 'normal!' v:count1 . '#zv'<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchOrCurNext :<cr>if ! mark#SearchNext(0,'mark#SearchCurrentMark')<cr>|execute 'normal!' v:count1 . '*zv'<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchPrev :<cr>if ! mark#SearchNext(1)<cr>|execute 'normal!' v:count1 . '#zv'<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchNext :<cr>if ! mark#SearchNext(0)<cr>|execute 'normal!' v:count1 . '*zv'<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchAnyPrev :<cr>if ! mark#SearchAnyMark(1)<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchAnyNext :<cr>if ! mark#SearchAnyMark(0)<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchCurrentPrev :<cr>if ! mark#SearchCurrentMark(1)<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchCurrentNext :<cr>if ! mark#SearchCurrentMark(0)<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkToggle :<cr>call mark#Toggle()<cr>
nnoremap <silent> <Plug>MarkConfirmAllClear :<cr>if confirm('Really delete all marks? This cannot be undone.', "&Yes\n&No") == 1<cr>|call mark#ClearAll()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkAllClear :<cr>call mark#ClearAll()<cr>
nnoremap <silent> <Plug>MarkClear :<cr>if ! mark#Clear(v:count)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
vnoremap <silent> <Plug>MarkRegex :<cr>if ! mark#MarkRegex(v:count, mark#GetVisualSelectionAsRegexp())<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkRegex :<cr>if ! mark#MarkRegex(v:count, '')<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
vnoremap <silent> <Plug>MarkIWhiteSet :<cr>if ! mark#DoMark(v:count, mark#GetVisualSelectionAsLiteralWhitespaceIndifferentPattern())[0]<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|endif<cr>
vnoremap <silent> <Plug>MarkSet :<cr>if ! mark#DoMark(v:count, mark#GetVisualSelectionAsLiteralPattern())[0]<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|endif<cr>
nnoremap <silent> <Plug>MarkPartialWord :<cr>if ! mark#MarkCurrentWord(v:count, 0)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSet :<cr>if ! mark#MarkCurrentWord(v:count)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|endif<cr>
noremap <Plug>(_incsearch-g#) g#
noremap <Plug>(_incsearch-g*) g*
noremap <Plug>(_incsearch-#) #
noremap <Plug>(_incsearch-*) *
noremap <expr> <Plug>(_incsearch-N) g:incsearch#consistent_n_direction && !v:searchforward ? 'n' : 'N'
noremap <expr> <Plug>(_incsearch-n) g:incsearch#consistent_n_direction && !v:searchforward ? 'N' : 'n'
map <Plug>(incsearch-nohl-g#) <Plug>(incsearch-nohl)<Plug>(_incsearch-g#)
map <Plug>(incsearch-nohl-g*) <Plug>(incsearch-nohl)<Plug>(_incsearch-g*)
map <Plug>(incsearch-nohl-#) <Plug>(incsearch-nohl)<Plug>(_incsearch-#)
map <Plug>(incsearch-nohl-*) <Plug>(incsearch-nohl)<Plug>(_incsearch-*)
map <Plug>(incsearch-nohl-N) <Plug>(incsearch-nohl)<Plug>(_incsearch-N)
map <Plug>(incsearch-nohl-n) <Plug>(incsearch-nohl)<Plug>(_incsearch-n)
noremap <expr> <Plug>(incsearch-nohl2) incsearch#autocmd#auto_nohlsearch(2)
noremap <expr> <Plug>(incsearch-nohl0) incsearch#autocmd#auto_nohlsearch(0)
noremap <expr> <Plug>(incsearch-nohl) incsearch#autocmd#auto_nohlsearch(1)
noremap <silent> <expr> <Plug>(incsearch-stay) incsearch#go({'command': '/', 'is_stay': 1})
noremap <silent> <expr> <Plug>(incsearch-backward) incsearch#go({'command': '?'})
noremap <silent> <expr> <Plug>(incsearch-forward) incsearch#go({'command': '/'})
xmap <C-Right> <Plug>(textmanip-move-right)
xmap <C-Left> <Plug>(textmanip-move-left)
xmap <C-Up> <Plug>(textmanip-move-up)
xmap <C-Down> <Plug>(textmanip-move-down)
xnoremap <Plug>(textmanip-toggle-mode) :<cr>call textmanip#mode('toggle')<cr>gv
nnoremap <Plug>(textmanip-toggle-mode) :<cr>call textmanip#mode('toggle')<cr>
xnoremap <silent> <Plug>(textmanip-blank-below) :<cr>call textmanip#start("blank", "v", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-blank-above) :<cr>call textmanip#start("blank", "^", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-move1-right-r) :<cr>call textmanip#start("move1", ">", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-move1-right-i) :<cr>call textmanip#start("move1", ">", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-move1-right) :<cr>call textmanip#start("move1", ">", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-move1-left-r) :<cr>call textmanip#start("move1", "<cr><", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-move1-left-i) :<cr>call textmanip#start("move1", "<cr><", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-move1-left) :<cr>call textmanip#start("move1", "<cr><", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-move-right-r) :<cr>call textmanip#start("move", ">", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-move-right-i) :<cr>call textmanip#start("move", ">", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-move-right) :<cr>call textmanip#start("move", ">", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-move-left-r) :<cr>call textmanip#start("move", "<cr><", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-move-left-i) :<cr>call textmanip#start("move", "<cr><", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-move-left) :<cr>call textmanip#start("move", "<cr><", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-move-down-r) :<cr>call textmanip#start("move", "v", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-move-down-i) :<cr>call textmanip#start("move", "v", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-move-down) :<cr>call textmanip#start("move", "v", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-move-up-r) :<cr>call textmanip#start("move", "^", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-move-up-i) :<cr>call textmanip#start("move", "^", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-move-up) :<cr>call textmanip#start("move", "^", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-right-r) :<cr>call textmanip#start("duplicate", ">", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-right-i) :<cr>call textmanip#start("duplicate", ">", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-right) :<cr>call textmanip#start("duplicate", ">", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-left-r) :<cr>call textmanip#start("duplicate", "<cr><", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-left-i) :<cr>call textmanip#start("duplicate", "<cr><", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-left) :<cr>call textmanip#start("duplicate", "<cr><", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-down-r) :<cr>call textmanip#start("duplicate", "v", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-down-i) :<cr>call textmanip#start("duplicate", "v", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-down) :<cr>call textmanip#start("duplicate", "v", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-up-r) :<cr>call textmanip#start("duplicate", "^", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-up-i) :<cr>call textmanip#start("duplicate", "^", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-up) :<cr>call textmanip#start("duplicate", "^", "x", "auto")<cr>
nnoremap <silent> <Plug>(textmanip-blank-below) :<cr>call textmanip#start("blank", "v", "n", "auto")<cr>
nnoremap <silent> <Plug>(textmanip-blank-above) :<cr>call textmanip#start("blank", "^", "n", "auto")<cr>
nnoremap <silent> <Plug>(textmanip-move-right-r) :<cr>call textmanip#start("move", ">", "n", "replace")<cr>
nnoremap <silent> <Plug>(textmanip-move-right-i) :<cr>call textmanip#start("move", ">", "n", "insert")<cr>
nnoremap <silent> <Plug>(textmanip-move-right) :<cr>call textmanip#start("move", ">", "n", "auto")<cr>
nnoremap <silent> <Plug>(textmanip-move-left-r) :<cr>call textmanip#start("move", "<cr><", "n", "replace")<cr>
nnoremap <silent> <Plug>(textmanip-move-left-i) :<cr>call textmanip#start("move", "<cr><", "n", "insert")<cr>
nnoremap <silent> <Plug>(textmanip-move-left) :<cr>call textmanip#start("move", "<cr><", "n", "auto")<cr>
nnoremap <silent> <Plug>(textmanip-move-down-r) :<cr>call textmanip#start("move", "v", "n", "replace")<cr>
nnoremap <silent> <Plug>(textmanip-move-down-i) :<cr>call textmanip#start("move", "v", "n", "insert")<cr>
nnoremap <silent> <Plug>(textmanip-move-down) :<cr>call textmanip#start("move", "v", "n", "auto")<cr>
nnoremap <silent> <Plug>(textmanip-move-up-r) :<cr>call textmanip#start("move", "^", "n", "replace")<cr>
nnoremap <silent> <Plug>(textmanip-move-up-i) :<cr>call textmanip#start("move", "^", "n", "insert")<cr>
nnoremap <silent> <Plug>(textmanip-move-up) :<cr>call textmanip#start("move", "^", "n", "auto")<cr>
nnoremap <silent> <Plug>(textmanip-duplicate-down-r) :<cr>call textmanip#start("duplicate", "v", "n", "replace")<cr>
nnoremap <silent> <Plug>(textmanip-duplicate-down-i) :<cr>call textmanip#start("duplicate", "v", "n", "insert")<cr>
nnoremap <silent> <Plug>(textmanip-duplicate-down) :<cr>call textmanip#start("duplicate", "v", "n", "auto")<cr>
nnoremap <silent> <Plug>(textmanip-duplicate-up-r) :<cr>call textmanip#start("duplicate", "^", "n", "replace")<cr>
nnoremap <silent> <Plug>(textmanip-duplicate-up-i) :<cr>call textmanip#start("duplicate", "^", "n", "insert")<cr>
nnoremap <silent> <Plug>(textmanip-duplicate-up) :<cr>call textmanip#start("duplicate", "^", "n", "auto")<cr>
xnoremap <Plug>(open-url-search-wikipedia) :<cr>OpenSearchURL wikipedia <cr>=open_url#get_selection()<cr><cr>
nnoremap <Plug>(open-url-search-wikipedia) :OpenSearchURL wikipedia <cr><cword><cr>
xnoremap <Plug>(open-url-search-google) :<cr>OpenSearchURL google <cr>=open_url#get_selection()<cr><cr>
nnoremap <Plug>(open-url-search-google) :OpenSearchURL google <cr><cword><cr>
xnoremap <Plug>(open-url-search-so) :<cr>OpenSearchURL so <cr>=open_url#get_selection()<cr><cr>
nnoremap <Plug>(open-url-search-so) :OpenSearchURL so <cr><cword><cr>
xnoremap <Plug>(open-url-search) :<cr>OpenSearchURL <cr>=open_url#get_selection()<cr><cr>
nnoremap <Plug>(open-url-search) :OpenSearchURL <cr><cword><cr>
xnoremap <Plug>(open-url-browser) :<cr>OpenURL <cr>=open_url#get_selection()<cr><cr>
nnoremap <Plug>(open-url-browser) :OpenURL <cr><cfile><cr>
xnoremap <silent> <Plug>(openbrowser-smart-search) :<cr>call openbrowser#_keymap_smart_search('v')<cr>
nnoremap <silent> <Plug>(openbrowser-smart-search) :<cr>call openbrowser#_keymap_smart_search('n')<cr>
xnoremap <silent> <Plug>(openbrowser-search) :<cr>call openbrowser#_keymap_search('v')<cr>
nnoremap <silent> <Plug>(openbrowser-search) :<cr>call openbrowser#_keymap_search('n')<cr>
xnoremap <silent> <Plug>(openbrowser-open-incognito) :<cr>call openbrowser#_keymap_open('v', 0, ['--incognito'])<cr>
nnoremap <silent> <Plug>(openbrowser-open-incognito) :<cr>call openbrowser#_keymap_open('n', 0, ['--incognito'])<cr>
xnoremap <silent> <Plug>(openbrowser-open) :<cr>call openbrowser#_keymap_open('v')<cr>
nnoremap <silent> <Plug>(openbrowser-open) :<cr>call openbrowser#_keymap_open('n')<cr>
vmap <F6> <Plug>(openbrowser-smart-search)
nnoremap <F6> :execute "normal \<Plug>(openbrowser-smart-search)"<cr>|silent !nsBt<cr>
nnoremap <silent> <Plug>CalendarT :cal calendar#show(2)<cr>
nnoremap <silent> <Plug>CalendarH :cal calendar#show(1)<cr>
nnoremap <silent> <Plug>CalendarV :cal calendar#show(0)<cr>
nmap <silent> <SNR>35_DisableFontsizeDefault <Plug>FontsizeDefault
nmap <silent> <SNR>35_DisableFontsizeDec <Plug>FontsizeDec
nmap <silent> <SNR>35_DisableFontsizeInc <Plug>FontsizeInc
nnoremap <silent> <SNR>115_quit :<cr>call fontsize#quit()<cr>
nnoremap <silent> <SNR>115_setDefault :<cr>call fontsize#setDefault()<cr>
nnoremap <silent> <SNR>115_default :<cr>call fontsize#default()<cr>
nnoremap <silent> <SNR>115_dec :<cr>call fontsize#dec()<cr>
nnoremap <silent> <SNR>115_inc :<cr>call fontsize#inc()<cr>
nnoremap <silent> <SNR>115_begin :<cr>call fontsize#begin()<cr>
nnoremap <silent> <Plug>(ale_info_preview) :ALEInfo -preview<cr>
nnoremap <silent> <Plug>(ale_info_clipboard) :ALEInfo -clipboard<cr>
nnoremap <silent> <Plug>(ale_info_echo) :ALEInfo -echo<cr>
nnoremap <silent> <Plug>(ale_info) :ALEInfo<cr>
nnoremap <silent> <Plug>(ale_repeat_selection) :ALERepeatSelection<cr>
nnoremap <silent> <Plug>(ale_code_action) :ALECodeAction<cr>
nnoremap <silent> <Plug>(ale_filerename) :ALEFileRename<cr>
nnoremap <silent> <Plug>(ale_rename) :ALERename<cr>
nnoremap <silent> <Plug>(ale_import) :ALEImport<cr>
nnoremap <silent> <Plug>(ale_documentation) :ALEDocumentation<cr>
nnoremap <silent> <Plug>(ale_hover) :ALEHover<cr>
nnoremap <silent> <Plug>(ale_find_references) :ALEFindReferences<cr>
nnoremap <silent> <Plug>(ale_go_to_implementation_in_vsplit) :ALEGoToImplementation -vsplit<cr>
nnoremap <silent> <Plug>(ale_go_to_implementation_in_split) :ALEGoToImplementation -split<cr>
nnoremap <silent> <Plug>(ale_go_to_implementation_in_tab) :ALEGoToImplementation -tab<cr>
nnoremap <silent> <Plug>(ale_go_to_implementation) :ALEGoToImplementation<cr>
nnoremap <silent> <Plug>(ale_go_to_type_definition_in_vsplit) :ALEGoToTypeDefinition -vsplit<cr>
nnoremap <silent> <Plug>(ale_go_to_type_definition_in_split) :ALEGoToTypeDefinition -split<cr>
nnoremap <silent> <Plug>(ale_go_to_type_definition_in_tab) :ALEGoToTypeDefinition -tab<cr>
nnoremap <silent> <Plug>(ale_go_to_type_definition) :ALEGoToTypeDefinition<cr>
nnoremap <silent> <Plug>(ale_go_to_definition_in_vsplit) :ALEGoToDefinition -vsplit<cr>
nnoremap <silent> <Plug>(ale_go_to_definition_in_split) :ALEGoToDefinition -split<cr>
nnoremap <silent> <Plug>(ale_go_to_definition_in_tab) :ALEGoToDefinition -tab<cr>
nnoremap <silent> <Plug>(ale_go_to_definition) :ALEGoToDefinition<cr>
nnoremap <silent> <Plug>(ale_fix) :ALEFix<cr>
nnoremap <silent> <Plug>(ale_detail) :ALEDetail<cr>
nnoremap <silent> <Plug>(ale_lint) :ALELint<cr>
nnoremap <silent> <Plug>(ale_reset_buffer) :ALEResetBuffer<cr>
nnoremap <silent> <Plug>(ale_disable_buffer) :ALEDisableBuffer<cr>
nnoremap <silent> <Plug>(ale_enable_buffer) :ALEEnableBuffer<cr>
nnoremap <silent> <Plug>(ale_toggle_buffer) :ALEToggleBuffer<cr>
nnoremap <silent> <Plug>(ale_reset) :ALEReset<cr>
nnoremap <silent> <Plug>(ale_disable) :ALEDisable<cr>
nnoremap <silent> <Plug>(ale_enable) :ALEEnable<cr>
nnoremap <silent> <Plug>(ale_toggle) :ALEToggle<cr>
nnoremap <silent> <Plug>(ale_last) :ALELast<cr>
nnoremap <silent> <Plug>(ale_first) :ALEFirst<cr>
nnoremap <silent> <Plug>(ale_next_wrap_warning) :ALENext -wrap -warning<cr>
nnoremap <silent> <Plug>(ale_next_warning) :ALENext -warning<cr>
nnoremap <silent> <Plug>(ale_next_wrap_error) :ALENext -wrap -error<cr>
nnoremap <silent> <Plug>(ale_next_error) :ALENext -error<cr>
nnoremap <silent> <Plug>(ale_next_wrap) :ALENextWrap<cr>
nnoremap <silent> <Plug>(ale_next) :ALENext<cr>
nnoremap <silent> <Plug>(ale_previous_wrap_warning) :ALEPrevious -wrap -warning<cr>
nnoremap <silent> <Plug>(ale_previous_warning) :ALEPrevious -warning<cr>
nnoremap <silent> <Plug>(ale_previous_wrap_error) :ALEPrevious -wrap -error<cr>
nnoremap <silent> <Plug>(ale_previous_error) :ALEPrevious -error<cr>
nnoremap <silent> <Plug>(ale_previous_wrap) :ALEPreviousWrap<cr>
nnoremap <silent> <Plug>(ale_previous) :ALEPrevious<cr>
nmap <silent> <2-LeftMouse> <Plug>(matchup-double-click)
nnoremap <Plug>(matchup-reload) :<cr>MatchupReload<cr>
nnoremap <silent> <Plug>(matchup-double-click) :<cr>call matchup#text_obj#double_click()<cr>
onoremap <silent> <Plug>(matchup-a%) :<cr>call matchup#text_obj#delimited(0, 0, 'delim_all')<cr>
onoremap <silent> <Plug>(matchup-i%) :<cr>call matchup#text_obj#delimited(1, 0, 'delim_all')<cr>
xnoremap <silent> <Plug>(matchup-a%) :<cr>call matchup#text_obj#delimited(0, 1, 'delim_all')<cr>
xnoremap <silent> <Plug>(matchup-i%) :<cr>call matchup#text_obj#delimited(1, 1, 'delim_all')<cr>
onoremap <silent> <Plug>(matchup-Z%) :<cr>call matchup#motion#op('Z%')<cr>
xnoremap <silent> <SNR>97_(matchup-Z%) :<cr>call matchup#motion#jump_inside_prev(1)<cr>
nnoremap <silent> <Plug>(matchup-Z%) <Cmd>call matchup#motion#jump_inside_prev(0)<cr>
onoremap <silent> <Plug>(matchup-z%) :<cr>call matchup#motion#op('z%')<cr>
xnoremap <silent> <SNR>97_(matchup-z%) :<cr>call matchup#motion#jump_inside(1)<cr>
nnoremap <silent> <Plug>(matchup-z%) <Cmd>call matchup#motion#jump_inside(0)<cr>
onoremap <silent> <Plug>(matchup-[%) :<cr>call matchup#motion#op('[%')<cr>
onoremap <silent> <Plug>(matchup-]%) :<cr>call matchup#motion#op(']%')<cr>
xnoremap <silent> <SNR>97_(matchup-[%) :<cr>call matchup#motion#find_unmatched(1, 0)<cr>
xnoremap <silent> <SNR>97_(matchup-]%) :<cr>call matchup#motion#find_unmatched(1, 1)<cr>
nnoremap <silent> <Plug>(matchup-[%) <Cmd>call matchup#motion#find_unmatched(0, 0)<cr>
nnoremap <silent> <Plug>(matchup-]%) <Cmd>call matchup#motion#find_unmatched(0, 1)<cr>
onoremap <silent> <Plug>(matchup-g%) :<cr>call matchup#motion#op('g%')<cr>
xnoremap <silent> <SNR>97_(matchup-g%) :<cr>call matchup#motion#find_matching_pair(1, 0)<cr>
onoremap <silent> <Plug>(matchup-%) :<cr>call matchup#motion#op('%')<cr>
xnoremap <silent> <SNR>97_(matchup-%) :<cr>call matchup#motion#find_matching_pair(1, 1)<cr>
nnoremap <silent> <Plug>(matchup-g%) <Cmd>call matchup#motion#find_matching_pair(0, 0)<cr>
nnoremap <silent> <Plug>(matchup-%) <Cmd>call matchup#motion#find_matching_pair(0, 1)<cr>
nnoremap <silent> <expr> <SNR>97_(wise) empty(g:v_motion_force) ? 'v' : g:v_motion_force
nnoremap <silent> <Plug>(matchup-hi-surround) :<cr>call matchup#matchparen#highlight_surrounding()<cr>
nnoremap <silent> <Plug>(PrettierCliPath) :PrettierCliPath<cr>
nnoremap <silent> <Plug>(PrettierCliVersion) :PrettierCliVersion<cr>
nnoremap <silent> <Plug>(PrettierCli) :PrettierCli<cr>
nnoremap <silent> <Plug>(PrettierVersion) :PrettierVersion<cr>
nnoremap <silent> <Plug>(PrettierPartial) :PrettierPartial<cr>
nnoremap <silent> <Plug>(PrettierFragment) :PrettierFragment<cr>
nnoremap <silent> <Plug>(PrettierAsync) :PrettierAsync<cr>
nnoremap <silent> <Plug>(Prettier) :Prettier<cr>
nnoremap <silent> <Plug>TagalongReapply :call tagalong#Reapply()<cr>
nnoremap <F3> :call StripStoreCurSel()<cr>:Ggrep -i "<cr>s" <cr>|cw
noremap <silent> <expr> <Plug>(asterisk-gz#) asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 0, 'is_whole' : 0})
noremap <silent> <expr> <Plug>(asterisk-z#) asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 0, 'is_whole' : 1})
noremap <silent> <expr> <Plug>(asterisk-g#) asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 1, 'is_whole' : 0})
noremap <silent> <expr> <Plug>(asterisk-#) asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 1, 'is_whole' : 1})
noremap <silent> <expr> <Plug>(asterisk-gz*) asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 0, 'is_whole' : 0})
noremap <silent> <expr> <Plug>(asterisk-z*) asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 0, 'is_whole' : 1})
noremap <silent> <expr> <Plug>(asterisk-g*) asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 1, 'is_whole' : 0})
noremap <silent> <expr> <Plug>(asterisk-*) asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 1, 'is_whole' : 1})
xnoremap <silent> <Plug>(QuickScopeToggle) :<cr>call quick_scope#Toggle()<cr>
nnoremap <silent> <Plug>(QuickScopeToggle) :call quick_scope#Toggle()<cr>
xnoremap <expr> <Plug>(QuickScopeWallhacks) quick_scope#Wallhacks()
xnoremap <expr> <Plug>(QuickScopeWallhacksT) quick_scope#Wallhacks("T")
xnoremap <expr> <Plug>(QuickScopeWallhacksF) quick_scope#Wallhacks("F")
onoremap <expr> <Plug>(QuickScopeWallhacks) quick_scope#Wallhacks()
onoremap <expr> <Plug>(QuickScopeWallhacksT) quick_scope#Wallhacks("T")
onoremap <expr> <Plug>(QuickScopeWallhacksF) quick_scope#Wallhacks("F")
nnoremap <expr> <Plug>(QuickScopeWallhacks) quick_scope#Wallhacks()
nnoremap <expr> <Plug>(QuickScopeWallhacksT) quick_scope#Wallhacks("T")
nnoremap <expr> <Plug>(QuickScopeWallhacksF) quick_scope#Wallhacks("F")
nnoremap <silent> <Plug>(QuickScopeT) :<cr>call quick_scope#Ready() <cr>| execute "normal!" v:count1 . quick_scope#Aim("T") <cr>| call quick_scope#Reload() <cr>| call quick_scope#DoubleTap()<cr>
xnoremap <expr> <Plug>(QuickScopeT) quick_scope#Ready() . quick_scope#Aim("T") . quick_scope#Reload() . quick_scope#DoubleTap()
onoremap <expr> <Plug>(QuickScopeT) quick_scope#Ready() . quick_scope#Aim("T") . quick_scope#Reload() . quick_scope#DoubleTap()
nnoremap <silent> <Plug>(QuickScopet) :<cr>call quick_scope#Ready() <cr>| execute "normal!" v:count1 . quick_scope#Aim("t") <cr>| call quick_scope#Reload() <cr>| call quick_scope#DoubleTap()<cr>
xnoremap <expr> <Plug>(QuickScopet) quick_scope#Ready() . quick_scope#Aim("t") . quick_scope#Reload() . quick_scope#DoubleTap()
onoremap <expr> <Plug>(QuickScopet) quick_scope#Ready() . quick_scope#Aim("t") . quick_scope#Reload() . quick_scope#DoubleTap()
nnoremap <silent> <Plug>(QuickScopeF) :<cr>call quick_scope#Ready() <cr>| execute "normal!" v:count1 . quick_scope#Aim("F") <cr>| call quick_scope#Reload() <cr>| call quick_scope#DoubleTap()<cr>
xnoremap <expr> <Plug>(QuickScopeF) quick_scope#Ready() . quick_scope#Aim("F") . quick_scope#Reload() . quick_scope#DoubleTap()
onoremap <expr> <Plug>(QuickScopeF) quick_scope#Ready() . quick_scope#Aim("F") . quick_scope#Reload() . quick_scope#DoubleTap()
nnoremap <silent> <Plug>(QuickScopef) :<cr>call quick_scope#Ready() <cr>| execute "normal!" v:count1 . quick_scope#Aim("f") <cr>| call quick_scope#Reload() <cr>| call quick_scope#DoubleTap()<cr>
xnoremap <expr> <Plug>(QuickScopef) quick_scope#Ready() . quick_scope#Aim("f") . quick_scope#Reload() . quick_scope#DoubleTap()
onoremap <expr> <Plug>(QuickScopef) quick_scope#Ready() . quick_scope#Aim("f") . quick_scope#Reload() . quick_scope#DoubleTap()
nnoremap <silent> <Plug>(startify-open-buffers) :<cr>call startify#open_buffers()<cr>
tnoremap <silent> <Plug>(fzf-normal) <cr><cr>
tnoremap <silent> <Plug>(fzf-insert) <cr><cr>i
nnoremap <silent> <Plug>(fzf-normal) <Nop>
nnoremap <silent> <Plug>(fzf-insert) i
nnoremap <F11> :!start explorer %:p:h<cr><cr>
vnoremap <F4> <esc>:call VimWriteClose()<cr>
nnoremap <F4> :call VimWriteClose()<cr>
nnoremap <C-F5> :call ColorLightDark()<cr>
nnoremap <C-H> <cr>h
onoremap <C-F4> <cr><cr>c
nnoremap <C-F4> <cr>c
vnoremap <C-F4> <cr>c
onoremap <C-Tab> <cr><cr>w
nnoremap <C-Tab> <cr>w
vnoremap <C-Tab> <cr>w
noremap <M-Space> :simalt ~<cr>
noremap <C-Y> <cr>
noremap <C-Z> u
vnoremap <C-S> <cr>:update<cr>
nnoremap <C-S> :update<cr>
onoremap <C-S> :update<cr>
noremap <C-Q> <cr><cr>
vmap <S-Insert> <cr><cr>
nmap <C-V> "+gP
omap <C-V> "+gP
vnoremap <C-C> "+y
vnoremap <BS> d
vnoremap <C-X> "+x
vmap <C-Del> "*d
vnoremap <S-Del> "+x
vnoremap <C-Insert> "+y
nmap <S-Insert> "+gP
omap <S-Insert> "+gP
cnoremap <cr> <cr>gggH<cr>G
inoremap <cr> <cr>gg<cr>gH<cr>G
imap <cr> <Plug>(fzf-dictionary-open)
cnoremap <expr> <cr> has("gui_running") ? "\<cr>\<cr>:promptfind\<cr>" : "\<cr>\<cr>/"
inoremap <expr> <cr> has("gui_running") ? "\<cr>\<cr>:promptfind\<cr>" : "\<cr>\<cr>/"
imap <cr>S <Plug>ISurround
imap <cr>s <Plug>Isurround
imap <silent> <cr>% <Plug>(matchup-c_g%)
cnoremap <expr> <cr> has("gui_running") ? "\<cr>\<cr>:promptrepl\<cr>" : "\<cr>"
inoremap <expr> <cr> has("gui_running") ? "\<cr>\<cr>:promptrepl\<cr>" : "\<cr>"
inoremap <cr> <esc>:update<cr>gi
inoremap <cr> <cr>u<cr>
cmap <cr><cr> <cr>+
inoremap <cr><cr> <cr><cr>
inoremap <cr> <cr><cr>
inoremap <cr> <cr>u
noremap   :simalt ~<cr>
inoremap \<F12> :<esc>call OpenInEmacs()<cr>
inoremap <silent> \<F11> <esc>:echo strftime('%c',getftime(expand('%')))<cr>
inoremap \<F5> :<esc>syntax sync fromstart<cr>
inoremap \\<F5> :call clearmatches()<cr>
inoremap \_ <esc>:call DateFr()<cr>
inoremap \<F4> <esc>:Bdelete other<cr>::sleep<cr>call VimWriteClose()<cr>
iabbr <expr> d8t strftime("%y%m%d(%Hh%Mm%S)")
iabbr <expr> d8s strftime("%d/%m/%y")
iabbr <expr> d8p strftime("%Y-%m-%d %H:%M")
iabbr <expr> d8m strftime("%y%m%d-%Hh%Mm")
iabbr <expr> d8l strftime("%Hh%M %a %d %b %Y")
iabbr <expr> d8c strftime("%y%m%d")
iabbr <expr> d8a strftime("%Y-%m-%d-%a")
iabbr <expr> d8- strftime("%y-%m-%d")
cnoreabbr Flogsp Flogsplit
let &cpo=s:cpo_save
unlet s:cpo_save
set autoread
set background=dark
set balloonexpr=ale#balloon#Expr()
set cmdwinheight=30
set completefunc=thesaurus_query#auto_complete_integrate
set directory=~/.vimswap//
set display=truncate
set fileencodings=ucs-bom,utf-8,default,latin1
set fillchars=fold:\ 
set guifont=Lucida_Console:h9
set guioptions=egrL!
set helplang=fr
set hidden
set history=500
set hlsearch
set ignorecase
set incsearch
set nojoinspaces
set keymodel=startsel,stopsel
set langnoremap
set nolangremap
set laststatus=2
set linespace=4
set listchars=eol:│,nbsp:␣,trail:·,tab:»·
set matchpairs=(:),{:},[:],<:>
set maxmempattern=800000
set modelines=4
set mouse=nvi
set nrformats=bin,hex
set ruler
set runtimepath=
set runtimepath+=~/vimfiles
set runtimepath+=~\\vimfiles\\pack\\cp-all\\opt\\nerdtree
set runtimepath+=~\\vimfiles\\pack\\cp-all\\opt\\vim-devicons
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\bufexplorer
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-surround
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\nerdtree-git-plugin
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\fern-renderer-nerdfont.vim
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\fern-preview.vim
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\fern-git-status.vim
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\fern.vim
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-fzf-dictionary
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\fzf.vim
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-gitgutter
set runtimepath+=~\\vimfiles\\pack\\cp-all\\opt\\ctrlp.vim
set runtimepath+=~\\vimfiles\\pack\\win64\\opt\\lightline.vim
set runtimepath+=~\\vimfiles\\pack\\cp-all\\opt\\vim-illuminate
set runtimepath+=~\\vimfiles\\pack\\cp-all\\opt\\vim-easymotion
set runtimepath+=~\\vimfiles\\pack\\cp-all\\opt\\nerdcommenter
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-peekaboo
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\undotree
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-loclist-follow
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\listtoggle
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-bufkill
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\bufferize.vim
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\targets.vim
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-mark
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\incsearch-fuzzy.vim
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\incsearch.vim
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-textmanip
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-easy-align
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-rooter
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-open-url
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-clifm
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\open-browser.vim
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\calendar-vim
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-fontsize
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\lf-vim
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-ShowTrailingWhitespace
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\FoldText
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-LanguageTool
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-langtool
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\thesaurus_query.vim
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\ale
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-ingo-library
set runtimepath+=~\\vimfiles\\pack\\unix\\opt\\vim-ssh-annex
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-matchup
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\unicode.vim
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-tagbar
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\minimap.vim
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vimtex
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-ps1
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-prettier
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-pandoc-syntax
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-mbsync
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-markdown
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-hjson
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-go
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-dokuwiki
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-closetag
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-bbcode
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-base64
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vader.vim
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\tagalong.vim
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\org.vim
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\neomutt.vim
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\mediawiki.vim
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\emmet-vim
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\csv.vim
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\CSS-one-line--multi-line-folding
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-rhubarb
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\fugitive-gitlab.vim
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-fugitive
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\gitignore.vim
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-flog
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\dsf.vim
set runtimepath+=~\\vimfiles\\pack\\cp-all\\opt\\vim-repeat
set runtimepath+=~\\vimfiles\\pack\\cp-all\\opt\\vim-buffing-wheel
set runtimepath+=~\\vimfiles\\pack\\cp-all\\opt\\close-buffers.vim
set runtimepath+=~\\vimfiles\\pack\\cp-all\\opt\\vim-asterisk
set runtimepath+=~\\vimfiles\\pack\\cp-all\\opt\\quick-scope
set runtimepath+=~\\vimfiles\\pack\\cp-all\\opt\\vim-startify
set runtimepath+=~\\vimfiles\\pack\\cp-all\\opt\\mru
set runtimepath+=~\\vimfiles\\pack\\cp-all\\opt\\vim-characterize
set runtimepath+=~\\vimfiles\\pack\\cp-all\\opt\\context.vim
set runtimepath+=C:\\Vim/vimfiles
set runtimepath+=C:\\Vim\\vim91
set runtimepath+=C:\\Vim\\vim91\\pack\\dist\\opt\\netrw
set runtimepath+=C:\\Vim\\vim91\\pack\\dist\\opt\\cfilter
set runtimepath+=C:\\Vim\\vim91\\pack\\dist\\opt\\matchit
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\nerdtree-git-plugin\\after
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-matchup\\after
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vimtex\\after
set runtimepath+=~\\vimfiles\\pack\\cp-full\\opt\\vim-markdown\\after
set runtimepath+=~/vimfiles/after
set runtimepath+=C:\\Vim/vimfiles/after
set selection=exclusive
set selectmode=mouse,key
set sessionoptions=buffers,curdir,folds,options,tabpages,winsize,terminal,winpos
set shiftwidth=4
set shortmess=filnxtToOI
set noshowmode
set smartcase
set splitbelow
set splitright
set tabline=%!lightline#tabline()
set tabstop=4
set textwidth=99
set ttimeout
set ttimeoutlen=100
set undodir=~/.local/state/vim/undo/
set visualbell
set whichwrap=b,s,<,>,[,]
set wildignore=NTUSER.DAT*,*.lnk
set wildmode=longest,full
set window=59
set winminheight=0
" vim: set ft=vim :
