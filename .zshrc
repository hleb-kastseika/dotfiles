export ZSH=$HOME/.oh-my-zsh

export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

ZSH_THEME="awesomepanda"

ENABLE_CORRECTION=true

ZSH_TMUX_AUTOSTART=true

plugins=(
  git
  tmux
  fzf
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH=$HOME/bin:$PATH
export PATH=$HOME/go/bin:$PATH

alias cat=batcat
alias vim=nvim
alias vi=nvim

export CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS=1
