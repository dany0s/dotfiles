export ZSH="$HOME/.oh-my-zsh"
export ZSH_COMPDUMP="$HOME/.cache/zsh/zcompdump"
ZSH_THEME=""
plugins=(git)
source $ZSH/oh-my-zsh.sh

source "$ZDOTDIR/general.zsh"
[[ -f "$ZDOTDIR/local.zsh" ]] && source "$ZDOTDIR/local.zsh"

eval "$(zoxide init zsh)"
eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/themes/dusk.omp.json)"
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export SDKMAN_DIR="$HOME/.sdkman"
export EDITOR=nvim
export VISUAL=nvim
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
