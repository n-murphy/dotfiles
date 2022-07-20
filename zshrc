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

# #############################################################################
# Set variables
# #############################################################################

# Syntax highlighting for man pages
#export MANPAGER="sh -c 'col -bx | bat -l man -p'"

export DOTFILES="${HOME}/github/dotfiles"
export HOMEBREW_BUNDLE_FILE="${DOTFILES}/Brewfile"
export ANTIDOTE_DIR="${HOME}/.config/antidote"

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

# #############################################################################
# Change ZSH options
# #############################################################################

# Adjust History Variables & Options
[[ -z $HISTFILE ]] && HISTFILE="${HOME}/.zsh_history"
HISTSIZE=100000 # Session Memory Limit
SAVEHIST=100000 # File Memory Limit

setopt histNoStore          # Don't store history related functions
setopt extendedHistory      # Save timestamp in the history
setopt histIgnoreAllDups    # Don't add entries to history if they are duplicates
setopt incAppendHistoryTime # Include timing info

# Line Editor Options (Completion, Menu, Directory, etc.)
# autoMenu & autoList are on by default
setopt autoCd               # only need directory name when changing directory
setopt globDots             # lets files beginning with a . be matched without specifying the dot.

# #############################################################################
# Create Aliases
# #############################################################################
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
#alias ls='exa -laFh --git --sort=modified'

# using <<< (here string) which will default to using cat by default unless NULLCMD shell variable is set.
# (F) means we are using a parameter expansion flag to use a return instead of a ':' as the array item separator. 
# lowercase path is the array version of PATH shell variable.
alias trail='<<<${(F)path}'
alias ftrail='<<<${(F)fpath}'

# Load history into shell (shareHistory alternative)
alias lh='fc -RI; echo "loaded and showing..."; history;'

# re-generate the .zsh_plugins.zsh file
alias regen_antidote="antidote bundle < ${HOME}/.zsh_plugins.txt > ${HOME}/.zsh_plugins.zsh"

# #############################################################################
# Customize Prompts
# #############################################################################

#PROMPT='
#%1~ %L %# '
#RPROMPT='%*'

source "$DOTFILES/spaceship_shlvl.zsh"

SPACESHIP_CHAR_SYMBOL="❯ "
SPACESHIP_TIME_SHOW=true
SPACESHIP_EXEC_TIME_ELAPSED=0
SPACESHIP_BATTERY_SHOW=always
SPACESHIP_EXIT_CODE_SHOW=false

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  package       # Package version
  # node          # Node.js section
  exec_time     # Execution time
  line_sep      # Line break
  #shlvl         # Custom section from spaceship_shlvl.zsh
  # vi_mode       # Vi-mode indicator
  # jobs          # Background jobs indicator
  char          # Prompt character
)

SPACESHIP_RPROMPT_ORDER=(
  exit_code
  battery
  time
)

# #############################################################################
# Add locations to path array
# #############################################################################

# tell the shell how to treat the path array in this case we want it to contain unique array items.
typeset -U path

# Add custom locations to the array
path=(
  "/home/linuxbrew/.linuxbrew/bin"
  "/home/linuxbrew/.linuxbrew/sbin"
  $path
)

# tell the shell how to treat the fpath array in this case we want it to contain unique array items.
typeset -U fpath

# Add custom locations to the array
fpath+=( ${ANTIDOTE_DIR}/functions )

# #############################################################################
# Functions
# #############################################################################

function mkcd() {
  mkdir -p "$@" && cd "$_";
}

# #############################################################################
# ZSH Plugins
# #############################################################################
ZSH_AUTOSUGGEST_STRATEGY=(history completion)


# recommended static method of sourcing ANTIDOTE plugins
source ${HOME}/.zsh_plugins.zsh

# ANTIDOTE drop in replacement for antibody
# source ${ANTIDOTE_DIR}/antidote.zsh
# source <(antidote init)
# antidote bundle < "${DOTFILES}/antidote_plugins"

# #############################################################################
# ... surprises!!
# #############################################################################

# Change Key Bindings

# `^[[A` = up arrow
# `^[[B` = down arrow
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Load "New" Completion System and antidote
autoload -Uz compinit && compinit
autoload -Uz antidote
