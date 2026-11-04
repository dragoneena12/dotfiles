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

# ssh-agentに鍵を追加
ssh-add > /dev/null 2>&1

# GOBIN
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

# history
SAVEHIST=10000
setopt append_history
setopt share_history

## direnv
eval "$(direnv hook zsh)"

## LastPass CLI: ログインを12時間保つ（既定は1時間）。lpass login の時点で読まれる
export LPASS_AGENT_TIMEOUT=43200

# Customize to your needs...
