#!/bin/sh

sudo apt install -y \
	wine-stable


sudo dpkg --add-architecture i386
wget -nc https://repos.wine-staging.com/wine/Release.key
sudo apt-key add Release.key

# For Debian Jessie this one:
sudo echo "deb https://dl.winehq.org/wine-builds/debian/ jessie main" >> /etc/apt/sources.list

sudo aptupdate

sudo apt install -y
	winehq-staging \
	winetricks\
	ttf-mscorefonts-installer

winetricks \
	 directplay \
	 corefonts



