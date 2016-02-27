#!/bin/sh

sudo apt-get install -y \
	htop\
	golang \
	ctags \
	ding \
	trans-de-en\
	gparted\
	usbip 


###Struktur
mkdir /home/$USER/work
cd ~work
mkdir go
cd go
mkdir src pkg bin
export GOPATH=$HOME/wok/go
export PATH=$PATH:$GOPATH/bin
go get -u github.com/jstemmer/gotags

##add ppa
ppa_list=("mozillateam/firefox-next" "numix/ppa" "indicator-multiload/stable-daily")
for ppa in "${ppa_list[@]}"; do
	  if ! grep -q "$ppa" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
		      sudo add-apt-repository -y ppa:$ppa
		        fi
			donemap <C-v> "+p
