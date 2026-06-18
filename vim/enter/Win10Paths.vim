" vim: set fdl=1:

" Joseph Harriott - Sat 18 Jan 2025

" $vfv/enter/Win10Paths.vim
" source'd by
"  $MSWin10/nodes/Vim/_vimrc-AZERTY
"  $vfn/init.vim
" symlinked in  $MSWin10/mb/symlinks-mostly.ps1

""> paths
let $CPF = $programfiles
let $notDr = 'D:\notDr'
  let $cGRs = $notDr.'\GRs'

"">> 0 maybe $Drpbx
if $HOME == 'C:\Users\deaur'
  let $ITcore = 'D:\ITr\IT\core'
else
  let $Drpbx = 'D:\Dropbox'
    let $DrJo = $Drpbx.'\Jo'
      let $Cfzd = $DrJo.'\work-Cz'
        let $CzMa = $Cfzd.'\manage'
          let $CzMaEx = $CzMa.'\expenses'
        let $CzPeo = $Cfzd.'\people'
          let $Cmdt = $CzPeo.'\members\data\dt'
            let $Cmd0 = $Cmdt.'\data-0-wgetGS'
            let $Cmd1 = $Cmdt.'\data-1-adh'
            let $Cmdts = $Cmdt.'\scripts'
              let $Cmdts1 = $Cmdts.'\1-process'
        let $CzPhy = $Cfzd.'\PhysicalProperty'
      let $DaLi = $DrJo.'\Jo-now\DailyLife'
      let $ess = $DrJo.'\Jo-now\essential'
        let $hlth = $ess.'\health'
      let $FrFa = $DrJo.'\Jo-F+F'
        let $FFIdF = $FrFa.'\France\IdF'
      let $ITcore = $Drpbx.'\IT\core'
      let $Jotech = $DrJo.'\Jo-technos'
        let $jtIT = $Jotech.'\IT'
          let $ITmCP = $jtIT.'\CP'
        let $ITsto = $Jotech.'\IT-storage'  " $ITsto\diskUsage.txt
      let $Jwk = $DrJo.'\work'
        let $Jhm = $Jwk.'\IT\Jekyll-harriott-minima'
        let $wP = $Jwk.'\France\IdF\Paris'
      let $JJt0 = $DrJo.'\Jo-then0'
        let $T0Fr = $JJt0.'\world-Europe\France'
      let $TeNo = $DrJo.'\Jo-now\TextNotes'
      let $ZNc = $DrJo.'\work-Cz-manage-online-ZNc'
    let $DrThb = $Drpbx.'\Thb'
endif

"">> 0 $HOME
let $Enc = $HOME.'\encrypted'
let $HADL = $HOME.'\AppData\Local'
  let $HADLM = $HADL.'\Microsoft'
  let $lazy = $HADL.'\nvim-data\lazy'
  let $nvim = $HADL.'\nvim'
let $HADR = $HOME.'\AppData\Roaming'
  let $Pandoc = $HADR.'\Pandoc'
  let $RTh = $HADR.'\Thunderbird'
  let $tex = $HADR.'\MiKTeX\tex'

"">> 1 normally rooting on $ITcore
let $cITCP = $ITcore.'\CP'
  let $LTXj = $cITCP.'\documenting\LaTeX\jo'
let $DWp = $ITcore.'\DokuWiki\pages'
let $cITcc = $ITcore.'\copied-code'
if $HOME == 'C:\Users\deaur'
  let $MSWml = 'D:\ITJ\ml'
else
  let $MSWml = $ITcore.'\MSWin\ml-'.$computername
endif
let $onGH = $ITcore.'\onGitHub'
  let $MD4PDF = $onGH.'\pandoc-md4pdf'
  let $misc = $onGH.'\misc'
  let $MSWin10 = $onGH.'\OS-MSWin10'
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
  let $culL = $ITcore.'\ulLinux'
    let $lclm = $culL.'\clm'
    let $culLA = $culL.'\Arch'
  if $HOME == 'C:\Users\deaur'
    let $vimfiles = 'D:\ITJ\RC-vimfiles'
  else
    let $vimfiles = $onGH.'\vimfiles'
  endif
    let $vfn = $vimfiles.'\nvim'
    let $vfv = $vimfiles.'\vim'
      let $vfvp = $vfv.'\packs'

