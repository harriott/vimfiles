
call GrabBmmFn() " pastes below (see $vfv/plugin/packsFull.vim)

c  <C-F4>      * <C-C><C-W>c
i  <C-F4>      * <C-O><C-W>c
i  <F10>       * <Esc>:cd %:p:h<CR>:NERDTreeCWD<CR>
i  <F11>       * <Esc><F11>
i  <F2>        * <Esc>:wa<CR>
i  <F3>        * <Esc>
i  <F4>        * <Esc>:call F4F4()<CR>
i  <F5>        * <Esc>:wa<CR>:e<CR>
i  <F8>        * <Lua 94: ~/AppData/Local/nvim-data/lazy/telescope.nvim/lua/telescope/builtin/init.lua:501>
i  <F9>        * <Lua 98: ~/AppData/Local/nvim-data/lazy/telescope.nvim/lua/telescope/builtin/init.lua:501>
i  <S-F11>     * <Esc><S-F11>
i  <S-F2>      * <Esc>
i  <S-F5>      * <Esc><S-F5>
i  \<F11>      * <Esc>:echo strftime('%c',getftime(expand('%')))<CR>
i  \<F5>       * :call clearmatches()<CR>
n  <C-F5>      * :call ColorLightDark()<CR>
n  <F10>       * :cd %:p:h<CR>:NERDTreeCWD<CR>
n  <F11>       * :!start explorer /select,%:p<CR>
n  <F1>        * <Lua 105: ~/AppData/Local/nvim-data/lazy/telescope.nvim/lua/telescope/builtin/init.lua:501>
n  <F2>        * :wa<CR>
n  <F3>        * :call StripStoreCurSel()<CR>:Ggrep -i "<C-R>s" |cw
n  <F4>        * :call F4F4()<CR>
n  <F5>        * :wa<CR>:edit<CR>
n  <F6>        * :execute "normal \<Plug>(openbrowser-smart-search)"|silent !nsBt<CR>
n  <F8>        * <Lua 95: ~/AppData/Local/nvim-data/lazy/telescope.nvim/lua/telescope/builtin/init.lua:501>
n  <F9>        * <Lua 97: ~/AppData/Local/nvim-data/lazy/telescope.nvim/lua/telescope/builtin/init.lua:501>
n  <S-F11>     * :call OpenInEmacs()<CR>
n  <S-F1>      * <Lua 93: ~\AppData\Local\nvim/lua/lazy/telescope.lua:42>
n  <S-F5>      * :syntax sync fromstart<CR>
n  \<F11>      * :echo strftime('%c',getftime(expand('%')))<CR>
n  \<F5>       * :call clearmatches()<CR>
nv <C-F4>      * <C-W>c
o  <C-F4>      * <C-C><C-W>c
v  <F2>        * <Esc>:wa<CR>
v  <F4>        * <Esc>:wa<CR>:bd<CR>
v  <F5>        * <Esc>:wa<CR>:e<CR>
v  <F6>          <Plug>(openbrowser-smart-search)
v  <F8>        * <Lua 96: ~/AppData/Local/nvim-data/lazy/telescope.nvim/lua/telescope/builtin/init.lua:501>
v  <F9>        * <Lua 99: ~/AppData/Local/nvim-data/lazy/telescope.nvim/lua/telescope/builtin/init.lua:501>
v  \<F11>      * <Esc>:echo strftime('%c',getftime(expand('%')))<CR>
