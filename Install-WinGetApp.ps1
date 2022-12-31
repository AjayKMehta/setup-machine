using namespace System.Collections.Generic

function Install-WinGetApp {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [string] $AppName,
        [ValidateNotNullOrEmpty()]
        [string] $ParentFolder,
        [ValidateNotNullOrEmpty()]
        [string] $InstallFolder
    )

    $exeArgs = [List[string]]::new()
    $exeArgs.AddRange([string[]]('install', '--id', $AppName))
    if ($ParentFolder) {
        $path = Join-Path $ParentFolder $InstallFolder
        $args.Add('-l')
        $args.Add($path)
    }
    winget.exe $exeArgs
}
