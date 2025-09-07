#!/bin/zsh

# Zsh custom options
setopt IGNORE_EOF
setopt NULL_GLOB
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' menu select

# Prompt color customization
c1=$((RANDOM % 6 + 1))
c2=$((RANDOM % 6 + 1))
PS1="%F{${c1}}%n@%m%f %F{${c2}}%1~%f "

# Set back folder for navigation
export BACK=$(pwd)

# Personal aliases
alias b='bat'
alias c='cat'
alias d='tag la'
alias l='tag ls'
alias p='plass show'
alias q='exit'
alias t='tmux'
alias v='nvim'
alias cl='clear && clear'
alias ex='exit'
alias ll='eza --long --hyperlink'
alias la='ls -a'
alias ip='ipconfig getifaddr en0'
alias plsh='plass show'
alias path='echo $PATH | tr : "\n"'
alias exa='exa --oneline --hyperlink --total-size --long --no-permissions --no-user --no-time'
alias gitok='echo $GHTOK | pbcopy'
alias clip='pbcopy'
alias src='source ~/.zshrc'
alias vconfig='nvim ~/.config/nvim'
alias zconfig='nvim ~/.zshrc'
alias pconfig='nvim ~/.zprofile'
alias aconfig='nvim ~/.config/alacritty'
alias activate='source .venv/bin/activate'

# Personal functions

# SSH keys
ssh-load() {
    eval "$(ssh-agent -s)"
    echo "$1" > /tmp/tmp_ssh_key
    chmod 600 /tmp/tmp_ssh_key
    ssh-add /tmp/tmp_ssh_key
    rm /tmp/tmp_ssh_key
}

# Launch program detached
ind() {
    nohup "$@" >/dev/null 2>/dev/null &
}

# Make PDF from TeX
makepdf() {
    pdflatex main.tex > /dev/null
    pdflatex main.tex > /dev/null
    rm -rf *.aux *.log *.out *.toc *.fls _minted
}

# Fast copy
fcp() {
    cp "$1" $(${@:2} && pwd)
}

# Fast move
fmv() {
    mv "$1" $(${@:2} && pwd)
}

# Folder navigation
nav() {
    setopt NO_CASE_GLOB
    for arg in "$@"; do
        for dir in ./"$arg"*; do
            if [ -d "$dir" ]; then
                cd "$dir"
                break
            fi
        done
    done
}

# Back navigation
back() {
    temp="$BACK"
    export BACK=$(pwd)
    cd "$temp"
}

# Home
export HM=~

hm() {
    export BACK=$(pwd)
    cd $HM
    nav "$@"
}

# Documents
export DC=~/Documents

dc() {
    export BACK=$(pwd)
    cd $DC
    nav "$@"
}

# Downloads
export DW=~/Downloads

dw() {
    export BACK=$(pwd)
    cd $DW
    nav "$@"
}

# Repos
export RP=~/Documents/Repos

rp() {
    export BACK=$(pwd)
    cd $RP
    nav "$@"
}

# iCloud
export IC=~/iCloud

ic() {
    export BACK=$(pwd)
    cd $IC
    nav "$@"
}

