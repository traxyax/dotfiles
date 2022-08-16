export ZDOTDIR=$HOME/.config/zsh

typeset -U path PATH
path=($HOME/.local/bin $HOME/.cargo/bin $path)
export PATH

[ -f $ZDOTDIR/.zprofile ] && source $ZDOTDIR/.zprofile
