" vim: set fdl=2:

" Language: csv,tsv
" Maintainer: Joseph Harriott
" Last Change: sam 27 déc 2025
" $vfv/ftplugin/RainbowCSV.vim
"  sourced from
"   $vfv/ftplugin/csv.vim
"   $vfv/ftplugin/tsv.vim

""> Rainbow CSV
" see $vfv/plugin/packsFull.vim

"">> keymaps requiring b:rbcsv
" let b:rbcsv

nnoremap <expr> <C-Left>  get(b:, 'rbcsv', 0) == 1 ? ':RainbowCellGoLeft<CR>' : '<C-Left>'
nnoremap <expr> <C-Right> get(b:, 'rbcsv', 0) == 1 ? ':RainbowCellGoRight<CR>' : '<C-Right>'
nnoremap <expr> <C-Up>    get(b:, 'rbcsv', 0) == 1 ? ':RainbowCellGoUp<CR>' : '<C-Up>'
nnoremap <expr> <C-Down>  get(b:, 'rbcsv', 0) == 1 ? ':RainbowCellGoDown<CR>' : '<C-Down>'

" safely toggle alignment
let b:RainbowAligned = 0
function! RainbowAStoggle()
  if b:RainbowAligned
    let b:RainbowAligned = 0
    "  preset in  $vfv/ftplugin/csv.vim, $vfv/ftplugin/tsv.vim
    silent! RainbowShrink
  else
    let b:RainbowAligned = 1
    silent! RainbowAlign
  endif
endfunction
command! RAST silent ! call RainbowAStoggle()
nnoremap <expr> <f7> get(b:, 'rbcsv', 0) == 1 ? ':call RainbowAStoggle()<cr>' : '<f7>'
inoremap <expr> <f7> get(b:, 'rbcsv', 0) == 1 ? '<esc>:call RainbowAStoggle()<cr>' : '<f7>'
vnoremap <expr> <f7> get(b:, 'rbcsv', 0) == 1 ? '<esc>:call RainbowAStoggle()<cr>' : '<f7>'

