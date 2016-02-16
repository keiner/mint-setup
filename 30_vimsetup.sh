#!/bin/sh

#### VIM install
sudo apt-get install -y
	vim \
	vim-latexsuite \
	vim-addon-manager \
	vim-youcompleteme \

vim-addons install latex-suite
vim-addons install youcompleteme

###VIM Plugins
mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
gitt clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/scrooloose/nerdcommenter.gi
git clone git://github.com/altercation/vim-colors-solarized.git
git clone https://github.com/majutsushi/tagbar.git


