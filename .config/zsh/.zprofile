eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH="/opt/homebrew/opt/ruby@2.7/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:$HOME/tools/platform-tools"
export PATH="$PATH:$HOME/.maestro/bin"
export PATH="$PATH:$HOME/Library/Application Support/JetBrains/Toolbox/scripts"

export JAVA_HOME="$HOME/Library/Java/JavaVirtualMachines/corretto-17.0.4.1/Contents/Home"
export XDG_CONFIG_HOME="$HOME/.config"

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"
