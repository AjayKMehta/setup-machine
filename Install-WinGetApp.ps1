using namespace System.Collections.Generic

function Install-WinGetApp {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [Alias('Id')]
        [ValidateNotNullOrEmpty()]
        [string] $AppName,
        [ValidateNotNullOrEmpty()]
        [string] $ParentFolder,
        [ValidateNotNullOrEmpty()]
        [string] $InstallFolder,

        [parameter(ValueFromRemainingArguments = $true)]
        [string[]]$InstallerArgs
    )

    $exeArgs = [List[string]]::new()
    $exeArgs.AddRange([string[]]('install', '--id', $AppName))
    if ($ParentFolder) {
        $path = Join-Path $ParentFolder $InstallFolder
        $exeArgs.Add('-l')
        $exeArgs.Add($path)
    }
    if ($InstallerArgs.Count -gt 0) {
        exeArgs.AddRange($InstallerArgs)
    }
    winget.exe $exeArgs
}
