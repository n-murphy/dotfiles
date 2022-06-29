# Welcome message:

cat <<EOF
   _________  _   _ 
  |__  / ___|| | | |
    / /\___ \| |_| |
 _ / /_ ___) |  _  |
(_)____|____/|_| |_|
EOF

# Set variables

# Change ZSH options

# Create Aliases
alias ll='ls -lAFh'
alias u='cd /Users/noel.murphy/github/sb-devops-personal ; git commit -am "supplemental update $(date)" ; git push ; cd -'

# Customize Prompts
PROMPT='
%1~ %L %# '

RPROMPT='%*'

# Add locations to $PATH variable

# Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

# ZSH Plugins


# ... surprises!!
