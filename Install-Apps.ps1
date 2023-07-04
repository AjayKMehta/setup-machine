#Requires -RunAsAdministrator
. "$PSScriptRoot\Install-WinGetApp.ps1"

param (
    [string] $CustomLocation
)

if (!(Get-Command 'pwsh' CommandType Application)) {
    Install-WinGetApp -AppName Microsoft.PowerShell
}

Install-WinGetApp -AppName Mozilla.Firefox

# Java
Install-WinGetApp -AppName Oracle.JDK.17

# CLI apps
Install-WinGetApp -AppName JohnTaylor.less "$CustomLocation\CLI"
Install-WinGetApp -AppName JohnTaylor.lesskey "$CustomLocation\CLI"
exe
Install-WinGetApp -AppName yq "$CustomLocation\CLI" '-r' yq.exe
Install-WinGetApp -AppName stedolan.jq "$CustomLocation\CLI" '-r' jq.exe

# Security
Install-WinGetApp -AppName KeePassXCTeam.KeePassXC "$CustomLocation\KeePassXC"
Install-WinGetApp -AppName GnuPG.GnuPG "$CustomLocation\GnuPG"
Install-WinGetApp -AppName GnuPG.Gpg4win "$CustomLocation\Gpg4win"

# Dev
Install-WinGetApp -AppName Microsoft.OpenSSH.Beta
Install-WinGetApp -AppName wez.wezterm "$CustomLocation\WezTerm"
Install-WinGetApp -AppName Docker.DockerDesktop
Install-WinGetApp -AppName wagoodman.dive $CustomLocation
Install-WinGetApp -AppName JesseDuffield.Lazydocker $CustomLocation
Install-WinGetApp -AppName WinMerge.WinMerge "$CustomLocation\WinMerge"
Install-WinGetApp -AppName Git.Git
Install-WinGetApp -AppName Glab.Glab
Install-WinGetApp -AppName GitExtensionsTeam.GitExtensions
Install-WinGetApp -AppName Microsoft.VisualStudioCode "$CustomLocation\VSCode"
Install-WinGetApp -AppName OpenJS.NodeJS "$CustomLocation\nodejs"
Install-WinGetApp -AppName Kitware.CMake "$CustomLocation\CMake"
Install-WinGetApp -AppName Notepad++.Notepad++

# Media
Install-WinGetApp -AppName ImageMagick.ImageMagick
Install-WinGetApp -AppName VideoLAN.VLC
Install-WinGetApp -AppName Mp3tag.Mp3tag

# .NET
Install-WinGetApp -AppName Microsoft.VisualStudio.2022.Community
Install-WinGetApp -AppName icsharpcode.ILSpy "$CustomLocation\ILSpy"
Install-WinGetApp -AppName 'LINQPad.LINQPad.7' "$CustomLocation\LINQPad7"
Install-WinGetApp -Id '9WZDNCRDMDM3'
Install-WinGetApp -Id KirillOsenkov.MSBuildStructuredLogViewer
Install-WinGetApp -Id RicoSuter.NSwagStudio
Install-WinGetApp -AppName Microsoft.NuGet
Install-WinGetApp -AppName Microsoft.PerfView "$CustomLocation\PerfView"


# Misc
Install-WinGetApp -AppName Hugo.Hugo "$CustomLocation\Hugo"
Install-WinGetApp -AppName Graphviz.Graphviz "$CustomLocation\Graphviz"
Install-WinGetApp -AppName WinSCP.WinSCP "$CustomLocation\WinSCP"
Install-WinGetApp -AppName Citrix.Workspace
Install-WinGetApp -AppName Postman.Postman
Install-WinGetApp -AppName chrisant996.Clink
Install-WinGetApp -AppName 7zip.7zip
Install-WinGetApp -AppName Microsoft.Sysinternals.ProcessExplorer
