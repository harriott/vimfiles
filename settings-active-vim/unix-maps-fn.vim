
call GrabBmmFn() " pastes below (see $vfv/plugin/packsFull.vim)

   <F11>       * :cd %:p:h<CR>|:silent !pcmanfm &<CR>
i  <C-F3>      * <Esc>:BCommits<CR>
i  <F10>       * <Esc>:cd %:p:h<CR>:NERDTreeCWD<CR>
i  <F11>         <Esc><F11>
i  <F1>        * <Esc>:Buffers<CR>
i  <F2>        * <Esc>:wa<CR>
i  <F3>        * <Esc>
i  <F4>        * <Esc>:wa<CR>:bd<CR>
i  <F5>        * <Esc>:wa<CR>:e<CR>
i  <F8>        * <Esc>:History:<CR>
i  <F9>        * <Esc>:History/<CR>
i  <S-F2>      * <Esc>
i  <S-F3>      * <Esc>:Commits<CR>
i  \<F11>      * <Esc>:echo strftime('%c',getftime(expand('%')))<CR>
i  \<F12>      * :<Esc>call OpenInEmacs()<CR>
i  \<F5>       * :<Esc>syntax sync fromstart<CR>
i  \\<F5>      * :call clearmatches()<CR>
n  <C-F1>      * :if &guioptions=~#'m'|set guioptions-=m|else|set guioptions+=m|endif<CR>
n  <C-F3>      * :BCommits<CR>
n  <C-F5>      * :call ColorLightDark()<CR>
n  <F10>       * :cd %:p:h<CR>:NERDTreeCWD<CR>
n  <F1>        * :Buffers<CR>
n  <F2>        * :wa<CR>
n  <F3>        * :call StripStoreCurSel()<CR>:Ggrep -i "<C-R>s" |cw
n  <F4>        * :wa<CR>:bd<CR>
n  <F5>        * :wa<CR>:edit<CR>
n  <F6>        * :execute "normal \<Plug>(openbrowser-smart-search)"|silent !nsBt<CR>
n  <F8>        * :History:<CR>
n  <F9>        * :History/<CR>
n  <S-F1>      * :Jumps<CR>
n  <S-F3>      * :Commits<CR>
n  \<F11>      * :echo strftime('%c',getftime(expand('%')))<CR>
n  \<F12>      * :call OpenInEmacs()<CR>
n  \<F5>       * :syntax sync fromstart<CR>
n  \\<F5>      * :call clearmatches()<CR>
v  <C-F3>      * <Esc>:BCommits<CR>
v  <F1>        * <Esc>:Buffers<CR>
v  <F2>        * <Esc>:wa<CR>
v  <F4>        * <Esc>:wa<CR>:bd<CR>
v  <F5>        * <Esc>:wa<CR>:e<CR>
v  <F6>          <Plug>(openbrowser-smart-search)
v  <F8>        * <Esc>:History:<CR>
v  <F9>        * <Esc>:History/<CR>
v  <S-F3>      * <Esc>:Commits<CR>
v  \<F11>      * <Esc>:echo strftime('%c',getftime(expand('%')))<CR>
