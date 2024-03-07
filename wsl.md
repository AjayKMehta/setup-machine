# WSL

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

### [How can I transfer my WSL files from one machine to another?](https://learn.microsoft.com/en-us/windows/wsl/faq#how-can-i-transfer-my-wsl-files-from-one-machine-to-another-)

1. On machine with WSL distribution, run `wsl --export --vhd <DistributionName> <FileName>`, e.g. `wsl --export --vhd Ubuntu Ubuntu.vhdx`.
1. Copy `.vhdx` file to new machine.
1. On new machine: `wsl --import <DistributionName> <InstallLocation> <FileName>`.

### Get list of repositories

```shell
# https://askubuntu.com/questions/148932/how-can-i-get-a-list-of-all-repositories-and-ppas-from-the-command-line-into-an
grep -r --include '*.list' '^deb ' /etc/apt/sources.list /etc/apt/sources.list.d/
```

## snap

Snap is pre-installed and ready to go on all recent releases of Ubuntu. Else, install: `sudo apt install snapd`.

Install apps:

```shell
sudo snap install btop
sudo snap install chromium
sudo snap install cups
sudo snap install tldr
sudo snap install yq
```

## git

```bash
sudo apt install git

# For diffs
sudo apt install meld
sudo apt install git-absorb
# Github CLI
sudo apt install gh
```

Add to `~/.bash_profile`:

```bash
eval "$(gh completion -s bash)"
```

### GPG

