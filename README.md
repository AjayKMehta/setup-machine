# Setup machine

  - [Overview](#overview)
  - [winget](#winget)
  - [Firefox](#firefox)
  - [Fonts](#fonts)
  - [Notepad++](#notepad)
    - [Plugins](#plugins)
  - [OpenSSH](#openssh)
  - [KeePassXC](#keepassxc)
  - [PowerShell](#powershell)
    - [Modules](#modules)
    - [Secrets Management](#secrets-management)
  - [GPG](#gpg)  
    - [Managing keys](#managing-keys)
    - [Useful Links](#useful-links)
  - [WinMerge](#winmerge)
  - [SlickRun](#slickrun)
  - [git](#git)
    - [GitHub CLI](#github-cli)
      - [GitHub PAT](#github-pat)
      - [Extensions](#extensions)
    - [GitLab CLI](#gitlab-cli)
    - [GitExtensions](#gitextensions)
  - [Java](#java)
  - [CLI Apps](#cli-apps)
    - [less](#less)
    - [fzf](#fzf)
    - [ripgrep](#ripgrep)
    - [delta](#delta)
    - [yq](#yq)
    - [jq](#jq)
    - [bat](#bat)
    - [gum](#gum)
    - [duf](#duf)
    - [procs](#procs)
    - [duckdb](#duckdb)
      - [Upgrading](#upgrading)
    - [wget2](#wget2)
    - [difftastic](#difftastic)
    - [ast-grep](#ast-grep)
  - [Dot files](#dot-files)
  - [Hugo](#hugo)
  - [WSL](#wsl)
  - [Docker](#docker)
    - [Docker Credentials Helper](#docker-credentials-helper)
    - [Change images and containers directory](#change-images-and-containers-directory)
    - [Getting a Shell in Docker for Windows Moby VM](#getting-a-shell-in-docker-for-windows-moby-vm)
    - [Shrink your WSL2 Virtual Disks and Docker Images and Reclaim Disk Space](#shrink-your-wsl2-virtual-disks-and-docker-images-and-reclaim-disk-space)
    - [docker scout](#docker-scout)
    - [Utilities](#utilities)
  - [WezTerm](#wezterm)
    - [Links](#links)
  - [Hadoop](#hadoop)
  - [Python](#python)
    - [conda](#conda)
    - [spacy](#spacy)
    - [faiss](#faiss)
    - [PyTorch](#pytorch)
    - [JupyterLab](#jupyterlab)
      - [Workaround for Quarto](#workaround-for-quarto)
      - [Git-friendly hooks](#git-friendly-hooks)
    - [GenAI](#genai)
      - [Cohere](#cohere)
      - [Replicate](#replicate)
      - [Weights & Biases](#weights--biases)
      - [LLM](#llm)
      - [OpenAI](#openai)
      - [HuggingFace](#huggingface)
  - [R](#r)
    - [RStudio](#rstudio)
    - [RTools](#rtools)
    - [Packages](#packages)
    - [Spark](#spark)
    - [Stan](#stan)
    - [cmdstanr](#cmdstanr)
    - [radian](#radian)
    - [Setup for VS Code](#setup-for-vs-code)
    - [Setup for Jupyter](#setup-for-jupyter)
    - [catboost](#catboost)
    - [INLA](#inla)
    - [Quarto](#quarto)
      - [Extras](#extras)
    - [Use OpenBLAS](#use-openblas)
  - [DotNet](#dotnet)
    - [NuGet](#nuget)
    - [Useful apps](#useful-apps)
    - [Dotnet Tools](#dotnet-tools)
  - [LaTeX](#latex)
    - [MikTeX](#miktex)
    - [Packages](#miktex-packages)
  - [VS Code](#vs-code)
  - [Node](#node)
  - [Haskell](#haskell)
    - [Regular installation steps](#regular-installation-steps)
    - [Alternative installation steps](#alternative-installation-steps)
      - [Environment variables](#environment-variables)
      - [ghcup](#ghcup)
      - [msys2](#msys2)
      - [ghc](#ghc)
      - [cabal](#cabal)
      - [stack](#stack)
      - [Haskell Language Server](#haskell-language-server)
    - [Configuring VS Code](#configuring-vs-code)
      - [Syntax highlighting](#syntax-highlighting)
      - [Language Server](#language-server)
      - [Debugging](#debugging)
      - [Linting](#linting)
      - [Theme](#theme)
      - [Troubleshooting](#troubleshooting)
  - [Miscellaneous](#miscellaneous)

## Overview

> [!IMPORTANT]
> This document assumes that your C: drive has **limited space** (e.g. SSD) and you have another hard drive (D:) which you can use to install apps on instead. If that is not the case, you can omit custom location (`-l`) in `winget install` invocation or specify a directory on your C drive instead.

Setting up a new Windows machine for development is painful.

This document hopefully alleviates the pain.

> [!NOTE]
> 🚧 Look into using [winget configure](<https://learn.microsoft.com/en-us/windows/package-manager/winget/configure>) to replace script to install apps.
> 👉 Need to learn how to specify custom install path.

## winget

Install **winget** from Microsoft Store if it is not already installed.

## Firefox

- Install: `winget install Mozilla.Firefox`.
- Use Firefox account to sync various items.

## Fonts

- [Nerd fonts](https://github.com/ryanoasis/nerd-fonts)
- [Source Code Pro](https://github.com/adobe-fonts/source-code-pro)
- [FiraCode](https://github.com/tonsky/FiraCode): Monospaced font with programming ligatures.
- [Hasklig](https://github.com/i-tu/Hasklig): a code font with monospaced ligatures.
- [Cascadia Code](https://github.com/microsoft/cascadia-code)
- [Julia Mono](https://github.com/cormullion/juliamono)
- [Intel One Mono](https://github.com/intel/intel-one-mono)

## Notepad++

- Download from [web](https://notepad-plus-plus.org/download/) and install or use **winget**:

    ```powershell
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

## [OpenSSH](https://github.com/PowerShell/openssh-portable)

See [here](https://learn.microsoft.com/en-us/windows-server/administration/openssh/openssh_install_firstuse?tabs=powershell#install-openssh-for-windows).

~~- Install: `winget install Microsoft.OpenSSH.Beta`~~

~~- Add install folder (C:\Program Files\OpenSSH) to $Path.~~

## KeePassXC

- Install KeePassXC:

    ```powershell
    winget install KeePassXCTeam.KeePassXC
    ```

- See [here](https://keepassxc.org/docs/KeePassXC_GettingStarted.html) for information on getting started.

- Add installation folder to `$Path` if needed:

    ```powershell
    $path = [System.Environment]::GetEnvironmentVariable('Path', 'Machine')
    $path += ';C:\Program Files\KeePassXC'
    [System.Environment]::SetEnvironmentVariable('Path', $path, 'Machine')
    ```

## PowerShell

- Install:

    ```powershell
    winget install -e --id Microsoft.PowerShell
    ```

- Install [Oh My Posh](https://ohmyposh.dev/docs/installation/windows) as theme engine:

    ```powershell
    Invoke-RestMethod https://ohmyposh.dev/install.ps1 | Invoke-Expression
    ```

    This will add install path to `$Path`.

    In a new shell:

    ```powershell
    oh-my-posh completion powershell | Out-File -encoding utf8 ~\Documents\PowerShell\Scripts\ArgumentCompleters\oh-my-posh.ps1
    ```

- Disable telemetry:

    ```powershell
    [System.Environment]::SetEnvironmentVariable('POWERSHELL_TELEMETRY_OPTOUT', 1, 'User')
    ```

- See here for info on how to resolve the issue [Enabling PowerShell remoting fails due to Public network connection type](https://4sysops.com/archives/enabling-powershell-remoting-fails-due-to-public-network-connection-type/)

### Modules

See [ModulesToInstall.txt](./ModulesToInstall.txt) for list of modules to install.

### Secrets Management

- Install modules if necessary:

    ```powershell
    Install-Module -Name Microsoft.PowerShell.SecretManagement -Repository PSGallery
    Install-Module -Name Microsoft.PowerShell.SecretStore -Repository PSGallery
    Install-Module SecretManagement.KeePass
    ```

- Configure secret store:

    ```powershell
    Set-secretstoreConfiguration -Scope CurrentUser -Authentication Password -PasswordTimeout 3600
    Set-SecretStorePassword
    ```

- Register vaults:

    ```powershell
    Register-SecretVault -Name SecretStore -ModuleName Microsoft.PowerShell.SecretStore -DefaultVault
    # Assuming you created a Keepass DB with path below
    Register-SecretVault -Name 'Keepass' -ModuleName 'SecretManagement.Keepass' -VaultParameters @{
    Path = "D:\keepass\Passwords.kdbx"
    UseMasterPassword = $true
    }
    ```

- Test that it works:

    ```powershell
    Get-SecretInfo
    Test-SecretVault -Name 'Keepass'
    ```

## GPG

- Install required apps:

    ```powershell
    winget install --id GnuPG.GnuPG -l 'D:\Apps\GnuPG'
    winget install --id GnuPG.Gpg4win -l 'D:\Apps\Gpg4win'
    ```

- Add to `$Path` if needed:

    ```powershell
    $path = [System.Environment]::GetEnvironmentVariable('Path', 'Machine')
    $path += ';D:\Apps\Gpg4win\bin;D:\Apps\GnuPG\bin'
    [System.Environment]::SetEnvironmentVariable('Path', $path, 'Machine')
    ```

### Managing keys

List keys:

```powershell
$secretKeys = (gpg --list-secret-keys --with-colons | sls -Pattern '^sec:').Line | % { $parts = $_ -split ':'; $parts[4] }
$secretKeys

$keys = (gpg --list-keys --with-colons | sls -Pattern '^pub:').Line | % { $parts = $_ -split ':'; $parts[4] }
$keys
```

Export keys:

```powershell
$keys | % { gpg --export -a $_ | Out-File ${_}_.asc }
$secretKeys | % { gpg --export-secret-keys -a $_ | Out-File ${_}_sec.asc }
```

Import keys:

```powershell
ls *.asc -Name | % { gpg --import $_ }
```

### Useful Links

- <https://superuser.com/questions/1150165/get-list-of-secret-key-ids>
- <https://security.stackexchange.com/questions/43348/extracting-the-pgp-keyid-from-the-public-key-file>
- <https://stackoverflow.com/questions/39596446/how-to-get-gpg-public-key-in-bash>
- <https://www.phildev.net/pgp/gpg_moving_keys.html>
- <https://blog.jmorbegoso.com/post/export-and-import-gpg-keys-in-windows-and-wsl/>

## WinMerge

WinMerge is a diff/merge tool.

- Install:

    ```powershell
    winget install --id WinMerge.WinMerge -l 'D:\Apps\WinMerge'
    ```

- Add to `$Path`:

    ```powershell
    $path = [System.Environment]::GetEnvironmentVariable('Path', 'Machine')
    $path += ';D:\Apps\WinMerge'
    [System.Environment]::SetEnvironmentVariable('Path', $path, 'Machine')
    ```

## SlickRun

SlickRun is a free-floating utility for Windows that can launch programs.
Download it from [here](https://bayden.com/slickrun/).

## git

- Install: `winget install --id Git.Git -e --source winget`.

- [Enable auto-signing Git commits with GnuPG](https://gist.github.com/BoGnY/f9b1be6393234537c3e247f33e74094a).

### GitHub CLI

- Download [GitHub CLI](https://github.com/cli/cli). See [Releases](https://github.com/cli/cli/releases) for latest version.

    ```powershell
    $version = '2.39.0'
    Invoke-RestMethod "https://github.com/cli/cli/releases/download/v${version}/gh_${version}_windows_amd64.zip" -OutFile ~/Downloads/gh_${version}_windows_amd64.zip
    ```

- Copy binary to desired location.

    ```powershell
    [string] $folder = 'D:\Apps'
    7z e C:\Users\Ajay\Downloads\gh_2.39.0_windows_amd64.zip bin\gh.exe -o"$($folder)"
    ```

- Add shell completion script (that you can dot-source in PowerShell profile):

    ```powershell
    gh completion -s powershell | Out-File -Encoding utf8 ~\Documents\PowerShell\Scripts\ArgumentCompleters\gh.ps1
    ```

#### GitHub PAT

- [Create an authentication token for github.com API requests](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token).
- Set `$GITHUB_TOKEN` to this value to avoid being prompted to authenticate by CLI.
- Alternatively, use `gh auth login --secure-storage -h github.com` to store the access token in the system keyring.

#### Extensions

Install extensions:

```powershell
gh extension install actions/gh-actions-cache
gh extension install securesauce/gh-alerts
gh extension install mislav/gh-branch
gh extension install chelnak/gh-changelog
gh extension install vilmibm/gh-contribute
gh extension install mislav/gh-cp
gh extension install dlvhdr/gh-dash
gh extension install yuler/gh-download
gh extension install owenvoke/gh-gpg-key
gh extension install k1LoW/gh-grep
gh extension install redraw/gh-install
gh extension install heaths/gh-label
gh extension install meiji163/gh-notify
gh extension install seachicken/gh-poi
gh extension install samcoe/gh-repo-explore
gh extension install samcoe/gh-triage
gh extension install vilmibm/gh-user-status
```

### GitLab CLI

- Install:

    ```powershell
    winget install Glab.Glab
    ```

- Get a GitLab PAT with at least `api` and `write_repository` scopes.
- Setup: `glab auth login`.
- Shell completion: `glab completion -s powershell | Out-File ~\Documents\PowerShell\Scripts\ArgumentCompleters\glab.ps1 -Encoding utf8`

#### Authentication

1. Create a PAT.
2. Follow prompts for `glab auth login`. Or, create `$GITLAB_TOKEN` with value set to PAT.

### GitExtensions

Install: `
winget install GitExtensionsTeam.GitExtensions
`.

### git absorb

[git absorb](https://github.com/tummychow/git-absorb) eliminates tedious manual work of creating fixup commits (and rebasing if you specify `--and-rebase`). It can automatically identify which commits are safe to modify, and which staged changes belong to each of those commits. It will then write `fixup!` commits for each of those changes.

```shell
git add . # fixed files
git absorb --and-rebase
```

Install: `winget install tummychow.git-absorb -l D:\Apps\CLI`.

## Java

- Install:

    ```powershell
    winget install Oracle.JDK.17
    ```

- Set `$JAVA_HOME`:

    ```powershell
    [System.Environment]::SetEnvironmentVariable('JAVA_HOME', 'C:\Program Files\Java\jdk-17.0.5', 'Machine')
    ```

- Add bin folder (C:\Program Files\Java\jdk-17.0.5\bin) to `$Path`.

- Install **maven** from <https://maven.apache.org/download.cgi> and add installation folder to `$Path`.

## CLI Apps

:bulb: Install CLI apps in a common directory and add common directory to `$Path`.

### typos

**typos** is a CLI tool to check spelling. It has less false positives compared to the alternatives. Get the latest binaries from [here](https://github.com/crate-ci/typos/releases).

### less

**[less](https://github.com/jftuga/less-Windows)** is a pager.

- Install:

    ```powershell
    winget install jftuga.less -l D:\Apps\CLI
    ```

- Set environment variables:

    ```powershell
    [System.Environment]::SetEnvironmentVariable('LESS', '-RX', 'Machine')
    [System.Environment]::SetEnvironmentVariable('LESSCHARSET', 'UTF8', 'Machine')
    ```

### fzf

**fzf** is a command-line fuzzy finder.

1. Get latest binaries from [here](https://github.com/junegunn/fzf/releases). If you have already installed GitHub CLI and 7zip:

    ```powershell
    $downloadFolder = (Resolve-Path ~\Downloads).Path
    $pattern = 'fzf*windows*amd64.zip'
    gh release download --repo junegunn/fzf --pattern $pattern -D $downloadFolder
    $zipFile = Get-ChildItem $downloadFolder -Filter $pattern | Select-Object -First 1
    $destination = 'D:\Apps\CLI'
    & 'C:\Program Files\7-Zip\7z.exe' e -o"$destination" $zipFile 'fzf.exe'
    $zipFile | Remove-Item -Force
    ```

2. Override default command: set `$FZF_DEFAULT_COMMAND` to `rg --files . 2> nul`.
3. Override default options:

    ```powershell
    $opts = @'
    --color=fg:-1,bg:-1,hl:#5fff87,fg+:-1,bg+:-1,hl+:#ffaf5f
    --color=info:#af87ff,prompt:#5fff87,pointer:#ff87d7,marker:#ff87d7,spinner:#ff87d7
    --bind alt-up:preview-page-up,alt-down:preview-page-down,alt-e:preview-top,alt-f:preview-bottom,ctrl-e:half-page-up,ctrl-f:half-page-down
    '@
    [System.Environment]::SetEnvironmentVariable('FZF_DEFAULT_OPTS', $opts, 'User')
    ```

### ripgrep

ripgrep is a powerful search tool.

- Get it from [here](https://github.com/BurntSushi/ripgrep/releases).
- Add installation path to `$Path`.

### delta

**[delta](https://github.com/dandavison/delta)** is a syntax-highlighting pager for git, diff, and grep output. In order to use it with git, you need to modify `.gitconfig` or you can import dot files.

- [Installation notes](https://dandavison.github.io/delta/installation.html)

- Add to PowerShell profile: `$env:DELTA_PAGER = 'less -rFX'`

### yq

**[yq](https://github.com/mikefarah/yq)** is a portable command-line YAML, JSON, XML, CSV and properties processor.

Install: `winget install MikeFarah.yq -l D:\Apps\CLI`.

### jq

[jq](https://github.com/stedolan/jq) is a command-line JSON processor.

Install: `winget install jqlang.jq -l D:\Apps\CLI`.

### bat

- Install [bat](https://github.com/sharkdp/bat) from [here](https://github.com/sharkdp/bat/releases).
- Add installation path to `$Path`.
- Create folder if it does not exist: `$env:AppData\Local\bat\cache`
- Add following environment variables: `BAT_PAGER = less -RF`.
- A default configuration file can be created with the `--generate-config-file` option.

    ```powershell
    bat --generate-config-file
    ```

### [gum](https://github.com/charmbracelet/gum)

> Gum provides highly configurable, ready-to-use utilities to help you write useful shell scripts and dotfiles aliases with just a few lines of code.

```powershell
winget install charmbracelet.gum -l D:\Apps\CLI
```

### duf

[duf](https://github.com/muesli/duf) is a Disk Usage/Free Utility.

```powershell
winget install muesli.duf -l D:\Apps\CLI
```

### procs

A modern replacement for `ps` written in Rust.

```powershell
winget install procs -l D:\Apps\CLI
```

### duckdb

```powershell
winget install DuckDB.cli -l D:\Apps\CLI
```

#### Upgrading

Before installing new version of CLI, you need to export any databases from old CLI and re-import in new CLI :frowning:

For example, let's say you have a database `D:/duck_db/nyc-taxi.duckdb`.

1. In CLI for old version, execute: `.open D:/duck_db/nyc-taxi.duckdb`
2. In CLI for old version: `EXPORT DATABASE 'D:/duckdb_export/nyc-taxi';`
3. Delete old file `D:/duck_db/nyc-taxi.duckdb`.
4. In R using latest version of `duckdb` package:

    ```r
    con <- dbConnect(duckdb::duckdb(), dbdir = "D:/duckdb/nyc-taxi.duckdb", read_only = FALSE)
    dbExecute(con, "IMPORT DATABASE 'D:/duckdb_export/nyc-taxi'")
    ```

### wget2

```powershell
winget install GNU.wget2
```

### difftastic

[Difftastic](https://github.com/Wilfred/difftastic) is a structural diff tool that compares files based on their syntax.

```powershell
winget install Wilfred.difftastic -l D:\Apps\CLI
```

### ast-grep

[ast-grep](https://github.com/ast-grep/ast-grep) is a CLI tool for code structural search, lint, and rewriting.

## Dot files

- Install [chezmoi](https://github.com/twpayne/chezmoi):

    ```powershell
    winget install twpayne.chezmoi -l D:\Apps\CLI
    ```

- Run `chezmoi init` to create an initial `chezmoi.toml` using template in repo:

    ```powershell
    chezmoi init AjayKMehta
    ```

> [!TIP]
> You can supply `--apply` in the above command to generate dot files at same time.

- Provide the path to your KeePassXC database in your configuration file if any. See [here](https://www.chezmoi.io/user-guide/password-managers/keepassxc/) for details.

- To test this template, [use `chezmoi execute-template` with the `--init` and `--promptString` flags](https://www.chezmoi.io/user-guide/setup/#create-a-config-file-on-a-new-machine-automatically):

    ```powershell
    cat ~/.local/share/chezmoi/.chezmoi.toml.tmpl | chezmoi execute-template --init --promptString gpgrecipient='<RECIPIENT>'
    ```

- Generate dot files:

    ```powershell
    chezmoi apply
    ```

## VS Code

- Install:

    ```powershell
    winget install --id Microsoft.VisualStudioCode -l 'D:\Apps\VSCode'
    ```

- Add installation folder (e.g. **D:\Apps\VSCode\bin**) to `$Path`.

- Use settings sync to get settings.

> [!TIP]
> If you run into the error **`Another instance of Code is running as administrator`**, [you can resolve this by setting VS Code to always run as admin](https://github.com/microsoft/vscode/issues/6560#issuecomment-1732330823).

## Node

- Install from <https://nodejs.org/en/download/>.
- Change installation path for modules by setting `$NODE_PATH`

## Hugo

[Hugo](https://gohugo.io/) is an open-source static site generator.

- Install:

    ```powershell
    winget install Hugo.Hugo -l D:\apps\Hugo
    ```

- Add installation folder to `$Path`.

## WSL

See [wsl.md](wsl.md).

## [Docker](https://www.docker.com/)

```powershell
winget install Docker.DockerDesktop
```

### Where are Docker images located?

When using WSL2 with Docker Desktop, a new distro called `docker-desktop-data` is created, which is also where all your image layers are stored.

### [Docker Credentials Helper](https://github.com/docker/docker-credential-helpers)

1. Go to the [Releases](https://github.com/docker/docker-credential-helpers/releases) page and download the binary (`docker-credential-wincred`) that works for you. Put that binary in your `$PATH`, so Docker can find it.

2. Set the `credsStore` option in your `~/.docker/config.json` file with the suffix of the program you want to use (`wincred`).

    ```json
    {
        "credsStore": "wincred"
    }
    ```

### Change images and containers directory

Follow the instructions [here for WSL 2 backend](https://www.kindacode.com/article/docker-desktop-change-images-containers-directory/):

```powershell
wsl --shutdown
wsl --export docker-desktop-data docker-desktop-data.tar
wsl --unregister docker-desktop-data
# Import the exported data to D:\wsl\Docker\data
wsl --import docker-desktop-data D:/wsl/Docker/data docker-desktop-data.tar --version 2
```

### Getting a Shell in Docker for Windows Moby VM

```powershell
docker run -it --rm --privileged --pid=host justincormack/nsenter1
```

[Source](https://www.bretfisher.com/getting-a-shell-in-the-docker-for-windows-vm/)

### [Shrink your WSL2 Virtual Disks and Docker Images and Reclaim Disk Space](https://www.hanselman.com/blog/shrink-your-wsl2-virtual-disks-and-docker-images-and-reclaim-disk-space)

```powershell
Optimize-VHD -Path D:\wsl\Docker\data\ext4.vhdx -Mode Full
```

### docker scout

[Docker Scout](https://www.docker.com/products/docker-scout/) is a set of software supply chain features integrated into Docker's user interfaces and command line interface (CLI).

It comes bundled with Docker Desktop but if you wish to use a different version, please follow [these instructions](https://github.com/docker/scout-cli?tab=readme-ov-file#manual-installation).

### Utilities

```powershell
winget install wagoodman.dive -l D:\Apps\CLI
winget install JesseDuffield.Lazydocker -l D:\Apps\CLI
```

## [WezTerm](https://wezfurlong.org/wezterm/index.html)

WezTerm is a powerful cross-platform terminal emulator and multiplexer.

- Install:

    ```powershell
    winget install wez.wezterm -l D:\Apps\WezTerm
    ```

- (Optional) Add installation folder to `$Path`.

### Links

- <https://wezfurlong.org/wezterm/quickselect.html>
- <https://wezfurlong.org/wezterm/copymode.html>
- <https://wezfurlong.org/wezterm/config/launch.html>
- <https://wezfurlong.org/wezterm/config/default-keys.html>
- <https://wezfurlong.org/wezterm/config/lua/general.html#making-your-own-lua-modules>

## Hadoop

See [here](https://kontext.tech/article/447/install-hadoop-330-on-windows-10-step-by-step-guide) for more details. As of the time this was written, the version of interest for Hadoop was 3.3.6.

1. Install Hadoop and create `$HADOOP_HOME`:

    ```powershell
    pushd ~/Downloads
    $version = '3.3.6'
    Invoke-WebRequest "https://dlcdn.apache.org/hadoop/common/hadoop-$version/hadoop-$version.tar.gz" -OutFile "hadoop-$version.tar.gz" -Verbose
    # https://stackoverflow.com/a/2903532
    7z e "hadoop-$version.tar.gz" && 7z x "hadoop-$version.tar" -o"D:/Apps"
    Remove-Item "hadoop-$version.tar*"

    # Download Hadoop native IO binary
    gh download "https://github.com/cdarlint/winutils/tree/master/hadoop-$version/bin" 

    # Copy files to bin folder. Add -L to do dry-run
    robocopy ".\hadoop-$version\bin" "D:\Apps\hadoop-$version\bin"
    Remove-Item ".\hadoop-$version\bin" -Recurse 
    popd

    [System.Environment]::SetEnvironmentVariable('HADOOP_HOME', "D:\Apps\hadoop-$version", 'User')
    ```

2. Add `%HADOOP_HOME%\bin` to `$Path`.

## Python

> [!NOTE]
> At some point, I would like to switch to **~~poetry~~** **uv** due to the challenges presented when using **conda** and **pip** together.

- Download and install [Miniconda](https://docs.conda.io/en/latest/miniconda.html).
- Add **bin** folder (**D:\Apps\Miniconda\condabin**) to `$Path`.
- To use [UTF-8 mode on Windows](https://dev.to/methane/python-use-utf-8-mode-on-windows-212i), set environment variable `$PYTHONUTF8` to 1.
- Add environment variables:

    ```powershell
    SET VS140COMNTOOLS = "C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\Tools\"
    SET VS90COMNTOOLS = %VS140COMNTOOLS%
    ```

- To resolve error **`URLError: <urlopen error [SSL: CERTIFICATE_VERIFY_FAILED] certificate verify failed: certificate has expired (_ssl.c:997)>`**, install <https://letsencrypt.org/certs/lets-encrypt-r3.der> ([source](https://github.com/thonny/thonny/issues/1986#issuecomment-934771923)).

- To prevent installing using base python, set `$PIP_REQUIRE_VIRTUALENV` to `true`[^1].

[^1]: See <https://daniel.feldroy.com/posts/til-2023-12-forcing-pip-to-use-virtualenv> for details.

### conda

- To enable conda in PowerShell, run the following in conda prompt:

    ```powershell
    conda init powershell cmd.exe
    ```

- Enable `pip` interoperability:

    ```powershell
    conda config --set pip_interop_enabled True
    ```

- conda will automatically prepend the prompt with the name of the environment you're in. To disable this, [do the following](https://ohmyposh.dev/docs/faq#conda-environment-name-displayed-in-front-of-the-prompt):

    ```powershell
    conda config --set changeps1 False
    ```

### spacy

Spacy models are not available on conda-forge for spacy 3.5+ as of the time this was written.

Please do the following to install:

```powershell
# Best to run with --dry-run first to make sure no dependencies get clobbered.
pip install $(spacy info en_core_web_md --url)
```

> :bulb: Package names are different on PyPi.org compared to conda-forge: *en\_core\_web\_md* vs **spacy-model-**_en\_core\_web\_md_. <!-- markdownlint-disable-line MD049 -->

For more information, see [here](https://spacy.io/usage/models#download).

### faiss

No GPU version on Windows. See [instructions](https://github.com/facebookresearch/faiss/blob/main/INSTALL.md).

### PyTorch

See [here](https://pytorch.org/get-started/locally/) for instructions on installing PyTorch.

To get CUDA version installed on your machine, inspect the output of the following command:

```shell
nvidia-smi
```

### JupyterLab

Install following extensions:

- jupyterlab-plotly
- @jupyterlab/latex
- @ryantam626/jupyterlab_code_formatter

```powershell
mamba install jupyterlab-latex jupyterlab-plotly-extension jupyterlab_code_formatter
```

#### Workaround for Quarto

See [Use with nbconvert, voila, papermill,...](https://github.com/Anaconda-Platform/nb_conda_kernels#use-with-nbconvert-voila-papermill).

#### Git-friendly hooks

See [here](https://nbdev.fast.ai/tutorials/git_friendly_jupyter.html) for details.

### GenAI

Make sure that you configure environment variables for API keys.

#### Cohere

- Create API key at <https://dashboard.cohere.com/api-keys>.
- Set `$COHERE_API_KEY` to API key.

#### Replicate

- Create token at <https://replicate.com/account/api-tokens>.
- Set `$REPLICATE_API_TOKEN` to API token.

#### Weights & Biases

- Get API Key from <https://wandb.ai/settings> and set `$WANDB_API_KEY`.

#### [LLM](https://llm.datasette.io/en/stable/index.html)

To override the directory used to store prompt templates, etc., set `$LLM_USER_PATH` ([source](https://llm.datasette.io/en/stable/setup.html#setting-a-custom-directory-location)):

```powershell
[System.Environment]::SetEnvironmentVariable('LLM_USER_PATH', 'D:\llm', 'User')
```

#### OpenAI

- Get API Key from <https://platform.openai.com/api-keys> and set `$OPENAI_API_KEY`.

#### HuggingFace

Get access token from <https://huggingface.co/settings/tokens>.

Set following [environment variables](https://huggingface.co/docs/huggingface_hub/package_reference/environment_variables):

1. Set `$HF_HOME` to configure where **huggingface_hub** will locally store data. In particular, your token and the cache will be stored in this folder.

1. Set `$HF_TOKEN` to configure the User Access Token to authenticate. If set, this value will overwrite the token stored on the machine (in `$HF_HOME/token`).

1. Set `$HF_HUB_DOWNLOAD_TIMEOUT` to define the number of seconds to wait for server response when downloading a file. If the request times out, a TimeoutError is raised.

##### Faster downloads

To enable faster downloads:

```powershell
pip install hf_transfer
$env:HF_HUB_ENABLE_HF_TRANSFER = 1
```

##### [Check installation](https://huggingface.co/docs/huggingface_hub/installation#check-installation)

Once installed, check that **huggingface_hub** works properly by running the following command:

```shell
python -c "from huggingface_hub import model_info; print(model_info('gpt2'))"
```

This command will fetch information from the Hub about the `gpt2` model. Output should look like this:

```text
Model Name: gpt2
Tags: ['pytorch', 'tf', 'jax', 'tflite', 'rust', 'safetensors', 'gpt2', 'text-generation', 'en', 'doi:10.57967/hf/0039', 'transformers', 'exbert', 'license:mit', 'has_space']
Task: text-generation
```

## R

1. Download and install R from [CRAN website](https://cran.r-project.org/bin/windows/base/). Alternatively, `winget install  RProject.R`.
1. Add **\<InstallPath\>\bin\x64** to `$PATH`.
1. Default folder of .RProfile and .REnviron is ~\Documents which leads to issues if OneDrive moves this folder to ~\OneDrive\Documents :frowning:. So, best to set environment variables:

    ```powershell
    [System.Environment]::SetEnvironmentVariable('R_ENVIRON_USER', '~\.Renviron', 'User')
    [System.Environment]::SetEnvironmentVariable('R_PROFILE_USER', '~\.Rprofile', 'User')
    ```

1. To avoid the issue of C: running out of disk space, set `$R_LIBS` to a different path, e.g.`D:\packages`.
1. Set `$GITHUB_PAT` to [GitHub PAT obtained](#github-pat). This is necessary for avoiding rate-limit issues when installing packages from GitHub using the [`remotes`](https://github.com/r-lib/remotes#environment-variables) package.

### RStudio

```powershell
winget install Posit.RStudio
```

### RTools

- Install location is usually C:\RTools but if you have limited disk space, set `RTOOLS43_HOME`to a different path, e.g.`D:\rtools43` ***before* running the installer**.
- Download and run [R Build tools](https://cran.r-project.org/bin/windows/Rtools/).
- Add bin folder in install path to `$PATH` -- this can be done by editing .Renviron: `PATH="${RTOOLS40_HOME}\usr\bin;${PATH}"`.

[Usage notes](https://github.com/r-windows/docs/blob/master/rtools40.md#readme)

### Packages

- To install packages from `r-universe`:

    ```r
    install.packages("universe")
    # For dev version:
    # install.packages("universe", repos = "https://ropensci.r-universe.dev")
    ```

- Use `universe::add()` to opt-in to a package repository (this will modify your `options('repos')` list).

    ```r
    universe::add("ropensci")
    ```

- Install packages in [Packages.csv](./Packages.csv).

### Spark

1. In .RProfile, set `options(spark.install.dir = "D:/Apps/Spark")`
1. Install `sparklyr`:

    ```r
    install.packages("sparklyr")
    ```

1. Check available versions:

    ```r
    library(sparklyr)
    spark_versions()
    ```

1. Install required version:

    ```r
    spark_install("3.5.0", "3")
    ```

1. Set `$SPARK_HOME` to bin folder, i.e. D:\Apps\Spark\spark-3.3.2-bin-hadoop3\bin.

### Stan

- See [RStan Getting Started](https://github.com/stan-dev/rstan/wiki/RStan-Getting-Started#configuration-of-the-c-toolchai).

### cmdstanr

```r
install.packages("cmdstanr")
cmdstanr::check_cmdstan_toolchain(fix = TRUE)
cmdstanr::install_cmdstan(dir = "D:/Apps", overwrite = TRUE, cores = 6)
cmdstanr::set_cmdstan_path() # D:/Apps/cmdstan-2.24.1
```

### radian

From the project's [README.md](https://github.com/randy3k/radian/blob/master/README.md):

> radian is an alternative console for the R program with multiline editing and rich syntax highlight.

Installation steps:

1. Install `radian`: `conda install radian`.
1. Set `$R_BINARY` to **\<InstallPath\>\bin\x64\R.exe**. This is needed for `radian` to work properly.

### Setup for VS Code

1. Install `languageserver` and `httpgd` in R: `install.packages(c("languageserver", "httpgd"))`.
1. Install the [R extension for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=REditorSupport.r).
1. Set up `radian` as R console in VS Code.
1. Install VSCode-R-Debugger package: `remotes::install_github(ref = "v0.5.2", "ManuelHentschel/vscDebugger")`.

See [here](https://code.visualstudio.com/docs/languages/r) for more details.

### Setup for Jupyter

1. Install R package `IRKernel`: `install.packages("IRKernel")`.
1. Activate conda environment with Jupyter installed.
1. Use `jupyter kernelspec list` to get location of existing kernels. If you see a path corresponding to `$Appdata\jupyter\kernels\ir`, then R kernel is already installed.
1. Launch `radian` in conda environment's shell.
1. In radian: `IRKernel::installspec()`.

> Alternatively, you can copy files from `IRKernel` package installation directory's **kernelspec** subfolder to `$Appdata\jupyter\kernels\ir`.

### catboost

This is available from [GitHub](https://github.com/catboost/catboost).

1. Download latest release from <https://github.com/catboost/catboost/releases>.
1. Install: `install.packages(repo = NULL, type = "source", r"{C:\Users\Ajay\Downloads\catboost-R-windows-x86_64-1.2.2.tgz}")`.

### INLA

See [here](https://www.r-inla.org/download-install).

### Quarto

[Quarto](https://quarto.org/) is a replacement for RMarkdown that also works with Python.

To install:

1. Download installer from <https://github.com/quarto-dev/quarto-cli/releases> and run.
1. Add installation path (D:\Apps\Quarto\bin) to `$PATH` if not already available.
1. RStudio ships with its owb version of Quarto + Pandoc. To use Quarto and its bundled version of Pandoc, add the following to your .Renviron file:

    ```shell
    QUARTO_PATH="D:/Apps/quarto/bin/quarto.cmd"
    RSTUDIO_PANDOC="D:/Apps/quarto/bin/tools"
    ```

#### Extras

To support rendering of PDF documents that include SVG files, automatically converting them to PDF images in Quarto 1.3+, install `rsvg-convert` from <https://github.com/miyako/console-rsvg-convert> and add to`$PATH`.

(**Optional**) tinytex is a lightweight alternative to MikTeX:

```powershell
quarto install tinytex
```

### Use OpenBLAS

You can use OpenBLAS to speed up linear algebra operations but use at your own risk! Instructions below are modified from this [SO post](https://stackoverflow.com/questions/38090206/linking-intels-math-kernel-library-mkl-to-r-on-windows) and <https://medium.com/@FredHo42/using-intel-mkl-library-on-r-4-0-641dc0c3c06b>.

1. Download latest version of OpenBLAS from <https://github.com/OpenMathLib/OpenBLAS/releases>.
1. Copy `Rlapack.dll` and `Rblas.dll` from `./bin/x64` in R installation folder to safe location.
1. Now create 2 copies of `libopenblas.dll` named `Rlapack.dll` and `Rblas.dll` and copy them to folder from step 1.
1. If you run into problems, you can revert back to the original DLLs.

Check performance:

Before

```r
> system.time(svd(matrix(runif(10000*2000), 10000, 2000), nu=0, nv=0))
   user  system elapsed 
  43.50    0.09   44.06 
```

After

```r
> system.time(svd(matrix(runif(10000*2000), 10000, 2000), nu=0, nv=0))
   user  system elapsed
  20.72    1.20    5.30
```  

<!-- Stupid Markdown TOC extension cant handle '.' in header 😠 -->
## DotNet

- Install Visual Studio Community 2022:

    ```powershell
    winget install Microsoft.VisualStudio.2022.Community
    ```

    This will also install .NET 8 SDK.

- Install [templates for `dotnet new`](https://github.com/dotnet/templating/wiki/Available-templates-for-dotnet-new):

    ```powershell
    dotnet new install "Boxed.Templates"
    dotnet new install "Amazon.Lambda.Templates"
    dotnet new install "NUnit3.DotNetNew.Template"
    ```

- Set environment variables related to [runtime configuration for compilation](https://learn.microsoft.com/en-us/dotnet/core/runtime-config/compilation):

    ```powershell
    [System.Environment]::SetEnvironmentVariable('DOTNET_TieredPGO', 1, 'User')
    ```

    > :bulb: [Enabled by default in .NET 8]([text](https://learn.microsoft.com/en-us/dotnet/core/whats-new/dotnet-8?WT.mc_id=DT-MVP-5003978#performance-improvements)) so no longer needed after upgrading to .NET 8.

- Disable telemetry:

    ```powershell
    [System.Environment]::SetEnvironmentVariable('DOTNET_CLI_TELEMETRY_OPTOUT', 1, 'User')
    [System.Environment]::SetEnvironmentVariable('DOTNET_UPGRADEASSISTANT_TELEMETRY_OPTOUT', 1, 'User')
    ```

### NuGet

- Change directory for NuGet packages

    ```powershell
    [System.Environment]::SetEnvironmentVariable('NUGET_PACKAGES', 'D:\NuGet\packages', 'Machine')
    ```

- Install NuGet: `winget install Microsoft.NuGet`.
- Add installation path to `$Path`.

### Useful apps

- Install LinqPad 8:

    ```powershell
    winget install --id LINQPad.LINQPad.8 -l 'D:\Apps\LINQPad8\'
    ```

- Install Nuget Package Explorer:

    ```powershell
    winget install --id 9WZDNCRDMDM3
    ```

- Install MSBuild Structured Log Viewer:

    ```powershell
    winget install --id KirillOsenkov.MSBuildStructuredLogViewer
    ```

- Install NSwagStudio:

    ```powershell
    winget install --id RicoSuter.NSwagStudio
    ```

- Install NUnit Console from [here](https://github.com/nunit/nunit-console/releases).

- Install PerfView:

    ```powershell
    winget install Microsoft.PerfView -l D:\Apps\PerfView
    ```

### Dotnet Tools

Install following tools:

```powershell
dotnet tool install -g benchmarkdotnet.tool
dotnet tool install -g coverlet.console
dotnet tool install -g diffenginetray
dotnet tool install -g dotnet-counters
dotnet tool install -g dotnet-depends
dotnet tool install -g dotnet-monitor
dotnet tool install -g dotnet-outdated-tool
dotnet tool install -g dotnet-reportgenerator-globaltool
dotnet tool install -g dotnet-sos
dotnet tool install -g dotnet-stack
dotnet tool install -g dotnet-stryker
dotnet tool install -g dotnet-trace
dotnet tool install -g microsoft.coyote.cli
dotnet tool install -g microsoft.dotnet-httprepl
dotnet tool install -g microsoft.dotnet-interactive
dotnet tool install -g minver-cli
dotnet tool install -g roslynator.dotnet.cli
dotnet tool install -g snitch
dotnet tool install -g upgrade-assistant
```

## LaTeX

### [MikTeX](https://miktex.org/howto/deploy-miktex)

- Download MiKTeX command-line installer from <https://miktex.org/download>.
- Extract **miktexsetup_standalone.exe** and *set current directory to its folder location*.
- Run the following command to download MiKTeX into a local package repository:

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

### latexindent

**latexindent** is used to format LaTeX in the VS Code extension [LaTeX-Workshop](https://github.com/James-Yu/LaTeX-Workshop).

> [!WARNING]
> The script that ships with MikTex requires a Perl installation but even after trying to install Perl (in standard and custom location), it still did not work.

Download latest version from [here](https://github.com/cmhughes/latexindent.pl/releases) and make sure install folder is in `$Path`.

### tectonic

[Tectonic](https://github.com/tectonic-typesetting/tectonic) is a modern TeX/LaTeX engine written in Rust :crab:

Grab latest binary from GitHhub repo and make sure installation folder is in `$Path`.

### chktex

[chktex](https://www.nongnu.org/chktex/) can be installed from CTAN to lint LaTeX files.

> [!NOTE]
> It seems that the configuration file `chktexrc` is installed in `<MikTex Install Folder>/chktex`.

### Miktex Packages

See [miktex_packages.txt](./miktex_packages.txt) for list of packages to install.

### Use VS Code for LaTeX

- [How to use LaTeX on VS Code?](https://tex.stackexchange.com/questions/462365/how-to-use-latex-on-vs-code)

- [LaTeX Workshop](https://github.com/James-Yu/LaTeX-Workshop/wiki)

## Haskell

[GHCup](https://www.haskell.org/ghcup/) is the main installer for Haskell. Setting up Haskell on Windows is *still* painful but less so than before GHCup came around.

### Regular installation steps

- If you wish to specify the installation root directory for **ghcup**, you can set `$GHCUP_INSTALL_BASE_PREFIX`[^2] (user-level environment variable). If not set, you can pass install directory choice to the install script or the script will prompt you if it doesn't find a drive with > 5 GB free space to install on.

[^2]: Whichever value you use will be set by the script as `$GHCUP_INSTALL_BASE_PREFIX`.

- Download install script:

    ```powershell
    cd ~\Downloads\ && Invoke-WebRequest https://www.haskell.org/ghcup/sh/bootstrap-haskell.ps1 -OutFile bootstrap-haskell.ps1
    ```

> [!WARNING]
> Although the website says to run it directly, I think it's a good idea to review the script first and possibly customize invocation as the script has several parameters and the default values may not work for you.

- Run script in non-admin powershell:

    ```powershell
    # Hash from https://github.com/msys2/msys2-installer/releases/download/2023-07-18/msys2-base-x86_64-20230718.sfx.exe.sha256
    . .\bootstrap-haskell.ps1 -InstallStack -InStallHLS -InstallDir D:\Apps -Msys2Version '20230718' -Msys2Hash 'ab9b9a25e92d0c71136c79eeac954f1ce023341224de8d81401439f38c8b9232'
    ```

> [!CAUTION]
> This did not work when specifying `msys` details. I got an error about file hash not being equal though that was not the case 😦

### Alternative installation steps

This section is based on the following links:

- <https://www.haskell.org/ghcup/install/#windows_1>
- <https://github.com/keithfancher/haskell-notes/blob/master/haskell-notes.md#getting-started>
- <https://gist.github.com/lsmor/bb632565cd96be9da589b6e91f80f9ba>

#### Environment variables

1. Assuming you plan to install `msys` to `D:\msys64` and `ghcup.exe` to `D:\Apps\ghcup\bin`, set the following environment variables first:

    | Env Variable                | Value                                                    | Notes                                                                                                                                                                                                                                              |
    |-----------------------------|----------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
    | `GHCUP_INSTALL_BASE_PREFIX` | D:\Apps                                                  | [Defaults to `$HOME`](https://www.haskell.org/ghcup/guide/#env-variables)                                                                                                                                                                          |
    | `CABAL_DIR`                 | D:\Apps\cabal                                            | If set, *all* `cabal-install` content files will be stored as subdirectories of this directory, including the configuration file if `CABAL_CONFIG` is unset. See [here](https://cabal.readthedocs.io/en/stable/config.html#environment-variables). |
    | `CABAL_CONFIG`              | `$USERPROFILE`\\.config\cabal\config                       | Path for global configuration file.                                                                                                                                                                                                                |
    | `GHCUP_MSYS2`               | D:\msys64                                                | [Has to point to the root of an existing MSYS2 installation](https://www.haskell.org/ghcup/guide/#env-variables)                                                                                                                                   |
    | `STACK_ROOT`                | D:\sr                                                    | This is where `stack` stores important files. See [here](https://docs.haskellstack.org/en/stable/stack_root/).                                                                                                           |
    | `GITHUB_TOKEN`              | GitHub PAT. See [GitHub Token](#github-pat) for details. | Used by `stack` to authenticate when using GitHub REST API. See [here](https://docs.haskellstack.org/en/stable/environment_variables/).|

> [!IMPORTANT]
> You also need to add `D:\Apps\ghcup\bin` to `$Path`. <br>
> You also need to make sure `$HOME` is set if you want to save `.ghci` there.

#### ghcup

- Download **ghcup** binary from <https://github.com/haskell/ghcup-hs/releases>, e.g. latest version as of the time, this was written is 1.2.0, so download <https://github.com/haskell/ghcup-hs/releases/download/v0.1.20.0/x86_64-mingw64-ghcup-0.1.20.0.exe>.
- Rename binary to `ghcup.exe` and copy to `D:\Apps\ghcup\bin`.
- Create config file in `D:\Apps\ghcup\bin`[^3]: `ghcup config init`.

[^3]: The online documentation says location is `~/.ghcup/config.yaml` which is not the case.

#### msys2

- Download latest version from <https://github.com/msys2/msys2-installer/releases/>.
- Install the self extracting archive to D:\msys64:

    ```powershell
    .\msys2-base-x86_64-20230718.sfx.exe -y -oD:\
    ```

- Launch `D:\Mmsyss64\msys2.exe` as this does some initialization steps. If you don't, you may get this error when you try to run the next step: `warning: Public keyring not found; have you run 'pacman-key --init'?`.

- Update msys2:

    ```powershell
    ghcup run -m -- pacman --noconfirm -Syuu
    ghcup run -m -- pacman --noconfirm -S --needed curl autoconf mingw-w64-x86_64-pkgconf
    ghcup run -m -- pacman --noconfirm -S ca-certificates
    ```

    Also, refer to [this](https://www.msys2.org/docs/updating).

- Set up msys2 shell:

    - Run `ghcup run -m -- sed -i -e 's/db_home:.*$/db_home: windows/' /etc/nsswitch.conf` to make the `$HOME`` in your msys2 shell match the one from windows.
    - Make a desktop shortcut from `D:\msys64\msys2_shell.cmd`, which will allow you to start a proper msys2 shell: `New-Item -ItemType SymbolicLink -Path ~\Desktop\Msys2 -Value D:\msys64\msys2_shell.cmd` (requires elevated shell).
    - Run `ghcup run -m -- sed -i -e "s/#MSYS2_PATH_TYPE=.*/MSYS2_PATH_TYPE=inherit/" /d/msys64/msys2.ini`
    - Run `ghcup run -m -- sed -i -e "s/rem set MSYS2_PATH_TYPE=inherit/set MSYS2_PATH_TYPE=inherit/" /d/msys64/msys2_shell.cmd`

#### ghc

- Install ghc:

    ```powershell
    ghcup install ghc --set recommended
    ```

- Edit [config files](https://downloads.haskell.org/ghc/latest/docs/users_guide/ghci.html?highlight=import#the-ghci-and-haskeline-files) as needed. The `ghci.conf` file in `$AppData\ghc` can be used for turning on favorite options (e.g. `:set +s`), and defining useful macros. `$HOME/.ghci` can be used as a startup script. See [here](https://wiki.haskell.org/GHC/GHCi) for good ideas.

#### cabal

- Install: `ghcup install cabal`
- Edit config file:

    ```text
    extra-include-dirs: D:\msys64\mingw64\include
    extra-lib-dirs: D:\msys64\mingw64\lib
    -- Would also need install folder if cabal installed in stand-alone folder: D:\cabal\bin
    extra-prog-path: D:\ghcup\bin;D:\msys64\mingw64\bin;D:\msys64\usr\bin
    ```

#### stack

- Edit [Stack's global configuration file](https://docs.haskellstack.org/en/stable/stack_root/#configyaml) which should be located at `${STACK_ROOT}\config.yaml`, e.g. `D:/sr/config.yaml`[^4]:

    ```yaml
    # The target directory for stack build --copy-bins and stack install.
    local-bin-path: D:/stack
    # Stack 'programs' directory, where tools like GHC get installed.
    local-programs-path: D:/stack
    skip-msys: true
    # https://www.haskell.org/ghcup/install/#vscode-integration
    system-ghc: true
    install-ghc: false
    extra-path:
      - 'D:\msys64\usr\bin'
      - 'D:\msys64\mingw64\bin'
    extra-include-dirs:
      - 'D:\msys64\mingw64\include'
    extra-lib-dirs:
      - 'D:\msys64\mingw64\lib'
    ```

[^4]: If you execute a `stack` command before your config file is set up correctly, it will attempt to download GHC, msys2 which is not what we want :astonished:

    For more details, see [here](https://docs.haskellstack.org/en/stable/faq/#i-already-have-ghc-installed-can-i-still-use-stack) and [here](https://docs.haskellstack.org/en/stable/faq/#can-i-change-stacks-default-temporary-directory).

- If you wish to add your config file to your [dot files repo](#dot-files), do the following:

    ```powershell
    # Create symlink to actual config file
    New-Item -Path ~\.stack\config.yaml -Value D:\sr\config.yaml -ItemType SymbolicLink -Force

    chezmoi add --follow --template ~/.stack/config.yaml
    ```

> [!WARNING]
> `chezmoi re-add` will not pick up updates to the original `config.yaml`. You will need to add it again via `chezmoi add ...` if there are any updates :frowning:

- Run `ghcup install stack latest`.
- Make sure that the value of `local-bin-path` (if not set, value is `~\AppData\Roaming\local\bin`) is in `$PATH` as that is where `stack install` installs generated binaries ([source](https://docs.haskellstack.org/en/stable/GUIDE/#the-stack-install-command-and-copy-bins-option)).

- In `$STACK_ROOT\global-project\stack.yaml`, specify resolver corresponding to the version of GHC you installed. This info can be obtained from <https://www.stackage.org> e.g. for GHC 9.4.8, this should be:

    ```yaml
    resolver: lts-21.22
    ```

- On Windows, [GDB can be installed to debug an executable](https://docs.haskellstack.org/en/stable/debugging/#debugging-symbols) with `ghcup run -m -- pacman -S gdb`.

Checks:

1. Output of `stack path --stack-root` should match `$STACK_ROOT`.
1. Output of `stack path --local-bin` should be in `$PATH`
1. Sanity checks:

    ```powershell
    where.exe stack
    stack path
    stack exec -- which ghc
    stack exec sh
    ```

> :bulb: Do not use `stack runghc` with a local package. Use `stack exec` instead.[^5]

[^5]: <https://www.reddit.com/r/haskell/comments/a6st8j/comment/ebyyb8n/>.

#### Haskell Language Server

- [Choose the latest version of HLS that is compatible with the version of GHC installed](https://haskell-language-server.readthedocs.io/en/latest/support/ghc-version-support.html#ghc-version-support).

- Install:

    ```powershell
    # ghcup install hls latest
    ghcup install hls 2.6.0.0
    ```

- [Plugin support](https://haskell-language-server.readthedocs.io/en/latest/support/plugin-support.html)

- [If you want to explicitly configure your project build](https://haskell-language-server.readthedocs.io/en/latest/configuration.html#configuring-your-project-build), install `implicit-hie` to auto-generate a stack or cabal multi component hie.yaml file:

    ```powershell
    # If $pwd is not a stack project, will install for global project!
    stack install implicit-hie
    ```

    Usage: `gen-hie > hie.yaml`

- [To enable local documentation on hover](https://haskell-language-server.readthedocs.io/en/latest/configuration.html#how-to-show-local-documentation-on-hover), add the following to global `$STACK_ROOT\config.yaml`, or project's `stack.yaml`:

    ```yaml
    ghc-options:
    '$everything': -haddock
    ```

### Linting

Install `hlint` or grab binary from [repo](https://github.com/ndmitchell/hlint/releases):

```powershell
stack install hlint
```

### Configuring VS Code

#### Syntax highlighting

**Haskell Syntax Highlighting** ([justusadam.language-haskell](https://github.com/JustusAdam/language-haskell) adds syntax highlighting  for Haskell and Cabal files.

#### Language Server

**Haskell for VS Code** ([haskell.haskell](https://github.com/haskell/vscode-haskell)) is powered by the Haskell Language Server.

**Setup:**

1. Make sure your `setting.json` has this setting: `"haskell.manageHLS": "GHCup"`

1. Install one of the formatters below:

    ```powershell
    # Rerun if GHC version changes!
    stack install ormolu
    stack install brittany
    ```

#### Debugging

**Haskell GHCi Debug Adapter Phoityne** ([phoityne.phoityne-vscode](https://github.com/phoityne/hdx4vsc)) provides debugging support. See website for how to configure `launch.json` to debug Haskell code.

**Prerequisites:**

Install [haskell-dap](https://hackage.haskell.org/package/haskell-dap), [ghci-dap](https://hackage.haskell.org/package/ghci-dap), [haskell-debug-adapter](https://hackage.haskell.org/package/haskell-debug-adapter):

**Usage:**

:bulb: If you use `Debug: Add Configuration...` command in VS Code and select `haskell-debug-adapter`, it will create a `launch.json` for you with 2 configurations - one using `stack` and the other using `cabal`. The former can be changed to run `app/Main.hs` instead of `test/Spec.hs` (also, need to remove `--test` from `ghciCmd`). The latter does not work.

```powershell
stack update
# Rerun if GHC version changes!
stack install haskell-dap ghci-dap haskell-debug-adapter 
```

#### Theme

[Lambda Black](https://github.com/janw4ld/lambda-black) is optimized for Haskell.

#### Troubleshooting

If you encounter an error like "cannot satisfy -package-id...", you need to clean, build and restart LSP. You can add this to `.vscode/task.json`:

```json
{
    "group": "build",
    "type": "shell",
    "label": "haskell clean & build",
    "command": "stack clean && stack build"
},
{
    "label": "rebuild and reload LSP",
    "command": "${command:haskell.commands.restartServer}",
    "dependsOn": [
        "haskell clean & build"
    ]
}
```

Additionally, you may need to create a `hie.yaml` file in the project's root directory looking like this:

```yaml
cradle:
  stack:
```

**Links:**

- <https://github.com/haskell/haskell-language-server/issues/735>
- <https://github.com/haskell/haskell-ide-engine/issues/1616#>
- <https://github.com/haskell/haskell-language-server/issues/1822>

## pngquant

[pngquant](https://pngquant.org/) is a command-line utility and a library for lossy compression of PNG images.

Download [latest version](https://pngquant.org/pngquant-windows.zip).

## Miscellaneous

- Install following apps:

    ```powershell
    winget install --id VideoLAN.VLC
    winget install --id ImageMagick.ImageMagick
    winget install --id Mp3tag.Mp3tag
    winget install --id Citrix.Workspace
    winget install --id Postman.Postman
    winget install --id chrisant996.Clink
    winget install --id 7zip.7zip

    winget install --id Graphviz.Graphviz -l 'D:\Apps\Graphviz'
    winget install --id Kitware.CMake -l 'D:\Apps\CMake'

    winget install --id WinSCP.WinSCP -l 'D:\Apps\WinSCP\'
    winget install Microsoft.Sysinternals.ProcessExplorer

    winget install eza-community.eza - l D:\Apps\CLI
    ```

- Add installation folders to `$Path`:

    ```powershell
    $path = [System.Environment]::GetEnvironmentVariable('Path', 'Machine')
    $path += ';C:\Program Files\7-Zip;D:\Apps\Graphviz;D:\Apps\CMake;D:\Apps\WinSCP'
    [System.Environment]::SetEnvironmentVariable('Path', $path, 'Machine')
    ```
