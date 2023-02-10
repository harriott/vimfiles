" vim: se fdl=2:

" Language:	YAML
" Maintainer: Joseph Harriott
" Last Change: Mon 06 Feb 2023

" $vimfiles/after/syntax/yaml.vim, supplementary to  $VIMRUNTIME/syntax/yaml.vim
"  also $vimfiles/ftplugin/yaml.vim
" $VIMRUNTIME/filetype.vim  decides the various files that are detected as  yaml
"  or use  vim: ft=yaml:

""> my syntax for  #=>  folding
syntax match yamlFoldN '^# \+#=.*$' contained containedin=yamlComment
hi def yamlFoldN term=bold cterm=bold gui=bold guifg=LightGray

"">> active fold, allowing a YAML key on next line
syntax match yamlFoldY '^ *#=.*$' contained containedin=yamlComment skipnl nextgroup=yamlFlowMappingKey
" syntax match yFMKnl '^.*: \zs.*' contains=yamlFlowMappingKey  - attempt to get text normal...
hi def yamlFoldY term=bold cterm=bold gui=bold guifg=LightGreen

