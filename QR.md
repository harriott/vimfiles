
Joseph's (g)Vim Quick Reference

    :Tabularize\ "
    gA"  " align the lists in this file

    $vimfiles\QR.gfm
    g4p -gfm QR
    m4p QR.md 1

    :h quickref
    :helpt ALL               " generate all tags
    :helptags $HOME\vimfiles " se tags

# buffers
    'J      " bring up file marked with J (as saved in viminfo) into buffer
    :BD     " :bd maintaining splits
    :bd!(n) " buffer delete
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
    C-ke'    " digraph code for é
    C-o      " moves to normal mode for just one command
    C-p      " keyword completion
    C-r%     " insert relative path of current file
    C-qu201c " unicode codepoint for “

# layout
    :Prettier     " apply  prettier  to json & others
    :se gfn=*     " pop-up font selection
    :se expandtab " allows  :retab
    \\c           " toggle cursor column
    \\l           " toggle cursor line
    \\ll          " toggle listchars (:h 'list')

## Colorizer
    :ColorClear         " clears colourizing
    :ColorHighlight     " impressive colourizing, but then can't be truly turned off
    :packadd Colorizer  " slows down large file opening

## colorizer
    <leader>tc          " (mapped to) ColorToggle (by colorizer) and files open fast when off
    :packadd colorizer  " load the plugin from an opt directory. Only interprets codes.

## colour test
    pack\packs-unix\opt\vim-hexokinase\test_colours.txt

### cterm-colors
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

### gui-colors
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

## Hexokinase
    :HexokinaseTurnOn
    :packadd vim-hexokinase

## indentation
    :%le          " remove all indents
    :h 'sw'      " autoindentation - shiftwidth

# movements - in buffer
    nG  " go to line n
    :n  " go to line n

```vim
ge        " go backwards to end of word
g:        " jump forward to position of a newer change
g;        " jump back to position of an older change
gj\k      " go down\up a visual line
{ or }    " move cursor to start or end of paragraph
( or )    " move cursor to start or end of sentence
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
```vim
`z  " move to mark z
'z  " move to start of line of mark z
mz  " create mark z
mJ  " put a file-specific mark in current file (can use A-Z0-9)
```

# movements - move current line
    :(5,7)m0  " move line(s 5-7) to start
    :m-2      " That is, the current line is moved up one line
    :m+       " the current line is moved down one line

# movements - move window
    C-b       " back (=up) a page
    C-d       " down half a screen
    C-f       " forward (=down) a page
    C-u       " up half a screen
    C-y       " scroll down the window, without displacing the cursor
    zz        " centre window on cursor
    \zz       " toggle centering current line

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
:%s\pattern\\ng       " reports number of occurances
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
	<ctrl-v>u0000 " (0000 is replaced by the hexadecimal code point value) for combining characters
    \\            " TweakLS()
	\C (anywhere) " force case
	\c (anywhere) " ignore case
	\M            " nomagic (for what follows), eg returning . & * to themselves
	\V            " very nomagic (for what follows), eg (also) returning $ to itself
	\v            " very magic (for what follows), eg making | separate alternatives
    \vs           " last search in escaped visual selection
    planet\(Awesome\|Terrible\)  "planetAwesome or planetTerrible
	text\|alt     " searches for text & alt

## regex
```vim
\(alt1\|alt2\|alt3\)
\a    " alphabetic character [A-Za-z]
\d    " digit
\D    " non-digit
\h    " head of word character (a,b,c...z,A,B,C...Z and _)
\S    " non-whitespace character
\s    " whitespace character
\u    " uppercase character
\w    " word character [0-9A-Za-z_]
\{,m} " 0-m matches
\{-}  " as few as possible (only seems to work for single characters)
```

`set magic` is the default, `\v` goes very

### searching before and after
    \ze<endPatternToDiscard>
    <startPatternToDiscard>\zs

## replace - reuse matched pattern
    :h s\\&
    :s\<pattern>\<new1>&<new2>\ " wraps <pattern> in <new1> & <new2>

# shell
```
:!<shellcmd>          " runs the external shell command
:ALEToggle
:Bufferize python3 print(sys.path)
:cd $DJH
:Locate <pattern>
:packadd syntastic    " load the plugin from an opt directory
:r!<shell command>    " reads shell command output into the buffer
:se shell?            " returns the path to the shell
:tabe $HOME\_vimrc    " bring up my vimrc in a new tab
:term
<shellcmd> | gvim -   " pipes shell command output into gvim
gx                    " open url under cursor (or all of first line of markdown link)
shift+F11             " open in Emacs
```

## files & directories
```
2c-g        " buffer number & full filename
:e.         " dirvish (or netrw) on current directory
:f  or  c-g " relative filename (:h :f)
:Gclog      " fugitive
\<f11>      " last modification time
\vg         " cd to file's and vimgrep for last search
gf          " open file under cursor - :h gF
```

