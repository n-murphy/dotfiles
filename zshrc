# Welcome message:

cat <<EOF
   _________  _   _ 
  |__  / ___|| | | |
    / /\___ \| |_| |
 _ / /_ ___) |  _  |
(_)____|____/|_| |_|
EOF

# Set variables
# Syntax highlighting for man pages
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"

# Change ZSH options

# Create Aliases
alias ll='command ls -lAFh'
alias exa='exa -laFh --git'
alias ls='exa -laFh --git'
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
