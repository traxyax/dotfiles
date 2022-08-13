#!/usr/bin/env bash

sudo sed -i \
	-e 's/# %wheel ALL=(ALL:ALL) ALL/%wheel ALL=(ALL:ALL) ALL/' \
	-e 's/Defaults targetpw/# Defaults targetpw/' \
	-e 's/ALL ALL=(ALL) ALL/# ALL ALL=(ALL) ALL/' \
	/etc/sudoers

sudo gpasswd -a $USER wheel
