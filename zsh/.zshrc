export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

ENABLE_CORRECTION="true"

ZSH_TMUX_AUTOSTART=true

plugins=(
  git
  tmux
  fzf
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
