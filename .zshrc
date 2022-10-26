export ZSH=$HOME/.oh-my-zsh

export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

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

alias python=python3
alias bat=batcat

# make CapsLock behave like Ctrl:
setxkbmap -option ctrl:nocaps

# make short-pressed Ctrl behave like Escape:
xcape -e 'Control_L=Escape' -t 175