### Netrw
:Hexplore             " horizontal split and explore
:Lexplore             " toggle left netrw on working directory
:Vexplore             " vertical split and explore

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
:echo $username
```

# tab views
    gT  gt    " move around tabs
    :tab ball " all buffers into tabs

# text objects
    ci> " change inside angle brackets
    ci} " change inside curly braces

# tricks
```vim
&                            " repeat last substitute
:echo &bomb                  " 1 if BOM
:exe
:g\^\m 0                     " reverse the entire buffer
:ni<somecharacter><Enter>    " inserts <somecharacters> n time
:normal i" . strftime("%c")  " put date-time at cursor
:%s\\v^.*$\\= submatch(0)." ".repeat("=", 70 - len(submatch(0)))  " pad out ends
:h g_CTRL-G                  " position and word info, works on a range too
:so /usr/share/vim/vim90/tools/emoji_list.vim
:t.                          " reproduce line
:t.|s\.\=\g                  " setext-style header underlining
\yy                          " CalendarH
ctrl-q ctrl-m                " inserts ^M (carriage return)
g&                           " repeat last command over the whole document
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
    :put =range(1964,2020) " create a series of numbers

### working down buffer
    :let i=1 | g#/# s##\='\'.i# | let i+=1  " prefix-number all files in nnn's neovim window
    :let i=2 | g#.# s#1#\=i#g | let i+=1    " g-> working down through the entire buffer, s-> increase counts

## repeating text
    Esc <number> i <repeatable> Esc  " inserts <repeatable> <number> times
    iab <expr> -- repeat('-', 80)  " then insert  --<tab>
    <repeatable> Esc <number> .  " makes lines of repeatable

## sort
:296,349sort
:%sort u  " removing duplicate lines
:%sort!   " reverse
:sort n   " numeric

# Vim
```vim
@@           " = @: = repeat last command-line
\8           " toggle 82\106 columns
ga           " returns code values for character under cursor
gQ           " enter Ex mode
K            " brings up a man page (if there is one) for word under cursor
q:           " brings up an interactive history of :commands (in an editable window)
vi           " exit Ex mode
:h key-notation
:h index     " lists the all of the commands
:his         " Display command-line history
:his s       " Display search string history
:profile ... " for speed tests
:so %        " source the current file
:DiffOrig    " brings the Recover version up left
:X           " prompts for an encryption key
```

```
c-k<non-text-key> " enters the Vim value of a non-text-key
c-r "  " (in command line) insert the unnamed register
command-line window: C-c C-c  closes
:echo getline(1) " contents of line 1

$GHrUse/CP/vim/vim-vim/README.md
C:\Vim\vim90\gvim.exe
r $vimfiles
vim -u NONE
vim(1)
```

## buffer listing your recent messages
    :Bufferize messages
	:redir @m | silent messages | redir END | new | exe "normal! \"mp"

## quickfix
    :cc n    " goto error n
    :ccl     " close
    :cn :cp  " next error  previous error
    :copen   " open
    :cw      " open if errors or close

## registers
    ":p                               " paste in last command.
    "kyy                              " copies current line into register k
    :echo @%                          " (relative) filepath
    :let@\='something to search for'  " makes that last search
    :let@a=@_                         " sets a to (always empty) black hole register
    :let@q=@k                         " sets a to contents of register k

## settings
    :Bufferize dig!        " categorised digraphs
    :Bufferize let         " all internal variables
    :Bufferize scriptnames " list of files sourced, in order
    :Bufferize se          " all option changes
    :Bufferize se gfn      " show font
    :Bufferize version     " Vim version etc
    :colo                  " current colorscheme
    :let mapleader
    :verb se tw            " shows where textwidth was set

    $VIMRUNTIME
    C \usr\share\vim\vim90\ftplugin
    C:\Vim\vim90\ftplugin

### mappings
    :Bufferize map                     " n v s
    :Bufferize map!                    " i e
    :Bufferize verb map <LocalLeader>q " where that mapping was set
    :map <c-n>                         " shows the mapping

### runtimepath
    :Bufferize echo &rtp
    :Bufferize se rtp

### syntax highlighting
	:h syn-region
    :windo echo b:current_syntax
    C \usr\share\vim\vim90\syntax
    C:\Vim\vim90\syntax

    syntax.txt

#### settings
    :Bufferize sy  " :h syn-list
	:hi
    :se synmaxcol=0  " removes 3000 character limit (:se smc)
	:so $VIMRUNTIME/syntax/hitest.vim
    :sy sync fromstart  " but can't find any way to check this setting

	$VIMRUNTIME\syntax\syncolor.vim

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
    C-w+=         " equalise window sizes
    C-w+_         " maximizes a window
    Resize Splits with mouse

## split
    :ba          " view all buffers
    :sp          " split current window horizontally
    c-w+v        " split vertical

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
    :spellra <rareword>
    z= => suggest corrections
    zg => add good word

### spelllang
    :se spl
    echo &spelllang

