#!/usr/bin/env bash

git_dir=$HOME/git
icons_dir=$HOME/.local/share/icons

echo -e "\n ***** Icons installation *****\n"

mkdir -p $icons_dir

cd $git_dir
if [ ! -d $git_dir/Win11-icon-theme ]; then
  git clone https://github.com/yeyushengfan258/Win11-icon-theme
else
  cd $git_dir/Win11-icon-theme && git pull
fi

cd $git_dir/Win11-icon-theme
./install.sh -d $HOME/.local/share/icons -c

cd $git_dir
if [ ! -d $git_dir/WhiteSur-cursors ]; then
  git clone https://github.com/vinceliuice/WhiteSur-cursors
else
  cd $git_dir/WhiteSur-cursors && git pull
fi
cd $git_dir/WhiteSur-cursors
./install.sh

echo -e "\n ***** Icons installation done *****\n"
