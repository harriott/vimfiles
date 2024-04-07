# vim: set et tw=0:

# Joseph Harriott

# reinstall ShowTrailingWhitespace

cd ..\layout\start
ri -force -recurse vim-ShowTrailingWhitespace
git clone https://github.com/inkarkat/vim-ShowTrailingWhitespace
& "${Env:ProgramFiles(x86)}\Vim\vim82\gvim.exe" -c "/^c" vim-ShowTrailingWhitespace\ftplugin\markdown_ShowTrailingWhitespace.vim  # comment out the call
cd $PSScriptRoot

