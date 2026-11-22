export ZSH=$HOME/.oh-my-zsh

export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

ZSH_THEME="awesomepanda"

ENABLE_CORRECTION=true

plugins=(
  git
  fzf
  zsh-syntax-highlighting
)

# tmux only in kitty (herdr and other terminals manage sessions themselves)
if [[ -n $KITTY_WINDOW_ID ]]; then
  ZSH_TMUX_AUTOSTART=true
  plugins+=(tmux)
fi

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH=$HOME/bin:$PATH
export PATH=$HOME/go/bin:$PATH

alias cat=batcat
alias vim=nvim
alias vi=nvim

export CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS=1
export PATH="$HOME/.local/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias herdr="herdr-app"
alias hc="herdr-core"
