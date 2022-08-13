#!/usr/bin/env bash

if [ "$(lsb_release -s -i)" = "Fedora" ]; then
  sudo dnf install tlp tlp-rdw htop neofetch ufw ncdu vim neovim

  sudo systemctl enable tlp ufw
  sudo systemctl start tlp ufw
elif [ "$(lsb_release -s -i)" = "openSUSE" ]; then
  sudo zypper install htop neofetch ncdu vim neovim
fi

sudo sed -i 's/#DISK_DEVICES="nvme0n1 sda"/DISK_DEVICES="nvme0n1"/' /etc/tlp.conf

