#!/usr/bin/env bash

git_dir=$HOME/git
if [ "$(lsb_release -s -i)" = "Fedora" ]; then
  sudo dnf install zsh zsh-autosuggestions zsh-syntax-highlighting
elif [ "$(lsb_release -s -i)" = "openSUSE" ]; then
  sudo zypper addrepo https://download.opensuse.org/repositories/shells:zsh-users:zsh-autosuggestions/openSUSE_Tumbleweed/shells:zsh-users:zsh-autosuggestions.repo
  sudo zypper addrepo https://download.opensuse.org/repositories/shells:zsh-users:zsh-syntax-highlighting/openSUSE_Tumbleweed/shells:zsh-users:zsh-syntax-highlighting.repo
  sudo zypper refresh
  sudo zypper install zsh zsh-autosuggestions zsh-syntax-highlighting
fi

cd $git_dir
if [ ! -d $git_dir/powerlevel10k ]; then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git
else
  cd $git_dir/powerlevel10k && git pull
fi

sudo chsh -s /bin/zsh $USER
