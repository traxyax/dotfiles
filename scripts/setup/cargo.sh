#!/usr/bin/env bash

if [ "$(lsb_release -s -i)" = "Fedora" ]; then
  sudo dnf install rust cargo
elif [ "$(lsb_release -s -i)" = "" ]; then
  sudo zypper install rust cargo
fi

