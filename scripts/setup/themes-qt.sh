#!/usr/bin/env bash

git_dir=$HOME/git
themes_dir=$HOME/.local/share/themes

if [ "$(lsb_release -s -i)" = "Fedora" ]; then
  sudo dnf install qt5ct kvantum
elif [ "$(lsb_release -s -i)" = "openSUSE" ]; then
  sudo zypper install qt5ct kvantum-manager
fi

: '
cd $git_dir
if [ ! -d $git_dir/Win11OS-kde ]; then
  git clone https://github.com/yeyushengfan258/Win11OS-kde
else
  cd $git_dir/Win11OS-kde && git pull
fi

cd $git_dir/Win11OS-kde
./install.sh
'

cd $git_dir
if [ ! -d $git_dir/Win11OS-kde ]; then
  git clone https://github.com/vinceliuice/WhiteSur-kde
else
  cd $git_dir/WhiteSur-kde && git pull
fi

cd $git_dir/WhiteSur-kde
./install.sh

