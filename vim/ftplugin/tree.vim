" vim: se fdl=1:

" Language: tree
"  - output from (unix) tree, nicely folded up
"    also handles output from  systeroid -T
" cd $ITcore; fd -tf -u -e tree
" Maintainer: Joseph Harriott
" Last Change: Sat 20 Jun 2026

" $vfv/ftplugin/tree.vim
"  also  $vfv/syntax/tree.vim

" a hack using trailing colons to indicate fold level
" %s/ :*$

""> folding by tree glyphs
setlocal foldcolumn=1

" Each glyph is counted by vimscript as 3 characters:
"  let tree_glyphs = substitute('a└b│c├d', '[^└│├]', '', 'g')
"  let tree_glyphs_true_count = len(substitute(tree_glyphs, '.', 's', 'g'))
"  echo tree_glyphs_true_count

function! UnixTreeFold()
  let l:tree_glyphs = matchstr(getline(v:lnum), '^.*─')
  let l:tree_symbols_len = len(substitute(l:tree_glyphs, '.', 's', 'g'))
  let l:fold_level = l:tree_symbols_len / 3 + 1
  if empty(l:fold_level)
    if v:lnum == 1
      return "1"  " for the header, also conveniently handling  systeroid -T
    elseif empty(getline(v:lnum))
      return "0"  " for the empty line before last line of statistics
    else
      return "="
    endif
  else
    return ">".l:fold_level
  endif
endfunction

setlocal foldexpr=UnixTreeFold() foldmethod=expr

