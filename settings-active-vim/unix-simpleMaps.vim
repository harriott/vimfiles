
call GrabSimpleMaps() " pastes below (see $vfv/plugin/packsFull.vim)

x  "            @peekaboo#peek(v:count1, '"',  1)
n  "            @peekaboo#peek(v:count1, '"',  0)
n  @            @peekaboo#peek(v:count1, '@', 0)
n  <Space>     * za
o  ,           * :
x  ,           * :
n  ,           * :
o  :           * ,
x  :           * ,
n  :           * ,
n  =h          * :echo 'you just hit =h'<CR>
x  @(targets)  * :<C-U>call targets#do()<CR>
o  @(targets)  * :<C-U>call targets#do()<CR>
n  @:          * <Nop>
n  @@          * @:
x  A             targets#e('o', 'A', 'A')
o  A             targets#e('o', 'A', 'A')
n  H           * context#util#map_H()
x  I             targets#e('o', 'I', 'I')
o  I             targets#e('o', 'I', 'I')
   Q           * @q
n  U           * :CapsLockOff<CR> | U
n  \8          * :call EightyTwoColumns()<CR>
   \gg         * :call GitGutterFocus()<CR>
n  \q          * :QToggle<CR>
n  \l          * :LToggle<CR>
   \dd         * :BD<CR>
n  \bd         * :Bdelete hidden<CR>
n  \bdd        * :Bdelete other<CR>
n  \bv         & :BufExplorerVerticalSplit<CR>
n  \bs         & :BufExplorerHorizontalSplit<CR>
n  \bt         & :ToggleBufExplorer<CR>
   \be         * :BufExplorer<CR>
n  \e          * :call EasyMotionSearchToggle()<CR>
n  \m          * :MRU
n  \bb         * :CtrlPBuffer<CR>
   \yy         * :CalendarH<CR>
n  \it         * :call IlluminateMoreToggle()<CR>
n  \LT         * :call LanguageTool_lopen() <CR>
n  \lt         * :LangTool | lopen 15 <CR>
n  \th         * :ThesaurusQueryReplaceCurrentWord<CR>
   \aa         * :call ALEToggleBufferShow()<CR>
n  \j          * :Files /mnt/SDU3D1TB/Dropbox/JH<CR>
n  \bf         * :Buffers<CR>
n  \L          * :Lines<CR>
n  \B          * :BLines<CR>
n  \pp         * :<C-U>MatchupWhereAmI??<CR>
n  \atob/      * :%s/\v()/\=base64#decode(submatch(1))/<Home><Right><Right><Right><Right><Right><Right>
n  \btoa/      * :%s/\v()/\=base64#encode(submatch(1))/<Home><Right><Right><Right><Right><Right><Right>
v  \btoa       * :<C-U>call base64#v_btoa()<CR>
v  \atob       * :<C-U>call base64#v_atob()<CR>
n  \d          * :cd %:p:h<CR>:pwd<CR>
n  \-          * :Hexplore<CR>
n  \f          * :let@f=@%<CR>
n  \v          * v$hy
v  \vs         * <Esc>:call ConvertSearchForVisualSelection()<CR>
n  \vs         * :call ConvertSearchForVisualSelection()<CR>
n  \pt         * :call ParenthsToggle()<CR>
n  \is         * :call IncSearchToggle()<CR>
n  \\q         * :call VimgrepQRs()<CR>
n  \vg         * :call VimgrepSelection()<CR>
n  \/          * :call TweakLS()<CR>
v  \n          * <Esc>:nohlsearch<CR>
n  \n          * :nohlsearch<CR>
n  \vv         * :call SplitVtoggle()<CR>
n  \hh         * :call SplitHtoggle()<CR>
n  \vn         * :vnew<CR>
n  \rn         * :set rnu! rnu? <CR>
n  \zz         * :let &scrolloff=999-&scrolloff<CR>
n  \U          * :Underline
n  \[          * :s/\m\[.\{-}]//g<CR>
n  \5          * :call UnicodePercent()<CR>
n  \9          * :call PercentUnicode()<CR>
   \yp         * :lan fr_FR.UTF-8<CR>:call DateFr()<CR>:lan en_GB.UTF-8<CR>
n  \\2         * :call ClearMAS()<CR>
n  \2          * :call ClearFancyGlyphs()<CR>
n  \c=         * :windo set nowfh <CR>
n  \<Right>    * 10<C-W>>
n  \<Left>     * 10<C-W><
n  \<Up>       * 5<C-W>+
n  \<Down>     * 5<C-W>-
n  \\l         * :set cul! cul? <CR>
n  \\c         * :set cuc! cuc? <CR>
n  \x          * <C-W>c
   \\ll        * :set list! list? <CR>  " (:h 'list')
x  a             targets#e('o', 'a', 'a')
o  a             targets#e('o', 'a', 'a')
n  g,          * <Nop>
n  g:          * g,
x  i             targets#e('o', 'i', 'i')
o  i             targets#e('o', 'i', 'i')
x  q:          * <Nop>
n  q:          * <Nop>
x  q,          * q:
n  q,          * q:
n  y<C-G>      & :<C-U>call setreg(v:register, fugitive#Object(@%))<CR>
n  zt          * context#util#map_zt()
n  zr          * :exe ':spellrare  '.expand('<cWORD>')<CR>
v  ~           * y:call setreg('', TwiddleCase(@"), getregtype(''))<CR>gv""Pgv
   <C-N>       * :NERDTreeToggle<CR>
   <C-E>       * :cd %:p:h<CR>:Fern . -reveal=%<CR>
n  <Insert>    * :CapsLockOff <CR>
   <S-Insert>    <MiddleMouse>

i  <C-R>        @peekaboo#peek(1, "\<C-R>",  0)
i  <C-Tab>     * <Tab>
c  <C-R><C-G>  & fnameescape(fugitive#Object(@%))
i  <Insert>    * <Esc> :CapsLockOff <CR>
i  <C-U>       * <C-G>u<C-U>
!  <S-Insert>    <MiddleMouse>