See [here](https://blog.jmorbegoso.com/post/configure-github-gpg-key-in-windows-and-wsl/) on how to use GPG from Windows.

## nvm

[nvm](https://github.com/nvm-sh/nvm?tab=readme-ov-file) is a version manager for node.js.

- Install

    ```shell
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
    ```

- Add to bash profile if not there:

    ```shell
    export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
    ```

## [asdf](https://asdf-vm.com/guide/getting-started.html)

- Install

    ```shell
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1
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
    asdf plugin add difftastic
    asdf plugin add golang https://github.com/asdf-community/asdf-golang.git
    # https://github.com/slimtoolkit/slim?tab=readme-ov-file
    asdf plugin add docker-slim
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
    asdf install difftastic latest
    asdf install golang latest
    asdf install docker-slim
    ```

- To specify versions to use, edit `~/.tool-versions`:

    ```text
    deno 1.41.0
    golang 1.22.0
    ```

### Commands

To see list of all available plugins:

```shell
asdf plugin list all
```

To update all installed plugins to latest version:

```shell
asdf plugin update --all                
```

To list installed plugins:

```shell
asdf list
```

To list all versions of a plugin `<pkg>`:

```shell
asdf list all <pkg>
```

To uninstall specific plugin version:

```shell
asdf uninstall <plugin> <version>
```

## fzf

Install:

```shell
asdf plugin add fzf
asdf install fzf latest 
```

### Tips

Open file in Neovim: `fzf --bind 'enter:become(nvim {})'`

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

### Install .NET 8

See [here](https://ubuntuhandbook.org/index.php/2023/11/install-dotnet-8-ubuntu-22-04/) for details.[^1]

[^1]: I was not able to add the Microsoft repository to `/etc/apt/sources.list.d/` using the instructions provided.

### Omnisharp

Omnisharp if installed via `mason.nvim` is found in `"~/.local/share/nvim/mason/packages/omnisharp/`. Create a config file located at `~/.omnisharp/omnisharp.json`.

### Enable tab completion

[Source](https://learn.microsoft.com/en-us/dotnet/core/tools/enable-tab-autocomplete#bash):

```bash
# bash parameter completion for the dotnet CLI

function _dotnet_bash_complete()
{
  local cur="${COMP_WORDS[COMP_CWORD]}" IFS=$'\n' # On Windows you may need to use use IFS=$'\r\n'
  local candidates

  read -d '' -ra candidates < <(dotnet complete --position "${COMP_POINT}" "${COMP_LINE}" 2>/dev/null)

  read -d '' -ra COMPREPLY < <(compgen -W "${candidates[*]:-}" -- "$cur")
}

complete -f -F _dotnet_bash_complete dotnet
```

### nuget

See [instructions here](https://learn.microsoft.com/en-us/nuget/install-nuget-client-tools?tabs=macos#cli-tools):

1. Install [Mono version 4.4.2 or later](https://www.mono-project.com/download/stable/#download-lin).

1. Execute the following command at a shell prompt:

    ```bash
    # Download the latest stable `nuget.exe` to `/usr/local/bin`
    sudo curl -o /usr/local/bin/nuget.exe https://dist.nuget.org/win-x86-commandline/latest/nuget.exe
    ```

1. Create an alias: `alias nuget="mono /usr/local/bin/nuget.exe"`.

1. Reload the shell. Test the installation by running `nuget` and see if help is displayed.

## ble.sh

[ble.sh](https://github.com/akinomyoga/ble.sh) is a command line editor written in pure Bash which replaces the default GNU Readline.

Install nightly build:

```shell
curl -L https://github.com/akinomyoga/ble.sh/releases/download/nightly/ble-nightly.tar.xz | tar xJf -
mkdir -p ~/.local/share/blesh
cp -Rf ble-nightly/* ~/.local/share/blesh/
rm -rf ble-nightly
echo 'source ~/.local/share/blesh/ble.sh' >> ~/.bashrc
```

Update:

```shell
ble-update
```

[Show key-bindings](https://github.com/akinomyoga/ble.sh/wiki/Manual-%C2%A73-Key-Binding#3410-show-current-bindings):

```shell
ble-bind -P

# Show for given keymap
ble-bind -m nsearch -P
```

Show widgets:

```shell
ble-bind -L
```

List variables:

```shell
bleopt
```

### [Manual editing](https://github.com/akinomyoga/ble.sh/wiki/Manual-%C2%A74-Editing)

| Key combination    | Widget                                | Description                                                             |
|--------------------|---------------------------------------|-------------------------------------------------------------------------|
| C-a, home          | @nomarked beginning-of-line           | Go to the beginning of line                                             |
| C-e, end           | @nomarked end-of-line                 | Go to the end of line                                                   |
| S-C-a, S-home      | @marked beginning-of-line             | Go to the beginning of line with selection                              |
| S-C-e, S-end       | @marked end-of-line                   | Go to the end of line with selection                                    |
| M-m (Emacs)        | @nomarked non-space-beginning-of-line | Go to the non-space beginning of line                                   |
| M-S-m, M-M (Emacs) | @marked non-space-beginning-of-line   | Go to the non-space beginning of line with selection                    |
| C-k                | kill-forward-line                     | Delete the range between the current position and the end of line       |
| C-u                | kill-backward-line                    | Delete the range between the current position and the beginning of line |
| S-C-p, S-up        | @marked backward-line                 | Go to the previous line with selection                                  |
| S-C-n, S-down      | @marked forward-line                  | Go to the next line with selection                                      |
| C-x C-p, C-x up   | history-search-backward           | Start non-incremental prefix-search in forward direction with the string before the current position              |
| C-x C-n, C-x down | history-search-forward            | Start non-incremental prefix-search in backward direction backward with the string before the current position    |
| C-x p             | history-substring-search-backward | Start non-incremental substring-search in forward direction with the string before the current position           |
| C-x n             | history-substring-search-forward  | Start non-incremental substring-search in backward direction backward with the string before the current position |
| C-x <             | history-nsearch-backward          | Start non-incremental prefix-search in forward direction with a user-provided string                              |
| C-x >             | history-nsearch-forward           | Start non-incremental prefix-search in backward direction backward with a user-provided string                    |
| M-$ (Emacs)  |  complete context=variable  |Start completing variables|

In the above table:

- `C` is <kbd>Ctrl</kbd>
- `M` is <kbd>Alt</kbd>
- `S` is <kbd>Shift</kbd>

## atuin

[atuin](https://github.com/atuinsh) provides enhanced functionality for shell history. It uses a SQLite database to store history and you can even sync across machines.

Install:

```shell
bash <(curl --proto '=https' --tlsv1.2 -sSf https://setup.atuin.sh)

# Skip if don't want to sync
# 1/13/2024: DOESN't WORK
# atuin register -u <USERNAME> -e <EMAIL>
# atuin register -u AjayMehta -e ...
```

Import history: `atuin import auto`.

Shell completion: `atuin gen-completions --shell bash > ~/.config/bash_completions.d/atuin`.

Add to `.bashrc` after sourcing `ble.sh`:

```shell
eval "$(atuin init bash --disable-up-arrow)"
```

[Config file](https://atuin.sh/docs/config) is located at `~/.config/atuin/config.toml`.

Important settings are in `~/.local/share/atuin`.

## VS Code

- See [here](https://learn.microsoft.com/en-us/windows/wsl/tutorials/wsl-vscode) for steps to configure WSL for use with VS Code.

## wsl apps

- [wslu](https://wslutiliti.es/wslu/) is a collection of utilities for WSL.

    ```bash
    sudo apt install ubuntu-wsl
    ```

- Check out this repo: [samuelramox/wsl-setup](
<https://github.com/samuelramox/wsl-setup>) for scripts to install apps.

    ```bash
    sudo apt install -y apt-transport-https ca-certificates curl gawk ssh-askpass tree unzip wget zsh
    ```

## R

Instruction for installing are [here](https://cran.r-project.org/bin/linux/ubuntu).

### neovim

Install [Nvim-R](https://github.com/jalvesaq/Nvim-R).

Select key bindings:

| Keys              | Action                     |
|-------------------|----------------------------|
| `<LocalLeader>rf` | Start R                    |
| `<LocalLeader>rd` | Set working directory      |
| `<LocalLeader>d`  | Send line to R + move down |
| `<LocalLeader>l`  | Send line to R + stay      |
| `<LocalLeader>aa` | Send file                  |

> [!TIP]
> For `<LocalLeader>`, press <kbd>Space</kbd> + <kbd>,</kbd>.

For more bindings, see [this](https://github.com/jalvesaq/Nvim-R/blob/master/doc/Nvim-R.txt#L317).

## Python

```shell
sudo apt install systemd-coredump python3-pip python3.10-venv
```

[Install visidata](https://jsvine.github.io/intro-to-visidata/the-big-picture/installation/
):

```shell
pip install visidata
```

[Add completion for bash](https://pip.pypa.io/en/stable/user_guide/#command-completion):

```shell
python3 -m pip completion --bash >> ~/.config/bash_completions.d/pip
```

## Font Manager

See [here](https://askubuntu.com/a/372964) for more details.

```shell
sudo apt-get install font-manager
```

## oh-my-posh

1. [Install app](https://ohmyposh.dev/docs/installation/linux):

    ```shell
    curl -s https://ohmyposh.dev/install.sh | sudo bash -s
    ```

    By default the script will install to `/usr/local/bin` or the existing Oh My Posh executable's installation folder. If you want to install to a different location you can specify it using the `-d` flag:

    ```shell
    curl -s https://ohmyposh.dev/install.sh | sudo bash -s -- -d ~/bin
    ```

2. Download themes:

    ```shell
    ## Download the themes 
    mkdir ~/.poshthemes
    wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
    unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
    chmod u+rw ~/.poshthemes/*.json
    rm ~/.poshthemes/themes.zip
    ```

3. [Fonts](https://ohmyposh.dev/docs/installation/fonts)

4. [Set up prompt](https://ohmyposh.dev/docs/installation/prompt): Add the following to you `~/.bashrc` and then source it. Replace `{theme}` below with your preferred theme:

```shell
eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/{theme}.omp.json)"
```

## Lua

- Install language server:

    ```shell
    asdf plugin add lua-language-server
    asdf install lua-language-server latest    
    ```

- Install `luarocks`: `sudo apt install luarocks`.

## Haskell

- Install [ghcup](https://www.haskell.org/ghcup/install/):

    ```bash
    curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
    ```

- Install [prerequisite packages](https://haskell-language-server.readthedocs.io/en/latest/installation.html#linux-specific-pre-requirements):

    ```bash
    sudo apt install libicu-dev libncurses-dev libgmp-dev zlib1g-dev
    ```

- Install toolchain:

    ```bash
    ghcup install ghc --set recommended
    ghcup install cabal latest
    ghcup install stack latest
    ghcup install hls latest
    cabal update
    ```

- Add [shell completion for `stack`](https://docs.haskellstack.org/en/stable/shell_autocompletion/) by adding the following to completion script:

    ```bash
    eval "$(stack --bash-completion-script stack)"
    ```

- Install [haskell-debug-adapter](https://github.com/phoityne/haskell-debug-adapter)

    ```bash
    stack install haskell-dap ghci-dap haskell-debug-adapter
    ```

## Rust

- Install cargo: `sudo apt install cargo`
- Add `~/.cargo/bin` to `$PATH`.

## LaTeX

The instructions below are based on the following links:

- <https://tug.org/texlive/quickinstall.html>
- <https://tex.stackexchange.com/questions/454191/installing-texlive-without-root-permissions-from-the-source-files>
- <https://tex.stackexchange.com/questions/137428/tlmgr-cannot-setup-tlpdb>

1. Run the following in shell:

    ```bash
    cd /tmp
    wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
    zcat < install-tl-unx.tar.gz | tar xf -
    cd install-tl-20240226/ # change to appropriate directory name
    perl ./install-tl --paper=letter --scheme=small
    ```

2. This will bring up a menu in shell. Choose option **D** to specify your user directory. Then return to the main options with **R** and subsequently choose **I** to install.
3. If you get an error `cannot setup TLPDB in /home/...`, execute `tlmgr init-usertree` to initialize user tree .
4. Add `~/texlive/2023/texmf-dist/doc/man` to **MANPATH**.
5. Add `~/texlive/2023/texmf-dist/doc/info` to **INFOPATH**.
6. Add `~/texlive/2023/bin/x86_64-linux` to your **PATH** for current and future sessions.
7. Install font using user-mode: `tlmgr --usermode install courier`
8. Install `chtex`: `sudo apt install chktex`
9. Run `sudo apt install latexmk` to install `latexmk`.
10. To edit LaTex files using `vimtex` plugin in neovim, the following are needed:
    - `sudo apt install zathura zathura-ps`.
    - `pip install neovim-remote`
    - `sudo apt-get install xdotool`
    - See [this](https://www.ejmastnak.com/tutorials/vim-latex/pdf-reader/#a-pdf-reader-on-linuxa) for more info.
    - If you run into issues with viewing PDF, try this :sparkles:: run `sudo loginctl enable-linger <username>` or `sudo systemctl restart user@1000` ([source](https://github.com/microsoft/WSL/issues/8842)).
    - If `xodotool` doesn't work, set this in config for `vimtex.nvim`:

        ```lua
        vim.g.vimtex_view_method = 'zathura_simple'
        ```

11. Installing updates: see [here](https://tug.org/texlive/doc/tlmgr.html#EXAMPLES).

### tectonic

[Tectonic](https://github.com/tectonic-typesetting/tectonic) is a modern TeX/LaTeX engine written in Rust :crab:

```shell
sudo snap install tectonic
```

([Source](https://snapcraft.io/install/tectonic/ubuntu))

## Misc

```shell
cargo install typos-cli

# Java
sudo apt install openjdk-17-jre-headless

# pkgx
curl -fsS https://pkgx.sh | sh

# xq: Not available in Package Manager for Ubuntu 22 😦
# https://github.com/sibprogrammer/xq
curl -sSL https://bit.ly/install-xq | sudo bash

# Installs as fdfind
sudo apt install fd-find
sudo apt install age
sudo apt install shellcheck
sudo apt install cmake
sudo apt install clang-format

sudo apt install bat
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat

sudo apt install kitty
sudo apt install plocate

# https://github.com/muesli/duf
sudo apt install duf

# D2
curl -fsSL https://d2lang.com/install.sh | sh -s -- 

sudo apt install golang-docker-credential-helpers

sudo apt install cloc

# https://github.com/charmbracelet/gum#installation
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://repo.charm.sh/apt/gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/charm.gpg
echo "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" | sudo tee /etc/apt/sources.list.d/charm.list
sudo apt update && sudo apt install gum
```

## Useful links

- <https://learn.microsoft.com/en-us/windows/wsl/disk-space#how-to-locate-the-vhdx-file-and-disk-path-for-your-linux-distribution>
- <https://askubuntu.com/questions/1429369/how-to-transfer-ubuntu-on-wsl-from-one-laptop-to-another>
- <https://superuser.com/questions/1566022/how-to-set-default-user-for-manually-installed-wsl-distro>
- <https://serverfault.com/questions/175504/how-do-i-get-the-history-of-apt-get-install-on-ubuntu>
- <https://github.com/dotnet/docs/issues/27559>
- <https://calebschoepp.com/blog/2021/how-to-setup-oh-my-posh-on-ubuntu>
- <https://tex.stackexchange.com/questions/137428/tlmgr-cannot-setup-tlpdb>
- <https://www.reddit.com/r/bashonubuntuonwindows/comments/zu6wk1/comment/j1je4j3/?utm_source=share&utm_medium=web2x&context=3>
- <https://www.freecodecamp.org/news/how-to-set-an-environment-variable-in-linux>
