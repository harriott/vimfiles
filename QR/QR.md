
Joseph's (g)Vim Quick Reference

    :Tabularize\ "
    gA"  " align the lists in this file

    $ $vimfiles/QR> m4ps 0 1
    $vimfiles/QR/QR.md

    :h quickref
    :helptags ALL

Stack Exchange Vi and Vim

# buffers
    'J      " bring up file marked with J (as saved in viminfo) into buffer
    :BD     " :bd maintaining splits
    :bd!(n) " buffer delete
    :bn     " go to buffer n
    :bro w  " your system's Save As dialogue
    :ls     " buffer list
    :marks  " list all the current marks
    :unh    " unhides all buffers (into windows)
    :wa     " write all changed buffers
    :wq     " write buffer in window to file and quit vim window
    \bb     " :CtrlPBuffer
    \bf     " :Buffers
    g-      " revert to previous change
    g+      " advance to next change
    ZQ      " :q!
    ZZ      " :wq
    C-6     " edit the alternate file (usually = the previous buffer)
    C-wgf   " open the file under the cursor in a new tab
    C-wo    " closes all other windows
    C-i     " jump forward (to where you've been)
    C-o     " jump back (to where you've been)

## BufExplorer
\bd  " close all but visible buffers
\bdd " close all but current buffer
\be  " Opens BufExplorer
\bs  " Opens horizontally split window BufExplorer
\bt  " Toggles BufExplorer open or closed
\bv  " Opens vertically split window BufExplorer

