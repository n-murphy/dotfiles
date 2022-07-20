### dotfiles (Ubuntu Edition)

#### Introduction

The **ubuntu** branch is where my dotfiles reside for my Ubuntu instances and has been tested using multipass (please see the relavent README.md in the multipass folder).

We are using DotBot to orchestrate the dotfiles configuration and installation of other tools (brew, antidote etc).

##### Links
The install script will first configure the following links:

> - `~/.zsh_plugins.txt` *Used with the zsh plugin manager antidote this is linked to the `antidote_plugins` file*
> - `~/.zshrc` 
> - `~/.zshenv`
> - `~/.gitconfig` *Make sure to edit this file and change the user and email details to match yours*
> - `~/.config/bat` *directory that stores the bat config file*
> - `~/.config/yamllint` *directory that stores the yamllint config file*

##### Create
The install script will next create a `~/work` directory.

##### Shell
Finally the install script will run the following setup scripts:

`./setup_zsh.sh`
> Installs & changes the default shell to `zsh` 

`./setup_ubuntu.sh`
> Runs `apt update` and installs a number of packages. 

`./setup_antidote.zsh`
> Installs the zsh plugin manager `antidote` and applies the plugins specified in the `antidote_plugins` file

`./setup_homebrew.zsh`
> Installs homebrew and proceeds to install the brews specified in the `Brewfile`

`./setup_vscode.zsh`
> Applies the `settings.json` file to the VSCode user configuration directory if it exists and then installs extensions specified in the `vscode_extensions` file. (still somewhat under construction as it does not install VSCode at the moment)

