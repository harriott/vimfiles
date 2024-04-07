"  Extract from:
"  https://github.com/andreiz/vim-settings/blob/master/.vim/after/ftplugin/php.vim
"  As mentioned in slide 53, http://www.slideshare.net/ZendCon/vim-for-php-programmers-presentation

" Fix matchpairs for PHP (for matchit.vim plugin)
if exists("loaded_matchit")
    let b:match_skip = 's:comment\|string'
    let b:match_words = '<?\(php\)\?:?>,\<switch\>:\<endswitch\>,' .
        \ '\<if\>:\<elseif\>:\<else\>:\<endif\>,' .
        \ '\<while\>:\<endwhile\>,\<do\>:\<while\>,' .
        \ '\<for\>:\<endfor\>,\<foreach\>:\<endforeach\>' .
        \ '<\@<=[ou]l\>[^>]*\%(>\|$\):<\@<=li\>:<\@<=/[ou]l>,' .
        \ '<\@<=dl\>[^>]*\%(>\|$\):<\@<=d[td]\>:<\@<=/dl>,' .
        \ '<\@<=\([^/?][^ \t>]*\)[^>]*\%(>\|$\):<\@<=/\1>,' .
        \ '<:>'
endif
