export ZDOTDIR=$HOME/.config/zsh

#[ -f $ZDOTDIR/.zprofile ] && source $ZDOTDIR/.zprofile

typeset -U path PATH
path=($HOME/.local/bin $path)
export PATH
