#!/usr/bin/env bash

pam_conf=/etc/pam.d
howdy_conf=/usr/lib64/security/howdy
permission="iauth       sufficient   pam_python.so $howdy_conf/pam.py"

echo -e "\n ***** HOWDY INSTALLATION ******\n"

if [ "$(lsb_release -s -i)" = "Fedora" ]; then

  sudo dnf copr enable principis/howdy
  sudo dnf --refresh install howdy

  sudo sed -i \
	  -e 's/no_confirmation = false/no_confirmation = true/' \
	  -e 's/timeout = 4/timeout = 5/' \
  	  -e 's/device_path = none/device_path = \/dev\/video2/' \
	  -e 's/dark_threshold = 50/dark_threshold = 100/' \
	  $howdy_conf/config.ini
  
  if [ $(grep 'howdy' $pam_conf/system-auth | wc -l) = 0 ]; then
    sudo sed -i "5$permission" $pam_conf/system-auth
  fi
  
  if [ -f $pam_conf/gdm_password ] && [ $(grep 'howdy' $pam_conf/gdm-password | wc -l) = 0 ]; then
    sudo sed -i "2$permission" $pam_conf/gdm-password
  fi
  
  if [ -f $pam_conf/lightdm ] && [ $(grep 'howdy' $pam_conf/lightdm | wc -l) = 0 ]; then
    sudo sed -i "2$permission" $pam_conf/lightdm
  fi
  
  #sudo chmod o+x $howdy_conf/dlib-data
  checkmodule -M -m -o howdy.mod howdy.te
  semodule_package -o howdy.pp -m howdy.mod
  sudo semodule -i howdy.pp

  # Fix polkit
  #sudo cp pam.py $howdy_conf

elif [ "$(lsb_release -s -i)" = "openSUSE" ]; then
#  sudo zypper addrepo --refresh http://download.opensuse.org/repositories/home:/dmafanasyev/openSUSE_Tumbleweed/ dmafanasyev
#  sudo zypper addrepo https://download.opensuse.org/repositories/openSUSE:Factory/standard/openSUSE:Factory.repo
  sudo zypper refresh
  sudo zypper install python-python-pam
  sudo zypper install howdy
fi

echo -e "\n ***** HOWDY INSTALLATION DONE ******\n"
  
echo -e "\n EXECUTE:\t sudo howdy -U $USER add \n" 


