# dotfiles
## how to use
### install
to install the dot files, run bash .bin/install.sh or simply ./.bin/install.sh at dotfiles directory.
it creates symbolic link from the home directory to dotfiles.
### update local (todo)
to update the dot files, run make update.
it does git pull.

### deploy (todo)
to deploy, run make deploy.
it recreates symbolic links.

### update remote repository
to update remote repository somehow ( for fixing bugs or adding new features), do as git says.

### initialize (todo)
to initialize environments, run bash .etc/init.sh at dotfiles directory.
it creates several environments you need with options:
u: setup for Ubuntu
N: setup for N web school(built on Vagrant + Ubuntu 18 LTS)
w: for WSL2
a: for Arch Linux
h: help
