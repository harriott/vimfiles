vim: set nospell:

call GrabBmmFn() " pastes below (see $vfv/plugin/packsFull.vim)

   <F11>       * :cd %:p:h<CR>|:silent !pcmanfm &<CR>
i  <F10>       * <Esc>:cd %:p:h<CR>:NERDTreeCWD<CR>
i  <F11>         <Esc><F11>
i  <F2>        * <Esc>:wa<CR>
i  <F3>        * <Esc>
i  <F4>        * <Esc>:call F4F4()<CR>
i  <F5>        * <Esc>:wa<CR>:e<CR>
i  <F8>        * <Lua 105: ~/.local/share/nvim/lazy/telescope.nvim/lua/telescope/builtin/init.lua:501>
i  <F9>        * <Lua 109: ~/.local/share/nvim/lazy/telescope.nvim/lua/telescope/builtin/init.lua:501>
i  <S-F2>      * <Esc>
i  \<F11>      * <Esc>:echo strftime('%c',getftime(expand('%')))<CR>
i  \<F12>      * :<Esc>call OpenInEmacs()<CR>
i  \<F5>       * :<Esc>syntax sync fromstart<CR>
i  \\<F5>      * :call clearmatches()<CR>
n  <F10>       * :cd %:p:h<CR>:NERDTreeCWD<CR>
n  <F1>        * <Lua 116: ~/.local/share/nvim/lazy/telescope.nvim/lua/telescope/builtin/init.lua:501>
n  <F2>        * :wa<CR>
n  <F3>        * :call StripStoreCurSel()<CR>:Ggrep -i "<C-R>s" |cw
n  <F4>        * :call F4F4()<CR>
n  <F5>        * :wa<CR>:edit<CR>
n  <F6>        * :execute "normal \<Plug>(openbrowser-smart-search)"|silent !nsBt<CR>
n  <F8>        * <Lua 106: ~/.local/share/nvim/lazy/telescope.nvim/lua/telescope/builtin/init.lua:501>
n  <F9>        * <Lua 108: ~/.local/share/nvim/lazy/telescope.nvim/lua/telescope/builtin/init.lua:501>
n  \<F11>      * :echo strftime('%c',getftime(expand('%')))<CR>
n  \<F12>      * :call OpenInEmacs()<CR>
n  \<F1>       * <Lua 104: ~/.config/nvim/lua/lazy/telescope.lua:55>
n  \<F4>       * :Bdelete other<CR>:call F4F4()<CR>
n  \<F5>       * :syntax sync fromstart<CR>
n  \\<F5>      * :call clearmatches()<CR>
v  <F2>        * <Esc>:wa<CR>
v  <F4>        * <Esc>:wa<CR>:bd<CR>
v  <F5>        * <Esc>:wa<CR>:e<CR>
v  <F6>          <Plug>(openbrowser-smart-search)
v  <F8>        * <Lua 107: ~/.local/share/nvim/lazy/telescope.nvim/lua/telescope/builtin/init.lua:501>
v  <F9>        * <Lua 110: ~/.local/share/nvim/lazy/telescope.nvim/lua/telescope/builtin/init.lua:501>
v  \<F11>      * <Esc>:echo strftime('%c',getftime(expand('%')))<CR>
