# Setup machine

<!-- TOC -->

- [winget](#winget)
- [Fonts](#fonts)
- [CLI Apps](#cli-apps)
- [Notepad++](#notepad)
    - [Plugins](#plugins)
- [KeePassXC](#keepassxc)
- [Dot files](#dot-files)
- [PowerShell](#powershell)
    - [Modules](#modules)
- [Python](#python)
    - [JupyterLab](#jupyterlab)
- [NET](#net)
    - [NET Tools](#net-tools)
- [LaTeX](#latex)
    - [MikTeX](#miktex)
    - [Packages](#packages)
- [VS Code](#vs-code)
- [git](#git)
- [SlickRun](#slickrun)
- [Node](#node)
- [Miscellaneous](#miscellaneous)

<!-- /TOC -->

## winget

Install **winget** from Microsoft Store.

## Fonts

- [Nerd fonts](https://github.com/ryanoasis/nerd-fonts)
- [Source Code Pro](https://github.com/adobe-fonts/source-code-pro)
- [FiraCode](https://github.com/tonsky/FiraCode): Monospaced font with programming ligatures.
- [Hasklig](https://github.com/i-tu/Hasklig): a code font with monospaced ligatures.
- [Cascadia Code](https://github.com/microsoft/cascadia-code)

## CLI Apps

**TO DO** 🚧

## Notepad++

- Download from [web](https://notepad-plus-plus.org/download/) and install or use **winget**:

    ```shell
    winget install -e Notepad++.Notepad++
    ```

- Enable support for [fonts with ligatures](
    <https://github.com/notepad-plus-plus/notepad-plus-plus/pull/8326>): Preferences :arrow_right:MISC. Make sure `Use DirectWrite (May improve rendering special characters, need to restart Notepad++)` is :white_check_mark:.

### Plugins

- Compare
- EditorConfig
- JSTool
- Location Navigate
- XML Tools

## KeePassXC

- Install KeePassXC:

    ```shell
    winget install KeePassXCTeam.KeePassXC -l D:\Apps\KeePassXC
    ```

- See [here](https://keepassxc.org/docs/KeePassXC_GettingStarted.html) for information on getting started.

- Add installation folder to Path environment variable if needed:

    ```powershell
    $path = [System.Environment]::GetEnvironmentVariable('Path', 'Machine')
    $path += ';D:\Apps\KeePassXC'
    [System.Environment]::SetEnvironmentVariable('Path', $path, 'Machine')
    ```

## Dot files

- Install [chezmoi](https://github.com/twpayne/chezmoi).
- Add installation path to `$Path`.
- Provide the path to your KeePassXC database in your configuration file if any. See [here](https://www.chezmoi.io/user-guide/password-managers/keepassxc/) for details.
- Run the following command to get dot files:

    ```shell
    chezmoi init --apply AjayKMehta
    ```

## PowerShell

- Install:

    ```shell
    winget install -e --id Microsoft.PowerShell
    ```

- Install [Oh My Posh](https://ohmyposh.dev/docs/installation/windows) as theme engine:

    ```powershell
    Invoke-RestMethod https://ohmyposh.dev/install.ps1 | Invoke-Expression 
    ```

- Disable telemetry:

    ```powershell
    [System.Environment]::SetEnvironmentVariable('POWERSHELL_TELEMETRY_OPTOUT', 1, 'User')
    ```

- See here for info on how to resolve the issue [Enabling PowerShell remoting fails due to Public network connection type](https://4sysops.com/archives/enabling-powershell-remoting-fails-due-to-public-network-connection-type/)

### Modules

Install modules in [ModulesToInstall.txt](./ModulesToInstall.txt).

## Python

- Download and install [Miniconda](https://docs.conda.io/en/latest/miniconda.html).
- Add **bin** folder (**D:\Apps\Miniconda\condabin**) to `$Path`.
- To use [UTF-8 mode on Windows](https://dev.to/methane/python-use-utf-8-mode-on-windows-212i), set environment variable `PYTHONUTF8=1`.
- To enable conda in PowerShell, run the following in conda prompt:

    ```shell
    conda init powershell cmd.exe
    ```

- Enable `pip` interoperability:

    ```shell
    conda config --set pip_interop_enabled True
    ```

- Add environment variables:

    ```shell
    SET VS140COMNTOOLS = "C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\Tools\"
    SET VS90COMNTOOLS = %VS140COMNTOOLS%
    ```

- To resolve error **`URLError: <urlopen error [SSL: CERTIFICATE_VERIFY_FAILED] certificate verify failed: certificate has expired (_ssl.c:997)>`**, install <https://letsencrypt.org/certs/lets-encrypt-r3.der> ([source](https://github.com/thonny/thonny/issues/1986#issuecomment-934771923)).

### JupyterLab

Install following extensions:

- jupyterlab-jupytext
- jupyterlab-plotly
- @jupyterlab/latex
- @ryantam626/jupyterlab_code_formatter

## .NET

- Install [templates for `dotnet new`](https://github.com/dotnet/templating/wiki/Available-templates-for-dotnet-new):

    ```shell
    dotnet new install "Boxed.Templates"
    dotnet new install "Amazon.Lambda.Templates"
    dotnet new install "NUnit3.DotNetNew.Template"
    ```

- Set environment variables related to [runtime configuration for compilation](https://learn.microsoft.com/en-us/dotnet/core/runtime-config/compilation):

    ```powershell
    [System.Environment]::SetEnvironmentVariable('DOTNET_TC_QuickJitForLoops', 1, 'User')
    [System.Environment]::SetEnvironmentVariable('DOTNET_TieredPGO', 1, 'User')
    ```

- Disable telemetry:

    ```powershell
    [System.Environment]::SetEnvironmentVariable('DOTNET_CLI_TELEMETRY_OPTOUT', 1, 'User')
    [System.Environment]::SetEnvironmentVariable('DOTNET_UPGRADEASSISTANT_TELEMTRY_OPTOUT', 1, 'User')
    ```

- Change directory for NuGet packages:

    ```powershell
    [System.Environment]::SetEnvironmentVariable('NUGET_PACKAGES', 'D:\NuGet\packages', 'Machine')
    ```

- Install ILSpy:

    ```shell
    winget install --id icsharpcode.ILSpy -l 'D:\Apps\ILSpy'
    ```

### .NET Tools

**TO DO** 🚧

## LaTeX

### [MikTeX](https://miktex.org/howto/deploy-miktex)

- Download MiKTeX command-line installer from <https://miktex.org/download>.
- Extract **miktexsetup_standalone.exe** and *set current directory to its folder location*.
- Run the following comand to download MiKTeX into a local package repository:

    ```powershell
    . .\miktexsetup_standalone.exe --verbose --local-package-repository=D:\miktex-repository --package-set=basic download
    ```

- Next, run:

    ```powershell
    $installFolder = 'D:\Apps\Miktex'
    
    $dataFolder = 'D:\ProgramData\Miktex'
    
    . .\miktexsetup_standalone.exe --common-config=$dataFolder --common-data=$dataFolder --common-install=$installFolder --local-package-repository=D:\miktex-repository --modify-path --package-set=basic --shared=yes --user-config="$env:APPDATA\MiKTeX" --user-data="$env:LOCALAPPDATA\MiKTeX" --print-info-only  install
    ```

- Output should look like this:

    ```shell
    setup task: install from local package repository
    local package repository: D:\miktex-repository
    package set: basic
    install for all users?: yes
    portable? : no
    use registry?: yes
    modify path?: yes
    program folder name: MiKTeX
    common install root: D:\Apps\Miktex
    common config root: "D:\ProgramData\Miktex"
    common data root: "D:\ProgramData\Miktex"
    user config root: C:\Users\Ajay\AppData\Roaming\MiKTeX
    user data root: C:\Users\Ajay\AppData\Local\MiKTeX
    ```

- If the output looks OK, remove `--print-info-only` from above CLI command and run to install MikTex.

- Add `$installFolder\bin\x64\` to `$Path`.

### Packages

**TO DO** 🚧

## VS Code

- Install:

    ```shell
    winget install --id Microsoft.VisualStudioCode -l 'D:\Apps\Microsoft VS Code'
    ```

- Add installation folder (e.g. **D:\Apps\Microsoft VS Code\bin**) to `$Path`.

## git

- Install: `winget install --id Git.Git -e --source winget`.

- [Enable auto-signing Git commits with GnuPG](https://gist.github.com/BoGnY/f9b1be6393234537c3e247f33e74094a):

    - Install apps:

        ```powershell
        winget install --id GnuPG.GnuPG -l 'D:\Apps\GnuPG'
        winget install --id GnuPG.Gpg4win -l 'D:\Apps\Gpg4win'
        ```

    - Add to `$Path` if needed:

        ```powershell
        $path = [System.Environment]::GetEnvironmentVariable('Path', 'Machine')
        $path += ';D:\Apps\Gpg4win\;D:\Apps\GnuPG\bin'
        [System.Environment]::SetEnvironmentVariable('Path', $path, 'Machine')
        ```

## SlickRun

**TO DO** 🚧

## Node

- Change installation path for modules by setting environment variable `NODE_PATH`.
- Install from <https://nodejs.org/en/download/>.

## Miscellaneous

- Install following apps:

    ```powershell
    winget install --id VideoLAN.VLC
    winget install --id ImageMagick.ImageMagick
    winget install --id Mp3tag.Mp3tag
    winget install --id Citrix.Workspace
    winget install --id Postman.Postman

    winget install --id Graphviz.Graphviz -l 'D:\Apps\Graphviz'
    winget install --id Kitware.CMake -l 'D:\Apps\CMake'

    winget install --id WinSCP.WinSCP -l 'D:\Apps\WinSCP\'
    ```

- Add installation folders to `$Path`:

    ```powershell
    $path = [System.Environment]::GetEnvironmentVariable('Path', 'User')
    $path += ';D:\Apps\Graphviz;D:\Apps\CMake;D:\Apps\WinSCP'
    [System.Environment]::SetEnvironmentVariable('Path', $path, 'User')
    ```
