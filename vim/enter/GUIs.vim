" vim: set fdl=1:

" $vfv/enter/GUIs.vim
"  source'd by
"   $vfv/enter/gvimrc.vim
"   $vfn/init.vim

let g:sourced_GUIs_vim = 1

" toggle GUI width
let g:columnsdefault = 1
function! ToggleGUIwidth(default,other)
    if g:columnsdefault
        " set columns=a:other
        let &columns=a:other
        let g:columnsdefault = 0
    else
        let &columns=a:default
        let g:columnsdefault = 1
    endif
endfunction  " se co

