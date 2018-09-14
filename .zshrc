# If you come from bash you might have to change your $PATH.
#export PATH=$HOME/bin:/usr/local/bin:$PATH
#export PATH=/usr/local/bin:$PATH
#export PATH=/usr/local/share/python:$PATH
# Path to your oh-my-zsh installation.
export ZSH=/Users/RyanDuan/.oh-my-zsh

#Go
export PATH=$PATH:$(go env GOPATH)/bin
export GOPATH=$HOME/go

#HyperLedger
export PATH=$PWD/bin:$PATH

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  github
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

alias vim="nvim"


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
source ~/.bash_profile


