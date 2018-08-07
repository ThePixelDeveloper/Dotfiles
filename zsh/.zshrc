source ~/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Parse prompt string
setopt promptsubst

# Load colours
autoload -U colors && colors

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship

# Aliases
alias g=git

# Exports
export PATH="$HOME/.composer/vendor/bin:$HOME/.node/bin:/usr/local/sbin:$PATH"
export EDITOR=nano
export XDEBUG_CONFIG="idekey=PHPSTORM"
export PHP_IDE_CONFIG="serverName=0.0.0.0"

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

if [ -x "$(command -v brew)" ] && [ -x "$(brew --prefix nvm)/nvm.sh" ]; then
    source $(brew --prefix nvm)/nvm.sh
fi

# Autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# PHP 7.1 Paths
if [ -d "/usr/local/opt/php@7.1/bin" ] && [ -d "/usr/local/opt/php@7.1/sbin" ] ; then
    export PATH="/usr/local/opt/php@7.1/bin:/usr/local/opt/php@7.1/sbin:$PATH"
fi

# Turning off functionality
unset AUTO_CD

# Tell antigen that you're done.
antigen apply
