#!/bin/sh

#Install vim from source
#before starting make sure u uninstall all preinstalled vim stuff

#First, install all the prerequisite libraries
sudo apt install -y \
	libncurses5-dev libgnome2-dev libgnomeui-dev \
	libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
	libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
	python3-dev ruby-dev lua5.1 lua5.1-dev libperl-dev git \
	checkinstall


#clone the sourcecode
mkdir -p ~/work/source
cd ~/work/source
git clone https://github.com/vim/vim.git
#configure it
cd vim
./configure --with-features=huge \
	--enable-multibyte \
	--enable-rubyinterp=yes \
	--enable-pythoninterp=yes \
	--with-python-config-dir=/usr/lib/python2.7/config \
	--enable-python3interp=no\
	--with-python3-config-dir=/usr/lib/python3.5/config \
	--enable-perlinterp=yes \
	--enable-luainterp=yes \
	--enable-gui=gtk2 \
	--enable-cscope \
	--prefix=/usr/local
make VIMRUNTIMEDIR=/usr/local/share/vim/vim80
#for later easy uninstall use checkinstall
sudo checkinstall
#install vim on ur system
sudo make install

#Set vim as ur default editor
sudo update-alternatives --install /usr/bin/editor editor /usr/local/bin/vim 1
sudo update-alternatives --set editor /usr/local/bin/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/local/bin/vim 1
sudo update-alternatives --set vi /usr/local/bin/vim

#now start vim and use :PluginInstall
#to install YCM-core do
cd ~/.vim/bundle/YouCompleteMe
./install.py --all
