cat <<EOF
 _____    _
|__  /___| |__   ___ _ ____   __
  / // __| '_ \ / _ \ '_ \ \ / /
 / /_\__ \ | | |  __/ | | \ V /
/____|___/_| |_|\___|_| |_|\_/
running .zshenv in non-interactive shell.
Shell level is $SHLVL
EOF



##
## functions
##

function exists() {
  command -v $1 >/dev/null 2>&1
}
