# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


HISTFILE=$HOME/.cache/zsh_history
HISTSIZE=5000
SAVEHIST=15000
setopt autocd extendedglob nomatch
unsetopt beep
bindkey -v

zstyle :compinstall filename "$ZDOTDIR/.zshrc"
zstyle ':completion:*' menu select
zstyle ':completion:*' rehash true

autoload -Uz compinit
compinit

if [ "$(lsb_release -s -i)" = "Fedora" ]; then
  [ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  [ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
elif [ "$(lsb_release -s -i)" = "" ]; then
  echo 1
fi

[ -f $HOME/git/powerlevel10k/powerlevel10k.zsh-theme ] && source $HOME/git/powerlevel10k/powerlevel10k.zsh-theme

[ -f $ZDOTDIR/xterm-title.zsh ] && source $ZDOTDIR/xterm-title.zsh
[ -f $ZDOTDIR/zkbd.zsh ] && source $ZDOTDIR/zkbd.zsh
[ -f $ZDOTDIR/history-search.zsh ] && source $ZDOTDIR/history-search.zsh
[ -f $ZDOTDIR/keys.zsh ] && source $ZDOTDIR/keys.zsh
[ -f $ZDOTDIR/reset.zsh ] && source $ZDOTDIR/reset.zsh
[ -f $ZDOTDIR/bind.zsh ] && source $ZDOTDIR/bind.zsh

[ -f $ZDOTDIR/alias/alias.zsh ] && source $ZDOTDIR/alias/alias.zsh
[ -f $ZDOTDIR/alias/common-aliases.zsh ] && source $ZDOTDIR/alias/common-aliases.zsh


# Execute
neofetch

# To customize prompt, run `p10k configure` or edit $ZDOTDIR/.p10k.zsh.
[[ ! -f $ZDOTDIR/.p10k.zsh ]] || source $ZDOTDIR/.p10k.zsh
