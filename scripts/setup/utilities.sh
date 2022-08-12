#!/usr/bin/env bash

if [ "$(lsb_release -s -i)" = "Fedora" ]; then
  sudo dnf install tlp tlp-rdw htop neofetch bat lsd ufw ncdu 
elif [ "$(lsb_release -s -i)" = "" ]; then
  echo 1
fi

sudo sed -i 's/#DISK_DEVICES="nvme0n1 sda"/DISK_DEVICES="nvme0n1"/' /etc/tlp.conf

sudo systemctl enable tlp ufw
sudo systemctl start tlp ufw
