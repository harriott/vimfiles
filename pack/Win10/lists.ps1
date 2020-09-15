#!/bin/bash

# Joseph Harriott - Sun 13 Sep 2020

# make lists of cloned plugins
# normally called from a parent script

$pipe=' |?{$_.PSIsContainer} | select -ExpandProperty fullname > $Env:Computername\'

$exp='gci .. -r -force .git'+$pipe+'gits.txt'; iex $exp

$exp='gci ..\*\*\*'+$pipe+'all.txt'; iex $exp
# can strip down just to filenames in gVim: %s#\S\{-}\\##g

Write-Host " don't forget to " -nonewline
  Write-Host ":helptags ALL" -foregroundcolor red -backgroundcolor yellow -nonewline

