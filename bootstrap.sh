#!/bin/sh

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

# 4. SDKMAN
if [ ! -d "$HOME/.sdkman" ]; then
  curl -s "https://get.sdkman.io" | bash
fi

# 5. Dotfiles
cd "$HOME/dotfiles" && ./install
