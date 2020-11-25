#!/bin/bash

#git install
sudo apt update
echo "install git..."
sudo apt install -y git

echo "configure git..."
git config --global core.excludesfile ~/.gitignore_global

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

chsh -s "$(sudo which zsh)"
## password inquired

#echo "restart shell..."
#exec $SHELL -l

#nvm
echo "install nvm..."

curl=`cat <<EOS curl -o- [https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh](https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh)
EOS`
eval ${curl}

#echo "restart shell..."
#exec $SHELL -l

## if nvm goes wrong, shell should be restarted before the 2 below
nvm install v10.14.2
nvm use v10.14.2

#yarn
echo "install yarn..."
curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version 1.21.1
#echo "restart shell..."
#exec $SHELL -l

#postgreSQL
sudo apt update
echo "install postgres..."
sudo apt install -y postgresql-10
#sudo su - postgres
#psql
#alter role postgres with password 'postgres';
#\q
#exit

echo "installation completed. please restart shell by 'exec \$SHELL -l'"

