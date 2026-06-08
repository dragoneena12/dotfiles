# dotfiles

## Requirements

- zsh

## How to use

```console
chsh -s /bin/zsh
source ./install.sh
```

## How to install to vscode devcontainers

```json
{
  "dotfiles.repository": "dragoneena12/dotfiles",
  "dotfiles.targetPath": "~/dotfiles",
  "dotfiles.installCommand": "install.sh",
}
```
