#/bin/bash

# Variables
backup=~/dotfiles_backup
dir=$(pwd)
dotfiles="
.zshrc
.config/nvim"

# Backup
mkdir -p $backup
echo "Backup dir: $backup\n"

for dotfile in $dotfiles; do
  # move backups
  [[ -h ~/$dotfile ]] && unlink ~/$dotfile
	if [[ -f ~/$dotfile ]]; then
    mv ~/$dotfile $backup/$dotfile
    echo "Current $dotfile moved to: $backup/$dotfile"
  fi

  # make symlinks
  [[ -d $dotfile ]] && mkdir -p ~/$(dirname $dotfile)
  ln -s $dir/$dotfile ~/$dotfile
	echo "Symbloic link for ~/$dotfile"
done
