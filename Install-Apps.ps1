. "$PSScriptRoot\Install-WinGetApp.ps1"

Install-WinGetApp -AppName ImageMagick.ImageMagick
Install-WinGetApp -AppName Git.Git
Install-WinGetApp -AppName VideoLAN.VLC
Install-WinGetApp -AppName Mp3tag.Mp3tag


Install-WinGetApp -AppName Kitware.CMake -InstallFolder 'D:\Apps\CMake'
Install-WinGetApp -AppName Graphviz.Graphviz -InstallFolder 'D:\Apps\Graphviz'
Install-WinGetApp -AppName Microsoft.VisualStudioCode -InstallFolder 'D:\Apps\Microsoft VS Code'
Install-WinGetApp -AppName GnuPG.GnuPG -InstallFolder 'D:\Apps\GnuPG'
Install-WinGetApp -AppName GnuPG.Gpg4win -InstallFolder 'D:\Apps\Gpg4win'
