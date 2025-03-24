" vim: set fdl=2:

" Language: csv
" Maintainer: Joseph Harriott
" Last Change: jeu 16 mai 2024
" $vfv/ftplugin/csv.vim  supplementary to  $vfvp/packs-cp-full/opt/csv.vim/README.md

""> for csv.vim
" clearmatches

"">> toggle column highlight
" also needed because automatic highlighting fails after moving out of the buffer
nnoremap <buffer><F7> :call CVCT()<cr>
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

