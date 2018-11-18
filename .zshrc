# If you come from bash you might have to change your $PATH.
#export PATH=$HOME/bin:/usr/local/bin:$PATH
#export PATH=/usr/local/bin:$PATH
#export PATH=/usr/local/share/python:$PATH
# Path to your oh-my-zsh installation.
export ZSH=/Users/RyanDuan/.oh-my-zsh

#Python3.7

#Go
export PATH=$PATH:$(go env GOPATH)/bin
export GOPATH=$HOME/go

#HyperLedger
export PATH=$PWD/bin:$PATH

#Haskell
export PATH="$HOME/Library/Haskell/bin:$PATH"

# Look in ~/$ZSH/themes
#ZSH_THEME="robbyrussell"
export ZSH_THEME="spaceship"
export SPACESHIP_PROMPT_ORDER=(
  #user          # Username section
  #host          # Hostname section
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  exec_time     # Execution time
  line_sep      # Line break
  #jobs          # Backgound jobs indicator
  #char          # Prompt character
)

plugins=(
  git
  github
  zsh-autosuggestions
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


export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
# Add colors to Terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Add colors to Terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
