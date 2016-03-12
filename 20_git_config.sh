#!/bin/sh

sudo apt-get install -y
	git

######CONFIG
mkdir -p /home/$USER/cfg
cd ~
git clone https://github.com/keiner/cfg.git
ln -f -s /home/$USER/cfg/.vimrc ~/.vimrc
ln -f -s /home/$USER/cfg/.zshrc ~/.zshrc
ln -f -s /home/$USER/cfg/.aliasesrc ~/.aliasesrc
ln -f -s /home/$USER/cfg/.bashrc ~/.bashrc
ln -f -s /home/$USER/cfg/.tmux.conf ~/.tmux.conf
ln -f -s /home/$USER/cfg/.vimperatorrc ~/.vimperatorrc

