source ~/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Parse prompt string
setopt promptsubst

# Load colours
autoload -U colors && colors

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle wd
antigen bundle osx
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme robbyrussell

# Aliases
alias g=git

# Exports
export PATH="$HOME/.composer/vendor/bin:$HOME/.node/bin:/usr/local/sbin:$PATH"
export EDITOR=nano
export XDEBUG_CONFIG="idekey=PHPSTORM"
export PHP_IDE_CONFIG="serverName=0.0.0.0"

# Dinghy
if [ -x "$(command -v dinghy)" ]; then
    eval $(dinghy env)
fi

# rbenv
if [ -x "$(command -v rbenv)" ]; then
    eval "$(rbenv init -)"
fi

# Composer
if [ -d "$HOME/.config/composer/vendor/bin" ]; then
    export PATH="$HOME/.config/composer/vendor/bin:$PATH"
fi

# Spark Installer
if [ -d "$HOME/Projects/Laravel/spark-installer" ]; then
    export PATH="$HOME/Projects/Laravel/spark-installer:$PATH"
fi

# NVM
if [ -d "$HOME/.nvm" ]; then
    export NVM_DIR="$HOME/.nvm"
fi

if [ -x "$(command -v brew)" ]; then
    source $(brew --prefix nvm)/nvm.sh
fi

# Turning off functionality
unset AUTO_CD

# Tell antigen that you're done.
antigen apply
