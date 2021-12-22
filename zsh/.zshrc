autoload -Uz compinit promptinit; compinit; promptinit

# History
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.history

# Case insensitive matching
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

update_zsh_plugins () {
    antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh
    antibody update
}

# Automatic rehashing. This solves the problem of new binaries
# in the $PATH not being detected automatically.
zstyle ':completion:*' rehash true

# ~/.zshrc
source ~/.zsh_plugins.sh

# Aliases
if [[ -r ~/.aliasrc ]]; then
    . ~/.aliasrc
fi

# Exports
export EDITOR="nano"
export GOPATH="$HOME/go"
export GOPRIVATE="github.com/flypay/*"
export PATH="$PATH:$HOME/go/bin"

# FNM
eval "$(fnm env)"

# Turning off functionality
unset AUTO_CD