# diff
    :dif                    " diffupdate
    :diffo                  " diffoff the window
    :diffo!                 " diffoff the windows
    2dp                     " diffput to buffer 2
    ]c                      " next diff
    [c                      " previous diff
    :se diffopt+=iwhiteall
    :windo difft            " diff the windows

# global
    :g/pattern/d  " delete lines containing "pattern"
    :h :g         " global
    :h :v         " vglobal (=  :g!)

# insert mode commands
    c-ke'    " digraph code for é
    c-o      " moves to normal mode for just one command
    c-p      " keyword completion
    c-r%     " insert relative path of current file
    c-qu201c " unicode codepoint for “

## indent of current line
    0 c-d " remove all indents
    c-d   " remove a shiftwidth
    c-t   " insert a shiftwidth

# layout
    :Prettier     " apply  prettier  to json & others
    :se expandtab " allows  :retab
    :se ch        " cmdheight
    :se cwh       " cmdwinheight - I like 30
    \ll           " location list (ListToggle) if it's there
    \q            " quickfix list (ListToggle)
    \\c           " cursorcolumn toggle
    \\l           " cursorline toggle
    \\ll          " listchars (:h 'list') toggle

## background
    :h 'bg'
    :se bg

## Colorizer
    :ColorClear         " clears colourizing
    :ColorHighlight     " impressive colourizing, but then can't be truly turned off
    :packadd Colorizer  " slows down large file opening

- rgba(255, 255, 255, 0.05) - no
- rgba(255, 255, 255, 5) - yes

## colorizer
    <leader>tc          " (mapped to) ColorToggle (by colorizer) and files open fast when off
    :packadd colorizer  " load the plugin from an opt directory

- deprecated: use `clrzr` on Linux
- doesn't handle rgba's
- only interprets codes

## colours - calmar.ws
 0 #000000  1 #800000  2 #008000  3 #808000  4 #000080  5 #800080  6 #008080  7 #c0c0c0
 8 #808080  9 #ff0000 10 #00ff00 11 #ffff00 12 #0000ff 13 #ff00ff 14 #00ffff 15 #ffffff

 16 #000000  17 #00005f  18 #000087  19 #0000af  20 #0000d7  21 #0000ff
 22 #005f00  23 #005f5f  24 #005f87  25 #005faf  26 #005fd7  27 #005fff
 28 #008700  29 #00875f  30 #008787  31 #0087af  32 #0087d7  33 #0087ff
 34 #00af00  35 #00af5f  36 #00af87  37 #00afaf  38 #00afd7  39 #00afff
 40 #00d700  41 #00d75f  42 #00d787  43 #00d7af  44 #00d7d7  45 #00d7ff
 46 #00ff00  47 #00ff5f  48 #00ff87  49 #00ffaf  50 #00ffd7  51 #00ffff
 52 #5f0000  53 #5f005f  54 #5f0087  55 #5f00af  56 #5f00d7  57 #5f00ff
 58 #5f5f00  59 #5f5f5f  60 #5f5f87  61 #5f5faf  62 #5f5fd7  63 #5f5fff
 64 #5f8700  65 #5f875f  66 #5f8787  67 #5f87af  68 #5f87d7  69 #5f87ff
 70 #5faf00  71 #5faf5f  72 #5faf87  73 #5fafaf  74 #5fafd7  75 #5fafff
 76 #5fd700  77 #5fd75f  78 #5fd787  79 #5fd7af  80 #5fd7d7  81 #5fd7ff
 82 #5fff00  83 #5fff5f  84 #5fff87  85 #5fffaf  86 #5fffd7  87 #5fffff
 88 #870000  89 #87005f  90 #870087  91 #8700af  92 #8700d7  93 #8700ff
 94 #875f00  95 #875f5f  96 #875f87  97 #875faf  98 #875fd7  99 #875fff
100 #878700 101 #87875f 102 #878787 103 #8787af 104 #8787d7 105 #8787ff
106 #87af00 107 #87af5f 108 #87af87 109 #87afaf 110 #87afd7 111 #87afff
112 #87d700 113 #87d75f 114 #87d787 115 #87d7af 116 #87d7d7 117 #87d7ff
118 #87ff00 119 #87ff5f 120 #87ff87 121 #87ffaf 122 #87ffd7 123 #87ffff
124 #af0000 125 #af005f 126 #af0087 127 #af00af 128 #af00d7 129 #af00ff
130 #af5f00 131 #af5f5f 132 #af5f87 133 #af5faf 134 #af5fd7 135 #af5fff
136 #af8700 137 #af875f 138 #af8787 139 #af87af 140 #af87d7 141 #af87ff
142 #afaf00 143 #afaf5f 144 #afaf87 145 #afafaf 146 #afafd7 147 #afafff
148 #afd700 149 #afd75f 150 #afd787 151 #afd7af 152 #afd7d7 153 #afd7ff
154 #afff00 155 #afff5f 156 #afff87 157 #afffaf 158 #afffd7 159 #afffff
160 #d70000 161 #d7005f 162 #d70087 163 #d700af 164 #d700d7 165 #d700ff
166 #d75f00 167 #d75f5f 168 #d75f87 169 #d75faf 170 #d75fd7 171 #d75fff
172 #d78700 173 #d7875f 174 #d78787 175 #d787af 176 #d787d7 177 #d787ff
178 #d7af00 179 #d7af5f 180 #d7af87 181 #d7afaf 182 #d7afd7 183 #d7afff
184 #d7d700 185 #d7d75f 186 #d7d787 187 #d7d7af 188 #d7d7d7 189 #d7d7ff
190 #d7ff00 191 #d7ff5f 192 #d7ff87 193 #d7ffaf 194 #d7ffd7 195 #d7ffff
196 #ff0000 197 #ff005f 198 #ff0087 199 #ff00af 200 #ff00d7 201 #ff00ff
202 #ff5f00 203 #ff5f5f 204 #ff5f87 205 #ff5faf 206 #ff5fd7 207 #ff5fff
208 #ff8700 209 #ff875f 210 #ff8787 211 #ff87af 212 #ff87d7 213 #ff87ff
214 #ffaf00 215 #ffaf5f 216 #ffaf87 217 #ffafaf 218 #ffafd7 219 #ffafff
220 #ffd700 221 #ffd75f 222 #ffd787 223 #ffd7af 224 #ffd7d7 225 #ffd7ff
226 #ffff00 227 #ffff5f 228 #ffff87 229 #ffffaf 230 #ffffd7 231 #ffffff

232 #080808 233 #121212 234 #1c1c1c 235 #262626 236 #303030 237 #3a3a3a
238 #444444 239 #4e4e4e 240 #585858 241 #606060 242 #666666 243 #767676
244 #808080 245 #8a8a8a 246 #949494 247 #9e9e9e 248 #a8a8a8 249 #b2b2b2
250 #bcbcbc 251 #c6c6c6 252 #d0d0d0 253 #dadada 254 #e4e4e4 255 #eeeeee

## colours - cterm-colors
    NR-16   NR-8    COLOR NAME
    0       0       Black
    1       4       DarkBlue
    2       2       DarkGreen
    3       6       DarkCyan
    4       1       DarkRed
    5       5       DarkMagenta
    6       3       Brown, DarkYellow
    7       7       LightGray, LightGrey, Gray, Grey
    8       0*      DarkGray, DarkGrey
    9       4*      Blue, LightBlue
    10      2*      Green, LightGreen
    11      6*      Cyan, LightCyan
    12      1*      Red, LightRed
    13      5*      Magenta, LightMagenta
    14      3*      Yellow, LightYellow
    15      7*      White

## colours - gui-colors
    Red         LightRed        DarkRed
    Green       LightGreen      DarkGreen       SeaGreen
    Blue        LightBlue       DarkBlue        SlateBlue
    Cyan        LightCyan       DarkCyan
    Magenta     LightMagenta    DarkMagenta
    Yellow      LightYellow     Brown           DarkYellow
    Gray        LightGray       DarkGray
    Black       White
    Orange      Purple          Violet

## filter
    :h =
    :set equalprg   " empty by default
    :set indentexpr " empty by default
    gg=G            " indent a file

## folds
    zC             " close current fold & subfolds
    zM             " close all folds
    zMzv           " focus on just the current fold
    zO             " expand current fold & subfolds
    zR             " expand all folds
    za             " toggle current fold open\closed
    zc             " close a fold (or, if already closed, close its parent)
    zi             " toggle foldenable
    zj             " down to next fold
    zk             " up to next fold
    zm             " reduce foldlevel
    zr             " increase foldlevel (#zr -> foldlevel #)
    zv             " view cursor line (opening just enough folds)
    zx             " set folds back to foldlevel
    :se fdl?       " reports the current foldlevel

### foldopen
h 'fdo'
set fdo?

## indentation
    :%le     " remove all indents
    :h 'sw'  " autoindentation - shiftwidth

# movements - in buffer
    nG      " go to line n
    :n      " go to line n
    gj\k    " go down\up a visual line
    [{ / ]} " jump to opening / closing }
    ][ / [] " jump to previous / next } in 1st column
    [( / ]) " jump to opening / closing )
    { or }  " move cursor to start or end of paragraph
    ( or )  " move cursor to start or end of sentence

```vim
ge    " go backwards to end of word
g;    " jump back to position of an older change
:h ``
:h '.
```

# movements - in current line
    $         " end of line
    0         " start of line
    _         " jump to first non-blank character of line
    ^         " jump to first non-blank character
    g$        " jump to last character of screen line
    g^        " jump to first character of screen line

# movements - in current window display
    H         " go Home (top line of current window display)
    M         " go Middle line (of current window display)
    L         " go Last line (of current window display)

# movements - marks
    [g]`"  " jump to last place before closing file

```vim
`z  " move to mark z
'z  " move to start of line of mark z
:h g`
mz  " create mark z
mJ  " put a file-specific mark in current file (can use A-Z0-9)
```

# movements - move current line
    :(5,7)m0  " move line(s 5-7) to start
    :m-2      " That is, the current line is moved up one line
    :m+       " the current line is moved down one line

# movements - move window
    C-b       " back (= up) a page
    C-d       " down half a screen
    C-f       " forward (= down) a page
    C-u       " up half a screen
    C-y       " scroll down the window, without displacing the cursor
    zb        " current line at bottom of window
    zt        " current line at top of window
    zz        " current line at centre of window
    \zz       " toggle centering current line

# replace
    :ncc           " change n lines
    :nrc           " replace n characters with c
    :s/jpg\C/JPG/  " force case

## reuse matched pattern
    :h s\\&
    :s\<pattern>\<new1>&<new2>\ " wraps <pattern> in <new1> & <new2>

# search
    <hash>      " over a word highlights all exact instances, and jumps to last
    :g\pattern  " list of lines containing "pattern"

```vim
%                     " find opposing bracket in a line
*                     " highlight all instances of exactly the word under the cursor
g# (or g*)            " # (or *) without \< \>
\B                    " :BLines
\L                    " :Lines
\n                    " (my mapping for) clearing yellow searched highlights
\rn                   " (my mapping for) toggle relativenumber
:Bufferize il <word>  " grab list of lines containing <word> in a new buffer
:g/^#####\+           " shows lines that begin with 5 or more #'s
:%s/pattern//ng       " reports number of occurances
[I or ]I              " list lines containing word under cursor
n                     " find next highlighted search result
z\                    " incsearch-fuzzy-stay
```

    vim-mark

## fzf.vim
    :Rg <regex> " in the cwd
    \j          " :Files \mnt\SDSSDA240G\Dropbox\JH
    F8          " :History:
    F9          " :History\

## following /
	<ctrl-v>u0000               " (0000 is replaced by the hexadecimal code point value) for combining characters
    \/                          " TweakLS()
    \\q                         " search in my QuickReference notes
	\C (anywhere)               " force case
	\c (anywhere)               " ignore case
	\M                          " nomagic (for what follows), eg returning . & * to themselves
	\V                          " very nomagic (for what follows), eg (also) returning $ to itself
	\v                          " very magic (for what follows), eg making | separate alternatives
    \vs                         " last search in escaped visual selection
    planet\(Awesome\|Terrible\) " planetAwesome or planetTerrible
	text\|alt                   " searches for text & alt

## regex
    [^"]*  " match until quote

```vim
\(alt1\|alt2\|alt3\)
\a    " alphabetic character [A-Za-z]
\d    " digit
\D    " non-digit
\h    " head of word character (a,b,c...z,A,B,C...Z and _)
\S    " non-whitespace character
\s    " whitespace character
\u    " uppercase character
\U    " non-uppercase character
\w    " word character [0-9A-Za-z_]
\{,m} " 0-m matches
\{-}  " as few as possible (only seems to work for single characters)
```

`set magic` is the default, `\v` goes very

### searching before and after
    \ze<endPatternToDiscard>
    <startPatternToDiscard>\zs

# shell
```
:!<shellcmd>          " runs the external shell command
:ALEToggle
:Bufferize python3 print(sys.path)
:cd $DJH
:echo expand("%:h")   " <path_of_current_file>
:echo expand("%:p")   " <path>/file.txt
:Locate <pattern>
:packadd syntastic    " load the plugin from an opt directory
:r<file>              " reads <file> into buffer
:r!<shell_command>    " reads shell command output into buffer
:se sh                " returns the path to the shell
:tabe $HOME\_vimrc    " bring up my vimrc in a new tab
:term
<shellcmd> | gvim -   " pipes shell command output into gvim
gx                    " open url under cursor (or all of first line of markdown link)
shift+F11             " open in Emacs
```

## files & directories
```
2c-g                            " buffer number & full filename (<c-f11>  on  AZERTY)
:e ++ff=dos | set ff=unix | w!  " remove CRLFs
:e.                             " dirvish (or netrw) on current directory
:f  or  c-g                     " relative filename (:h :f)
\<f11>                          " last modification time
\vg                             " cd to file's and vimgrep for last search
gf                              " open file under cursor - :h gF
```

### Netrw
```
:Hexplore  " horizontal split and explore
:Lexplore  " toggle left netrw on working directory
:Vexplore  " vertical split and explore
```

## open webpages
	F6 " open a uURL using open-browser.vim

### vim-open-url
	gB " open URL
	gS " search word
	gW " search Wikipedia

## Python
    :echo has('python')

`:version` shows what minor version of Python is expected

## Win10
```
:echo $computername
:echo $programfiles
:echo $username
```

# tab views
    gT  gt    " move around tabs
    :tab ball " all buffers into tabs
    :tabclose

# text objects
    ci> " change inside angle brackets
    ci} " change inside curly braces

# tricks
    :%s\\v^.*$\\= submatch(0)." ".repeat("=", 70 - len(submatch(0)))  " pad out ends
    :echo &bomb                  " 1 if BOM
    :normal i" . strftime("%c")  " put date-time at cursor
    :so /usr/share/vim/vim90/tools/emoji_list.vim

```vim
&                            " repeat last substitute
:exe                         " :execute
:g\^\m 0                     " reverse the entire buffer
:ni<somecharacter><enter>    " inserts <somecharacters> n time
:h g_CTRL-G                  " position and word info, works on a range too
:t.                          " reproduce line
:t.|s\.\=\g                  " setext-style header underlining
\yy                          " CalendarH
ctrl-q ctrl-m                " inserts ^M (carriage return)
g&                           " repeat last command over the whole document
put ='this_text'
:.,+3s/foo/bar               " replaces on this and next 3 lines
```

in command-line `\t` inserts a tab character

## base64
```
<leader>atob " base64 to a string
<leader>btoa " a string to base64
```

## counting stuff
    :%s\.\\gn|noh  " characters in buffer
    :s\.\&\gn|noh  " show number of characters in a long line
    [selection]g ctrl-g       " counts in context

## case
```
g~<movement> " invert case
```

```vim
~            " toggle case of letter
~            " TwiddleCase of a selection
:s/\<./\u&/g " capitalise first letters
u            " lowercase a visual block
```

## deletions
    d0      " delete back to start of line
    :1,.d         " delete to beginning of file
    :.,$d         " delete to end of file

## entering specials
    digraphs
    Entering special characters
    ^Vu03b2  " gets greek small letter beta

## macros
    @j  " run macro j
    q   " end recording macro
    qj  " begin recording macro in j

## number lists
    :for i in range(1,11) | put =i.'. ' | endfor  " creates a numbered markdown list, ready for items
    :h v_g_CTRL-A
    :put =range(202101,202112) " create a series of numbers

### working down entire buffer
    :let i=1 | g#/# s##\='\'.i# | let i+=1  " prefix-number all files in nnn's neovim window
    :let i=1 | g#^# s##\='> '.i.'. '# | let i+=1  " markdown number all lines
    :let i=1 | g#^.# s#1#\=i#g | let i+=1    " g-> working down through the entire buffer, s-> increase counts

## repeating text
    Esc <number> i <repeatable> Esc  " inserts <repeatable> <number> times
    iab <expr> -- repeat('-', 80)  " then insert  --<tab>
    <repeatable> Esc <number> .  " makes lines of repeatable

## sort
:296,349sort
:%sort u  " removing duplicate lines
:%sort!   " reverse
:sort n   " numeric

# Visual mode commands
    V  " line-based visual SELection
    gv " reselect the last block
    j  " in Visual mode, selects line and moves cursor down (k for up)
    v  " character-based visual selection

# windows splits
    :h ctrl-w
    c-w+[h|j|k|l] " move focus to neighbouring split
    winfixheight

## move them around
    c-w+H  " move split to far left
    c-w+J  " move split to very bottom
    c-w+K  " move split to very top
    c-w+L  " move split to far right
    c-w+r  " rotate split to right

## sizes
    C-w =  " equalise window sizes
    C-w _  " maximizes a window
    Resize Splits with mouse

## split
    :ba    " view all buffers, split horizontally

### current buffer
    :sp    " split horizontally
    :vsp   " split vertically
    c-w+v  " split vertical

### new buffer
    :new     " new buffer, split above
    :vne[w]  " new buffer, split vertical
    c-w n    " new buffer, split horizontal
    c-w ^    " split horizontal and edit the alternative

# words
```
g<Ctrl-G>  " statistics
```

## spell
    $vimfiles/spell/en.utf-8.add
    $vimfiles/spell/fr.utf-8.add
    (count)]s => move to next misspelled word after the cursor
    (count)[s => like  ]s  but search backwards
    :h nospell
    :se spell?
    z= => suggest corrections
    zg => add good word
        zuw => undo

### rare words
    :h hl-SpellRare
    :h spell-RARE
    :spellra <rareword>
    zr

### spelllang
    :se spl
    echo &spelllang

