
" vim: set fdl=1:

" Language: Lua - only for my nvim configurations
" Maintainer: Joseph Harriott
" Last Change: Sat 11 May 2024
" $vimfiles/vim/ftplugin/lua-nvim.vim  supplementary to  $vimfiles/vim/ftplugin/lua.vim
" sourced appropriately in  $vimfiles/vim/filetype.vim

" if set as a highlight, this regex gets overriden in nvim, so with  =k  I can invoke it manually as a search
noremap <localleader>k :let@/="^\\s*vim.keymap.set({.*},'\\zs[^']*"<cr>:set hlsearch<cr>:echo 'search set to your mapped keys'<cr>

