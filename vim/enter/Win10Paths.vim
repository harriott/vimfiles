" vim: set fdl=1:

" Joseph Harriott - Sat 18 Jan 2025

" $vfv/enter/Win10Paths.vim
" source'd by
"  $MSWin10/mb/_vimrc-AZERTY
"  $vimfiles/nvim/init.vim
" symlinked in  $MSwin10/mb/symlinks-mostly.ps1

""> paths
let $CPF = $programfiles
"">> 0 $Drpbx, or just $coreIT
if $HOME == 'C:\Users\deaur'
  let $coreIT = 'D:\IT'
else
  let $Drpbx = 'D:\Dropbox'
    let $DJH = $Drpbx.'\JH'
      let $Cfzd = $DJH.'\work-Cz'
        let $CzPeo = $Cfzd.'\people'
          let $Copil = $CzPeo.'\adherents\FA+Copil'
            let $d0g = $Copil.'\data-0-grab'
            let $d1ad = $Copil.'\data-1-adh'
        let $CzPhy = $Cfzd.'\PhysicalProperty'
      let $CfWk = $DJH.'\Cop-work'
      let $core = $DJH.'\core'
        let $coreIT = $core.'\IT'
        let $TeNo = $core.'\TextNotes'
      let $DaLi = $DJH.'\Jo-now\DailyLife'
      let $ess = $DJH.'\Jo-now\essential'
      let $FrFa = $DJH.'\Jo-F+F'
        let $FFIdF = $FrFa.'\France\IdF'
      let $JCop = $DJH.'\Cop'
        let $cFr = $JCop.'\France'
      let $JHt = $DJH.'\Jo-technos'
        let $jtIT = $JHt.'\IT'
          let $jtCP = $jtIT.'\CP'
        let $tIs = $JHt.'\IT-storage'  " $tIs\diskUsage.txt
      let $JHw = $DJH.'\work'
        let $JHm = $JHw.'\IT-Jekyll-harriott-minima'
      let $Thb = $DJH.'\Thb-dr'
    let $DCGRs = $Drpbx.'\Cop\GRs'
endif

"">> 0 $HOME
let $Enc = $HOME.'\encrypted'
let $HADL = $HOME.'\AppData\Local'
  let $HADLM = $HADL.'\Microsoft'
  let $lazy = $HADL.'\nvim-data\lazy'
  let $nvim = $HADL.'\nvim'
let $HADR = $HOME.'\AppData\Roaming'
  let $Pandoc = $HADR.'\Pandoc'
  let $tex = $HADR.'\MiKTeX\tex'

  "">> 1 rooting on $coreIT
  let $ITsCP = $coreIT.'\CP'
    let $LTXj = $ITsCP.'\documenting\LaTeX\jo'
  let $DWp = $coreIT.'\DokuWiki\pages'
  let $ITscc = $coreIT.'\copied-code'
  let $ITscr = $coreIT.'\copied-reference'
  let $machLg = $coreIT.'\MSWin\ml-'.$computername
  let $onGH = $coreIT.'\onGitHub'
    let $MD4PDF = $onGH.'\pandoc-md4pdf'
    let $misc = $onGH.'\misc'
    let $MSwin10 = $onGH.'\OS-MSWin10'
      let $MSn = $MSWin10.'\nodes'
    let $OSAB = $onGH.'\OS-ArchBuilds'
      let $ABjo = $OSAB.'\nodes-jo'
        let $AjB = $ABjo.'\Bash'
        let $Openbox = $ABjo.'\wm\Openbox'
          let $Obc = $Openbox.'\openbox'
    let $OSAT = $onGH.'\OS-Android-Termux'
    let $OSL = $onGH.'\OS-Linux'
      let $clMail = $OSL.'\nodes\jo\clm'
        let $clMn = $clMail.'\neomutt'
    let $ulL = $coreIT.'\ulLinux'
      let $lclm = $ulL.'\clm'
      let $ulLA = $ulL.'\Arch'
    let $vimfiles = $onGH.'\vimfiles'
      let $vfv = $vimfiles.'\vim'
        let $vfvp = $vfv.'\packs'

