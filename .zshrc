# Path to my oh-my-zsh installation.
export ZSH=/Users/ryanduan/.oh-my-zsh

#Go
export PATH=$PATH:$(go env GOPATH)/bin
export GOPATH=$HOME/go

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

DOGGIEMANAGE="$HOME/project/doggie-server/doggieserver/manage.py"

# Look in ~/$ZSH/themes

export ZSH_THEME="spaceship"

export SPACESHIP_PROMPT_ORDER=(
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  exec_time     # Execution time
  line_sep      # Line break
  char          # Prompt character   
)

# You can use this to just put in fun non-ASCII characters instead of an arrow
#SPACESHIP_CHAR_SYMBOL='ヽ༼ຈل͜ຈ༽ﾉ '
SPACESHIP_CHAR_COLOR_FAILURE='green'
SPACESHIP_DIR_COLOR='068'

plugins=(
  git
  github
  zsh-autosuggestions
  virtualenv
  zsh-syntax-highlighting
)

# Automatically ls after doing cd
chpwd() {
  ls
}

alias vim="nvim"
alias ddu="docker-compose up"
alias ddd="docker-compose down"
alias ca="code ."
alias sftp="with-readline sftp"
alias gcoa="git checkout -- ."
alias dr="python3 $DOGGIEMANAGE runserver"
alias dmm="python3 $DOGGIEMANAGE makemigrations"
alias dm="python3 $DOGGIEMANAGE migrate"
alias act="source $HOME/project/doggie-server/bin/activate && echo venv activated"

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# --files: List files that would be searched but do not search
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!{.git/*,vendor/*}"'
export FZF_DEFAULT_OPTS="--preview 'head -100 {}' --reverse --height 40%"
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS
bindkey '^I' $fzf_default_completion

# Add colors to Terminal
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
