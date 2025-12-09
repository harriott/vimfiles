vim: set nospell:

call GrabBmmFn() " pastes below (see $vfv/plugin/packsFull.vim)

   <F11>       * :cd %:p:h<CR>|:silent !pcmanfm &<CR>
i  <C-F>       * <Lua 3214: ~/.local/share/nvim/lazy/nvim-cmp/lua/cmp/utils/keymap.lua:133>
i  <F10>       * <Lua 343: ~/.config/nvim/lua/lazy/nvim-tree.lua:65>
i  <F11>         <Esc><F11>
i  <F2>        * <Esc>:wa<CR>
i  <F3>        * <Esc>
i  <F4>        * <Esc>:call VimWriteClose()<CR>
i  <F5>        * <Esc>:wa<CR>:e<CR>
i  <F7>        * get(b:, 'rbcsv', 0) == 1 ? '<Esc>:call RainbowAStoggle()<CR>' : '<F7>'
i  <F8>        * <Lua 252: ~/.local/share/nvim/lazy/telescope.nvim/lua/telescope/builtin/init.lua:502>
i  <F9>        * <Lua 255: ~/.local/share/nvim/lazy/telescope.nvim/lua/telescope/builtin/init.lua:502>
i  <S-F2>      * <Esc>
i  \<F10>      * <Lua 145: ~/.config/nvim/lua/lazy/oil.lua:22>
i  \<F11>      * <Esc>:echo strftime('%c',getftime(expand('%')))<CR>
i  \<F12>      * :<Esc>call OpenInEmacs()<CR>
i  \<F4>       * <Esc>:Bdelete other<CR>::sleep<CR>call VimWriteClose()<CR>
i  \<F5>       * :<Esc>syntax sync fromstart<CR>
i  \\<F5>      * :call clearmatches()<CR>
n  <F10>       * <Lua 375: ~/.config/nvim/lua/lazy/nvim-tree.lua:65>
n  <F1>        * <Lua 346: ~/.config/nvim/lua/lazy/snipe_nvim.lua:17>
n  <F2>        * :wa<CR>
n  <F3>        * :call StripStoreCurSel()<CR>:Ggrep -i "<C-R>s" |cw
n  <F4>        * :call VimWriteClose()<CR>
n  <F5>        * :wa<CR>:edit<CR>
n  <F6>        * :execute "normal \<Plug>(openbrowser-smart-search)"|silent !nsBt<CR>
n  <F7>        * get(b:, 'rbcsv', 0) == 1 ? ':call RainbowAStoggle()<CR>' : '<F7>'
n  <F8>        * <Lua 251: ~/.local/share/nvim/lazy/telescope.nvim/lua/telescope/builtin/init.lua:502>
n  <F9>        * <Lua 254: ~/.local/share/nvim/lazy/telescope.nvim/lua/telescope/builtin/init.lua:502>
n  <S-F1>      * <Cmd>FzfLua buffers<CR>
n  =<F5>       * :let &cole=(&cole == 2) ? 0 : 2 | echo 'conceallevel ' . &cole <CR>
n  \<F10>      * <Lua 146: ~/.config/nvim/lua/lazy/oil.lua:22>
n  \<F11>      * :echo strftime('%c',getftime(expand('%')))<CR>
n  \<F12>      * :call OpenInEmacs()<CR>
n  \<F1>       * <Lua 231: ~/.config/nvim/lua/lazy/telescope.lua:66>
n  \<F4>       * :Bdelete other<CR>:sleep<CR>:call VimWriteClose()<CR>
n  \<F5>       * :syntax sync fromstart<CR>
n  \\<F1>      * <Lua 247: ~/.config/nvim/lua/lazy/telescope.lua:105>
n  \\<F5>      * :call clearmatches()<CR>
v  <F2>        * <Esc>:wa<CR>
v  <F4>        * <Esc>:call VimWriteClose()<CR>
v  <F5>        * <Esc>:wa<CR>:e<CR>
v  <F6>          <Plug>(openbrowser-smart-search)
v  <F7>        * get(b:, 'rbcsv', 0) == 1 ? '<Esc>:call RainbowAStoggle()<CR>' : '<F7>'
v  <F8>        * <Lua 253: ~/.local/share/nvim/lazy/telescope.nvim/lua/telescope/builtin/init.lua:502>
v  <F9>        * <Lua 256: ~/.local/share/nvim/lazy/telescope.nvim/lua/telescope/builtin/init.lua:502>
v  \<F10>      * <Lua 147: ~/.config/nvim/lua/lazy/oil.lua:22>
v  \<F11>      * <Esc>:echo strftime('%c',getftime(expand('%')))<CR>

