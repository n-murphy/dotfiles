### dotfiles (Mac Edition)

#### Introduction

The **main** branch is where my dotfiles reside for my Macbook Pro. Switch to the [ubuntu](https://github.com/n-murphy/dotfiles/tree/ubuntu) branch for my take on configuring dot files for Ubuntu.

Kudos to **Patrick McDonald** and check out [his course on Udemy](https://www.udemy.com/course/dotfiles-from-start-to-finish-ish/?referralCode=445BE0B541C48FE85276) which these dotfile are based.

> Please note however that I deviated and made changes based on my preferences and the way I work. 

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

`./setup_antidote.zsh`
> Installs the zsh plugin manager `antidote` and applies the plugins specified in the `antidote_plugins` file

`./setup_homebrew.zsh`
> Installs homebrew and proceeds to install the brews specified in the `Brewfile`

`./setup_node.sh`
> Installs  `node` (lts) and `npm` using the node version manager `n` and installs some node packages (I'm not installing any packages here at the moment as I don't use node that much). The `n` node version manager itself is installed via homebrew in the `setup_homebrew.zsh` script via the `brew bundle` command. 

`./setup_iterm2.sh`
> Runs `defaults` to set a custom folder for loading preferences from file.


`./setup_vscode.zsh`
> Applies the `settings.json` file to the VSCode user configuration directory if it exists and then installs extensions specified in the `vscode_extensions` file. VSCode itself is installed via homebrew in the `setup_homebrew.zsh` script via the `brew bundle` command.