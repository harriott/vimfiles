
" Language:	csv
" Maintainer: Joseph Harriott
" Last Change: Thu 10 Feb 2022
" $vimfiles/ftplugin/csv.vim, supplementary to  $vimfiles/pack/packs-cp/opt/csv.vim/README.md

" toggle column highlight
nnoremap <buffer><F7> :call CsvColumnToggle()<cr>
function! CsvColumnToggle()
    if exists("g:csv_highlight_column")
        unlet g:csv_highlight_column
        CSVInit
    else
        let g:csv_highlight_column = 'y'
        CSVInit
    endif
endfunction

