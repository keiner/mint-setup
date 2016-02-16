#!/bin/sh

sudo apt-get install -y \
	zsh vim git tmux yakuake \
	texlive-full vim-latexsuite vim-addon-manager
sudo apt-get install vim-youcompleteme
sudo apt-get install golang
sudo apt-get install ctags
sudo apt-get install ding
sudo apt-get install usbip
vim-addons install latex-suite
vim-addons install youcompleteme




###Struktur
######WORK
mkdir /home/$USER/work
cd ~work
mkdir go
cd go
mkdir src pkg bin
export GOPATH=$HOME/wok/go
export PATH=$PATH:$GOPATH/bin
go get -u github.com/jstemmer/gotags


#######CONFIG
mkdir /home/$USER/Config
cd ~/Config
git clone https://github.com/keiner/cfg.git
PWD='pwd'
ln -f -s $PWD/cfg/.vimrc ~/.vimrc
ln -f -s $PWD/cfg/.zshrc ~/.zshrc
ln -f -s $PWD/cfg/.aliasrc ~/.aliasesrc
ln -f -s $PWD/cfg/.bashrc ~/.bashrc
ln -f -s $PWD/cfg/.tmux.conf ~/.tmux.conf



###VIM Plugins
mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
gitt clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/scrooloose/nerdcommenter.gi
git clone git://github.com/altercation/vim-colors-solarized.git
git clone https://github.com/majutsushi/tagbar.git
#### ZSH
Sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"





##add ppa
ppa_list=("mozillateam/firefox-next" "numix/ppa" "indicator-multiload/stable-daily")
for ppa in "${ppa_list[@]}"; do
	  if ! grep -q "$ppa" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
		      sudo add-apt-repository -y ppa:$ppa
		        fi
			donemap <C-v> "+p
