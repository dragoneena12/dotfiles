#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

#if [[ ! -n $TMUX && $- == *l* ]]; then
#  # get the IDs
#  ID="`tmux list-sessions`"
#  if [[ -z "$ID" ]]; then
#    tmux new-session
#  fi
#  create_new_session="Create New Session"
#  ID="$ID\n${create_new_session}:"
#  ID="`echo $ID | $PERCOL | cut -d: -f1`"
#  if [[ "$ID" = "${create_new_session}" ]]; then
#    tmux new-session
#  elif [[ -n "$ID" ]]; then
#    tmux attach-session -t "$ID"
#  else
#    :  # Start terminal normally
#  fi
#fi

# tmux launch
#count=`ps aux | grep tmux | grep -v grep | wc -l`
#if test $count -eq 0; then
#    echo `tmux`
#elif test $count -eq 1; then
#    echo `tmux a`
#fi

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# brew じゃない
fpath=(~/.zsh/completion $fpath)

# 補完機能有効にする
autoload -U compinit
compinit -u

# 補完候補に色つける
autoload -U colors
colors
zstyle ':completion:*' list-colors "${LS_COLORS}"

# 単語の入力途中でもTab補完を有効化
setopt complete_in_word
# 補完候補をハイライト
zstyle ':completion:*:default' menu select=1
# キャッシュの利用による補完の高速化
zstyle ':completion::complete:*' use-cache true
# 大文字、小文字を区別せず補完する
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# 補完リストの表示間隔を狭くする
setopt list_packed

# コマンドの打ち間違いを指摘してくれる
setopt correct
SPROMPT="correct: $RED%R$DEFAULT -> $GREEN%r$DEFAULT ? [Yes/No/Abort/Edit] => "

# python環境切り替え
# pipenv shell ~/.pipenv

alias python="python3"
alias pip="pip3"
export PATH=$PATH:~/.local/bin
export PATH=$PATH:/usr/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export GPG_TTY=$(tty) #GPG

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

# pipのパス on mac
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"

#export VAGRANT_WSL_WINDOWS_ACCESS_USER="tyout"
export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"
#/mnt/c/[任意のDir名]でもOK
#export VAGRANT_WSL_WINDOWS_ACCESS_USER_HOME_PATH="/mnt/c/vagrant"
export PATH="$PATH:/mnt/c/Program Files/Oracle/VirtualBox"
#export PATH="$PATH:/mnt/c/Windows/System32/"
#export PATH="$PATH:/mnt/c/Windows/System32/WindowsPowerShell/v1.0/"
export KUBECONFIG="/home/lapi/programs/kubespray/kubeconfig/kubespray-do.conf"
source <(kubectl completion zsh)
source $HOME/.cargo/env
