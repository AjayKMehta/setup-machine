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
Install-WinGetApp -AppName jftuga.less -InstallFolder "$CustomLocation\CLI"
Install-WinGetApp -AppName MikeFarah.yq -InstallFolder "$CustomLocation\CLI"
Install-WinGetApp -AppName jqlang.jq -InstallFolder "$CustomLocation\CLI"
Install-WinGetApp -AppName DuckDB.cli -InstallFolder "$CustomLocation\CLI"
Install-WinGetApp twpayne.chezmoi -InstallFolder "$CustomLocation\CLI"
Install-WinGetApp -AppName charmbracelet.gum -InstallFolder "$CustomLocation\CLI"
Install-WinGetApp -AppName muesli.duf -InstallFolder "$CustomLocation\CLI"
Install-WinGetApp -AppName GNU.wget2
Install-WinGetApp -AppName Wilfred.difftastic -InstallFolder "$CustomLocation\CLI"

# Security
Install-WinGetApp -AppName KeePassXCTeam.KeePassXC
Install-WinGetApp -AppName GnuPG.GnuPG -InstallFolder "$CustomLocation\GnuPG"
Install-WinGetApp -AppName GnuPG.Gpg4win -InstallFolder "$CustomLocation\Gpg4win"

# git
Install-WinGetApp -AppName Git.Git
Install-WinGetApp -AppName Glab.Glab
Install-WinGetApp -AppName GitExtensionsTeam.GitExtensions

# Docker
Install-WinGetApp -AppName Docker.DockerDesktop
Install-WinGetApp -AppName wagoodman.dive -InstallFolder "$CustomLocation\CLI"
Install-WinGetApp -AppName JesseDuffield.Lazydocker -InstallFolder "$CustomLocation\CLI"

# Dev
Install-WinGetApp -AppName wez.wezterm -InstallFolder "$CustomLocation\WezTerm"
Install-WinGetApp -AppName WinMerge.WinMerge -InstallFolder "$CustomLocation\WinMerge"
Install-WinGetApp -AppName Microsoft.VisualStudioCode -InstallFolder "$CustomLocation\VSCode"
Install-WinGetApp -AppName OpenJS.NodeJS -InstallFolder "$CustomLocation\nodejs"
Install-WinGetApp -AppName Kitware.CMake -InstallerArgs '--interactive'
Install-WinGetApp -AppName Notepad++.Notepad++
Install-WinGetApp -AppName RProject.R
Install-WinGetApp -AppName Posit.RStudio

# Media
Install-WinGetApp -AppName ImageMagick.ImageMagick -InstallerArgs '--interactive'
Install-WinGetApp -AppName VideoLAN.VLC
Install-WinGetApp -AppName Mp3tag.Mp3tag

# .NET
Install-WinGetApp -AppName Microsoft.VisualStudio.2022.Community
Install-WinGetApp -AppName icsharpcode.ILSpy -InstallerArgs '--interactive'
Install-WinGetApp -AppName 'LINQPad.LINQPad.8' -InstallFolder "$CustomLocation\LINQPad8"
Install-WinGetApp -Id '9WZDNCRDMDM3'
Install-WinGetApp -Id KirillOsenkov.MSBuildStructuredLogViewer
Install-WinGetApp -Id RicoSuter.NSwagStudio
Install-WinGetApp -AppName Microsoft.NuGet
Install-WinGetApp -AppName Microsoft.PerfView -InstallFolder "$CustomLocation\PerfView"


# Misc
Install-WinGetApp -AppName Hugo.Hugo -InstallFolder "$CustomLocation\Hugo"
Install-WinGetApp -AppName Graphviz.Graphviz -InstallFolder "$CustomLocation\Graphviz"
Install-WinGetApp -AppName WinSCP.WinSCP -InstallFolder "$CustomLocation\WinSCP"
Install-WinGetApp -AppName Citrix.Workspace
Install-WinGetApp -AppName Postman.Postman
Install-WinGetApp -AppName chrisant996.Clink
Install-WinGetApp -AppName 7zip.7zip
Install-WinGetApp -AppName Microsoft.Sysinternals.ProcessExplorer
