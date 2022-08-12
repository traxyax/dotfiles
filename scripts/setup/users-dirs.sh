#!/usr/bin/env bash

echo -e "\n ***** Set user dirs *****\n"

mkdir -p $HOME/{desktop,downloads,templates,public,documents,music,pictures,videos}
mkdir -p $HOME/downloads/{browser,torrent/part,phone}
mkdir -p $HOME/git
mkdir -p $HOME/.local/bin

rm -rf $HOME/{Bureau,Documents,Images,Modèles,Musique,Téléchargements,Public,Vidéos}

xdg-user-dirs-update --set DESKTOP $HOME/desktop
xdg-user-dirs-update --set DOWNLOAD $HOME/downloads
xdg-user-dirs-update --set TEMPLATES $HOME/templates
xdg-user-dirs-update --set PUBLICSHARE $HOME/public
xdg-user-dirs-update --set DOCUMENTS $HOME/documents
xdg-user-dirs-update --set MUSIC $HOME/music
xdg-user-dirs-update --set PICTURES $HOME/pictures
xdg-user-dirs-update --set VIDEOS $HOME/videos

xdg-user-dirs-update

echo -e "\n ***** User dirs set done *****\n"
