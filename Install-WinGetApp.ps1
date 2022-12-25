using namespace System.Collections.Generic

function Install-WinGetApp {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $AppName,
        [ValidateNotNullOrEmpty()]
        [string] $InstallFolder
    )

    $exeArgs = [List[string]]::new()
    $exeArgs.AddRange([string[]]('install', '--id', $AppName))
    if ($InstallFolder) {
        $null = $args.Add('-l')
        $null = $args.Add($InstallFolder)
    }
    winget.exe $exeArgs
}
