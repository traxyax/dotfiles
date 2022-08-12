#!/usr/bin/env bash

git_dir=$HOME/git

if [ "$(lsb_release -s -i)" = "Fedora" ]; then
  sudo dnf install gnome-terminal
elif [ "$(lsb_release -s -i)" = "" ]; then
  echo 1
fi

cd $git_dir
[ ! -d $git_dir/nord-gnome-terminal ] && git clone https://github.com/arcticicestudio/nord-gnome-terminal.git
cd $git_dir/nord-gnome-terminal/src
./nord.sh 
