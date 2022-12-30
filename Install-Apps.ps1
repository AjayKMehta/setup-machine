. "$PSScriptRoot\Install-WinGetApp.ps1"

Install-WinGetApp -AppName Microsoft.PowerShell
Install-WinGetApp -AppName Git.Git
Install-WinGetApp -AppName Notepad++.Notepad++

Install-WinGetApp -AppName ImageMagick.ImageMagick
Install-WinGetApp -AppName VideoLAN.VLC
Install-WinGetApp -AppName Mp3tag.Mp3tag
Install-WinGetApp -AppName Citrix.Workspace
Install-WinGetApp -AppName Postman.Postman

# .NET
Install-WinGetApp -AppName icsharpcode.ILSpy -InstallFolder 'D:\Apps\ILSpy'
Install-WinGetApp -AppName 'LINQPad.LINQPad.7' -InstallFolder 'D:\Apps\LINQPad7'

# VSC
Install-WinGetApp -AppName Microsoft.VisualStudioCode -InstallFolder 'D:\Apps\Microsoft VS Code'

# Security
Install-WinGetApp -AppName KeePassXCTeam.KeePassXC -InstallFolder 'D:\Apps\KeePassXC'
Install-WinGetApp -AppName GnuPG.GnuPG -InstallFolder 'D:\Apps\GnuPG'
Install-WinGetApp -AppName GnuPG.Gpg4win -InstallFolder 'D:\Apps\Gpg4win'

# Misc
Install-WinGetApp -AppName OpenJS.NodeJS -InstallFolder 'D:\Apps\nodejs'
Install-WinGetApp -AppName Graphviz.Graphviz -InstallFolder 'D:\Apps\Graphviz'
Install-WinGetApp -AppName Kitware.CMake -InstallFolder 'D:\Apps\CMake'
Install-WinGetApp -AppName WinSCP.WinSCP -InstallFolder 'D:\Apps\WinSCP\'
