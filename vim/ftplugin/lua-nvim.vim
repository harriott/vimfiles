
" vim: set fdl=1:

" Language: Lua - only for my nvim configurations
" Maintainer: Joseph Harriott
" Last Change: lun 31 mars 2025
" $vfv/ftplugin/lua-nvim.vim  supplementary to  $vfv/ftplugin/lua.vim
" sourced appropriately in  $vfv/filetype.vim

" for  $vfn/lua/lazy/telescope.lua
" if set as a highlight, this regex gets overriden in nvim,
"  so with  =m  I can invoke it manually as a search
noremap <localleader>c :let@/=":Telescope \\zs[^']*" <cr>:set hlsearch<cr>:echo 'search set to Telescope commands'<cr>
noremap <localleader>k :let@/="^\\s*vim.keymap.set({.*},'\\zs[^']*"<cr>:set hlsearch<cr>:echo 'search set to your mapped keys'<cr>

