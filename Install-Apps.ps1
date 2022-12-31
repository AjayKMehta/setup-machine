#Requires -RunAsAdministrator
. "$PSScriptRoot\Install-WinGetApp.ps1"

param (
    [string] $CustomLocation
)

Install-WinGetApp -AppName Microsoft.PowerShell
Install-WinGetApp -AppName Git.Git
Install-WinGetApp -AppName Notepad++.Notepad++

Install-WinGetApp -AppName ImageMagick.ImageMagick
Install-WinGetApp -AppName VideoLAN.VLC
Install-WinGetApp -AppName Mp3tag.Mp3tag
Install-WinGetApp -AppName Citrix.Workspace
Install-WinGetApp -AppName Postman.Postman

# .NET
Install-WinGetApp -AppName icsharpcode.ILSpy $CustomLocation 'ILSpy'
Install-WinGetApp -AppName 'LINQPad.LINQPad.7' $CustomLocation 'LINQPad7'

# VSC
Install-WinGetApp -AppName Microsoft.VisualStudioCode $CustomLocation 'Microsoft VS Code'

# Security
Install-WinGetApp -AppName KeePassXCTeam.KeePassXC $CustomLocation 'KeePassXC'
Install-WinGetApp -AppName GnuPG.GnuPG $CustomLocation 'GnuPG'
Install-WinGetApp -AppName GnuPG.Gpg4win $CustomLocation 'Gpg4win'

# Misc
Install-WinGetApp -AppName OpenJS.NodeJS $CustomLocation 'nodejs'
Install-WinGetApp -AppName Graphviz.Graphviz $CustomLocation 'Graphviz'
Install-WinGetApp -AppName Kitware.CMake $CustomLocation 'CMake'
Install-WinGetApp -AppName WinSCP.WinSCP $CustomLocation 'WinSCP'
