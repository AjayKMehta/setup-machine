. "$PSScriptRoot\Install-WinGetApp.ps1"

param (
    [string] $CustomLocation
)

if (!(Get-Module Microsoft.WinGet.Client -ListAvailable -ErrorAction Ignore)) {
    Install-Module Microsoft.WinGet.Client -Scope CurrentUser
}

Install-WinGetPackage -Id Mozilla.Firefox

# Java
Install-WinGetPackage -Id Oracle.JDK.17

# Portable CLI apps
Install-WinGetPackage -Id jftuga.less
Install-WinGetPackage -Id MikeFarah.yq
Install-WinGetPackage -Id jqlang.jq
Install-WinGetPackage -Id DuckDB.cli
Install-WinGetApp twpayne.chezmoi
Install-WinGetPackage -Id charmbracelet.gum
Install-WinGetPackage -Id muesli.duf
Install-WinGetPackage -Id GNU.wget2
Install-WinGetPackage -Id Wilfred.difftastic
Install-WinGetPackage -Id dalance.procs

# Security
Install-WinGetPackage -Id KeePassXCTeam.KeePassXC
Install-WinGetPackage -Id GnuPG.GnuPG -Location "$CustomLocation\GnuPG"
Install-WinGetPackage -Id GnuPG.Gpg4win -Location "$CustomLocation\Gpg4win"

# git
Install-WinGetPackage -Id Git.Git
Install-WinGetPackage -Id Glab.Glab
Install-WinGetPackage -Id GitExtensionsTeam.GitExtensions
Install-WinGetPackage -Id tummychow.git-absorb -Location "$CustomLocation\CLI"

# Docker
Install-WinGetPackage -Id Docker.DockerDesktop
Install-WinGetPackage -Id wagoodman.dive -Location "$CustomLocation\CLI"
Install-WinGetPackage -Id JesseDuffield.Lazydocker -Location "$CustomLocation\CLI"

# Dev
Install-WinGetPackage -Id wez.wezterm -Location "$CustomLocation\WezTerm"
Install-WinGetPackage -Id WinMerge.WinMerge -Location "$CustomLocation\WinMerge"
Install-WinGetPackage -Id Microsoft.VisualStudioCode -Location "$CustomLocation\VSCode"
Install-WinGetPackage -Id OpenJS.NodeJS -Location "$CustomLocation\nodejs"
Install-WinGetPackage -Id Kitware.CMake -Mode Interactive
Install-WinGetPackage -Id Notepad++.Notepad++
Install-WinGetPackage -Id RProject.R
Install-WinGetPackage -Id Posit.RStudio

# Media
Install-WinGetPackage -Id ImageMagick.ImageMagick -Mode Interactive
Install-WinGetPackage -Id VideoLAN.VLC
Install-WinGetPackage -Id Mp3tag.Mp3tag

# .NET
Install-WinGetPackage -Id Microsoft.VisualStudio.2022.Community
Install-WinGetPackage -Id 'LINQPad.LINQPad.8' -Location "$CustomLocation\LINQPad8"
Install-WinGetApp -Id '9WZDNCRDMDM3'
Install-WinGetApp -Id KirillOsenkov.MSBuildStructuredLogViewer
Install-WinGetApp -Id RicoSuter.NSwagStudio
Install-WinGetPackage -Id Microsoft.NuGet
Install-WinGetPackage -Id Microsoft.PerfView -Location "$CustomLocation\PerfView"


# Misc
Install-WinGetPackage -Id Hugo.Hugo -Location "$CustomLocation\Hugo"
Install-WinGetPackage -Id Graphviz.Graphviz -Location "$CustomLocation\Graphviz"
Install-WinGetPackage -Id WinSCP.WinSCP -Location "$CustomLocation\WinSCP"
Install-WinGetPackage -Id Citrix.Workspace
Install-WinGetPackage -Id Postman.Postman
Install-WinGetPackage -Id chrisant996.Clink
Install-WinGetPackage -Id 7zip.7zip
Install-WinGetPackage -Id Microsoft.Sysinternals.ProcessExplorer
Install-WinGetPackage -Id eza-community.eza -Location "$CustomLocation\CLI"
