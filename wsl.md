# WSL

<!-- TOC -->

- [Install](#install)
    - [Move WSL root filesystem to different drive](#move-wsl-root-filesystem-to-different-drive)
- [VS Code](#vs-code)
    - [Install apps](#install-apps)
- [Python](#python)
- [Go](#go)
- [asdf](#asdf)
    - [Plugins](#plugins)
- [oh-my-posh](#oh-my-posh)
- [Lua](#lua)
- [Misc](#misc)
- [Useful links](#useful-links)

<!-- /TOC -->

## [Install](https://learn.microsoft.com/en-us/windows/wsl/install)

- For Windows 10 version 2004 and higher (Build 19041 and higher) or Windows 11, you can simply install via this command:

    ```shell
    wsl install
    ```

   It is better to specify a distribution (`wsl --list --online` to get list of available distributions):

    ```shell
    wsl --install -d Ubuntu-22.04
    ```

- Set default distribution:

    ```shell
    wsl --set-default Ubuntu-22.04
    ```

### Move WSL root filesystem to different drive

See this [link](https://stackoverflow.com/a/51767786/781045) for more details.

1. Export to tar file: `wsl --export Ubuntu-22.04 D:\temp\Ubuntu.tar`

2. Import into target folder: `wsl --import Ubuntu D:\wsl\Ubuntu D:\temp\Ubuntu.tar`

3. Delete old installation: `wsl --unregister Ubuntu-22.04`

4. Edit `/etc/wsl.conf`:

    ```shell
    [user]
    default = <your username>
    ```

## [PowerShell](https://learn.microsoft.com/en-us/powershell/scripting/install/install-ubuntu)

Available from the Linux package repository for Microsoft products, <https://packages.microsoft.com>, also known as PMC.

Installing PowerShell from PMC is the preferred method of installation.

```shell
sudo apt-get update

# Install pre-requisite packages.
sudo apt-get install -y wget apt-transport-https software-properties-common

# Get the version of Ubuntu
source /etc/os-release

# Download the Microsoft repository keys
wget -q https://packages.microsoft.com/config/ubuntu/$VERSION_ID/packages-microsoft-prod.deb

# Register the Microsoft repository keys
sudo dpkg -i packages-microsoft-prod.deb

# Delete the the Microsoft repository keys file
rm packages-microsoft-prod.deb

# Update the list of packages after we added packages.microsoft.com
sudo apt-get update

###################################
# Install PowerShell
sudo apt-get install -y powershell

# Start PowerShell
pwsh
```

## [.NET](https://learn.microsoft.com/en-us/dotnet/core/install/linux-ubuntu)

Starting with Ubuntu 22.04, some versions of .NET are available in the Ubuntu package feed.

See [Supported distributions](https://learn.microsoft.com/en-us/dotnet/core/install/linux-ubuntu#supported-distributions) for details on how to install .NET for specific Ubuntu versions.

## VS Code

- See [here](https://learn.microsoft.com/en-us/windows/wsl/tutorials/wsl-vscode) for steps to configure WSL for use wih VS Code.

### Install apps

- [wslu](https://wslutiliti.es/wslu/) is a collection of utilities for WSL.

    ```bash
    sudo apt install ubuntu-wsl
    ```

- Check out this repo: [samuelramox/wsl-setup](
<https://github.com/samuelramox/wsl-setup>) for scripts to install apps.

    ```bash
    sudo apt install -y apt-transport-https ca-certificates curl gawk ssh-askpass tree unzip wget zsh
    ```

## Python

```shell
sudo apt install systemd-coredump python3-pip python3.10-venv
```

## [Go](https://www.fosslinux.com/68795/install-go-on-ubuntu.htm)

```shell
sudo apt install aptitude
sudo aptitude -y install golang-go
```

## [asdf](https://asdf-vm.com/guide/getting-started.html)

- Install

    ```shell
    git clone <https://github.com/asdf-vm/asdf.git> ~/.asdf --branch v0.13.1
    ```

- Add the following lines to `.bashrc`:

    ```shell
    . "$HOME/.asdf/asdf.sh"
    . "$HOME/.asdf/completions/asdf.bash"
    ```

### Plugins

- Add plugins:

    ```shell
    asdf plugin add chezmoi
    asdf plugin add delta
    asdf plugin add deno
    asdf plugin add neovim
    asdf plugin add poetry
    asdf plugin add snyk
    ```

- Install latest version:

    ```shell
    asdf install chezmoi latest
    asdf install delta latest
    asdf install deno latest
    asdf install lua-language-server latest
    asdf install neovim latest
    asdf install poetry latest
    asdf install snyk latest
    ```

## oh-my-posh
  
  - <https://ohmyposh.dev/docs/installation/linux>
  - <https://ohmyposh.dev/docs/installation/fonts>
  - <https://ohmyposh.dev/docs/installation/prompt>

## Lua

- Install language server:

    ```shell
    asdf plugin add lua-language-server
    asdf install lua-language-server latest    
    ```

- Install `luarocks`: `sudo apt install luarocks`.

## Misc

```shell
# Java
sudo apt install openjdk-17-jre-headless

# pkgx
curl -fsS https://pkgx.sh | sh

# xq: Not available in Package Manager for Ubuntu 22 😦
# https://github.com/sibprogrammer/xq
curl -sSL https://bit.ly/install-xq | sudo bash

# Installs as fdfind
sudo apt install fd-find

sudo apt install shellcheck
sudo apt install cmake
sudo apt install clang-format

# D2
curl -fsSL https://d2lang.com/install.sh | sh -s -- 
```

## Useful links

- <https://askubuntu.com/questions/1429369/how-to-transfer-ubuntu-on-wsl-from-one-laptop-to-another>
- <https://superuser.com/questions/1566022/how-to-set-default-user-for-manually-installed-wsl-distro>
- <https://serverfault.com/questions/175504/how-do-i-get-the-history-of-apt-get-install-on-ubuntu>
- <https://github.com/dotnet/docs/issues/27559>
