using namespace System.Collections.Generic

function Install-WinGetApp {
    [CmdletBinding(PositionalBinding = $false)]
    param (
        [Parameter(Mandatory = $true)]
        [Alias('Id')]
        [ValidateNotNullOrEmpty()]
        [string] $AppName,
        [ValidateNotNullOrEmpty()]
        [string] $InstallFolder,
        [Parameter()]
        [string[]]$InstallerArgs
    )

    $exeArgs = [List[string]]::new()
    $exeArgs.AddRange([string[]]('install', '--id', $AppName))
    if ($InstallFolder) {
        $exeArgs.Add('-l')
        $exeArgs.Add($InstallFolder)
    }
    if ($InstallerArgs.Count -gt 0) {
        $exeArgs.AddRange($InstallerArgs)
    }
    winget.exe $exeArgs
}
