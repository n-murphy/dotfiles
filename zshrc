# Welcome message:

cat <<EOF
 _____    _
|__  /___| |__  _ __ ___
  / // __| '_ \| '__/ __|
 / /_\__ \ | | | | | (__
/____|___/_| |_|_|  \___|
running .zshrc in interactive shell.
Shell level is $SHLVL
EOF

# Set variables
# Syntax highlighting for man pages
#export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# disable gatekeeper for apps installed via brew
export HOMEBREW_CASK_OPTS="--no-quarantine"

# change exa colours for the permission bit run `man exa_colors` for details
# in this example:
# ur(user read) is set to 4(underline);33(yellow)
# uw(user write) is set to 4(underline);31(red)
# ux(user execute) is set to 4(underline);32(green)
# gw(group write) is set to 31(red)
# tw(other write) is set to 31(red)
export EXA_COLORS="ur=4;33:uw=4;31:ux=4;32:gw=31:tw=31"

# For heredoc (<<) and here string (<<<) cat is the default command to use if not specified.
# This can be changed by setting the NULLCMD shell variable.
# The following will mean that the alias called trail below for displaying the path variable 
# will now use bat instead of cat.
# export NULLCMD=bat

# variables needed for the n tool for managing node versions. See https://github.com/tj/n for details.
export N_PREFIX="${HOME}/.n"
export PREFIX="${N_PREFIX}"


# Change ZSH options

# Create Aliases
alias man=batman

# ls command options used
# -l = List in long format
# -A = List all entries except for . and ...
# -F =Display file kind indicators next to file names e.g. / for a directory and * for an executable.
# -h = human readable UOM for file sizes
alias ll='command ls -lAFh'

# exa command options used
# -l = List in long format
# -a = Show hidden and "dot" files.
# -F = Display file kind indicators next to file names
# -h =  Add a header row to each column
# --git = List each file's Git status, if tracked
# --sort=modified = sort by modified time asc.
alias exa='exa -laFh --git --sort=modified'
alias ls='exa -laFh --git --sort=modified'
alias u='cd /Users/noel.murphy/github/sb-devops-personal ; git commit -am "supplemental update $(date)" ; git push ; cd -'

# using <<< (here string) which will default to using cat by default unless NULLCMD shell variable is set.
# (F) means we are using a parameter expansion flag to use a return instead of a ':' as the array item separator. 
# lowercase path is the array version of PATH shell variable.
alias trail='<<<${(F)path}'

# Customize Prompts
PROMPT='
%1~ %L %# '

RPROMPT='%*'

# Add locations to $PATH variable
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$PATH:${N_PREFIX}/bin"

# Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

# ZSH Plugins


# ... surprises!!
