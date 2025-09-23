#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

## sheldon
eval "$(sheldon source)"

## alias
abbrev-alias k='kubectl'
abbrev-alias g='git'
abbrev-alias gc='git checkout'
abbrev-alias ga='git add -A'
abbrev-alias gcm='git commit -m'
abbrev-alias dc='docker compose'

## asdf
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

## claude code
export PATH="$HOME/.local/bin:$PATH"

## krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# Customize to your needs...

