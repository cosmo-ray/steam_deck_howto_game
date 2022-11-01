#!/bin/sh

AD_URL='https://github.com/0ad-matters/0ad-appimage/releases/download/v0.0.25b-alpha/0ad-0.0.25b-alpha-2210110412-x86_64.AppImage'
AD_APPIMAGE_EXE='./0ad-0.0.25b-alpha-2210110412-x86_64.AppImage'

HC_ZIP="hyrule-conquest.zip"
HC_MOD="hyrule-conquest.pyromod"

if [ ! -f $AD_APPIMAGE_EXE ]; then
    wget --progress=bar:force "$AD_URL" 2>&1 | zenity --title="Downloading 0ad appimage !" --progress --auto-close --auto-kill
    chmod +x $AD_APPIMAGE_EXE
fi

if [ ! -f $HC_MOD ]; then
    if [ ! -f $HC_ZIP ]; then
	zenity --warning --text="Download it at 'https://www.moddb.com/mods/hyrule-conquest'\nthen move it to this directory\nand restart the scrit" --title="$HC_ZIP not found"
	xdg-open "https://www.moddb.com/mods/hyrule-conquest/downloads"
	exit 1
    fi
    zenity --info --text="Extracting hyrule-conquest.zip, this might take a few minutes" --title='unzipping'
    unzip $HC_ZIP
fi

mkdir 0ad-shared/
ln -s $PWD/0ad-shared/ ~/.local/share/0ad

mkdir 0ad-cfg/
ln -s $PWD/0ad-cfg/ ~/.config/0ad

zenity --info --text="0ad mod config window will now start\nenable hyrul conquest there\nthen save config \!\!"  --title='Mostly Done !'

$AD_APPIMAGE_EXE $HC_MOD

zenity --info --text="Installation complete\!\n\nYou can now add 0ad appimage in your steam game library" --title='DONE !!!'
