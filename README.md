# dotfiles
## how to use
### install
to install the dot files, run bash .bin/install.sh or simply ./.bin/install.sh at dotfiles directory.
it creates symbolic link from the home directory to dotfiles, also apt install make if doesnt exist.

### update local
to update the dot files, run make update.
it does git pull.

### deploy
to deploy, run make deploy.
it recreates symbolic links.

### update remote repository
to update remote repository somehow ( for fixing bugs or adding new features), do as git says.

### initialize
to initialize environments, run make init\_? at dotfiles directory.
it creates several environments:

- init\_u: setup for Ubuntu
- init\_N: setup for N web school(built on Vagrant + Ubuntu 18.04 LTS)
- init\_w: for WSL2 (todo)
- init\_a: for Arch Linux (todo)
- init\_h: help (todo)
