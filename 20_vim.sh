#!/bin/bash

select aktion in "install vim" "install latex" "vim plugins"
do
	case $aktion in
		"install vim")
			sudo apt-get install -y\
				vim\
				vim-addon-manager\
				vim-youcompleteme
				ln -f -s /home/$USER/cfg/.vimrc ~/.vimrc
		;;
		"vim plugins"
				vim-addons install latex-suite
				vim-addons install youcompleteme

				###VIM Plugins
				mkdir -p ~/.vim/bundle
				cd ~/.vim/bundle
				git clone https://github.com/scrooloose/nerdtree.git
				git clone https://github.com/scrooloose/nerdcommenter.git
				git clone git://github.com/altercation/vim-colors-solarized.git
				git clone https://github.com/majutsushi/tagbar.git
		;;
		"install latex"
			sudo apt-get install-y\
				texlive-full\
				vim- latexsuite


esac
done

