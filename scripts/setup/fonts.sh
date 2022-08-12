#!/usr/bin/env bash

fonts_dir=$HOME/.local/share/fonts

jet_mono_ver=2.242
jet_mono_url=https://github.com/JetBrains/JetBrainsMono/releases/download/v$jet_mono_ver/JetBrainsMono-$jet_mono_ver.zip


nerd_fonts_ver=v2.1.0
nerd_fonts_url=https://github.com/ryanoasis/nerd-fonts/releases/download/$nerd_fonts_ver

echo -e "\n ***** Fonts installation *****\n"

mkdir -p $fonts_dir

cd $fonts_dir

[ ! -d $fonts_dir/$jet_mono_url ] && wget $jet_mono_url

[ ! -d $fonts_dir/JetBrainsMono.zip ] && wget $nerd_fonts_url/JetBrainsMono.zip
[ ! -d $fonts_dir/Monofur.zip ] && wget $nerd_fonts_url/Monofur.zip
[ ! -d $fonts_dir/Agave.zip ] && wget $nerd_fonts_url/Agave.zip

ls *.zip | xargs -i unzip {} 

rm -rf *.zip

echo -e "\n ***** Fonts installation done *****\n"
