#!/usr/bin/env bash

git_dir=$HOME/git
themes_dir=$HOME/.local/share/themes

echo -e "\n ***** Themes installation *****\n"

mkdir -p $themes_dir


cd $git_dir
if [ ! -d $git_dir/WhiteSur-gtk-theme ]; then
  git clone https://github.com/vinceliuice/WhiteSur-gtk-theme
else
  cd $git_dir/WhiteSur-gtk-theme && git pull
fi

cd $git_dir/WhiteSur-gtk-theme
./install.sh -d $HOME/.local/share/themes -o normal -P smaller -s 260 -l -N glassy --nord

cd $git_dir
if [ ! -d $git_dir/macOS ]; then
  git clone https://github.com/B00merang-Project/macOS
else
  cd $git_dir/macOS && git pull
fi

cd $git_dir
if [ ! -d $git_dir/macOS-Dark ]; then
  git clone https://github.com/B00merang-Project/macOS-Dark
else
  cd $git_dir/macOS-Dark && git pull
fi

ln -sf $git_dir/macOS $themes_dir
ln -sf $git_dir/macOS-dark $themes_dir

echo -e "\n ***** Themes installation done *****\n"


