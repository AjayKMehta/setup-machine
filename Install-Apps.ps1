#Requires -RunAsAdministrator
. "$PSScriptRoot\Install-WinGetApp.ps1"

param (
    [string] $CustomLocation
)

if ($PSVersionTable.PSVersion -lt 7) {
    Install-WinGetApp -AppName Microsoft.PowerShell
}

Install-WinGetApp -AppName Mozilla.Firefox

# Java
Install-WinGetApp -AppName Oracle.JDK.17

# CLI apps
Install-WinGetApp -AppName JohnTaylor.less $CustomLocation 'CLI'
Install-WinGetApp -AppName JohnTaylor.lesskey $CustomLocation 'CLI'
exe
Install-WinGetApp -AppName yq $CustomLocation 'CLI' '-r' yq.exe
Install-WinGetApp -AppName stedolan.jq $CustomLocation 'CLI' '-r' jq.exe

# Security
Install-WinGetApp -AppName KeePassXCTeam.KeePassXC $CustomLocation 'KeePassXC'
Install-WinGetApp -AppName GnuPG.GnuPG $CustomLocation 'GnuPG'
Install-WinGetApp -AppName GnuPG.Gpg4win $CustomLocation 'Gpg4win'

# Dev
Install-WinGetApp -AppName WinMerge.WinMerge $CustomLocation 'WinMerge'
Install-WinGetApp -AppName Git.Git
Install-WinGetApp -AppName Glab.Glab
Install-WinGetApp -AppName GitExtensionsTeam.GitExtensions
Install-WinGetApp -AppName Microsoft.VisualStudioCode $CustomLocation 'VSCode'
Install-WinGetApp -AppName OpenJS.NodeJS $CustomLocation 'nodejs'
Install-WinGetApp -AppName Kitware.CMake $CustomLocation 'CMake'
Install-WinGetApp -AppName Notepad++.Notepad++

# Media
Install-WinGetApp -AppName ImageMagick.ImageMagick
Install-WinGetApp -AppName VideoLAN.VLC
Install-WinGetApp -AppName Mp3tag.Mp3tag

# .NET
Install-WinGetApp -AppName Microsoft.VisualStudio.2022.Community
Install-WinGetApp -AppName icsharpcode.ILSpy $CustomLocation 'ILSpy'
Install-WinGetApp -AppName 'LINQPad.LINQPad.7' $CustomLocation 'LINQPad7'
Install-WinGetApp -Id '9WZDNCRDMDM3'
Install-WinGetApp -Id KirillOsenkov.MSBuildStructuredLogViewer
Install-WinGetApp -Id RicoSuter.NSwagStudio
Install-WinGetApp -AppName Microsoft.NuGet

# Misc
Install-WinGetApp -AppName Graphviz.Graphviz $CustomLocation 'Graphviz'
Install-WinGetApp -AppName WinSCP.WinSCP $CustomLocation 'WinSCP'
Install-WinGetApp -AppName Citrix.Workspace
Install-WinGetApp -AppName Postman.Postman
Install-WinGetApp -AppName chrisant996.Clink
Install-WinGetApp -AppName 7zip.7zip
Install-WinGetApp -AppName Microsoft.Sysinternals.ProcessExplorer
