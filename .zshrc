export ZSH=/Users/proudcloud/.oh-my-zsh

ZSH_THEME="cloud"

export UPDATE_ZSH_DAYS=7

ENABLE_CORRECTION="true"

HIST_STAMPS="yyyy-mm-dd"

plugins=(
  git
  ssh
)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
