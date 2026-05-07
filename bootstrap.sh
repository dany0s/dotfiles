#!/bin/zsh

set -e

# 1. Homebrew
if ! command -v brew &>/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# 2. Clone dotfiles
if [ ! -d "$HOME/dotfiles" ]; then
  git clone https://github.com/dany0s/dotfiles.git "$HOME/dotfiles"
fi

# 3. Brew bundle
brew bundle --file="$HOME/dotfiles/Brewfile"

# 4. TPM
if [ ! -d "$HOME/.config/tmux/plugins/tpm" ]; then
 git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
fi

# 5. Dotfiles
cd "$HOME/dotfiles" && ./install

# 6. Install newer bash (required for SDKMAN)
brew install bash

# 7. SDKMAN
BREW_BASH=$(brew --prefix)/bin/bash
if [ ! -d "$HOME/.sdkman" ]; then
  curl -s "https://get.sdkman.io" | $BREW_BASH
fi

export SDKMAN_DIR="$HOME/.sdkman"
source "$SDKMAN_DIR/bin/sdkman-init.sh"

sdk install java 21-tem
sdk install kotlin
sdk install maven
