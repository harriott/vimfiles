" vim: set fdl=1:

" Joseph Harriott - mar 14 mai 2024

" $vimfiles/vim/enter/vimrc-Win10-paths.vim
" source'd by
"  $MSWin10/mb/_vimrc-AZERTY
"  $vimfiles/nvim/init.vim
" symlinked in  $MSwin10/mb/symlinks-mostly.ps1

""> paths
let $lazy = $HOME.'/AppData/Local/nvim-data/lazy'
let $nvim = $HOME.'/AppData/Local/nvim'
let $Pandoc = $HOME.'/AppData/Roaming/Pandoc'
let $tex = $HOME.'/AppData/Roaming/MiKTeX/tex'
if hostname() == 'HPEB840G36'
  let $Drpbx = 'D:/Dropbox'
elseif hostname() == 'HPEB840G37'
  let $Drpbx = $HOME.'/Dropbox'
endif
  let $DJH = $Drpbx.'/JH'
    let $Cfzd = $DJH.'/Cafezoide'
      let $CzPhy = $Cfzd.'/PhysicalProperty'
    let $cITh = $DJH.'copied/IT-handy'
    let $core = $DJH.'/core'
      let $ITstack = $core.'/IT_stack'
        let $CrPl = $ITstack.'/CP'
          let $LTXj = $CrPl.'/documenting/LaTeX/jo'
        let $ITscc = $ITstack.'/copied-code'
        let $ITscr = $ITstack.'/copied-reference'
        let $machLg = $ITstack.'/MSWin/ml-'.$computername
        let $onGH = $ITstack.'/onGitHub'
          let $MD4PDF = $onGH.'/pandoc-md4pdf'
          let $misc = $onGH.'/misc'
          let $MSwin10 = $onGH.'/OS-MSWin10'
            let $machBld = $MSwin10.'/mb/'.$computername
            let $MSWSL = $MSwin10.'/WSL'
          let $OSAB = $onGH.'/OS-ArchBuilds'
          let $OSAT = $onGH.'/OS-Android-Termux'
          let $SPD = $onGH.'/SyncPortableDrives/RoboCopy/'.$computername
          let $vimfiles = $onGH.'/vimfiles'
            let $vfvp = $vimfiles.'/vim/packs'
    let $FrFa = $DJH.'/Jo-F+F'
      let $FFIdF = $FrFa.'/France/IdF'  " $FFIdF  used in  $TeNo
    let $JHt = $DJH.'/Jo-technos'
      let $jtIT = $JHt.'/IT'
      let $tIs = $JHt.'/IT-storage'  " $tIs/diskUsage.txt
    let $JHw = $DJH.'/work'
      let $JHm = $JHw.'/IT-Jekyll-harriott-minima'
    let $Thb = $DJH.'/Thb-dr'
  let $DCGRs = $Drpbx.'/Cop/GRs'

