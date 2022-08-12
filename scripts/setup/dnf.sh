#!/usr/bin/env bash

dnf_conf=/etc/dnf/dnf.conf

if [ -f $dnf_conf ]; then
	[ $(grep 'fastestmirror' $dnf_conf | wc -l) = 0 ] && (echo 'fastestmirror=True' | sudo tee -a $dnf_conf > /dev/null)
	[ $(grep 'max_parallel_downloads' $dnf_conf | wc -l) = 0 ] && (echo 'max_parallel_downloads=5' | sudo tee -a $dnf_conf > /dev/null)
fi
