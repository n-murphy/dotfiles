# Ubuntu dotfiles

Tasks
=====
- [ ] Ubuntu:
  - [x] Create an Ubuntu branch in the dotfiles repository [**Done**]
  - [x] Create a `setup_zsh.sh` script to install and configure zsh on ubuntu [**Done**] 
  - [x] Create a `remove_zsh.sh` script for removing zsh (for testing purposes) [**Done**] 
  - [x] Install multipass and create an instance for testing out the zsh install script [**Done**] {}





#### Multipass

```bash
multipass launch --name lts --cpus 2 --mem 4G --disk 5G --cloud-init ./cloud-init.yaml focal
```