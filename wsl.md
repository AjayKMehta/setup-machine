# WSL

> [!IMPORTANT]
> This assumes your distribution is ***Ubuntu 24.04***.

## [Install](https://learn.microsoft.com/en-us/windows/wsl/install)

- For Windows 10 version 2004 and higher (Build 19041 and higher) or Windows 11, you can simply install via this command:

    ```shell
    wsl install
    ```

   It is better to specify a distribution (`wsl --list --online` to get a list of available distributions):

    ```shell
    wsl --install -d Ubuntu-24.04
    ```

- Set default distribution:

    ```shell
    wsl --set-default Ubuntu-24.04
    ```

### Move WSL root filesystem to different drive

See this [link](https://stackoverflow.com/a/51767786/781045) for more details.

1. Export to tar file: `wsl --export Ubuntu-24.04 D:\temp\Ubuntu.tar`

2. Import into target folder: `wsl --import Ubuntu D:\wsl\Ubuntu D:\temp\Ubuntu.tar`

3. Delete old installation: `wsl --unregister Ubuntu-24.04`

4. Edit `/etc/wsl.conf`:

    ```shell
    [user]
    default = <your username>
    ```

### [How can I transfer my WSL files from one machine to another?](https://learn.microsoft.com/en-us/windows/wsl/faq#how-can-i-transfer-my-wsl-files-from-one-machine-to-another-)

1. On a machine with WSL distribution, run `wsl --export --vhd <DistributionName> <FileName>`, e.g. `wsl --export --vhd Ubuntu Ubuntu.vhdx`.
1. Copy `.vhdx` file to the new machine.
1. On the new machine: `wsl --import <DistributionName> <InstallLocation> <FileName>`.

### Get list of repositories

```shell
# https://askubuntu.com/questions/148932/how-can-i-get-a-list-of-all-repositories-and-ppas-from-the-command-line-into-an
grep -r --include '*.list' '^deb ' /etc/apt/sources.list /etc/apt/sources.list.d/
```

Alternatives:

```bash
sudo add-apt-repository --list
# More detailed view
sudo apt-cache policy
```

### Access Windows host

After trying various options listed [here](https://learn.microsoft.com/en-us/windows/wsl/networking) and other places online, this is what finally worked:

1. Set `networkingMode` to `mirrored` in `~/.wslconfig` on your Windows machine:

    ```ini
    [wsl2]
    ...
    networkingMode=mirrored
    ```

2. Run the following command in PowerShell window with admin privileges to [Configure Hyper-V firewall](https://learn.microsoft.com/en-us/windows/security/operating-system-security/network-security/windows-firewall/hyper-v-firewall) settings to allow inbound connections: `Set-NetFirewallHyperVVMSetting -Name '{40E0AC32-46A5-438A-A0B2-2B479E8F2E90}' -DefaultInboundAction Allow`.

After I did this, I am able to access Ollama running on Windows from WSL, i.e.  running `curl http://localhost:11434` in bash on WSL produces `Ollama is running`.

## Troubleshooting Tips

### [How can I use browser on host Windows machine?](https://superuser.com/questions/1262977/open-browser-in-host-system-from-windows-subsystem-for-linux)

```bash
export BROWSER='/mnt/c/Program Files/Firefox/firefox.exe'
```

> :bulb: `wslview` is currently not working.

### Collect WSL logs for networking issues

Install `tcpdump` in WSL and then install [Windows Performance Recorder](https://learn.microsoft.com/en-us/windows-hardware/test/wpt/windows-performance-recorder).

Follow [instructions here](https://github.com/microsoft/WSL/blob/master/CONTRIBUTING.md#collect-wsl-logs-for-networking-issues).

### Fix wl-copy issue

After upgrading Ubuntu to 24.04, you may start to get an error message when using `wl-copy`, e.g. when yanking text in Neovim. To fix it, follow the instructions [here](https://github.com/microsoft/WSL/issues/11261#issuecomment-2233443300).

```bash
sudo chmod +rx /mnt/wslg/runtime-dir
ln -s /mnt/wslg/runtime-dir/wayland-0* /run/user/$UID/
```

### Delete bash sessions

```bash
# Get the terminal name of the current session
CURRENT_TTY=$(tty)

# List all Bash sessions, excluding the current one, and terminate them
ps -o pid,tty,comm | grep bash$ | grep -v "$CURRENT_TTY" | awk '{print $1}' | xargs kill -TERM
```

### apt update error

If you get an error when running `sudo apt update`  along the lines of "Release file is not yet valid", you need to install `ntp` ([source](https://askubuntu.com/a/1300062)):

```bash
sudo apt install ntp
sudo service ntp restart
```

### ldd

`ldd` lists all the libraries needed by a binary to execute. For example, if we run `ldd /bin/bash`:

```text
linux-vdso.so.1 (0x00007ffc059fd000)
libtinfo.so.6 => /lib/x86_64-linux-gnu/libtinfo.so.6 (0x00007fc0aa62a000)
libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007fc0aa401000)
/lib64/ld-linux-x86-64.so.2 (0x00007fc0aa7cf000)
```

### How to get package dependencies

### Dependencies

To list the dependencies of a package (*even works for packages that are not installed*), use `sudo apt-show <pkg>`.

Example:

```shell
$ sudo apt show exa
Package: exa
Version: 0.10.1-2
Built-Using: rustc (= 1.51.0+dfsg1+llvm-1~exp3ubuntu1)

(output omitted)

Depends: libc6 (>= 2.34), libgcc-s1 (>= 4.2)

(output omitted)

Description: Modern replacement for ls
 exa is an improved file lister with more features and better defaults...
```

For installed packages, you can use `sudo apt-cache depends`.

```bash
$ sudo apt-cache depends rustc
rustc
  Depends: libc6
  Depends: libgcc-s1
  Depends: libstd-rust-dev
  Depends: gcc
  Depends: <libc-dev>
    libc6-dev
  Depends: binutils
  Breaks: libstd-rust-dev
  Suggests: cargo
  Suggests: <llvm-17>
  Suggests: <lld-17>
  Suggests: <clang-17>
  Replaces: libstd-rust-dev
```

Lastly, you can also use `dpkg -s <pkg>` for installed packages.

### Reverse-dependencies

First, install `apt-rdepends`: `sudo apt install apt-rdepends`.

```shell
$ sudo apt-rdepends -r rustc
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
rustc
  Reverse Depends: cargo (>= 0.58.0-0ubuntu1)
  Reverse Depends: rust-all (>= 1.58.1+dfsg1~ubuntu1-0ubuntu2)
cargo
  Reverse Depends: dh-cargo (>= 28)
  Reverse Depends: rust-1.62-all (1.62.1+dfsg1-1ubuntu0.22.04.1)
  Reverse Depends: rust-all (1.58.1+dfsg1~ubuntu1-0ubuntu2)
dh-cargo
rust-1.62-all
rust-all
```

## snap

Snap is pre-installed and ready to go on all recent releases of Ubuntu. Else, install: `sudo apt install snapd`.

[To avoid filling up disk space](https://unix.stackexchange.com/questions/614070/keep-only-latest-version-of-snap-and-delete-other-to-free-up-space), run this:

```shell
snap set system refresh.retain=2
```

Install apps:

```shell
sudo snap install chromium
sudo snap install cups
sudo snap install tldr

sudo snap glow
glow completion bash > ~/.config/bash_completions.d/glow
# glow completion powershell > ~/.config/powershell/scripts/ArgumentCompleters/glow.ps1
```

Refresh: `sudo snap refresh`.

## Quarto

[Quarto](https://quarto.org/) is an enhanced, multilingual successor to RMarkdown.

### Installation

1. View files for current release:

    ```bash
    rel_version=$(gh release list --repo quarto-dev/quarto-cli -L 1 --json tagName | jq -r '.[0].tagName')
    gh release view $rel_version --repo quarto-dev/quarto-cli
    ```

2. After you determine file to use, download it:

    ```bash
    ls ~/tmp | xargs rm # Clean directory
    gh release download $rel_version --repo quarto-dev/quarto-cli --pattern *linux-amd64.tar.gz -D ~/tmp
    ```

3. Extract files:

    ```bash
    tarball=$(ls *.tar.gz)
    mkdir ~/opt
    tar -C ~/opt -xvzf $tarball
    ```

4. Create a symlink:

    ```bash
    ln -s "${HOME}/opt/quarto-${rel_version:1}/bin/quarto" ~/.local/bin/quarto --force
    ```

5. Test installation: `quarto -v`.

## Python

```shell
sudo apt install systemd-coredump python3-pip python3.12-venv
```

[Add completion for pip in bash](https://pip.pypa.io/en/stable/user_guide/#command-completion):

```shell
python3 -m pip completion --bash >> ~/.config/bash_completions.d/pip
```

If you want to install multiple versions, follow the instructions [here](https://www.bitecode.dev/i/112502596/installing-and-running-python-on-linux) to add [deadsnake PPA](https://launchpad.net/~deadsnakes/+archive/ubuntu/ppa). These versions will also get installed in `/usr/bin`.

### uv

A better approach is to use [uv](https://docs.astral.sh/uv/getting-started/installation/):

```shell
curl -LsSf https://astral.sh/uv/install.sh | sh
```

Update version: `uv self update`.

Shell completion:

```shell
uv generate-shell-completion bash > ~/.config/bash_completions.d/uv
uv generate-shell-completion powershell > ~/.config/powershell/scripts/ArgumentCompleters/uv.ps1

uvx --generate-shell-completion bash > ~/.config/bash_completions.d/uvx
uvx --generate-shell-completion powershell > ~/.config/powershell/scripts/ArgumentCompleters/uvx.ps1
```

Install python: `uv python install 3.12`. Omit version to use latest.

#### uv Tools

- Ensure tool directory is in `$PATH`: `uv tool update-shell`

- Install tools

    ```shell
    uv tool install cookiecutter
    uv tool install debugpy
    uv tool install ipython
    uv tool install markitdown
    uv tool install mypy
    uv tool install pipdeptree
    uv tool install pre-commit
    uv tool install ruff
    uv tool install radian # For R
    uv tool install scalene
    uv tool install tox
    uv tool install visidata
    uv tool install virtualenv
    uv tool install yamllint
    ```

### Troubleshooting

- <https://stackoverflow.com/questions/56123942/pip-failed-to-install-dbus-python>
- <https://stackoverflow.com/questions/18025730/pygobject-2-28-6-wont-configure-no-package-gobject-introspection-1-0-found>

## Rust

- Install `rustup`: `curl --proto '=https' --tlsv1.2 -sSf <https://sh.rustup.rs> | sh`.

- Rustup metadata and toolchains will be installed into the Rustup home directory, i.e. `~/.rustup` (unless overridden by `$RUSTUP_HOME`).

- `cargo`, `rustc`, `rustup` and other commands are added to `~/.cargo/bin` which is added to `$PATH` during installation.

- List installed crates: `cargo install --list`.

- To uninstall: `rustup self uninstall`.

- To update: `rustup update`

- Shell completions:

    ```bash
    rustup completions bash > ~/.config/bash_completions.d/rustup
    rustup completions bash cargo > ~/.config/bash_completions.d/cargo
    ```

### Updating crates

Install [cargo-update](https://github.com/nabijaczleweli/cargo-update): `cargo install cargo-update`.

Check for and install all updates: `cargo install-update -a`.

You can also update specific crates: `cargo install-update crate1 crate2...`.

## git

```bash
sudo add-apt-repository ppa:git-core/ppa
sudo apt update

# Ubuntu package is ancient.
sudo apt install git

# Ubuntu package is ancient.
cargo install git-absorb
# Shell completion
git-absorb --gen-completions bash > ~/.config/bash_completions.d/git-absorb
```

### meld

meld is used to view diffs.

```bash
sudo apt install meld

# <https://stackoverflow.com/questions/76239470/running-meld-under-wsl2-from-the-command-line-i-get-a-constant-stream-of-errors>
sudo apt install gnome-icon-theme adwaita-icon-theme-full

# Configure meld as global diff tool
git config --global diff.tool meld
git config --global diff.guitool meld
```

### git lfs

[Instructions](https://github.com/git-lfs/git-lfs/blob/main/INSTALLING.md)

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

## mise

[mise](https://mise.jdx.dev/) is a development environment setup tool. It has several advantages over `asdf` IMHO: better CLI, no shims.

Install: `curl <https://mise.run> | sh`.

This will download to `~/.local/bin`.

Add this to `~/.bashrc`:

```bash
echo 'eval "$(mise activate bash)"' >> ~/.bashrc
```

For shell completion:

```bash
mise use -g usage
mise completion bash > ~/.config/bash_completions.d/mise
```

Install plugins:

```shell
mise use chezmoi@latest
mise use delta@latest
delta --generate-completion bash >  .config/bash_completions.d/delta
mise use deno@latest

mise use difftastic@latest
wget https://raw.githubusercontent.com/Wilfred/difftastic/master/difft.1
sudo mv difft.1 /usr/share/man/man1/
sudo mandb

mise use docker-slim@latest

mise plugin add github-cli https://github.com/bartlomiejdanek/asdf-github-cli.git   
mise use github-cli@latest

mise plugin add actionlint
mise use actionlint@latest

mise use eza@latest

# For man pages
cd ~/tmp && gh release download --repo eza-community/eza --pattern man*.*
eza_version=$(eza --version | rg '\d+\.\d+\.\d+' --only-matching --color never)
folder="man-$eza_version"
tar -xzvf "./$folder.tar.gz"
tmp="./target/${folder}/*"
# Be consistent
sudo chown root $tmp
sudo mv $tmp /usr/share/man/man1
# cleanup
rmdir target
rm "./$folder.tar.gz"
cd -

mise use fzf@latest

mise use go@latest
mise use lua-language-server@latest
mise use neovim@latest
mise use stylua@latest
mise use usage@latest
mise use zoxide@latest
mise use lazygit@latest
mise use ripgrep@latest
mise use direnv@latest

# Generate with sudo in /usr/share/..., get Permission denied error.
rg --generate man > rg.1
sudo mv rg.1 /usr/share/man/man1
sudo chown root /usr/share/man/man1/rg.1
```

Add to `~/.bash_profile`:

```bash
eval "$(gh completion -s bash)"
```

To list available versions of an *installed* plugin (here **lazygit**):

```bash
mise ls-remote lazygit
```

To list available tools to install:

```bash
mise registry
```

To list available plugins:

```bash
mise plugins ls-remote
```

To list config files:

```bash
mise config ls
```

Update mise:

```shell
mise self-update
```

## fzf

Install plugin:

```shell
mise install fzf
```

### Tips

Open file in Neovim: `fzf --bind 'enter:become(nvim {})'`

## duckdb

```bash
gh release download -R duckdb/duckdb --pattern *cli-linux-amd64.zip -D ~/tmp
ls ~/tmp/*.zip | xargs unzip -d ~/.local/bin -o
chmod u+rwx ~/.local/bin/duckdb
ls ~/tmp/*.zip | xargs rm
```

## jnv

[jnv](https://github.com/ynqa/jnv) is an interactive JSON filter using jq. Install via `cargo install jnv` or [download latest release from here](https://github.com/ynqa/jnv/releases/).

For key bindings, see [here](https://github.com/ynqa/jnv#keymap).

## fd

```bash
cargo install fd-find
ln -s ~/.cargo/bin/fd ~/.local/bin/fd-find
```

## pngquant

[pngquant](https://pngquant.org/) is a command-line utility and a library for lossy compression of PNG images.

Install: `cargo install pngquant`.

## cntr

From [GitHub repo](https://github.com/Mic92/cntr?tab=readme-ov-file):

> `cntr` is a replacement for `docker exec` that brings all your developers tools with you. This is done by mounting the file system from one container or the host into the target container by creating a nested container with the help of a FUSE filesystem.

Install: `cargo install cntr`.

## tailspin

[This](https://github.com/bensadeh/tailspin) is a log viewer with highlighting!

Install: `cargo install tailspin`.

> [!NOTE]
> Binary name is `tspin`.

## parallel-disk-usage

Install: `cargo install parallel-disk-usage --bin pdu`.

Grab shell completion script from [Releases page](https://github.com/KSXGitHub/parallel-disk-usage/releases).

## rga

[rga](https://github.com/phiresky/ripgrep-all)  is like **ripgrep** but also searches in PDFs, E-Books, Office documents, zip, tar.gz, etc.

Install:

```bash
sudo apt install build-essential pandoc poppler-utils ffmpeg ripgrep cargo
cargo install --locked ripgrep_all
rga --version    # this should work now
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

### PowerShellEditorServices

[PowerShellEditorServices](https://github.com/PowerShell/PowerShellEditorServices/tree/main) is a platform for PowerShell development support in any editor.

To install, execute this script (modified from [here](https://github.com/PowerShell/PowerShellEditorServices/blob/main/docs/guide/getting_started.md#install-the-server)):

```powershell
$DownloadUrl = 'https://github.com/PowerShell/PowerShellEditorServices/releases/latest/download/PowerShellEditorServices.zip'
$ZipPath = "/tmp/PowerShellEditorServices.zip"
$InstallPath = "$HOME/PowerShellEditorServices"
Invoke-WebRequest -Method 'GET' -Uri $DownloadUrl -OutFile $ZipPath
Remove-Item $InstallPath -Recurse -Force -ErrorAction Ignore
Expand-Archive -Path $ZipPath -DestinationPath $InstallPath
Remove-Item $ZipPath
```

### Microsoft.PowerShell.GraphicalTools

In order to get `Out-GridView` and other cmdlets that ship with PowerShell on Windows:

```powershell
Install-Module Microsoft.PowerShell.GraphicalTools
```

([Source](https://stackoverflow.com/a/58288650/781045))

### Logging

See [here](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_logging_non-windows?view=powershell-7.4) for details on how to set up.

### Treesitter support (Neovim)

See [here](https://www.reddit.com/r/neovim/comments/17qkjtt/powershell_in_neovim/).

> [!NOTE]
> This doesn't work. Will revisit at a future date.

## [.NET](https://learn.microsoft.com/en-us/dotnet/core/install/linux-ubuntu)

Starting with Ubuntu 22.04, some versions of .NET are available in the Ubuntu package feed.

See [Supported distributions](https://learn.microsoft.com/en-us/dotnet/core/install/linux-ubuntu#supported-distributions) for details on how to install .NET for specific Ubuntu versions.

### Install .NET 9

#### Using a package manager

```bash
sudo add-apt-repository ppa:dotnet/backports
sudo apt-get update && sudo apt-get install -y dotnet-sdk-9.0
```

#### [Install manually](https://learn.microsoft.com/en-us/dotnet/core/install/linux-scripted-manual#manual-install)

> :bulb: The package manager seem to lag Windows in terms of availability of SDK (and runtime) versions. This can be an issue if you have a `global.json` in your repo that gets updated by Dependabot to a SDK version not available in package manger.

If you want to install manually:

```bash
cd ~/tmp
# https://dotnet.microsoft.com/en-us/download/dotnet/9.0
wget https://builds.dotnet.microsoft.com/dotnet/Sdk/9.0.301/dotnet-sdk-9.0.301-linux-x64.tar.gz
export DOTNET_ROOT=$HOME/.dotnet # Add to .bashrc
mkdir -p "$DOTNET_ROOT" && tar zxf dotnet-sdk-9.0.301-linux-x64.tar.gz -C "$DOTNET_ROOT"
export PATH=$DOTNET_ROOT:$DOTNET_ROOT/tools:$PATH  # Add to .bashrc
```

Confirm that it's working: `dotnet sdk check`.

### Configure environment variables

> [!NOTE]
> For more info, refer to this [link](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-environment-variables).

Disable telemetry:

```bash
export DOTNET_CLI_TELEMETRY_OPTOUT=1 
export DOTNET_UPGRADEASSISTANT_TELEMETRY_OPTOUT=1
```

Set `DOTNET_ROOT` *only* if install path is `/usr/share/dotnet`:

```bash
export DONET_ROOT=/usr/share/dotnet
```

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

## K8s

Install `minikube` and kubectl` using `mise`.

## ncdu

You can use nCurses Disk Usage tool to locate large files.

```shell
sudo apt-get install ncdu
# Usage
sudo ncdu --exclude-kernfs --exclude /mnt/d /
```

## tmux

```shell
sudo apt install tmux
```

Prefix for commands is `<C-b>`.

### tpm

tpm is a TMUX plugin manager.

```shell
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Add this to end of `~/.tmux.conf`:

```bash
# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'

# Other examples:
# set -g @plugin 'github_username/plugin_name'
# set -g @plugin 'github_username/plugin_name#branch'
# set -g @plugin 'git@github.com:user/plugin'
# set -g @plugin 'git@bitbucket.com:user/plugin'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
```

Commands:

- Install: First, add plugin to `~/.tmux.conf` as shown above then `<Prefix>` + `I`.
- Update:  `<Prefix>` + `U`
- Uninstall: First, remove or comment out plugin from `~/.tmux.conf` then `<Prefix>` + `<alt>` + `u`.

### tmuxp

tmuxp is a session manager for tmux.

Install: `sudo apt install tmuxp`.

This version is quite old so you can alternatively do:

```shell
uv tool install tmuxp
```

## HTTPie

[HTTPie](https://httpie.io/) is a CLI app for working with APIs.

[Installation instructions](https://httpie.io/docs/cli/debian-and-ubuntu)

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

Change color scheme:

```shell
bleopt color_scheme=[default|base16|catppuccin_mocha]
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
| C-z (Emacs) | vi-editing-mode | Start vi editing mode |

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

Update: `atuin-update`.

## VS Code

- See [here](https://learn.microsoft.com/en-us/windows/wsl/tutorials/wsl-vscode) for steps to configure WSL for use with VS Code.

### Lua + Neovim support

Add this to the appropriate `settings.json` file to reduce false positive diagnostic messages:

```json
"Lua.workspace.library": [
    "${env:VIMRUNTIME}/lua/",
    "${env:VIMRUNTIME}/lua/vim/lsp",
    "~/.local/share/nvim/lazy/ui/nvchad_types",
    "~/.local/share/nvim/lazy/lazy.nvim/lua/lazy"
],
```

### Resolve auth issue

If `gh` is specified in `.gitconfig` for authenticating to GitHub and VS Code can't find `gh`, you will get a bunch of errors when pushing from VS Code.

To resolve this, I drew inspiration from [here](https://askubuntu.com/questions/1304249/why-does-my-symlink-to-usr-local-bin-not-work):

```shell
sudo ln -s $(which gh) /usr/local/bin/gh
```

## wsl apps

- [wslu](https://wslutiliti.es/wslu/) is a collection of utilities for WSL.

    ```bash
    sudo add-apt-repository ppa:wslutilities/wslu
    sudo apt update
    sudo apt install wslu
    ```

- Check out this repo: [samuelramox/wsl-setup](
<https://github.com/samuelramox/wsl-setup>) for scripts to install apps.

    ```bash
    sudo apt install -y apt-transport-https ca-certificates curl gawk ssh-askpass tree unzip wget zsh
    ```

## R

Instructions for installing are based on [here](https://cran.r-project.org/bin/linux/ubuntu).

```bash
sudo apt update -qq
# install two helper packages we need
sudo apt install --no-install-recommends software-properties-common dirmngr
# add the signing key (by Michael Rutter) for these repos
# To verify key, run gpg --show-keys /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc 
# Fingerprint: E298A3A825C0D65DFD57CBB651716619E084DAB9
wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | sudo tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"
sudo apt install r-base r-base-dev -y
```

### Package prerequisites

1. [Install Fortran](https://fortran-lang.org/learn/os_setup/install_gfortran/#debian-based-debian-ubuntu-mint-etc)

    ```bash
    sudo apt install gfortran
    ```

1. You will need to install these Ubuntu packages to avoid installation errors for certain packages ([source](https://stackoverflow.com/questions/49657406/install-packages-cant-find-shared-so-object-file)):

    ```bash
    sudo apt install libproj-dev
    sudo apt install libgdal-dev
    ```

1. To support rendering of PDF documents that include SVG files, automatically converting them to PDF images in Quarto 1.3+:

    ```bash
    sudo apt install librsvg2-bin
    ```

1. [To avoid issues with `igraph`](https://stackoverflow.com/questions/71609407/unable-to-attach-igraph-or-highcharter-in-rstudio-libglpk-so-40-cannot-open-sh/71610023#71610023):

    ```bash
    sudo apt install libglpk-dev
    ```

1. For `magick` package:

    ```bash
    sudo apt install libmagick++-dev 
    ```

1. For `V8` package:

    ```bash
    sudo apt install libnode-dev
    ```

1. For `textshaping` package:

    ```bash
    sudo apt install libharfbuzz-dev
    sudo apt install libfribidi-dev
    ```

### [Posit Package Manager for Linux R Binaries](https://tshafer.com/blog/2023/07/posit-package-manager-linux)

You can use the Posit Package Manager (PPM) to install binary packages and avoid having to compile from source.

1. Determine your repo URL from [the PPM setup page](https://packagemanager.posit.co/client/#/repos/cran/setup?distribution=ubuntu-24.04&r_environment=other)

1. Add this to your `.Rprofile`:

    ```r
    options(HTTPUserAgent = sprintf(
    "R/%s R (%s)", 
    getRversion(), 
    paste(
        getRversion(), 
        R.version["platform"], 
        R.version["arch"], 
        R.version["os"]
    )
    ))

    local({
    r <- getOption("repos")
    r["ropensci"] <- "https://ropensci.r-universe.dev"
    r["CRAN"] <- "https://packagemanager.posit.co/cran/__linux__/noble/latest"
    r["INLA"] <- "https://inla.r-inla-download.org/R/stable"
    options(repos = r)
    ```

### Updating packages for version upgrade

1. Check output of `.libPaths()` and if there is a folder with old R version number, copy its contents to new folder with correct R version number.

2. Update packages for new R version:

    ```r
    update.packages(ask=FALSE, checkBuilt=TRUE)
    ```

3. Delete package install location with old R version number if any.

([Source](https://stackoverflow.com/questions/66450454/how-to-update-all-packages-for-a-new-r-version-quickly-and-easily))

### colorout

**[colorout](https://github.com/jalvesaq/colorout)** is an R package that colorizes R output when running in a Unix terminal emulator

Install with `devtools`.

### RStan

Instructions are from [here](https://github.com/stan-dev/rstan/wiki/Configuring-C-Toolchain-for-Linux):

#### Ubuntu LTS

```shell
# Add Michael Rutter's c2d4u4.0 PPA (and rrutter4.0 for CRAN builds too)
sudo add-apt-repository ppa:marutter/rrutter4.0
sudo add-apt-repository ppa:c2d4u.team/c2d4u4.0+
sudo apt update
sudo apt install r-cran-rstan
```

#### C++ toolchain configuration

Create `~/.R/Makevars`:

```r
dotR <- file.path(Sys.getenv("HOME"), ".R")
if (!file.exists(dotR)) dir.create(dotR)
M <- file.path(dotR, "Makevars")
if (!file.exists(M)) file.create(M)
cat("\nCXX14FLAGS=-O3 -march=native -mtune=native -fPIC",
    "CXX14=g++", # or clang++ but you may need a version postfix
    file = M, sep = "\n", append = TRUE)
```

Install `V8`:

```r
Sys.setenv(DOWNLOAD_STATIC_LIBV8 = 1)
install.packages("V8")
```

### [cairo](https://www.cairographics.org/download)

Install cairo graphics:

```shell
sudo apt-get install libcairo2-dev
```

## CUDA

1. Refer to [CUDA on WSL User Guide](https://docs.nvidia.com/cuda/wsl-user-guide/index.html#getting-started-with-cuda-on-wsl-2).

    ```bash
    sudo apt-key del 7fa2af80 # Remove old key
    ```

2. To determine the version of CUDA toolkit to download and install, type: `nvidia-smi` in PowerShell on Windows and note the driver version (in my case, 552.41). You can then check for [CUDA toolkit compatibility](https://docs.nvidia.com/deploy/cuda-compatibility/index.html).

3. [Download the latest Linux CUDA toolkit package - WSL-Ubuntu](https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&Distribution=WSL-Ubuntu&target_version=2.0&target_type=deb_local):

    ```bash
    wget https://developer.download.nvidia.com/compute/cuda/repos/wsl-ubuntu/x86_64/cuda-wsl-ubuntu.pin
    sudo mv cuda-wsl-ubuntu.pin /etc/apt/preferences.d/cuda-repository-pin-600
    wget https://developer.download.nvidia.com/compute/cuda/12.8.0/local_installers/cuda-repo-wsl-ubuntu-12-8-local_12.8.0-1_amd64.deb
    sudo dpkg -i cuda-repo-wsl-ubuntu-12-8-local_12.8.0-1_amd64.deb
    sudo cp /var/cuda-repo-wsl-ubuntu-12-8-local/cuda-*-keyring.gpg /usr/share/keyrings/
    sudo apt-get update
    sudo apt-get -y install cuda-toolkit-12-8
    ```

### [CUDNN](https://developer.nvidia.com/cudnn-downloads?target_os=Linux&target_arch=x86_64&Distribution=Ubuntu&target_version=22.04&target_type=deb_network)

```bash
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2404/x86_64/cuda-keyring_1.1-1_all.deb
sudo dpkg -i cuda-keyring_1.1-1_all.deb

sudo apt-get update
sudo apt-get -y install cudnn-cuda-12
```

## Fonts

See [here](https://askubuntu.com/a/372964) for more details.

```bash
sudo apt-get install font-manager
```

To build font information cache files:

```bash
fc-cache -f -v
```

To check all available fonts:

```bash
fc-list
```

## oh-my-posh

1. [Install app](https://ohmyposh.dev/docs/installation/linux):

    ```shell
    curl -s https://ohmyposh.dev/install.sh | bash -s
    ```

    By default the script will install to `~/bin` or `~/.local/bin` depending on which one exists or the existing Oh My Posh executable's installation folder. If you want to install to a different location you can specify it using the `-d` flag:

    ```shell
    curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/.local/bin
    ```

2. Themes are written to `/root/.cache/oh-my-posh/themes/`. You may need to fix permissions for this directory:

    ```bash
    sudo chmod o+rx /root/.cache/oh-my-posh/themes/
    sudo chmod o+rx /root/.cache/oh-my-posh/
    sudo chmod o+rx /root/.cache/
    ```

3. [Fonts](https://ohmyposh.dev/docs/installation/fonts)

4. [Set up prompt](https://ohmyposh.dev/docs/installation/prompt): Add the following to you `~/.bashrc` and then source it. Replace `{theme}` below with your preferred theme:

```shell
eval "$(oh-my-posh --init --shell bash --config /root/.cache/oh-my-posh/themes/{theme}.omp.json)"
```

## Lua

- Install language server:

    ```shell
    mise install lua-language-server latest    
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

- Set source for GHCup metadata:

    ```bash
    ghcup config set url-source https://raw.githubusercontent.com/haskell/ghcup-metadata/master/ghcup-vanilla-0.0.9.yaml
    ```

- Add [shell completion for `stack`](https://docs.haskellstack.org/en/stable/shell_autocompletion/) by adding the following to completion script:

    ```bash
    eval "$(stack --bash-completion-script stack)"
    ```

- Download file for shell completion for `cabal` and add it to `~/.config/bash_completions.d`:

    ```bash
    gh download https://github.com/haskell/cabal/blob/master/cabal-install/bash-completion/cabal --outfile ~/.config/bash_completions.d/cabal
    ```

- Install [haskell-debug-adapter](https://github.com/phoityne/haskell-debug-adapter)

    ```bash
    stack install haskell-dap ghci-dap haskell-debug-adapter
    ```

- Install hoogle locally (optional):

    ```bash
    stack install hoogle
    hoogle generate # generate index for current version of Stackage LTS
    ```

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
    cd install-tl-20250524/ # change to appropriate directory name
    perl ./install-tl --paper=letter --scheme=small
    ```

2. This will bring up a menu in shell. Choose option **D** to specify your user directory. Then return to the main options with **R** and subsequently choose **I** to install.
3. If you get an error `cannot setup TLPDB in /home/...`, execute `tlmgr init-usertree` to initialize user tree .
4. Add `~/texlive/2025/texmf-dist/doc/man` to **MANPATH**.
5. Add `~/texlive/2025/texmf-dist/doc/info` to **INFOPATH**.
6. Add `~/texlive/2025/bin/x86_64-linux` to your **PATH** for current and future sessions.
7. Install font using user-mode: `tlmgr --usermode install courier`
8. Install `chtex`: `sudo apt install chktex`
9. Run `sudo apt install latexmk` to install `latexmk`.
10. To edit LaTex files using `vimtex` plugin in neovim, the following are needed:
    - `sudo apt install zathura zathura-ps`.
    - `uv tool install neovim-remote`
    - `sudo apt-get install xdotool`
    - See [this](https://www.ejmastnak.com/tutorials/vim-latex/pdf-reader/#a-pdf-reader-on-linuxa) for more info.
    - If you run into issues with viewing PDF, try this :sparkles:: run `sudo loginctl enable-linger <username>` or `sudo systemctl restart user@1000` ([source](https://github.com/microsoft/WSL/issues/8842)).
    - If `xodotool` doesn't work, set this in config for `vimtex.nvim`:

        ```lua
        vim.g.vimtex_view_method = 'zathura_simple'
        ```

    - If `zathura_simple` silently fails when using `vimtex`, try the following command in shell:

        ```bash
        zathura  -x "~/.local/share/mise/installs/neovim/0.10.2/bin/nvim --headless -c \"VimtexInverseSearch %{line} '%{input}'\"" --synctex-forward 13:1:'~/dev/main.tex' 'main.pdf'
        ```

    - If you get an error about D-Bus (`error: Got no usable data from SyncTeX or D-Bus failed in some way.`), try the steps listed [here](https://github.com/microsoft/WSL/issues/7915#issuecomment-2452400161
    ).

11. Installing and updating packages: see [here](https://tug.org/texlive/doc/tlmgr.html#EXAMPLES).

12. To upgrade from TeX Live 2024 to 2025, [follow these instructions](https://tug.org/texlive/upgrade.html). If you want to remove the previous installation:
    1. Run `~/texlive/2024/bin/x86_64-linux/tlmgr uninstall`.
    2. This does not remove all the files so you will have to manually delete `~/texlive/2024`.

> [!NOTE]
> You can edit `/etc/profile` to set necessary environment variables:
>
> ```bash
> TEX_HOME=/home/ajay/texlive/2025
> export PATH=$TEX_HOME/bin/x86_64-linux:/home/ajay/.cargo/bin:$PATH
> export MANPATH=$TEX_HOME/texmf-dist/doc/man:$MANPATH
> export INFOPATH=$TEX_HOME/texmf-dist/doc/info:$INFOPATH
> ```

### tectonic

[Tectonic](https://github.com/tectonic-typesetting/tectonic) is a modern TeX/LaTeX engine written in Rust :crab:

```shell
sudo snap install tectonic
```

([Source](https://snapcraft.io/install/tectonic/ubuntu))

## [envx](https://github.com/mikeleppane/envx)

Environment variable manager with TUI + CLI.

Install:

```bash
cargo install envex
```

Usage:

```bash
envx tui
envx list
```

## grc

[grc](https://github.com/garabik/grc) or Generic Colouriser helps colorize the output of programs.

```bash
sudo apt install grc
```

Add to `~/.bashrc`:

```bash
GRC_ALIASES=true
[[ -s "/etc/profile.d/grc.sh" ]] && source /etc/profile.d/grc.sh
```

## yazi

[yazi](https://yazi-rs.github.io) is a fast terminal file manager written in Rust.

Install:

```bash
cargo install --locked yazi-fm yazi-cli
```

See [here](https://yazi-rs.github.io/docs/quick-start) for help on keyboard shortcuts (very similar to ones in Neovim). Press `~` to display help.

Install flavors (themes):

```bash
gh download https://github.com/yazi-rs/flavors/tree/main/catppuccin-macchiato.yazi --outdir ~/.config/yazi/flavors/catppuccin-macchiato.yazi
gh download https://github.com/yazi-rs/flavors/tree/main/catppuccin-mocha.yazi --outdir ~/.config/yazi/flavors/catppuccin-mocha.yazi
```

## HuggingFace Model Downloader

The [HuggingFace Model Downloader](https://github.com/bodaay/HuggingFaceModelDownloader) is a utility tool for downloading models and datasets from HuggingFace.

Install:

```bash
bash <(curl -sSL https://g.bodaay.io/hfd) -i -p ~/.local/bin/
```

## RAG Crawler

Crawl a website to generate knowledge file for RAG.

Install: `npm i -g rag-crawler`

## Ollama

Install: `mise use Ollama@latest`.

If you want to change the download directory for models, then set `$OLLAMA_MODELS` ([source](https://github.com/ollama/ollama/issues/680#issuecomment-1996562577)).

Instructions on how to add as startup service: [here](https://github.com/ollama/ollama/blob/main/docs/linux.md#adding-ollama-as-a-startup-service-recommended).

## Misc

```shell
# Wordlist in /usr/share/dict/words
sudo apt install wamerican-large

cargo install typos-cli
cargo install ast-grep
-- A fast, simple TUI for interacting with systemd services and their logs.
cargo install systemctl-tui --locked

cargo install aichat
gh download https://github.com/sigoden/aichat/blob/main/scripts/completions/aichat.bash --outfile ~/.config/bash_completions.d/aichat.bash

# xml
sudo apt-get install -y libxml2-utils

# Java
sudo apt install openjdk-17-jre-headless

# xq: Not available in Package Manager for Ubuntu 22 😦
# https://github.com/sibprogrammer/xq
curl -sSL https://bit.ly/install-xq | sudo bash

# Installs as fdfind
sudo apt install age
sudo apt install shellcheck
sudo apt install cmake
sudo apt install clang-format

sudo apt install command-not-found

sudo apt install bat
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat

sudo apt install plocate

# https://github.com/muesli/duf
sudo apt install duf

# D2
curl -fsSL https://d2lang.com/install.sh | sh -s -- 

sudo apt install golang-docker-credential-helpers

sudo apt install cloc

# https://github.com/posva/catimg
sudo apt install catimg

# Need for sqlite.luas
sudo apt-get install sqlite3 libsqlite3-dev 

sudo apt install libmagickwand-dev

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
