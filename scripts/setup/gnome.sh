#!/usr/bin/env bash

if [ "$(lsb_release -s -i)" = "Fedora" ]; then
  sudo dnf install gnome-tweaks gnome-extensions-app
elif [ "$(lsb_release -s -i)" = "" ]; then
  echo 1
fi
