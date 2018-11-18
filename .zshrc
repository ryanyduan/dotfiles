# Path to my oh-my-zsh installation.
export ZSH=/Users/RyanDuan/.oh-my-zsh

#Go
export PATH=$PATH:$(go env GOPATH)/bin
export GOPATH=$HOME/go

#HyperLedger
export PATH=$PWD/bin:$PATH

#Haskell
export PATH="$HOME/Library/Haskell/bin:$PATH"

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
  zsh-syntax-highlighting
)

# Automatically ls after doing cd
chpwd() {
  ls
}

alias vim="nvim"

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
export LSCOLORS=GxFxCxDxBxegedabagaced
