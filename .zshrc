#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

## alias
alias k=kubectl

## asdf
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

## claude code
export PATH="$HOME/.local/bin:$PATH"

# Customize to your needs...

