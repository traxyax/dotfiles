
#!/usr/bin/env bash

if [ "$(lsb_release -s -i)" = "Fedora" ]; then
  sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
  sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
  sudo dnf install brave-browser
elif [ "$(lsb_release -s -i)" = "openSUSE" ]; then
  echo 1
  #sudo zypper install brave-browser
fi
