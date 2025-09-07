# Misc setups
autoload -U compinit
compinit
alias cd="z"

# Various programs paths
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.dotnet/tools"
export PATH="$PATH:$HOME/.cargo/bin"

# Homebrew
export HOMEBREW_AUTO_UPDATE_SECS=86400
export HOMEBREW_NO_ENV_HINTS=1

# Java
export PATH="$PATH:/opt/homebrew/opt/openjdk@21/bin"
export JAVA_HOME="/opt/homebrew/opt/openjdk@21"

# Vulkan
export PATH="$PATH:$HOME/.local/VulkanSDK/1.4.304.1/Applications/vkcube.app/Contents/MacOS"
export VULKAN_SDK="$HOME/.local/VulkanSDK/1.4.304.1/macOS"
export DYLD_LIBRARY_PATH="$VULKAN_SDK/lib:$DYLD_LIBRARY_PATH"
export VK_ICD_FILENAMES="$VULKAN_SDK/share/vulkan/icd.d/MoltenVK_icd.json"
export VK_LAYER_PATH="$VULKAN_SDK/share/vulkan/explicit_layer.d"

# App intializations
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(~/.local/bin/dotenv init)"
eval "$(~/.cargo/bin/leetcode completions)"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(/opt/homebrew/bin/zoxide init zsh)"


# Added by swiftly
. "/Users/kello/.swiftly/env.sh"