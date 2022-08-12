#!/usr/bin/env bash

git_dir=$HOME/git
if [ "$(lsb_release -s -i)" = "Fedora" ]; then
  sudo dnf install zsh zsh-autosuggestions zsh-syntax-highlighting
elif [ "$(lsb_release -s -i)" = "" ]; then
  echo 1
fi

cd $git_dir
if [ ! -d $git_dir/powerlevel10k ]; then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git
else
  cd $git_dir/powerlevel10k && git pull
fi

sudo sudo chsh -s /bin/zsh $USERs
