#!/bin/sh

sudo apt-get install -y \
	zsh \
	guake\
	tmux

###OH-MY-ZSH
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sudo chmod +s /sbin/shutdown 


sudo chsh $USER
