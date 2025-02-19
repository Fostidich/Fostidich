eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(/opt/homebrew/bin/zoxide init zsh)"
alias cd="z"
export PATH=$PATH:$HOME/.local/bin
export PATH="$PATH:/Users/kello/.dotnet/tools"
export PATH="$PATH:/Users/kello/.cargo/bin"
export HOMEBREW_AUTO_UPDATE_SECS=86400
export HOMEBREW_NO_ENV_HINTS=1
