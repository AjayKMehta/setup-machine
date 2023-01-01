#Requires -RunAsAdministrator
. "$PSScriptRoot\Install-WinGetApp.ps1"

param (
    [string] $CustomLocation
)

if ($PSVersionTable.PSVersion -lt 7) {
    Install-WinGetApp -AppName Microsoft.PowerShell
}

# CLI apps
Install-WinGetApp -AppName JohnTaylor.less -l $CustomLocation 'CLI'
Install-WinGetApp -AppName JohnTaylor.lesskey -l $CustomLocation 'CLI'
exe
Install-WinGetApp -AppName yq $CustomLocation 'CLI' '-r' yq.exe

# Security
Install-WinGetApp -AppName KeePassXCTeam.KeePassXC $CustomLocation 'KeePassXC'
Install-WinGetApp -AppName GnuPG.GnuPG $CustomLocation 'GnuPG'
Install-WinGetApp -AppName GnuPG.Gpg4win $CustomLocation 'Gpg4win'

# Dev
Install-WinGetApp -AppName Git.Git
Install-WinGetApp -AppName Microsoft.VisualStudioCode $CustomLocation 'Microsoft VS Code'
Install-WinGetApp -AppName OpenJS.NodeJS $CustomLocation 'nodejs'
Install-WinGetApp -AppName Kitware.CMake $CustomLocation 'CMake'
Install-WinGetApp -AppName Notepad++.Notepad++

# Media
Install-WinGetApp -AppName ImageMagick.ImageMagick
Install-WinGetApp -AppName VideoLAN.VLC
Install-WinGetApp -AppName Mp3tag.Mp3tag

# .NET
Install-WinGetApp -AppName icsharpcode.ILSpy $CustomLocation 'ILSpy'
Install-WinGetApp -AppName 'LINQPad.LINQPad.7' $CustomLocation 'LINQPad7'

# Misc
Install-WinGetApp -AppName Graphviz.Graphviz $CustomLocation 'Graphviz'
Install-WinGetApp -AppName WinSCP.WinSCP $CustomLocation 'WinSCP'
Install-WinGetApp -AppName Citrix.Workspace
Install-WinGetApp -AppName Postman.Postman
