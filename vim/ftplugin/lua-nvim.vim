
" vim: set fdl=1:

" Language: Lua - only for my nvim configurations
" Maintainer: Joseph Harriott
" Last Change: Sat 11 May 2024
" $vfv/ftplugin/lua-nvim.vim  supplementary to  $vfv/ftplugin/lua.vim
" sourced appropriately in  $vfv/filetype.vim

" for  $vimfiles/nvim/lua/lazy/telescope.lua
" if set as a highlight, this regex gets overriden in nvim,
"  so with  =k  I can invoke it manually as a search
noremap <localleader>k :let@/="^\\s*vim.keymap.set({.*},'\\zs[^']*"<cr>:set hlsearch<cr>:echo 'search set to your mapped keys'<cr>

