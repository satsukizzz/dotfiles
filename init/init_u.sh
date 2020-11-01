##!/bin/bash

#git install
sudo apt update
echo "install git..."
sudo apt install -y git

#github cli install
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages
sudo apt update
sudo apt install -y gh

#language install
sudo locale-gen ja_JP.UTF-8

#set date
sudo timedatectl set-timezone Asia/Tokyo

#apache2
sudo apt install -y apache2

#php
sudo apt install -y php, php-xdebug, composer

#zsh
sudo apt update
echo "install zsh..."
sudo apt-get install -y zsh 

#prezto
echo "install prezto..."
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
###### prezto dotfiles already exists
#setopt EXTENDED_GLOB
#for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
#  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
#done

chsh -s "$(sudo which zsh)"
## password inquired

#echo "restart shell..."
#exec $SHELL -l

echo "installation completed. please restart shell by 'exec \$SHELL -l'"

