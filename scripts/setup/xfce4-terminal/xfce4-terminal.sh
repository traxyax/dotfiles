#!/usr/bin/env bash

git_dir=$HOME/git
colorschemes_dir=$HOME/.local/share/xfce4/terminal/colorschemes


mkdir -p $colorschemes_dir

if [ "$(lsb_release -s -i)" = "Fedora" ]; then
  sudo dnf install xfce4-terminal
elif [ "$(lsb_release -s -i)" = "openSUSE" ]; then
  sudo zypper install xfce4-terminal
fi

ln -sf $(pwd)/onedark.theme $colorschemes_dir

cd $git_dir
if [ ! -d $git_dir/nord-xfce-terminal ]; then
  git clone https://github.com/arcticicestudio/nord-xfce-terminal
else
  cd $git_dir/nord-xfce-terminal && git pull
fi

ln -sf $git_dir/nord-xfce-terminal/src/nord.theme $colorschemes_dir



