" vim: set fdl=1:

" Joseph Harriott - mer 19 juin 2024

" $vimfiles/vim/enter/vimrc-Win10-paths.vim
" source'd by
"  $MSWin10/mb/_vimrc-AZERTY
"  $vimfiles/nvim/init.vim
" symlinked in  $MSwin10/mb/symlinks-mostly.ps1

""> paths
let $CPF = $programfiles
let $Drpbx = 'D:\Dropbox'
  let $DJH = $Drpbx.'\JH'
    let $Cfzd = $DJH.'\Cafezoide'
      let $CzPhy = $Cfzd.'\PhysicalProperty'
    let $cITh = $DJH.'copied\IT-handy'
    let $core = $DJH.'\core'
      let $ITstack = $core.'\IT_stack'
        let $CrPl = $ITstack.'\CP'
          let $LTXj = $CrPl.'\documenting\LaTeX\jo'
        let $DWp = $ITstack.'\DokuWiki\pages'
        let $ITscc = $ITstack.'\copied-code'
        let $ITscr = $ITstack.'\copied-reference'
        let $machLg = $ITstack.'\MSWin\ml-'.$computername
        let $onGH = $ITstack.'\onGitHub'
          let $MD4PDF = $onGH.'\pandoc-md4pdf'
          let $misc = $onGH.'\misc'
          let $MSwin10 = $onGH.'\OS-MSWin10'
            let $machBld = $MSwin10.'\mb\'.$computername
            let $MSWSL = $MSwin10.'\WSL'
          let $OSAB = $onGH.'\OS-ArchBuilds'
          let $OSAT = $onGH.'\OS-Android-Termux'
          let $SPD = $onGH.'\SyncPortableDrives\RoboCopy\'.$computername
          let $vimfiles = $onGH.'\vimfiles'
            let $vfvp = $vimfiles.'\vim\packs'
      let $TeNo = $core.'\TextNotes'  " used in  $TeNo
    let $DaLi = $DJH.'\Jo-now\DailyLife'
    let $FrFa = $DJH.'\Jo-F+F'
      let $FFIdF = $FrFa.'\France\IdF'  " $FFIdF  used in  $TeNo
    let $JHt = $DJH.'\Jo-technos'
      let $jtIT = $JHt.'\IT'
      let $tIs = $JHt.'\IT-storage'  " $tIs\diskUsage.txt
    let $JHw = $DJH.'\work'
      let $JHm = $JHw.'\IT-Jekyll-harriott-minima'
    let $Thb = $DJH.'\Thb-dr'
  let $DCGRs = $Drpbx.'\Cop\GRs'
let $Enc = $HOME.'\encrypted'
let $HADL = $HOME.'\AppData\Local'
  let $HADLM = $HADL.'\Microsoft'
  let $lazy = $HADL.'\nvim-data\lazy'
  let $nvim = $HADL.'\nvim'
let $HADR = $HOME.'\AppData\Roaming'
  let $Pandoc = $HADR.'\Pandoc'
  let $tex = $HADR.'\MiKTeX\tex'

