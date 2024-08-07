" vim: set fdl=2:

" Language: csv
" Maintainer: Joseph Harriott
" Last Change: jeu 16 mai 2024
" $vimfiles/ftplugin/csv.vim  supplementary to  $vfpa/packs-cp/opt/csv.vim/README.md

function! CzAdherentsCsvColumns()
    DeleteColumn 1-4
    DeleteColumn 3
    DeleteColumn 5-52
endfunction

""> for csv.vim
" clearmatches

"">> toggle column highlight
" also needed because automatic highlighting fails after moving out of the buffer
nnoremap <buffer><F7> :call CVCT()<cr>
" Functions with these names cause  VimTeX  to fail if a  *.tex  is read in after a  *.csv,
"  even when  csv.vim  isn't packadd:
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

