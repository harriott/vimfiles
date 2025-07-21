" vim: set fdl=2:

" Language: csv
" Maintainer: Joseph Harriott
" Last Change: Sun 13 Apr 2025
" $vfv/ftplugin/csv.vim
"  supplementary to  $VIMRUNTIME/ftplugin/csv.vim

setlocal nowrap

""> plugin csv.vim
" clearmatches
" see $vfv/plugin/packsFull.vim

"">> toggle column highlight
if exists('g:csv_vim_loaded')
  " also needed because automatic highlighting fails after moving out of the buffer
  nnoremap <buffer><f7> :call CVCT()<cr>
  " Functions with these names cause  VimTeX  to fail if a  *.tex  is read in after a  *.csv,
  "  even when  csv.vim  isn't packadd'd:
  "   CsvVimColumnToggle()
  "   ColumnToggle()
  "   CsvColumnToggle()
  function! CVCT()
      if exists("g:csv_highlight_column")
          unlet g:csv_highlight_column
          CSVInit
      else
          let g:csv_highlight_column = 1
          HiColumn
      endif
  endfunction
endif

""> plugin csvview.nvim
if has('nvim')
  if !empty(luaeval('package.loaded["csvview"]'))
    nnoremap <buffer><f7> :CsvViewToggle<cr>
  endif
endif " needs  lazy = false  in  $vfn/lua/lazy/csvview_nvim.lua

""> plugin Rainbow CSV
let b:RainbowAligned = 0
" see $vfv/plugin/packsFull.vim

