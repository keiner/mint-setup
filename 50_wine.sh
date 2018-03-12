#!/bin/sh

sudo dpkg --add-architecture i386
wget -nc https://repos.wine-staging.com/wine/Release.key
sudo apt-key add Release.key

echo  "chose release"
select name in wheezy jessie strech buster sid
do 
	case $name in
		wheezy)
			RELEASE=wheezy
			break
			;;
		jessie)
			RELEASE=jessie
			break
			;;
		strech)
			RELEASE=strech
			break
			;;
		buster)
			RELEASE=buster
			break
			;;
		sid)
			RELEASE=sid
			break
			;;
	esac
done

sudo echo "deb https://dl.winehq.org/wine-builds/debian/ "$RELEASE" main" >> /etc/apt/sources.list

sudo apt update

sudo apt install -y
	winehq-staging \
	winetricks \
	ttf-mscorefonts-installer

winetricks \
	 directplay \
	 corefonts

echo" winecfg wird gestartet. bitte warten..."
winecfg

