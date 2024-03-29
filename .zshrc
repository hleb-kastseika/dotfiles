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

export PATH=/home/hleb/bin:$PATH

[[ -e "/home/hleb/lib/oracle-cli/lib/python3.9/site-packages/oci_cli/bin/oci_autocomplete.sh" ]] && source "/home/hleb/lib/oracle-cli/lib/python3.9/site-packages/oci_cli/bin/oci_autocomplete.sh"