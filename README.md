# dotfiles

## Install

```sh
curl -fsSL https://raw.githubusercontent.com/dany0s/dotfiles/main/bootstrap.sh | sh
```

This will:
1. Install Homebrew
2. Clone this repo to `~/dotfiles`
3. Install packages via Brewfile
4. Install SDKMAN
5. Symlink dotfiles via dotbot

## Manual setup

If the repo is already cloned:

```sh
cd ~/dotfiles && ./install
```

## Local config

Copy `~/.config/zsh/local.zsh` manually to each new machine. See `.config/zsh/local.zsh.example` for the expected format.
