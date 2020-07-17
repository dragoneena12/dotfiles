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
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# pipのパス on mac
if [ "$(uname)" == 'Darwin' ]; then
  export PATH=$PATH:$HOME/Library/Python/3.7/lib/python/site-packages
