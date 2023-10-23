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

## VS Code

- See [here](https://learn.microsoft.com/en-us/windows/wsl/tutorials/wsl-vscode) for steps to configure WSL for use wih VS Code.

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

## Lua

- Install language server:

    ```shell
    asdf plugin add lua-language-server
    asdf install lua-language-server latest    
    ```

- Install `luarocks`: `sudo apt install luarocks`.

## Useful links

- <https://askubuntu.com/questions/1429369/how-to-transfer-ubuntu-on-wsl-from-one-laptop-to-another>
- <https://superuser.com/questions/1566022/how-to-set-default-user-for-manually-installed-wsl-distro>
- <https://serverfault.com/questions/175504/how-do-i-get-the-history-of-apt-get-install-on-ubuntu>
- <https://github.com/dotnet/docs/issues/27559>
