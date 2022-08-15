
#!/usr/bin/env bash

git_dir=$HOME/git

cd $git_dir
if [ ! -d $git_dir/ksuperkey ]; then
  git clone https://github.com/hanschen/ksuperkey
else
  cd $git_dir/ksuperkey && git pull
fi

if [ "$(lsb_release -s -i)" = "Fedora" ]; then
  sudo dnf install git gcc make libX11-devel libXtst-devel pkgconfig
elif [ "$(lsb_release -s -i)" = "openSUSE" ]; then
  echo 1
fi

cd $git_dir/ksuperkey
make
ln -s $git_dir/ksuperkey/ksuperkey $HOME/.local/bin
