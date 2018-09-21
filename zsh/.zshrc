autoload -Uz compinit promptinit; compinit; promptinit

# History
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.history

# Case insensitive matching
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

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

# phpStorm settings
export XDEBUG_CONFIG="idekey=PHPSTORM"
export PHP_IDE_CONFIG="serverName=0.0.0.0"

# Turning off functionality
unset AUTO_CD
