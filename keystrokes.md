vim: set fdm=expr:

Joseph's useful (g)Vim commands - http://momentary.eu/

( see also https://vimhelp.org/quickref.txt.html )

    :Bufferize version       => Vim version etc
    :helpt ALL               => generate all tags
    :helptags $HOME\vimfiles => set tags

# aligns the lists in this file
    vim-easy-align: vip=

## tabular
    :packadd tabular
    :Tabularize/ =>

# buffers
    :bd!(n)   => buffer delete
    :ls       => buffer list
    :marks    => list all the current marks
    :unh      => unhides all buffers (into windows)
    :wa       => write all changed buffers
    :wq       => write buffer in window to file and quit vim window
    'J        => bring up file marked with J (as saved in viminfo) into buffer
    ZQ        => :q!
    ZZ        => :wq
    C-6       => edit the alternate file (usually = the previous buffer)
    C-wgf     => open the file under the cursor in a new tab
    C-wo      => closes all other windows
    C-i       => jump forward (to where you've been)
    C-o       => jump back (to where you've been)
    g-        => revert to previous change
    g+        => advance to next change

## BufExplorer
    \bd  => close all but visible buffers
    \bdd => close all but current buffer
    \be  => Opens BufExplorer
    \bs  => Opens horizontally split window BufExplorer
    \bt  => Toggles BufExplorer open or closed
    \bv  => Opens vertically split window BufExplorer

# deletions
    d0           => delete back to start of line
    :1,.d        => delete to beginning of file
    :.,$d        => delete to end of file
    :g/pattern/d => delete lines containing "pattern"

# diff
    :dif         => diffupdate
    :diffo       => diffoff the window
    :diffo!      => diffoff the windows
    :windo difft => diff the windows
    ]c           => next diff
    [c           => previous diff

# Folds
    :packadd SimpylFold  => load the plugin from an opt directory
    :set fdl?            => reports the current foldlevel
    zC                   => close current fold & subfolds
    zM                   => close all folds
    zO                   => expand current fold & subfolds
    zR                   => expand all folds
    za                   => toggle current fold open/closed
    zc                   => close a fold (or, if already closed, close its parent)
    zi                   => toggle foldenable
    zj                   => down to next fold
    zk                   => up to next fold
    zm                   => reduce foldlevel
    zr                   => increase foldlevel (#zr -> foldlevel #)
    zv                   => view cursor line (opening just enough folds)
    zx                   => set folds back to foldlevel

# Insert mode commands
    C-ke'    => digraph code for é
    C-O      => moves to normal mode for just one command
    C-p      => keyword completion
    C-r%     => insert relative path of current file
    C-qu201c => unicode codepoint for “

# Movements
    $          => end of line
    '.         => jump to position where last change occurred in current buffer
    'k         => move to mark k
    0          => start of line
    #G         => go to line #
    C-e        => scroll up the window, without displacing the cursor
    C-y        => scroll down the window, without displacing the cursor
    H          => go Home (top line of current window display)
    M          => go Middle line (of current window display)
    L          => go Last line (of current window display)
    ^          => first non-blank char of line
    ``         => jump back (to position in current buffer where jumped from)
    `a         => jump to position (line and column) of mark a
    g$         => jump to last character of screen line
    g,         => jump forward to position of a newer change
    g;         => jump back to position of an older change
    g^         => jump to first character of screen line
    ge         => go backwards to end of word
    mJ         => put a file-specific mark in current file (can use a-z)
    zz         => centre window on cursor
    { or }     => move cursor to start or end of paragraph
    ( or )     => move cursor to start or end of sentence
    ~          => toggle case of selection
    <leader>zz => (mapped in my vimrc to) toggle the value of 'scrolloff'
    C-b        => back (=up) a page
    C-d        => down half a screen
    C-f        => forward (=down) a page
    C-u        => up half a screen
    :(5,7)m0   => move line(s 5-7) to start
    :#         => go to line #
    :m-2       => That is, the current line is moved up one line
    :m+        => the current line is moved down one line

# Search
    #                     => over a word highlights all exact instances, and jumps to last
    %                     => find opposing bracket in a line
    *                     => highlight all instances of exactly the word under the cursor
    \n                    => (my mapping for) clearing yellow searched highlights
    \rn                   => (my mapping for) toggle relativenumber
    \vs                   => last search in escaped visual selection
    :Bufferize il <word>  => grab list of lines containing <word> in a new buffer
    :g/^#####\+           => shows lines that begin with 5 or more #'s
    :g/pattern            => list of lines containing "pattern"
    [I or ]I              => list lines containing word under cursor
    g/                    => incsearch-stay
    z/                    => incsearch-fuzzy
    n                     => find next highlighted search result

## following /
    \C (anywhere) => force case
    \c (anywhere) => ignore case
    \M            => nomagic (for what follows), eg returning . & * to themselves
    \V            => very nomagic (for what follows), eg (also) returning $ to itself
    \v            => very magic (for what follows), eg making | separate alternatives
    text          => searches for text
    text\|alt     => searches for text & alt
    C-rC-w        => searches for the word under cursor - allowing skipping thru with n

# Shell
    C-g                   => display relative path of current file
    F3                    => Ggrep for last search
    <shellcmd> | gvim -   => pipes shell command output into gvim
    gf                    => open file under cursor
    gx                    => open url under cursor
    :!<shellcmd>          => runs the external shell command
    :Vexplore             => opens a netrw vertical directory browsing window
    :packadd ale          => load the plugin from an opt directory
    :packadd LanguageTool => load the plugin from an opt directory
    :packadd syntastic    => load the plugin from an opt directory
    :packadd vim-rhubarb  => load the plugin from an opt directory, for :Gbrowse to work
    :r!<shell command>    => reads shell command output into the buffer
    :tabe $HOME/_vimrc    => bring up my vimrc in a new tab
    \vg                   => cd to file's and vimgrep for last search

## fugitive
    ce => amend the last commit without editing the message

## open webpages
    F6 => open a uURL using open-browser.vim

### vim-open-url
    gB => open URL
    gS => search word
    gW => search Wikipedia

# Tab views
    gT  gt    => move around tabs
    :tab ball => all buffers into tabs

# Text Objects
    ci> => change inside angle brackets
    ci} => change inside curly braces

# Tricks
    &                                  => repeat last substitute
    :exe ":normal i" . strftime("%c")  => put date-time at cursor
    :g/^/m 0                           => reverse the entire buffer
    :h v_g_CTRL-A                      => create a series of numbers,
    \yy                                => CalendarH
    \\c                                => toggle cursor column
    \\l                                => toggle cursor line

## number lists
   :for i in range(1,11) | put =i.'. ' | endfor  => markdown list
   :put =range(1964,2020)

## base64
    <leader>atob => base64 to a string
    <leader>btoa => a string to base64

## Colorizer
    :ColorHighlight     => impressive colourizing, but then can't be truly turned off
    :packadd Colorizer

## colorizer
    <leader>tc          => (mapped to) ColorToggle (by colorizer) and files open fast when off
    :packadd colorizer  => load the plugin from an opt directory. Only interprets codes.

## colour test
    pack/neovim/opt/vim-hexokinase/test_colours.txt

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

## Hexokinase
    :HexokinaseTurnOn
    :packadd vim-hexokinase

# Vim
    @:  => repeat last command-line
    K   => brings up a man page (if there is one) for word under cursor
    ga  => returns code values for character under cursor
    gQ  => enter Ex mode
    q:  => brings up an interactive history of :commands (in an editable window)
    vi  => exit Ex mode
    \ll => list mode

    C-k<non-text-key>                                                  => enters the Vim value of a non-text-key
    C-r"                                                               => (in command line) insert the unnamed register
    :Bufferize: messages
    :X                                                                 => prompts for an encryption key
    :help index                                                        => lists the all of the commands
    :his                                                               => Display command-line history
    :his s                                                             => Display search string history
    :redir @m | silent messages | redir END | new | exe "normal! \"mp" => buffer listing your recent messages
    :scriptnames                                                       => list of files sourced, in order
    :so %                                                              => source the current file

# Visual mode commands
    V  => line-based visual selection
    gv => reselect the last block
    j  => in Visual mode, selects line and moves cursor down (k for up)
    v  => character-based visual selection

# Windows Splits
    :sp          => split current window
    C-w=         => equalise window sizes
    C-w[H|J|K|L] => move split
    C-w[h|j|k|l] => move focus to neighbouring split
    C-w_         => maximizes a window
    C-wr         => rotate split to right
    C-wv         => vertical split

