##!/bin/bash

#git install
sudo apt update
echo "install git..."
sudo apt install -y git

#language install
sudo locale-gen ja_JP.UTF-8

#set date
sudo timedatectl set-timezone Asia/Tokyo

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

chsh -s "$(which zsh)"
## password inquired

#echo "restart shell..."
#exec $SHELL -l

echo "installation completed. please restart shell by 'exec \$SHELL -l'"

