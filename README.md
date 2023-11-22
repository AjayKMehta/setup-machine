# Setup machine

  - [Overview](#overview)
  - [winget](#winget)
  - [Advanced System Font Changer](#advanced-system-font-changer)
  - [Firefox](#firefox)
  - [Fonts](#fonts)
  - [Notepad++](#notepad)
    - [Plugins](#plugins)
  - [OpenSSH](#openssh)
  - [KeePassXC](#keepassxc)
  - [PowerShell](#powershell)
    - [Modules](#modules)
    - [Secrets Management](#secrets-management)
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
    - [duckdb](#duckdb)
      - [Upgrading](#upgrading)
    - [wget2](#wget2)
  - [Dot files](#dot-files)
  - [Hugo](#hugo)
  - [WSL](#wsl)
  - [Docker](#docker)
    - [Docker Credentials Helper](#docker-credentials-helper)
    - [Change images and containers directory](#change-images-and-containers-directory)
    - [Getting a Shell in Docker for Windows Moby VM](#getting-a-shell-in-docker-for-windows-moby-vm)
    - [Shrink your WSL2 Virtual Disks and Docker Images and Reclaim Disk Space](#shrink-your-wsl2-virtual-disks-and-docker-images-and-reclaim-disk-space)
    - [Utilities](#utilities)
  - [WezTerm](#wezterm)
    - [Useful links](#useful-links)
  - [Hadoop](#hadoop)
  - [Python](#python)
    - [JupyterLab](#jupyterlab)
      - [Workaround for Quarto](#workaround-for-quarto)
      - [Git-friendly hooks](#git-friendly-hooks)
    - [GenAI](#genai)
      - [PaLM](#palm)
      - [Cohere](#cohere)
      - [Replicate](#replicate)
      - [Weights & Biases](#weights--biases)
      - [LLM](#llm)
      - [OpenAI](#openai)
      - [HuggingFace](#huggingface)
  - [R](#r)
    - [RStudio](#rstudio)
    - [RTools](#rtools)
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
    - [Packages](#packages)
  - [VS Code](#vs-code)
  - [WinMerge](#winmerge)
  - [SlickRun](#slickrun)
  - [Node](#node)
  - [Haskell](#haskell)
    - [Regular installation steps](#regular-installation-steps)
    - [Alternative installation steps](#alternative-installation-steps)
      - [Environment variables](#environment-variables)
  - [Miscellaneous](#miscellaneous)

## Overview

Setting up a new Windows machine for development is painful.

This document hopefully alleviates the pain.

> 👉This document assumes that your C: drive has **limited space** (e.g. SSD) and you have another hard drive (D:) which you can use to install apps on instead. If that is not the case, you can omit custom location (`-l`) in `winget install` invocation or specify a directory on your C drive instead.
---

> 🚧 Look into using [winget configure](<https://learn.microsoft.com/en-us/windows/package-manager/winget/configure>) to replace script to install apps. 👉 Need to learn how to specify custom install path.

## winget

Install **winget** from Microsoft Store if it is not already installed.

## Advanced System Font Changer

The [Advanced System Font Changer](https://www.wintools.info/index.php/advanced-system-font-changer) lets you change system font settings.

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

## [OpenSSH](https://github.com/PowerShell/openssh-portable)

See [here](https://learn.microsoft.com/en-us/windows-server/administration/openssh/openssh_install_firstuse?tabs=powershell#install-openssh-for-windows).

~~- Install: `winget install Microsoft.OpenSSH.Beta`~~

~~- Add install folder (C:\Program Files\OpenSSH) to $Path.~~

## KeePassXC

- Install KeePassXC:

    ```shell
    winget install KeePassXCTeam.KeePassXC -l D:\Apps\KeePassXC
    ```

- See [here](https://keepassxc.org/docs/KeePassXC_GettingStarted.html) for information on getting started.

- Add installation folder to `$Path` if needed:

    ```powershell
    $path = [System.Environment]::GetEnvironmentVariable('Path', 'Machine')
    $path += ';D:\Apps\KeePassXC'
    [System.Environment]::SetEnvironmentVariable('Path', $path, 'Machine')
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

## git

- Install: `winget install --id Git.Git -e --source winget`.

- [Enable auto-signing Git commits with GnuPG](https://gist.github.com/BoGnY/f9b1be6393234537c3e247f33e74094a):

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

    - Managing GPG keys
        🚧 **WIP**
    <!-- TODO: Add blurb about exporting/importing/creating GPG keys -->

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

    ```shell
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

### GitExtensions

Install `
winget install GitExtensionsTeam.GitExtensions
`.

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

### less

**[less](https://github.com/jftuga/less-Windows)** is a pager.

- Install:

    ```powershell
    winget install JohnTaylor.less -l D:\Apps
    winget install JohnTaylor.lesskey -l D:\Apps
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
    gh release download --repo junegunn/fzf --pattern $pattern -D $downloadPath
    $zipFile = Get-Item $downloadPath -Filter $pattern | Select-Object -First 1
    $destination = 'D:\Apps'
    7z e -o"$destination" $zipFile 'fzf.exe'
    $zipFile | Delete-Item
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

**[delta](https://github.com/dandavison/delta)** is a syntax-highlighting pager for git, diff, and grep output. In order to use it with git, you need to modify .gitconfig or you can import dot files.

- [Installation notes](https://dandavison.github.io/delta/installation.html)

- Add to PowerShell profile: `$env:DELTA_PAGER = 'less -rFX'`

### yq

**[yq](https://github.com/mikefarah/yq)** is a portable command-line YAML, JSON, XML, CSV and properties processor.

Install: `winget install yq -l D:\Apps -r yq.exe`.

### jq

[jq](https://github.com/stedolan/jq) is a command-line JSON processor.

Install: `winget install stedolan.jq -l D:\Apps -r jq.exe`.

### bat

- Install [bat](https://github.com/sharkdp/bat) from [here](https://github.com/sharkdp/bat/releases).
- Add installation path to `$Path`.
- Create folder if it does not exist: `$env:AppData\Local\bat\cache`
- Add following environment variables: `BAT_PAGER = less -RF`.
- A default configuration file can be created with the `--generate-config-file` option.

    ```shell
    bat --generate-config-file
    ```

### [gum](https://github.com/charmbracelet/gum)

> Gum provides highly configurable, ready-to-use utilities to help you write useful shell scripts and dotfiles aliases with just a few lines of code.

```shell
winget install charmbracelet.gum -l D:\Apps
```

### duckdb

```shell
winget install DuckDB.cli -l D:\Apps
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

```shell
winget install GNU.wget2
```

## Dot files

- Install [chezmoi](https://github.com/twpayne/chezmoi):

    ```shell
    winget install twpayne.chezmoi
    ```

- Run `chezmoi init` to create an initial `chezmoi.toml` using template in repo:

    ```shell
    chezmoi init AjayKMehta
    ```

    :point_right: You can supply `--apply` in above command to generate dot files at same time.

- Provide the path to your KeePassXC database in your configuration file if any. See [here](https://www.chezmoi.io/user-guide/password-managers/keepassxc/) for details.

- To test this template, [use `chezmoi execute-template` with the `--init` and `--promptString` flags](https://www.chezmoi.io/user-guide/setup/#create-a-config-file-on-a-new-machine-automatically):

    ```shell
    cat ~/.local/share/chezmoi/.chezmoi.toml.tmpl | chezmoi execute-template --init --promptString gpgrecipient='<RECIPIENT>'
    ```

- Generate dot files:

    ```shell
    chezmoi apply
    ```

## Hugo

[Hugo](https://gohugo.io/) is an open-source static site generator.

- Install:

    ```shell
    winget install Hugo.Hugo -l D:\apps\Hugo
    ```

- Add installation folder to `$Path`.

## WSL

See [wsl.md](wsl.md).

## [Docker](https://www.docker.com/)

- Install:

    ```shell
    winget install Docker.DockerDesktop
    ```

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

```shell
wsl --shutdown
wsl --export docker-desktop-data docker-desktop-data.tar
wsl --unregister docker-desktop-data
# Import the exported data to D:\Docker\wsl\data
wsl --import docker-desktop-data D:/Docker/wsl/data docker-desktop-data.tar --version 2
```

### Getting a Shell in Docker for Windows Moby VM

```shell
docker run -it --rm --privileged --pid=host justincormack/nsenter1
```

[Source](https://www.bretfisher.com/getting-a-shell-in-the-docker-for-windows-vm/)

### [Shrink your WSL2 Virtual Disks and Docker Images and Reclaim Disk Space](https://www.hanselman.com/blog/shrink-your-wsl2-virtual-disks-and-docker-images-and-reclaim-disk-space)

```powershell
Optimize-VHD -Path D:\Docker\wsl\data\ext4.vhdx -Mode Full
```

### Utilities

```shell
winget install wagoodman.dive -l D:\Apps
winget install JesseDuffield.Lazydocker -l D:\Apps
```

## [WezTerm](https://wezfurlong.org/wezterm/index.html)

WezTerm is a powerful cross-platform terminal emulator and multiplexer.

- Install:

    ```shell
    winget install wez.wezterm -l D:\Apps\WezTerm
    ```

- (Optional) Add installation folder to `$Path`.

### Useful links

- <https://wezfurlong.org/wezterm/quickselect.html>
- <https://wezfurlong.org/wezterm/copymode.html>
- <https://wezfurlong.org/wezterm/config/launch.html>
- <https://wezfurlong.org/wezterm/config/default-keys.html>
- <https://wezfurlong.org/wezterm/config/lua/general.html#making-your-own-lua-modules>

## Hadoop

See [here](https://kontext.tech/article/447/install-hadoop-330-on-windows-10-step-by-step-guide) for more details. As of the time this was written, the version of interest for Hadoop was 3.3.1.

```powershell
pushd ~/Downloads
Invoke-WebRequest https://dlcdn.apache.org/hadoop/common/hadoop-3.3.1/hadoop-3.3.1.tar.gz -OutFile hadoop-3.3.1.tar.gz -Verbose
# https://stackoverflow.com/a/2903532
7z e hadoop-3.3.1.tar.gz && 7z x hadoop-3.3.1.tar -o"D:/Apps"
Remove-Item hadoop-3.3.1.tar*

# Download Hadoop native IO binary
gh download https://github.com/kontext-tech/winutils/tree/master/hadoop-3.3.1/bin

# Copy files to bin folder. Add -L to do dry-run
robocopy .\hadoop-3.3.1\bin D:\Apps\hadoop-3.3.1\bin
Remove-Item .\hadoop-3.3.1\bin 
popd

[System.Environment]::SetEnvironmentVariable('HADOOP_HOME', 'D:\Apps\hadoop-3.3.1', 'User')
```

## Python

> :bulb: At some point, would like to switch to **poetry** due to challenges presented when using **conda** and **pip** together.

- Download and install [Miniconda](https://docs.conda.io/en/latest/miniconda.html).
- Add **bin** folder (**D:\Apps\Miniconda\condabin**) to `$Path`.
- To use [UTF-8 mode on Windows](https://dev.to/methane/python-use-utf-8-mode-on-windows-212i), set environment variable `$PYTHONUTF8` to 1.
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

#### Workaround for Quarto

See [Use with nbconvert, voila, papermill,...](https://github.com/Anaconda-Platform/nb_conda_kernels#use-with-nbconvert-voila-papermill).

#### Git-friendly hooks

See [here](https://nbdev.fast.ai/tutorials/git_friendly_jupyter.html) for details.

### GenAI

Make sure that you configure environment variables for API keys.

#### PaLM

- Navigate to <https://makersuite.google.com/app/apikey> and create a key.
- Set `$GOOGLE_API_KEY` to this value.

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

🚧 **WIP**

## R

1. Download and install R from [CRAN website](https://cran.r-project.org/bin/windows/base/). Alternatively, `winget install  RProject.R`.
1. Add **\<InstallPath\>\bin\x64** to `$PATH`.
1. Default folder of .RProfile and .REnviron is ~\Documents which leads to issues if OneDrive moves this folder to ~\OneDrive\Documents :frowning:. So , best to set environment variables:

    ```powershell
    [System.Environment]::SetEnvironmentVariable('R_ENVIRON_USER', '~\.Renviron', 'User')
    [System.Environment]::SetEnvironmentVariable('R_PROFILE_USER', '~\.Rprofile', 'User')
    ```

1. To avoid the issue of C: running out of disk space, set `$R_LIBS` to a different path, e.g.`D:\packages`.
1. Set `$GITHUB_PAT` to [GitHub PAT obtained](#github-pat). This is neccessary for avoiding rate-limit issues when installing packages from GitHub using the [`remotes`](https://github.com/r-lib/remotes#environment-variables) package.

### RStudio

```shell
winget install Posit.RStudio
```

### RTools

- Install location is usually C:\RTools but if you have limited disk space, set `RTOOLS43_HOME`to a different path, e.g.`D:\rtools43` ***before* running the installer**.
- Download and run [R Build tools](https://cran.r-project.org/bin/windows/Rtools/).
- Add bin folder in install path to `$PATH` -- this can be done by editing .Renviron: `PATH="${RTOOLS40_HOME}\usr\bin;${PATH}"`.

[Usage notes](https://github.com/r-windows/docs/blob/master/rtools40.md#readme)

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
    spark_install("3.3.2", "3")
    ```

1. Set `$SPARK_HOME` to bin folder, i.e. D:\Apps\Spark\spark-3.3.2-bin-hadoop3\bin.

### Stan

- See [RStan Getting Started](https://github.com/stan-dev/rstan/wiki/RStan-Getting-Started#configuration-of-the-c-toolchai).

### cmdstanr

```r
install.packages("cmdstanr")
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

To support rendering of PDF documents that include SVG files, automatically converting them to PDF images in Quarto 1.3+, install `rsvg-convert`` from <https://github.com/miyako/console-rsvg-convert> and add to`$PATH`.

tintext is a lightweight alternative to MikTeX:

```shell
quarto install tinytex
```

### Use OpenBLAS

You can use Open BLAS to speed up linear algebra operations but use at your own risk! Instructions below are modified from this [SO post](https://stackoverflow.com/questions/38090206/linking-intels-math-kernel-library-mkl-to-r-on-windows) and <https://medium.com/@FredHo42/using-intel-mkl-library-on-r-4-0-641dc0c3c06b>.

1. Download latest version of OpenBLAS from <https://github.com/OpenMathLib/OpenBLAS/releases>.
1. Copy Rlapack.dll and Rblas.dll from `./bin/x64` in R installation folder to safe location.
1. Now create 2 copies of libopenblas.dll named Rlapack.dll and Rblas.dll and copy them to folder from step 1.
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

    ```shell
    winget install Microsoft.VisualStudio.2022.Community
    ```

    This will install .NET 7 SDK.

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

### NuGet

- Install NuGet: `winget install Microsoft.NuGet`.
- Add installation path to `$Path`.

### Useful apps

- Install LinqPad 7:

    ```shell
    winget install --id LINQPad.LINQPad.7 -l 'D:\Apps\LINQPad7\'
    ```

- Install ILSpy:

    ```shell
    winget install --id icsharpcode.ILSpy -l 'D:\Apps\ILSpy'
    ```

- Install Nuget Package Explorer:

    ```shell
    winget install --id 9WZDNCRDMDM3
    ```

- Install MSBuild Structured Log Viewer:

    ```shell
    winget install --id KirillOsenkov.MSBuildStructuredLogViewer
    ```

- Install NSwagStudio:

    ```shell
    winget install --id RicoSuter.NSwagStudio
    ```

- Install NUnit Console from [here](https://github.com/nunit/nunit-console/releases).

- Install PerView:

```shell
winget install Microsoft.PerfView -l D:\Apps\PerfView
```

### Dotnet Tools

Install following tools:

```shell
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

See [miktex_packages.txt](./miktex_packages.txt) for list of packages to install.

## VS Code

- Install:

    ```shell
    winget install --id Microsoft.VisualStudioCode -l 'D:\Apps\VSCode'
    ```

- Add installation folder (e.g. **D:\Apps\VSCode\bin**) to `$Path`.

- Use settings sync to get settings.

## WinMerge

WinMerge is a diff/merge tool.

- Install:

    ```shell
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

## Node

- Install from <https://nodejs.org/en/download/>.
- Change installation path for modules by setting `$NODE_PATH`

## Haskell

[GHCup](https://www.haskell.org/ghcup/) is the main installer for Haskell.

### Regular installation steps

1. If you wish to specify installation root directory for **ghcup**, you can set `$GHCUP_INSTALL_BASE_PREFIX` (user-level environment variable). If not set, you can pass install directory choice to the install script or the script will prompt you if it doesn't find a drive with > 5 GB free space to install on.
    <br>
   > :bulb: Whichever value you use will be set up by script as `$GHCUP_INSTALL_BASE_PREFIX`.
1. Download install script:

    ```powershell
    cd ~\Downloads\ && Invoke-WebRequest https://www.haskell.org/ghcup/sh/bootstrap-haskell.ps1 -OutFile bootstrap-haskell.ps1
    ```

    <br>

    > :bulb: Although the website says to run it directly, I think it's a good idea to review the script first and possibly customize invocation as the script has several parameters and the default values may not work for you.
1. Run script in non-admin powershell:

    ```powershell
    # Hash from https://github.com/msys2/msys2-installer/releases/download/2023-07-18/msys2-base-x86_64-20230718.sfx.exe.sha256
    . .\bootstrap-haskell.ps1 -InstallStack -InStallHLS -InstallDir D:\Apps -Msys2Version '20230718' -Msys2Hash 'ab9b9a25e92d0c71136c79eeac954f1ce023341224de8d81401439f38c8b9232'
    ```

    > **NOTE:** This did not work when specifying msys details 😦

### Alternative installation steps

This section is based on the following links:

- <https://www.haskell.org/ghcup/install/#windows_1>
- <https://github.com/keithfancher/haskell-notes/blob/master/haskell-notes.md#getting-started>
- <https://gist.github.com/lsmor/bb632565cd96be9da589b6e91f80f9ba>

#### Environment variables

1. Assuming you plan to install msys to D:\msys64 and ghcup.exe to D:\Apps\ghcup\bin, set the following environment variables first:

    | Env Variable                | Value                              | Notes                                                                                                                                                                                                                                              |
    |-----------------------------|------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
    | `GHCUP_INSTALL_BASE_PREFIX` | D:\Apps                            | [Defaults to `$HOME`](https://www.haskell.org/ghcup/guide/#env-variables)                                                                                                                                                                          |
    | `CABAL_DIR`                 | D:\Apps\cabal                      | If set, *all* `cabal-install` content files will be stored as subdirectories of this directory, including the configuration file if `CABAL_CONFIG` is unset. See [here](https://cabal.readthedocs.io/en/stable/config.html#environment-variables). |
    | `CABAL_CONFIG`              | %USERPROFILE%\.config\cabal\config | Path for global configuration file.                                                                                                                                                                                                                |
    | `GHCUP_MSYS2`                 | D:\msys64                          | [Has to point to the root of an existing MSYS2 installation](https://www.haskell.org/ghcup/guide/#env-variables)                                                                                                                                   |
    | `STACK_ROOT`                  | D:\sr                              | This is where `stack` stores downloaded programs and snapshot packages. See [here](https://docs.haskellstack.org/en/stable/stack_root/).                                                                                                                           |

:bulb: You also need to add `D:\Apps\ghcup\bin` to `$Path`.

#### ghcup

- Download **ghcup** binary from <https://github.com/haskell/ghcup-hs/releases>, e.g. latest version as of the time this was written is 1.2.0, so downlod <https://github.com/haskell/ghcup-hs/releases/download/v0.1.20.0/x86_64-mingw64-ghcup-0.1.20.0.exe>.
- Rename binary to `gcup.exe` and copy to `D:\Apps\ghcup\bin`.
- Create config file in `D:\Apps\ghcup\bin`[^1]: `ghcup config init`.

[^1]: The online documentation says location is `~/.ghcup/config.yaml` which is not the case.

#### cabal

- Install: `gcup install cabal`
- Edit config file:

    ```text
    extra-include-dirs: D:\msys64\mingw64\include
    extra-lib-dirs: D:\msys64\mingw64\lib
    -- Would also need install folder if cabal installed in stand-alone folder: D:\cabal\bin
    extra-prog-path: D:\ghcup\bin, D:\msys64\mingw64\bin
    ```

#### msys2

- Download latest version from <https://github.com/msys2/msys2-installer/releases/>.
- Installing the self extracting archive to D:\msys64:

    ```shell
    .\msys2-base-x86_64-20230718.sfx.exe -y -oD:\
    ```

- Update msys2:

    ```shell
    ghcup run -m -- pacman --noconfirm -Syuu
    ghcup run -m -- pacman --noconfirm -S --needed curl autoconf mingw-w64-x86_64-pkgconf
    ghcup run -m -- pacman --noconfirm -S ca-certificates
    ```

    Also, refer to [this](https://www.msys2.org/docs/updating).

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
    ```

- Add installation folders to `$Path`:

    ```powershell
    $path = [System.Environment]::GetEnvironmentVariable('Path', 'Machine')
    $path += ';C:\Program Files\7-Zip;D:\Apps\Graphviz;D:\Apps\CMake;D:\Apps\WinSCP'
    [System.Environment]::SetEnvironmentVariable('Path', $path, 'Machine')
    ```
