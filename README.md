# dotfiles
## how to use
### install
to install the dot files, run `bash install.sh` or simply `./install.sh` at dotfiles directory.
it creates symbolic link from the home directory to dotfiles, also apt install make if doesnt exist.

### update local
to update the dot files, run `make update`.
it does git pull.

### deploy
to deploy, run `make deploy`.
it recreates symbolic links.

### update remote repository
to update remote repository somehow ( for fixing bugs or adding new features), do as git says.

### initialize
to initialize environments, run `make init_?` at dotfiles directory.
it creates several environments:

- `make init_u`: setup for Ubuntu
- `make init_N`: setup for N web school(built on Vagrant + Ubuntu 18.04 LTS)
- `make init_c`: setup for CentOS
- `make init_w`: for WSL2 (todo)
- `make init_a`: for Arch Linux (todo)
- `make init_h`: help (todo)
