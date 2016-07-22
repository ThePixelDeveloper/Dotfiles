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
export PATH="$HOME/.npm-packages/bin:$HOME/.node/bin:/usr/local/sbin:$PATH"
export EDITOR=nano

# Dinghy
eval $(dinghy env)

# rbenv
eval "$(rbenv init -)"

# NVM
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

# Turning off functionality
unset AUTO_CD

# Tell antigen that you're done.
antigen apply
