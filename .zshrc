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

## asdf
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

## claude code
export PATH="$HOME/.local/bin:$PATH"

# Customize to your needs...

