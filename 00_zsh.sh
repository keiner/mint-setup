#!/bin/sh

sudo apt-get install -y \
	zsh \
	yakuake \
	tmux

###OH-MY-ZSH
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


sudo chsh $USER
