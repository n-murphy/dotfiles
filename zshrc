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

# Change ZSH options

# Create Aliases
alias man=batman
alias ll='command ls -lAFh'
alias exa='exa -laFh --git --sort=modified'
alias ls='exa -laFh --git --sort=modified'
alias u='cd /Users/noel.murphy/github/sb-devops-personal ; git commit -am "supplemental update $(date)" ; git push ; cd -'

# Customize Prompts
PROMPT='
%1~ %L %# '

RPROMPT='%*'

# Add locations to $PATH variable
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

# ZSH Plugins


# ... surprises!!
