# Setup machine

<!-- TOC -->

- [winget](#winget)
- [Fonts](#fonts)
- [Notepad++](#notepad)
    - [Plugins](#plugins)
- [Dot files](#dot-files)
- [PowerShell](#powershell)
    - [Modules](#modules)
- [Python](#python)
    - [JupyterLab](#jupyterlab)
- [LaTeX](#latex)
    - [MikTeX](#miktex)
    - [Packages](#packages)
- [VS Code](#vs-code)
- [git](#git)
    - [Miscellaneous](#miscellaneous)
    - [SlickRun](#slickrun)
    - [Node](#node)

<!-- /TOC -->

## winget

Install **winget** from Microsoft Store.

## Fonts

- [Nerd fonts](https://github.com/ryanoasis/nerd-fonts)
- [Source Code Pro](https://github.com/adobe-fonts/source-code-pro)
- [FiraCode](https://github.com/tonsky/FiraCode): Monospaced font with programming ligatures.
- [Hasklig](https://github.com/i-tu/Hasklig): a code font with monospaced ligatures.
- [Cascadia Code](https://github.com/microsoft/cascadia-code)

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

## Dot files

- Install [chezmoi](https://github.com/twpayne/chezmoi).
- Add installation path to `Path`.
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

- See here for info on how to resolve the issue [Enabling PowerShell remoting fails due to Public network connection type](https://4sysops.com/archives/enabling-powershell-remoting-fails-due-to-public-network-connection-type/)

### Modules

Install modules in [ModulesToInstall.txt](./ModulesToInstall.txt).

## Python

- Download and install [Miniconda](https://docs.conda.io/en/latest/miniconda.html).
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

**TO DO** 🚧

## LaTeX

### [MikTeX](https://miktex.org/howto/deploy-miktex)

- Download MiKTeX command-line installer from <https://miktex.org/download>. Extract `miktexsetup_standalone.exe`.
- Run the following comand to download MiKTeX into a local package repository:

    ```powershell
    miktexsetup_standalone --verbose --local-package-repository=D:\miktex-repository --package-set=basic download
    ```

- Next, run:

    ```powershell
    $installFolder = 'D:\Apps\Miktex'
    
    $dataFolder = '"D:\ProgramData\Miktex 2.9"'
    
    miktexsetup_standalone --common-config=$dataFolder --common-data=$dataFolder --common-install=$installFolder --local-package-repository=D:\miktex-repository --modify-path --package-set=basic --shared=yes --user-config="env:APPDATA\MiKTeX" --user-data="env:LOCALAPPDATA\MiKTeX" --print-info-only install
    ```

- Add `$installFolder\bin\x64\` to `PATH`.

### Packages

**TO DO** 🚧

## VS Code

**TO DO** 🚧

## git

- Install: `winget install --id Git.Git -e --source winget`.

- [Enable auto-signing Git commits with GnuPG](https://gist.github.com/BoGnY/f9b1be6393234537c3e247f33e74094a)

## Miscellaneous

### SlickRun

**TO DO** 🚧

### Node

- Change installation path for modules by setting `NODE_PATH`.
- Install from <https://nodejs.org/en/download/>.
