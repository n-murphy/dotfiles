# Ubuntu dotfiles

Tasks
=====
- [ ] Ubuntu:
  - [x] Create an Ubuntu branch in the dotfiles repository [**Done**]
  - [x] Create a `setup_zsh.sh` script to install and configure zsh on ubuntu [**Done**] 
  - [x] Create a `remove_zsh.sh` script for removing zsh (for testing purposes) [**Done**] 
  - [x] Install multipass and create an instance for testing out the zsh install script [**Done**] {}
  - [x] Refactor the zsh dot files for ubuntu [**Done**]
  - [x] Look into using brew on ubuntu [**Done**]
  - [x] Add user password for ubuntu user on cloud-init file [**Done**]
  - [ ] Add zsh plugin manager (maybe antidote) [*WIP*]
  - [ ] Add deb packages (e.g. VSCode) [TODO]





#### Multipass

```bash
multipass launch --name cleanlts --cpus 2 --mem 3G --disk 8G --cloud-init ./cloud-init.yaml focal
```