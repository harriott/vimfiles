" vim: se nowrap:

" generated from within Vim by  :call Grab_exrc()

let s:cpo_save=&cpo
set cpo&vim
inoremap <C-G>S <Plug>(nvim-surround-insert-line)
inoremap <C-G>s <Plug>(nvim-surround-insert)
inoremap <silent> <Plug>(ScrollViewToggle) <Cmd>ScrollViewToggle<cr>
inoremap <silent> <Plug>(ScrollViewRefresh) <Cmd>ScrollViewRefresh<cr>
inoremap <silent> <Plug>(ScrollViewPrev) <Cmd>ScrollViewPrev<cr>
inoremap <silent> <Plug>(ScrollViewNext) <Cmd>ScrollViewNext<cr>
inoremap <silent> <Plug>(ScrollViewLegend!) <Cmd>ScrollViewLegend!<cr>
inoremap <silent> <Plug>(ScrollViewLegend) <Cmd>ScrollViewLegend<cr>
inoremap <silent> <Plug>(ScrollViewLast) <Cmd>ScrollViewLast<cr>
inoremap <silent> <Plug>(ScrollViewFirst) <Cmd>ScrollViewFirst<cr>
inoremap <silent> <Plug>(ScrollViewEnable) <Cmd>ScrollViewEnable<cr>
inoremap <silent> <Plug>(ScrollViewDisable) <Cmd>ScrollViewDisable<cr>
inoremap <S-F2> <esc>
inoremap <F3> <esc>
inoremap <F2> <esc>:wa<cr>
inoremap <F5> <esc>:wa<cr>:e<cr>
inoremap <silent> <Plug>(peekaboo) <c-\><c-o>:<c-u>call peekaboo#aboo()<cr>
inoremap <silent> <Plug>(ale_complete) <c-\><c-o>:ALEComplete<cr>
inoremap <C-X><C-X> <c-x><c-o>
cnoremap <silent> <Plug>(TelescopeFuzzyCommandSearch) <c-\>e "lua require('telescope.builtin').command_history { default_text = [=[" . escape(getcmdline(), '"') . "]=] }"<cr><cr>
imap <F11> <esc><F11>
inoremap <Insert> <esc> :CapsLockOff <cr>
inoremap <F4> <esc>:call VimWriteClose()<cr>
map! <S-Insert> <c-r>+
inoremap <C-W> <c-g>u<c-w>
inoremap <C-U> <c-g>u<c-u>
vnoremap <c-a> <Cmd>Boole increment<cr>
nnoremap <c-a> <Cmd>Boole increment<cr>
nnoremap <c-h> <c-w>h
tnoremap <c-h> <Cmd>wincmd k<cr>
nnoremap <NL> <c-w>j
tnoremap <NL> <Cmd>wincmd k<cr>
nnoremap <c-k> <c-w>k
tnoremap <c-k> <Cmd>wincmd k<cr>
tnoremap <c-l> <Cmd>wincmd k<cr>
nnoremap <c-l> <c-w>l
nmap <c-w><c-d> <c-w>d
vnoremap <c-x> <Cmd>Boole decrement<cr>
nnoremap <c-x> <Cmd>Boole decrement<cr>
tnoremap <esc> <c-\><c-n>
nnoremap <bar>  za
map # <Plug>(asterisk-#)
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap & :&&<cr>
map * <Plug>(asterisk-*)
onoremap , :
xnoremap , :
nnoremap , :
onoremap : ,
xnoremap : ,
nnoremap : ,
vnoremap == <esc>:echo 'you just hit =='<cr>
nnoremap == :echo 'you just hit =='<cr>
nnoremap @: <Nop>
nnoremap @@ @:
xnoremap <silent> @(targets) :<c-u>call targets#do()<cr>
onoremap <silent> @(targets) :<c-u>call targets#do()<cr>
xnoremap <silent> <expr> @ mode() ==# 'V' ? ':normal! @'.getcharstr().'<cr>' : '@'
xmap <expr> A targets#e('o', 'A', 'A')
omap <expr> A targets#e('o', 'A', 'A')
xmap F <Plug>(QuickScopeF)
omap F <Plug>(QuickScopeF)
nmap F <Plug>(QuickScopeF)
nnoremap <silent> <expr> H context#util#map_H()
xmap <expr> I targets#e('o', 'I', 'I')
omap <expr> I targets#e('o', 'I', 'I')
noremap Q @q
xnoremap S <Plug>(nvim-surround-visual)
nnoremap S <Plug>(leap-from-window)
xmap T <Plug>(QuickScopeT)
omap T <Plug>(QuickScopeT)
nmap T <Plug>(QuickScopeT)
nnoremap U :CapsLockOff<cr> <bar>| U
nnoremap Y y$
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
nnoremap \S <Cmd>che vim.lsp<cr>
noremap \gg :call GitGutterFocus()<cr>
nnoremap \d :cd %:p:h<cr>:pwd<cr>
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
nnoremap \bp :call VimgrepBcPc()<cr>
nnoremap \vg :call VimgrepSelection()<cr>
nnoremap \is :call IncSearchToggle()<cr>
nnoremap \/ :call TweakLS()<cr>
vnoremap \n <esc>:nohlsearch<cr>
nnoremap \n :nohlsearch<cr>
nnoremap \c= :windo set nowfh <cr>
nnoremap \<Right> 10<c-w>>
nnoremap \<Left> 10<c-w><bar><
nnoremap \<Up> 5<c-w>+
nnoremap \<Down> 5<c-w>-
nnoremap \\o :write<bar>|close<cr>
nnoremap \\v :vsplit<cr>
nnoremap \\h :split<cr>
nnoremap \x <c-w>c
nnoremap \<F5> :syntax sync fromstart<cr>
nnoremap <silent> \rn :set rnu! rnu? <cr>
nnoremap <silent> \\l :set cul! cul? <cr>
nnoremap <silent> \\c :set cuc! cuc? <cr>
noremap \\ll :set list! list? <cr>
nnoremap \\<F5> :call clearmatches()<cr>
nnoremap \5 :call UnicodePercent()<cr>
nnoremap \9 :call PercentUnicode()<cr>
noremap \yp :lan fr_FR.UTF-8<cr>:call DateFr()<cr>:lan en_GB.UTF-8<cr>
nnoremap \\2 :call ClearMAS()<cr>
nnoremap \2 :call ClearFancyGlyphs()<cr>
nnoremap \le :e ++ff=dos <bar>| set ff=unix <bar>| w! <cr>
nnoremap \\U :Underline
nnoremap \[ :s/\m\[.\{-}]//g<cr>
nnoremap <silent> \q :QToggle<cr>
nnoremap <silent> \l :LToggle<cr>
noremap <silent> \\d :BD<cr>:bp<cr>
nmap <silent> \ba <Plug>BufKillAlt
nmap <silent> \bundo <Plug>BufKillUndo
nmap <silent> \!bw <Plug>BufKillBangBw
nmap <silent> \bw <Plug>BufKillBw
nmap <silent> \!bd <Plug>BufKillBangBd
nmap <silent> \!bun <Plug>BufKillBangBun
nmap <silent> \bun <Plug>BufKillBun
nmap <silent> \bf <Plug>BufKillForward
nmap <silent> \bb <Plug>BufKillBack
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
nnoremap \lt :LangTool <bar>| lopen 15 <cr>
nnoremap \wt :ThesaurusQueryReplaceCurrentWord<cr>
nnoremap \ww :<c-u>MatchupWhereAmI??<cr>
nnoremap \p :echo "\\p"<cr>
nnoremap \atob/ :%s/\v()/\=base64#decode(submatch(1))/<Home><Right><Right><Right><Right><Right><Right>
nnoremap \btoa/ :%s/\v()/\=base64#encode(submatch(1))/<Home><Right><Right><Right><Right><Right><Right>
vnoremap <silent> \btoa :<c-u>call base64#v_btoa()<cr>
vnoremap <silent> \atob :<c-u>call base64#v_atob()<cr>
map \rwp <Plug>RestoreWinPosn
map \swp <Plug>SaveWinPosn
nnoremap \bd :Bdelete hidden<cr>
nnoremap \bdd :Bdelete other<cr>
nnoremap \sv <Cmd>ScrollViewToggle<cr>
nnoremap \aq <Cmd>se fen rnu scl=auto wrap<cr>
nnoremap \zg <Cmd>FzfLua files cwd=$onGH<cr>
nnoremap \zt <Cmd>FzfLua files cwd=$TeNo<cr>
nnoremap \zd <Cmd>FzfLua files cwd=$DWp<cr>
nnoremap \co <Cmd>exe 'colo '.g:colors_name<bar>|echo 'colorscheme reset'<cr>
nnoremap \yy <Cmd>echo 'neoclip'<bar>|Telescope neoclip<cr>
nnoremap \lg :Telescope live_grep_args<cr>
nnoremap \0 :call ToggleGUIwidth(109,133)<cr>
nnoremap \<F4> :Bdelete other<cr>:sleep<cr>:call VimWriteClose()<cr>
noremap \K :exe 'h '.expand('<bar><cword>')<cr>
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
xmap a% <Plug>(MatchitVisualTextObject)
xmap <expr> a targets#e('o', 'a', 'a')
omap <expr> a targets#e('o', 'a', 'a')
xmap af <Plug>DsfTextObjectA
omap af <Plug>DsfTextObjectA
nnoremap cS <Plug>(nvim-surround-change-line)
nnoremap cs <Plug>(nvim-surround-change)
nmap csnf <Plug>DsfNextChange
nmap csf <Plug>DsfChange
nnoremap ds <Plug>(nvim-surround-delete)
nmap dsnf <Plug>DsfNextDelete
nmap dsf <Plug>DsfDelete
xmap f <Plug>(QuickScopef)
omap f <Plug>(QuickScopef)
nmap f <Plug>(QuickScopef)
xnoremap gS <Plug>(nvim-surround-visual-line)
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
nnoremap g, <Nop>
nnoremap g: g,
map g/ <Plug>(incsearch-stay)
xmap gA <Plug>(EasyAlign)
nmap gA <Plug>(EasyAlign)
xmap gG <Plug>(open-url-search-google)
nmap gG <Plug>(open-url-search-google)
xmap gW <Plug>(open-url-search-wikipedia)
nmap gW <Plug>(open-url-search-wikipedia)
xmap g<cr> <Plug>(open-url-search)
nmap g<cr> <Plug>(open-url-search)
xmap gB <Plug>(open-url-browser)
nmap gB <Plug>(open-url-browser)
map g# <Plug>(asterisk-g#)  " rg --no-ignore ' g# '
map g* <Plug>(asterisk-g*)  " rg --no-ignore ' g\* '
nmap ga <Plug>(characterize)
nnoremap gl g`"
xmap <expr> i targets#e('o', 'i', 'i')
omap <expr> i targets#e('o', 'i', 'i')
xmap if <Plug>DsfTextObjectI
omap if <Plug>DsfTextObjectI
xnoremap q: <Nop>
nnoremap q: <Nop>
xnoremap q, q:
nnoremap q, q:
nnoremap s <Plug>(leap)
xmap t <Plug>(QuickScopet)
omap t <Plug>(QuickScopet)
nmap t <Plug>(QuickScopet)
nnoremap ySS <Plug>(nvim-surround-normal-cur-line)
nnoremap yS <Plug>(nvim-surround-normal-line)
nnoremap yss <Plug>(nvim-surround-normal-cur)
nnoremap ys <Plug>(nvim-surround-normal)
nnoremap z? :exe ':spellrare  '.expand('<bar><cWORD>')<cr>
map z/ <Plug>(incsearch-fuzzy-stay)
map z# <Plug>(asterisk-z#)  " rg --no-ignore ' z# '
map z* <Plug>(asterisk-z*)  " rg --no-ignore ' z\* '
nnoremap <silent> <expr> zt context#util#map_zt()
vnoremap ~ y:call setreg('', TwiddleCase(@"), getregtype(''))<cr>gv""Pgv
snoremap <expr> <BS> ("\<BS>" . (&virtualedit ==# '' && getcurpos()[2] >= col('$') - 1 ? 'a' : 'i'))
noremap <silent> <Plug>(ScrollViewToggle) <Cmd>ScrollViewToggle<cr>
noremap <silent> <Plug>(ScrollViewRefresh) <Cmd>ScrollViewRefresh<cr>
noremap <silent> <Plug>(ScrollViewPrev) <Cmd>ScrollViewPrev<cr>
noremap <silent> <Plug>(ScrollViewNext) <Cmd>ScrollViewNext<cr>
noremap <silent> <Plug>(ScrollViewLegend!) <Cmd>ScrollViewLegend!<cr>
noremap <silent> <Plug>(ScrollViewLegend) <Cmd>ScrollViewLegend<cr>
noremap <silent> <Plug>(ScrollViewLast) <Cmd>ScrollViewLast<cr>
noremap <silent> <Plug>(ScrollViewFirst) <Cmd>ScrollViewFirst<cr>
noremap <silent> <Plug>(ScrollViewEnable) <Cmd>ScrollViewEnable<cr>
noremap <silent> <Plug>(ScrollViewDisable) <Cmd>ScrollViewDisable<cr>
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :<c-u>call matchit#MultiMatch("W",  "o")<cr>
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :<c-u>call matchit#MultiMatch("bW", "o")<cr>
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :<c-u>call matchit#MultiMatch("W",  "n")<cr>m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :<c-u>call matchit#MultiMatch("bW", "n")<cr>m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :<c-u>call matchit#MultiMatch("W",  "n")<cr>
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :<c-u>call matchit#MultiMatch("bW", "n")<cr>
onoremap <silent> <Plug>(MatchitOperationBackward) :<c-u>call matchit#Match_wrapper('',0,'o')<cr>
onoremap <silent> <Plug>(MatchitOperationForward) :<c-u>call matchit#Match_wrapper('',1,'o')<cr>
xnoremap <silent> <Plug>(MatchitVisualBackward) :<c-u>call matchit#Match_wrapper('',0,'v')<cr>m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :<c-u>call matchit#Match_wrapper('',1,'v')<cr>:if col("''") != col("$") <bar>| exe ":normal! m'" <bar>| endif<cr>gv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :<c-u>call matchit#Match_wrapper('',0,'n')<cr>
nnoremap <silent> <Plug>(MatchitNormalForward) :<c-u>call matchit#Match_wrapper('',1,'n')<cr>
vnoremap <F2> <esc>:wa<cr>
nnoremap <F2> :wa<cr>
nnoremap <C-=> <c-w>=
nnoremap <C-K> <c-w>k
nnoremap <C-J> <c-w>j
nnoremap <C-H> <c-w>h
vnoremap <F5> <esc>:wa<cr>:e<cr>
nnoremap <F5> :wa<cr>:edit<cr>
xnoremap <silent> <Plug>(peekaboo) :<c-u>call peekaboo#aboo()<cr>
nnoremap <silent> <Plug>(peekaboo) :<c-u>call peekaboo#aboo()<cr>
nnoremap <silent> <Plug>MarkSearchGroup9Prev :<c-u>if ! mark#SearchGroupMark(9, v:count1, 1, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup9Next :<c-u>if ! mark#SearchGroupMark(9, v:count1, 0, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup8Prev :<c-u>if ! mark#SearchGroupMark(8, v:count1, 1, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup8Next :<c-u>if ! mark#SearchGroupMark(8, v:count1, 0, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup7Prev :<c-u>if ! mark#SearchGroupMark(7, v:count1, 1, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup7Next :<c-u>if ! mark#SearchGroupMark(7, v:count1, 0, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup6Prev :<c-u>if ! mark#SearchGroupMark(6, v:count1, 1, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup6Next :<c-u>if ! mark#SearchGroupMark(6, v:count1, 0, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup5Prev :<c-u>if ! mark#SearchGroupMark(5, v:count1, 1, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup5Next :<c-u>if ! mark#SearchGroupMark(5, v:count1, 0, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup4Prev :<c-u>if ! mark#SearchGroupMark(4, v:count1, 1, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup4Next :<c-u>if ! mark#SearchGroupMark(4, v:count1, 0, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup3Prev :<c-u>if ! mark#SearchGroupMark(3, v:count1, 1, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup3Next :<c-u>if ! mark#SearchGroupMark(3, v:count1, 0, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup2Prev :<c-u>if ! mark#SearchGroupMark(2, v:count1, 1, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup2Next :<c-u>if ! mark#SearchGroupMark(2, v:count1, 0, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup1Prev :<c-u>if ! mark#SearchGroupMark(1, v:count1, 1, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup1Next :<c-u>if ! mark#SearchGroupMark(1, v:count1, 0, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchCascadePrevNoStop :<c-u>if ! mark#cascade#Next(v:count1, 0, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchCascadeNextNoStop :<c-u>if ! mark#cascade#Next(v:count1, 0, 0)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchCascadeStartNoStop :<c-u>if ! mark#cascade#Start(v:count, 0)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"   <bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchCascadePrevWithStop :<c-u>if ! mark#cascade#Next(v:count1, 1, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchCascadeNextWithStop :<c-u>if ! mark#cascade#Next(v:count1, 1, 0)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchCascadeStartWithStop :<c-u>if ! mark#cascade#Start(v:count, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"   <bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchUsedGroupPrev :<c-u>if ! mark#SearchNextGroup(v:count1, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchUsedGroupNext :<c-u>if ! mark#SearchNextGroup(v:count1, 0)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroupPrev :<c-u>if ! mark#SearchGroupMark(v:count, 1, 1, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroupNext :<c-u>if ! mark#SearchGroupMark(v:count, 1, 0, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchAnyOrDefaultPrev :<c-u>if mark#IsEnabled() && mark#GetCount() > 0<bar>|if ! mark#SearchAnyMark(1)<bar>|echoerr ingo#err#Get()<bar>|endif<bar>|else<bar>|execute 'normal!' v:count1 . 'Nzv'<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchAnyOrDefaultNext :<c-u>if mark#IsEnabled() && mark#GetCount() > 0<bar>|if ! mark#SearchAnyMark(0)<bar>|echoerr ingo#err#Get()<bar>|endif<bar>|else<bar>|execute 'normal!' v:count1 . 'nzv'<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchOrAnyPrev :<c-u>if ! mark#SearchNext(1,'mark#SearchAnyMark')<bar>|execute 'normal!' v:count1 . '#zv'<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchOrAnyNext :<c-u>if ! mark#SearchNext(0,'mark#SearchAnyMark')<bar>|execute 'normal!' v:count1 . '*zv'<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchOrCurPrev :<c-u>if ! mark#SearchNext(1,'mark#SearchCurrentMark')<bar>|execute 'normal!' v:count1 . '#zv'<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchOrCurNext :<c-u>if ! mark#SearchNext(0,'mark#SearchCurrentMark')<bar>|execute 'normal!' v:count1 . '*zv'<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchPrev :<c-u>if ! mark#SearchNext(1)<bar>|execute 'normal!' v:count1 . '#zv'<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchNext :<c-u>if ! mark#SearchNext(0)<bar>|execute 'normal!' v:count1 . '*zv'<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchAnyPrev :<c-u>if ! mark#SearchAnyMark(1)<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchAnyNext :<c-u>if ! mark#SearchAnyMark(0)<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchCurrentPrev :<c-u>if ! mark#SearchCurrentMark(1)<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchCurrentNext :<c-u>if ! mark#SearchCurrentMark(0)<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkToggle :<c-u>call mark#Toggle()<cr>
nnoremap <silent> <Plug>MarkConfirmAllClear :<c-u>if confirm('Really delete all marks? This cannot be undone.', "&Yes\n&No") == 1<bar>|call mark#ClearAll()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkAllClear :<c-u>call mark#ClearAll()<cr>
nnoremap <silent> <Plug>MarkClear :<c-u>if ! mark#Clear(v:count)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
vnoremap <silent> <Plug>MarkRegex :<c-u>if ! mark#MarkRegex(v:count, mark#GetVisualSelectionAsRegexp())<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkRegex :<c-u>if ! mark#MarkRegex(v:count, '')<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
vnoremap <silent> <Plug>MarkIWhiteSet :<c-u>if ! mark#DoMark(v:count, mark#GetVisualSelectionAsLiteralWhitespaceIndifferentPattern())[0]<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|endif<cr>
vnoremap <silent> <Plug>MarkSet :<c-u>if ! mark#DoMark(v:count, mark#GetVisualSelectionAsLiteralPattern())[0]<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|endif<cr>
nnoremap <silent> <Plug>MarkPartialWord :<c-u>if ! mark#MarkCurrentWord(v:count, 0)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSet :<c-u>if ! mark#MarkCurrentWord(v:count)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|endif<cr>
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
xnoremap <Plug>(textmanip-toggle-mode) :<c-u>call textmanip#mode('toggle')<cr>gv
nnoremap <Plug>(textmanip-toggle-mode) :<c-u>call textmanip#mode('toggle')<cr>
xnoremap <silent> <Plug>(textmanip-blank-below) :<c-u>call textmanip#start("blank", "v", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-blank-above) :<c-u>call textmanip#start("blank", "^", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-move1-right-r) :<c-u>call textmanip#start("move1", ">", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-move1-right-i) :<c-u>call textmanip#start("move1", ">", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-move1-right) :<c-u>call textmanip#start("move1", ">", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-move1-left-r) :<c-u>call textmanip#start("move1", "<bar><", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-move1-left-i) :<c-u>call textmanip#start("move1", "<bar><", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-move1-left) :<c-u>call textmanip#start("move1", "<bar><", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-move-right-r) :<c-u>call textmanip#start("move", ">", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-move-right-i) :<c-u>call textmanip#start("move", ">", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-move-right) :<c-u>call textmanip#start("move", ">", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-move-left-r) :<c-u>call textmanip#start("move", "<bar><", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-move-left-i) :<c-u>call textmanip#start("move", "<bar><", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-move-left) :<c-u>call textmanip#start("move", "<bar><", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-move-down-r) :<c-u>call textmanip#start("move", "v", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-move-down-i) :<c-u>call textmanip#start("move", "v", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-move-down) :<c-u>call textmanip#start("move", "v", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-move-up-r) :<c-u>call textmanip#start("move", "^", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-move-up-i) :<c-u>call textmanip#start("move", "^", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-move-up) :<c-u>call textmanip#start("move", "^", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-right-r) :<c-u>call textmanip#start("duplicate", ">", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-right-i) :<c-u>call textmanip#start("duplicate", ">", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-right) :<c-u>call textmanip#start("duplicate", ">", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-left-r) :<c-u>call textmanip#start("duplicate", "<bar><", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-left-i) :<c-u>call textmanip#start("duplicate", "<bar><", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-left) :<c-u>call textmanip#start("duplicate", "<bar><", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-down-r) :<c-u>call textmanip#start("duplicate", "v", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-down-i) :<c-u>call textmanip#start("duplicate", "v", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-down) :<c-u>call textmanip#start("duplicate", "v", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-up-r) :<c-u>call textmanip#start("duplicate", "^", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-up-i) :<c-u>call textmanip#start("duplicate", "^", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-up) :<c-u>call textmanip#start("duplicate", "^", "x", "auto")<cr>
nnoremap <silent> <Plug>(textmanip-blank-below) :<c-u>call textmanip#start("blank", "v", "n", "auto")<cr>
nnoremap <silent> <Plug>(textmanip-blank-above) :<c-u>call textmanip#start("blank", "^", "n", "auto")<cr>
nnoremap <silent> <Plug>(textmanip-move-right-r) :<c-u>call textmanip#start("move", ">", "n", "replace")<cr>
nnoremap <silent> <Plug>(textmanip-move-right-i) :<c-u>call textmanip#start("move", ">", "n", "insert")<cr>
nnoremap <silent> <Plug>(textmanip-move-right) :<c-u>call textmanip#start("move", ">", "n", "auto")<cr>
nnoremap <silent> <Plug>(textmanip-move-left-r) :<c-u>call textmanip#start("move", "<bar><", "n", "replace")<cr>
nnoremap <silent> <Plug>(textmanip-move-left-i) :<c-u>call textmanip#start("move", "<bar><", "n", "insert")<cr>
nnoremap <silent> <Plug>(textmanip-move-left) :<c-u>call textmanip#start("move", "<bar><", "n", "auto")<cr>
nnoremap <silent> <Plug>(textmanip-move-down-r) :<c-u>call textmanip#start("move", "v", "n", "replace")<cr>
nnoremap <silent> <Plug>(textmanip-move-down-i) :<c-u>call textmanip#start("move", "v", "n", "insert")<cr>
nnoremap <silent> <Plug>(textmanip-move-down) :<c-u>call textmanip#start("move", "v", "n", "auto")<cr>
nnoremap <silent> <Plug>(textmanip-move-up-r) :<c-u>call textmanip#start("move", "^", "n", "replace")<cr>
nnoremap <silent> <Plug>(textmanip-move-up-i) :<c-u>call textmanip#start("move", "^", "n", "insert")<cr>
nnoremap <silent> <Plug>(textmanip-move-up) :<c-u>call textmanip#start("move", "^", "n", "auto")<cr>
nnoremap <silent> <Plug>(textmanip-duplicate-down-r) :<c-u>call textmanip#start("duplicate", "v", "n", "replace")<cr>
nnoremap <silent> <Plug>(textmanip-duplicate-down-i) :<c-u>call textmanip#start("duplicate", "v", "n", "insert")<cr>
nnoremap <silent> <Plug>(textmanip-duplicate-down) :<c-u>call textmanip#start("duplicate", "v", "n", "auto")<cr>
nnoremap <silent> <Plug>(textmanip-duplicate-up-r) :<c-u>call textmanip#start("duplicate", "^", "n", "replace")<cr>
nnoremap <silent> <Plug>(textmanip-duplicate-up-i) :<c-u>call textmanip#start("duplicate", "^", "n", "insert")<cr>
nnoremap <silent> <Plug>(textmanip-duplicate-up) :<c-u>call textmanip#start("duplicate", "^", "n", "auto")<cr>
xnoremap <Plug>(open-url-search-wikipedia) :<c-u>OpenSearchURL wikipedia <c-r>=open_url#get_selection()<cr><cr>
nnoremap <Plug>(open-url-search-wikipedia) :OpenSearchURL wikipedia <bar><cword><cr>
xnoremap <Plug>(open-url-search-google) :<c-u>OpenSearchURL google <c-r>=open_url#get_selection()<cr><cr>
nnoremap <Plug>(open-url-search-google) :OpenSearchURL google <bar><cword><cr>
xnoremap <Plug>(open-url-search-so) :<c-u>OpenSearchURL so <c-r>=open_url#get_selection()<cr><cr>
nnoremap <Plug>(open-url-search-so) :OpenSearchURL so <bar><cword><cr>
xnoremap <Plug>(open-url-search) :<c-u>OpenSearchURL <c-r>=open_url#get_selection()<cr><cr>
nnoremap <Plug>(open-url-search) :OpenSearchURL <bar><cword><cr>
xnoremap <Plug>(open-url-browser) :<c-u>OpenURL <c-r>=open_url#get_selection()<cr><cr>
nnoremap <Plug>(open-url-browser) :OpenURL <bar><cfile><cr>
xnoremap <silent> <Plug>(openbrowser-smart-search) :<c-u>call openbrowser#_keymap_smart_search('v')<cr>
nnoremap <silent> <Plug>(openbrowser-smart-search) :<c-u>call openbrowser#_keymap_smart_search('n')<cr>
xnoremap <silent> <Plug>(openbrowser-search) :<c-u>call openbrowser#_keymap_search('v')<cr>
nnoremap <silent> <Plug>(openbrowser-search) :<c-u>call openbrowser#_keymap_search('n')<cr>
xnoremap <silent> <Plug>(openbrowser-open-incognito) :<c-u>call openbrowser#_keymap_open('v', 0, ['--incognito'])<cr>
nnoremap <silent> <Plug>(openbrowser-open-incognito) :<c-u>call openbrowser#_keymap_open('n', 0, ['--incognito'])<cr>
xnoremap <silent> <Plug>(openbrowser-open) :<c-u>call openbrowser#_keymap_open('v')<cr>
nnoremap <silent> <Plug>(openbrowser-open) :<c-u>call openbrowser#_keymap_open('n')<cr>
vmap <F6> <Plug>(openbrowser-smart-search)
nnoremap <F6> :execute "normal \<Plug>(openbrowser-smart-search)"<bar>|silent !nsBt<cr>
xnoremap <silent> <Plug>(GrepperOperator) :<c-u>call GrepperOperator(visualmode())<cr>
nnoremap <silent> <Plug>(GrepperOperator) :set opfunc=GrepperOperator<cr>g@
nnoremap <silent> <Plug>CalendarT :cal calendar#show(2)<cr>
nnoremap <silent> <Plug>CalendarH :cal calendar#show(1)<cr>
nnoremap <silent> <Plug>CalendarV :cal calendar#show(0)<cr>
nmap <silent> <SNR>49_DisableFontsizeDefault <Plug>FontsizeDefault
nmap <silent> <SNR>49_DisableFontsizeDec <Plug>FontsizeDec
nmap <silent> <SNR>49_DisableFontsizeInc <Plug>FontsizeInc
nnoremap <silent> <SNR>123_quit :<c-u>call fontsize#quit()<cr>
nnoremap <silent> <SNR>123_setDefault :<c-u>call fontsize#setDefault()<cr>
nnoremap <silent> <SNR>123_default :<c-u>call fontsize#default()<cr>
nnoremap <silent> <SNR>123_dec :<c-u>call fontsize#dec()<cr>
nnoremap <silent> <SNR>123_inc :<c-u>call fontsize#inc()<cr>
nnoremap <silent> <SNR>123_begin :<c-u>call fontsize#begin()<cr>
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
nnoremap <silent> <Plug>(PrettierCliPath) :PrettierCliPath<cr>
nnoremap <silent> <Plug>(PrettierCliVersion) :PrettierCliVersion<cr>
nnoremap <silent> <Plug>(PrettierCli) :PrettierCli<cr>
nnoremap <silent> <Plug>(PrettierVersion) :PrettierVersion<cr>
nnoremap <silent> <Plug>(PrettierPartial) :PrettierPartial<cr>
nnoremap <silent> <Plug>(PrettierFragment) :PrettierFragment<cr>
nnoremap <silent> <Plug>(PrettierAsync) :PrettierAsync<cr>
nnoremap <silent> <Plug>(Prettier) :Prettier<cr>
nnoremap <silent> <Plug>TagalongReapply :call tagalong#Reapply()<cr>
nnoremap <F3> :call StripStoreCurSel()<cr>:Ggrep -i "<c-r>s" <bar>|cw
nmap <silent> <Plug>RestoreWinPosn :call RestoreWinPosn()<cr>
nmap <silent> <Plug>SaveWinPosn :call SaveWinPosn()<cr>
noremap <silent> <expr> <Plug>(asterisk-gz#) asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 0, 'is_whole' : 0})
noremap <silent> <expr> <Plug>(asterisk-z#) asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 0, 'is_whole' : 1})
noremap <silent> <expr> <Plug>(asterisk-g#) asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 1, 'is_whole' : 0})
noremap <silent> <expr> <Plug>(asterisk-#) asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 1, 'is_whole' : 1})
noremap <silent> <expr> <Plug>(asterisk-gz*) asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 0, 'is_whole' : 0})
noremap <silent> <expr> <Plug>(asterisk-z*) asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 0, 'is_whole' : 1})
noremap <silent> <expr> <Plug>(asterisk-g*) asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 1, 'is_whole' : 0})
noremap <silent> <expr> <Plug>(asterisk-*) asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 1, 'is_whole' : 1})
xnoremap <silent> <Plug>(QuickScopeToggle) :<c-u>call quick_scope#Toggle()<cr>
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
nnoremap <silent> <Plug>(QuickScopeT) :<c-u>call quick_scope#Ready() <bar>| execute "normal!" v:count1 . quick_scope#Aim("T") <bar>| call quick_scope#Reload() <bar>| call quick_scope#DoubleTap()<cr>
xnoremap <expr> <Plug>(QuickScopeT) quick_scope#Ready() . quick_scope#Aim("T") . quick_scope#Reload() . quick_scope#DoubleTap()
onoremap <expr> <Plug>(QuickScopeT) quick_scope#Ready() . quick_scope#Aim("T") . quick_scope#Reload() . quick_scope#DoubleTap()
nnoremap <silent> <Plug>(QuickScopet) :<c-u>call quick_scope#Ready() <bar>| execute "normal!" v:count1 . quick_scope#Aim("t") <bar>| call quick_scope#Reload() <bar>| call quick_scope#DoubleTap()<cr>
xnoremap <expr> <Plug>(QuickScopet) quick_scope#Ready() . quick_scope#Aim("t") . quick_scope#Reload() . quick_scope#DoubleTap()
onoremap <expr> <Plug>(QuickScopet) quick_scope#Ready() . quick_scope#Aim("t") . quick_scope#Reload() . quick_scope#DoubleTap()
nnoremap <silent> <Plug>(QuickScopeF) :<c-u>call quick_scope#Ready() <bar>| execute "normal!" v:count1 . quick_scope#Aim("F") <bar>| call quick_scope#Reload() <bar>| call quick_scope#DoubleTap()<cr>
xnoremap <expr> <Plug>(QuickScopeF) quick_scope#Ready() . quick_scope#Aim("F") . quick_scope#Reload() . quick_scope#DoubleTap()
onoremap <expr> <Plug>(QuickScopeF) quick_scope#Ready() . quick_scope#Aim("F") . quick_scope#Reload() . quick_scope#DoubleTap()
nnoremap <silent> <Plug>(QuickScopef) :<c-u>call quick_scope#Ready() <bar>| execute "normal!" v:count1 . quick_scope#Aim("f") <bar>| call quick_scope#Reload() <bar>| call quick_scope#DoubleTap()<cr>
xnoremap <expr> <Plug>(QuickScopef) quick_scope#Ready() . quick_scope#Aim("f") . quick_scope#Reload() . quick_scope#DoubleTap()
onoremap <expr> <Plug>(QuickScopef) quick_scope#Ready() . quick_scope#Aim("f") . quick_scope#Reload() . quick_scope#DoubleTap()
nnoremap <silent> <Plug>(startify-open-buffers) :<c-u>call startify#open_buffers()<cr>
nnoremap <S-F1> <Cmd>FzfLua buffers<cr>
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))<cr>
vnoremap <C-X> <Cmd>Boole decrement<cr>
nnoremap <C-X> <Cmd>Boole decrement<cr>
vnoremap <C-A> <Cmd>Boole increment<cr>
nnoremap <C-A> <Cmd>Boole increment<cr>
tnoremap <C-K> <Cmd>wincmd k<cr>
tnoremap <C-J> <Cmd>wincmd k<cr>
tnoremap <C-L> <Cmd>wincmd k<cr>
tnoremap <C-H> <Cmd>wincmd k<cr>
noremap <F11> :cd %:p:h<cr><bar>|:silent !pcmanfm &<cr>
nnoremap <Insert> :CapsLockOff <cr>
vnoremap <F4> <esc>:call VimWriteClose()<cr>
nnoremap <F4> :call VimWriteClose()<cr>
nmap <C-W><C-D> <c-w>d
nnoremap <C-L> <c-w>l
inoremap <c-g>S <Plug>(nvim-surround-insert-line)
inoremap <c-g>s <Plug>(nvim-surround-insert)
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>
inoremap <c-x><c-x> <c-x><c-o>
inoremap \<F12> :<esc>call OpenInEmacs()<cr>
inoremap <silent> \<F11> <esc>:echo strftime('%c',getftime(expand('%')))<cr>
inoremap \<F5> :<esc>syntax sync fromstart<cr>
inoremap \\<F5> :call clearmatches()<cr>
inoremap \<F4> <esc>:Bdelete other<cr>::sleep<cr>call VimWriteClose()<cr>
iabbr <expr> d8t strftime("%y%m%d(%Hh%Mm%S)")
iabbr <expr> d8s strftime("%d/%m/%y")
iabbr <expr> d8p strftime("%Y-%m-%d %H:%M")
iabbr <expr> d8m strftime("%y%m%d-%Hh%Mm")
iabbr <expr> d8l strftime("%Hh%M %a %d %b %Y")
iabbr <expr> d8d strftime("%a %d %b %Y")
iabbr <expr> d8c strftime("%y%m%d")
iabbr <expr> d8a strftime("%Y-%m-%d-%a")
iabbr <expr> d8- strftime("%y-%m-%d")
cnoreabbr Flogsp Flogsplit
let &cpo=s:cpo_save
unlet s:cpo_save
set clipboard=unnamedplus
set cmdwinheight=20
set completefunc=thesaurus_query#auto_complete_integrate
set completeopt=menu,popup,longest
set directory=~/.vimswap//
set fillchars=fold:\ 
set grepformat=%f:%l:%c:%m
set grepprg=rg\ --vimgrep\ -uu\ 
set guifont=UbuntuMono_Nerd_Font_Mono:h9
set helplang=en
set history=500
set ignorecase
set inccommand=split
set keywordprg=:help
set linespace=2
set listchars=eol:│,nbsp:␣,trail:·,tab:»·
set noloadplugins
set matchpairs=(:),{:},[:],<:>
set maxmempattern=800000
set modelines=4
set mouse=a
set quickfixtextfunc=v:lua.require'pqf'.format
set redrawtime=50000
set runtimepath=
set runtimepath+=~/.config/nvim
set runtimepath+=~/.config/nvim/pack/cp-all/opt/nerdtree
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-peekaboo
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-loclist-follow
set runtimepath+=~/.config/nvim/pack/cp-full/opt/listtoggle
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-bufkill
set runtimepath+=~/.config/nvim/pack/cp-full/opt/bufferize.vim
set runtimepath+=~/.config/nvim/pack/cp-full/opt/targets.vim
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-mark
set runtimepath+=~/.config/nvim/pack/cp-full/opt/incsearch-fuzzy.vim
set runtimepath+=~/.config/nvim/pack/cp-full/opt/incsearch.vim
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-textmanip
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-easy-align
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-rooter
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-open-url
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-clifm
set runtimepath+=~/.config/nvim/pack/cp-full/opt/open-browser.vim
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-grepper
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-Grammalecte
set runtimepath+=~/.config/nvim/pack/cp-full/opt/calendar-vim
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-fontsize
set runtimepath+=~/.config/nvim/pack/cp-full/opt/lf-vim
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-better-whitespace
set runtimepath+=~/.config/nvim/pack/cp-full/opt/FoldText
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-LanguageTool
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-langtool
set runtimepath+=~/.config/nvim/pack/cp-full/opt/thesaurus_query.vim
set runtimepath+=~/.config/nvim/pack/cp-full/opt/ale
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-ingo-library
set runtimepath+=~/.config/nvim/pack/unix/opt/vim-ssh-annex
set runtimepath+=~/.config/nvim/pack/cp-full/opt/unicode.vim
set runtimepath+=~/.config/nvim/pack/cp-full/opt/minimap.vim
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vimtex
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-ps1
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-prettier
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-pandoc-syntax
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-mbsync
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-markdown
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-hjson
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-go
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-dokuwiki
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-closetag
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-bbcode
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-base64
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vader.vim
set runtimepath+=~/.config/nvim/pack/cp-full/opt/tagalong.vim
set runtimepath+=~/.config/nvim/pack/cp-full/opt/rainbow_csv
set runtimepath+=~/.config/nvim/pack/cp-full/opt/org.vim
set runtimepath+=~/.config/nvim/pack/cp-full/opt/neomutt.vim
set runtimepath+=~/.config/nvim/pack/cp-full/opt/msmtp-scripts-vim
set runtimepath+=~/.config/nvim/pack/cp-full/opt/mediawiki.vim
set runtimepath+=~/.config/nvim/pack/cp-full/opt/emmet-vim
set runtimepath+=~/.config/nvim/pack/cp-full/opt/conky-syntax.vim
set runtimepath+=~/.config/nvim/pack/cp-full/opt/CSS-one-line--multi-line-folding
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-gfm-syntax
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-rhubarb
set runtimepath+=~/.config/nvim/pack/cp-full/opt/fugitive-gitlab.vim
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-fugitive
set runtimepath+=~/.config/nvim/pack/cp-full/opt/gitignore.vim
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-flog
set runtimepath+=~/.config/nvim/pack/cp-full/opt/dsf.vim
set runtimepath+=~/.config/nvim/pack/unix/opt/vim-plugin-AnsiEsc
set runtimepath+=~/.config/nvim/pack/cp-all/opt/vim-repeat
set runtimepath+=~/.config/nvim/pack/cp-all/opt/vim-buffing-wheel
set runtimepath+=~/.config/nvim/pack/cp-all/opt/close-buffers.vim
set runtimepath+=~/.config/nvim/pack/cp-all/opt/vim-asterisk
set runtimepath+=~/.config/nvim/pack/cp-all/opt/quick-scope
set runtimepath+=~/.config/nvim/pack/cp-all/opt/vim-startify
set runtimepath+=~/.config/nvim/pack/cp-all/opt/mru
set runtimepath+=~/.config/nvim/pack/cp-all/opt/vim-characterize
set runtimepath+=~/.config/nvim/pack/cp-all/opt/context.vim
set runtimepath+=~/.local/share/nvim/site
set runtimepath+=~/.local/share/nvim/lazy/lazy.nvim
set runtimepath+=~/.local/share/nvim/lazy/cmp-nvim-lsp-signature-help
set runtimepath+=~/.local/share/nvim/lazy/cmp_luasnip
set runtimepath+=~/.local/share/nvim/lazy/cmp-treesitter
set runtimepath+=~/.local/share/nvim/lazy/cmp-vimtex
set runtimepath+=~/.local/share/nvim/lazy/friendly-snippets
set runtimepath+=~/.local/share/nvim/lazy/LuaSnip
set runtimepath+=~/.local/share/nvim/lazy/vim-vsnip
set runtimepath+=~/.local/share/nvim/lazy/cmp-nvim-lsp
set runtimepath+=~/.local/share/nvim/lazy/cmp-buffer
set runtimepath+=~/.local/share/nvim/lazy/lspkind.nvim
set runtimepath+=~/.local/share/nvim/lazy/cmp-spell
set runtimepath+=~/.local/share/nvim/lazy/nvim-cmp
set runtimepath+=~/.local/share/nvim/lazy/ts-comments.nvim
set runtimepath+=~/.local/share/nvim/lazy/nvim-surround
set runtimepath+=~/.local/share/nvim/lazy/vim-illuminate
set runtimepath+=~/.local/share/nvim/lazy/nvim-ts-context-commentstring
set runtimepath+=~/.local/share/nvim/lazy/grug-far.nvim
set runtimepath+=~/.local/share/nvim/lazy/gitsigns.nvim
set runtimepath+=~/.local/share/nvim/lazy/virt-counter.nvim
set runtimepath+=~/.local/share/nvim/lazy/spellwand.nvim
set runtimepath+=~/.local/share/nvim/lazy/nvim-scrollview
set runtimepath+=~/.local/share/nvim/lazy/harpoon
set runtimepath+=~/.local/share/nvim/lazy/rainbow-delimiters.nvim
set runtimepath+=~/.local/share/nvim/lazy/nvim-bqf
set runtimepath+=~/.local/share/nvim/lazy/nvim-tree.lua
set runtimepath+=~/.local/share/nvim/lazy/vindent.nvim
set runtimepath+=~/.local/share/nvim/lazy/mason-lspconfig.nvim
set runtimepath+=~/.local/share/nvim/lazy/mason.nvim
set runtimepath+=~/.local/share/nvim/lazy/indent-blankline.nvim
set runtimepath+=~/.local/share/nvim/lazy/nvim-treesitter-context
set runtimepath+=~/.local/share/nvim/lazy/leap.nvim
set runtimepath+=~/.local/share/nvim/lazy/nvim-notify
set runtimepath+=~/.local/share/nvim/lazy/oil.nvim
set runtimepath+=~/.local/share/nvim/lazy/helpview.nvim
set runtimepath+=~/.local/share/nvim/lazy/numb.nvim
set runtimepath+=~/.local/share/nvim/lazy/nvim-lspconfig
set runtimepath+=~/.local/share/nvim/lazy/typescript-tools.nvim
set runtimepath+=~/.local/share/nvim/lazy/nvim-pqf
set runtimepath+=~/.local/share/nvim/lazy/auto-session
set runtimepath+=~/.local/share/nvim/lazy/fzf-lua
set runtimepath+=~/.local/share/nvim/lazy/visimatch.nvim
set runtimepath+=~/.local/share/nvim/lazy/diffview.nvim
set runtimepath+=~/.local/share/nvim/lazy/bufferline.nvim
set runtimepath+=~/.local/share/nvim/lazy/treesitter-parser-registry
set runtimepath+=~/.local/share/nvim/lazy/nvim-treesitter
set runtimepath+=~/.local/share/nvim/lazy/render-markdown.nvim
set runtimepath+=~/.local/share/nvim/lazy/snipe.nvim
set runtimepath+=~/.local/share/nvim/lazy/nvim-treesitter-textobjects
set runtimepath+=~/.local/share/nvim/lazy/stay-centered.nvim
set runtimepath+=~/.local/share/nvim/lazy/telescope-frecency.nvim
set runtimepath+=~/.local/share/nvim/lazy/telescope-live-grep-args.nvim
set runtimepath+=~/.local/share/nvim/lazy/plenary.nvim
set runtimepath+=~/.local/share/nvim/lazy/telescope-luasnip.nvim
set runtimepath+=~/.local/share/nvim/lazy/telescope.nvim
set runtimepath+=~/.local/share/nvim/lazy/sqlite.lua
set runtimepath+=~/.local/share/nvim/lazy/nvim-neoclip.lua
set runtimepath+=~/.local/share/nvim/lazy/boole.nvim
set runtimepath+=~/.local/share/nvim/lazy/telescope-fzf-native.nvim
set runtimepath+=~/.local/share/nvim/lazy/nvim-web-devicons
set runtimepath+=~/.local/share/nvim/lazy/lualine.nvim
set runtimepath+=/usr/share/nvim/runtime
set runtimepath+=/usr/share/nvim/runtime/pack/dist/opt/matchit
set runtimepath+=/usr/share/nvim/runtime/pack/dist/opt/cfilter
set runtimepath+=/usr/lib64/nvim
set runtimepath+=~/.local/share/nvim/lazy/cmp-nvim-lsp-signature-help/after
set runtimepath+=~/.local/share/nvim/lazy/cmp_luasnip/after
set runtimepath+=~/.local/share/nvim/lazy/cmp-treesitter/after
set runtimepath+=~/.local/share/nvim/lazy/cmp-vimtex/after
set runtimepath+=~/.local/share/nvim/lazy/cmp-nvim-lsp/after
set runtimepath+=~/.local/share/nvim/lazy/cmp-buffer/after
set runtimepath+=~/.local/share/nvim/lazy/cmp-spell/after
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vimtex/after
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-markdown/after
set runtimepath+=~/.config/nvim/pack/cp-full/opt/vim-gfm-syntax/after
set runtimepath+=~/.local/share/nvim/lazy/nvim-bqf/after
set runtimepath+=~/.local/share/nvim/lazy/mason-lspconfig.nvim/after
set runtimepath+=~/.local/share/nvim/lazy/indent-blankline.nvim/after
set runtimepath+=~/.config/nvim/after
set runtimepath+=~/.local/state/nvim/lazy/readme
set sessionoptions=blank,buffers,curdir,folds,tabpages,winsize,winpos,localoptions
set shiftwidth=4
set shortmess=ltToOCFI
set noshowmode
set showtabline=2
set smartcase
set splitbelow
set splitright
set statusline=%#lualine_transparent#
set tabline=%!v:lua.nvim_bufferline()
set tabstop=4
set termguicolors
set textwidth=99
set title
set titlestring=%F
set updatetime=250
set wildmode=longest,full
set winborder=rounded
set window=67
set winminheight=0
" vim: set ft=vim :
