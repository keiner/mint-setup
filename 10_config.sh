#!/bin/sh
###OH-MY-ZSH
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
###allow shutdown
sudo chmod +s /sbin/shutdown 
sudo chmod +s /sbin/reboot
###make it zsh :)
sudo chsh -s /bin/zsh
###make guake autostart
sudo cp /usr/share/applications/guake.desktop /etc/xdg/autostart/
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
